// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_VALIDATOR_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_OBLIGATION_CHECKER_H

#include <iostream>
#include <vector>
#include <string>

#include "gtest/gtest_prod.h"

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/memory/cell.h"
#include "src/symstate/memory/flat.h"
#include "src/validator/invariant.h"
#include "src/validator/validator.h"
#include "src/validator/filters/default.h"

//#define DEBUG_CHECKER_PERFORMANCE

#ifdef DEBUG_CHECKER_PERFORMANCE
#include "src/solver/z3solver.h"
#endif

namespace stoke {

class ObligationChecker : public Validator {
  friend class ObligationCheckerBaseTest;
  FRIEND_TEST(ObligationCheckerBaseTest, WcpcpyA);
  FRIEND_TEST(ObligationCheckerBaseTest, ProveMemoryObligation);
  FRIEND_TEST(ObligationCheckerBaseTest, ProveMemoryObligationFail);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeMemoryNull);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeMemoryNullFail);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeAndProve);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeAndProveFail);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut2);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveEquality);

public:

  enum AliasStrategy {
    BASIC,             // enumerate all cases, attempt to bound it (SOUND)
    FLAT,              // model memory as an array in the SMT solver (SOUND)
    STRING,            // look for continugous memory accesses and combine them (SOUND)
    STRING_NO_ALIAS,   // assume strings don't overlap (UNSOUND)
    ARM                // full-on alias relationship mining
  };

  ObligationChecker(SMTSolver& solver) : Validator(solver) {
    set_alias_strategy(AliasStrategy::STRING);
    set_nacl(false);
    filter_ = new DefaultFilter(handler_);
  }

  ~ObligationChecker() {
    if (filter_)
      delete filter_;
  }

  /** Set strategy for aliasing */
  ObligationChecker& set_alias_strategy(AliasStrategy as) {
    if (as == AliasStrategy::STRING || as == AliasStrategy::STRING_NO_ALIAS || as == BASIC)
      as = AliasStrategy::FLAT;

    alias_strategy_ = as;
    return *this;
  }

  ObligationChecker& set_filter(Filter* filter) {
    if (filter_)
      delete filter_;
    filter_ = filter;
    return *this;
  }

  /** If every memory reference in your code is of the form (r15,r*x,1), then
    setting this option to 'true' is logically equivalent to adding constraints
    that bound the index register away from the top/bottom of the 32-bit
    address space.  It is unsound for NaCl code only if you have a memory
    dereference of (r15,r*x,k) where k = 2, 4 or 8.  This does not come up in
    any of our NaCl examples, and sould be rare to find since no compilers
    generate code that use an index besides 1 for NaCl; and STOKE won't do this
    transformation. */
  ObligationChecker& set_nacl(bool b) {
    nacl_ = b;
    return *this;
  }

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };
  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const CfgPath& P, size_t i);

  /** Check. */
  bool check(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q,
             const Invariant& assume, const Invariant& prove);

  bool checker_has_ceg() {
    return have_ceg_;
  }

  CpuState checker_get_target_ceg() {
    return ceg_t_;
  }

  CpuState checker_get_rewrite_ceg() {
    return ceg_r_;
  }

  /** Note -- this won't be right for memory. */
  CpuState checker_get_target_ceg_end() {
    return ceg_tf_;
  }
  /** Note -- this won't be right for memory. */
  CpuState checker_get_rewrite_ceg_end() {
    return ceg_rf_;
  }



private:

  /////////////// These methods handle paths and circuit building ////////////////

  /** This structure and the correspondong map stores RIP offsets and original
   * line numbers for each line of a rewritten program */
  struct LineInfo {
    size_t line_number;
    x64asm::Label label;
    uint64_t rip_offset;
  };


  typedef std::map<size_t,LineInfo> LineMap;

  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no, const LineMap& line_map);

  // This is to print out Cfg paths easily (for debugging purposes).
  static std::string print(const CfgPath& p) {
    std::stringstream os;
    for (size_t i = 0; i < p.size(); ++i) {
      os << p[i];
      if (i != p.size() - 1)
        os << " ";
    }
    return os.str();
  }

  /** Check if a counterexample actually works. */
  bool check_counterexample(const Cfg& target, const Cfg& rewrite, const CfgPath& P,
                            const CfgPath& Q, const Invariant& assume,
                            const Invariant& prove, const CpuState& ceg, const CpuState& ceg2);

  /** Run the sandbox on a state, cfg along a path.  Used for checking counterexamples. */
  CpuState run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state);

  /** Rewrite a CFG so that it always executes a particular path, replacing
    jumps with NOPs.  Fill a map that contains information relating the new
    line numbers with the original ones. */
  Cfg rewrite_cfg_with_path(const Cfg&, const CfgPath& p, LineMap& to_populate);

  /////////////////////////  Misc Helpers ////////////////////////////

  /** Get all the ghost invariables contained in two invariants. */
  std::set<std::string> union_ghost_variables(const Invariant& assume, const Invariant& prove) const;

  /////////////// Bookkeeping //////////////////

  /** Rules to transform instructions for a custom purpose */
  Filter* filter_;

  /** Target counterexample and end state */
  CpuState ceg_t_;
  CpuState ceg_tf_;
  /** Rewrite counterexample and end state */
  CpuState ceg_r_;
  CpuState ceg_rf_;
  /** Do we have a counterexample? */
  bool have_ceg_;



  /** How to handle aliasing */
  AliasStrategy alias_strategy_;
  /** Add NaCl constraint for memory? */
  bool nacl_;


#ifdef DEBUG_CHECKER_PERFORMANCE
  static uint64_t number_queries_;
  static uint64_t number_cases_;

  static uint64_t constraint_gen_time_;
  static uint64_t solver_time_;
  static uint64_t aliasing_time_;
  static uint64_t ceg_time_;

  void print_performance() {
    std::cout << "====== Obligation Checker Performance Report ======" << std::endl;
    std::cout << "Number queries: "<< number_queries_ << std::endl;
    std::cout << "Number aliasing cases: "<< number_cases_ << std::endl;
    std::cout << "Alias case enumeration time (ms): " << (aliasing_time_ / 1000) << std::endl;
    std::cout << "Constraint generation time (ms): " << (constraint_gen_time_ / 1000) << std::endl;
    std::cout << "Solver time (ms): " << (solver_time_ / 1000) << std::endl;
    std::cout << "Counterexample extraction time (ms): " << (ceg_time_ / 1000) << std::endl;
    std::cout << "Total time accounted for (ms): " << ((ceg_time_ + solver_time_ + constraint_gen_time_ + aliasing_time_)/1000) << std::endl;
    Z3Solver::print_performance();
  }
#endif

};



} // namespace stoke

#endif
