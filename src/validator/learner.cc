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

#include "src/validator/learner.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/flag_set.h"
#include "src/validator/invariants/implication.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/memory_null.h"
#include "src/validator/invariants/mod_2n.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/pointer_null.h"
#include "src/validator/invariants/sign.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"
#include "src/validator/null.h"

// this is configurable via build system
#ifdef STOKE_DEBUG_DDEC
#define DDEC_DEBUG(X) { X }
#else
#define DDEC_DEBUG(X) {   }
#endif

#define DDEC_TC_DEBUG(X) { }

using namespace std;
using namespace stoke;
using namespace x64asm;


vector<Variable> get_memory_variables(const Cfg& target, const Cfg& rewrite) {

  vector<Variable> results;

  set<x64asm::Mem> memory_operands;
  for (auto& prog : {
         target, rewrite
       }) {
    for (auto instr : prog.get_code()) {
      if (instr.is_explicit_memory_dereference()) {
        auto mem = instr.get_operand<x64asm::Mem>((size_t)instr.mem_index());
        //cout << "Considering operand " << mem << endl;
        memory_operands.insert(mem);
      }
    }
  }

  for (auto mem : memory_operands) {
    for (size_t offset : {
           0,8,-8
         }) {
      // Make everything an M64
      M64 mem_fixed(mem.get_seg(),
                    mem.get_base(),
                    mem.get_index(),
                    mem.get_scale(),
                    mem.get_disp() + offset);

      Variable v(mem_fixed, false);
      Variable w(mem_fixed, true);
      results.push_back(v);
      results.push_back(w);
    }
  }

  return results;
}


/** Return a set of possible memory null invariants */
vector<MemoryNullInvariant*> build_memory_null_invariants(RegSet target_regs, RegSet rewrite_regs, const Cfg& target, const Cfg& rewrite) {
  vector<MemoryNullInvariant*> invariants;

  for (size_t k = 0; k < 2; ++k) {
    bool is_rewrite = k;
    const Cfg& cfg = is_rewrite ? rewrite : target;
    auto code = cfg.get_code();
    auto regs = is_rewrite ? rewrite_regs : target_regs;

    set<x64asm::Mem> memory_operands;
    for (auto instr : code) {
      if (instr.is_explicit_memory_dereference()) {
        auto mem = instr.get_operand<x64asm::Mem>((size_t)instr.mem_index());
        //cout << "Considering operand " << mem << endl;
        memory_operands.insert(mem);
      }
    }

    for (auto it : memory_operands) {
      //cout << "And now it is: " << it << endl;
      if (it.contains_seg())
        continue;
      if (it.contains_base() && !regs.contains(it.get_base()))
        continue;
      if (it.contains_index() && !regs.contains(it.get_index()))
        continue;

      auto mni = new MemoryNullInvariant(it, is_rewrite, true);
      invariants.push_back(mni);  //FIXME: bring me back to life

      //cout << "Ok, made a " << *mni << endl;

      //mni = new MemoryNullInvariant(it, is_rewrite, false);
      //invariants.push_back(mni);
    }


  }

  //for (auto it : invariants) {
  //  cout << *it << endl;
  //}

  return invariants;
}

/** Return a set of possible inequality invariants. */
vector<InequalityInvariant*> InvariantLearner::build_inequality_invariants(RegSet target_regs, RegSet rewrite_regs) const {

  vector<InequalityInvariant*> inequalities;

  // For now, let's look at unsigned target-target and rewrite-rewrite inequalities

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {

      if ((*i).size() == 64) {
        for (auto ghost : ghosts_) {
          Variable v(*i, k);
          inequalities.push_back(new InequalityInvariant(v, ghost, false, false));
          inequalities.push_back(new InequalityInvariant(v, ghost, true, false));
          inequalities.push_back(new InequalityInvariant(ghost, v, false, false));
          inequalities.push_back(new InequalityInvariant(ghost, v, true, false));
        }
      }

      for (auto j = regs.gp_begin(); j != regs.gp_end(); ++j) {
        if (*i == *j)
          continue;
        if ((*i).size() != (*j).size())
          continue;

        if ((*i).size() == 32) {
          Variable v1(*i, k);
          Variable v2(*j, k);

          inequalities.push_back(new InequalityInvariant(v1, v2, false, false));
          inequalities.push_back(new InequalityInvariant(v1, v2, true, false));
        } else if ((*i).size() == 64) {
          Variable v1(*i, k);
          Variable v2(*j, k);

          Variable v1_32(r32s[*i], k);
          Variable v2_32(r32s[*j], k);

          inequalities.push_back(new InequalityInvariant(v1, v2, false, false));
          inequalities.push_back(new InequalityInvariant(v1, v2, true, false));

          inequalities.push_back(new InequalityInvariant(v1_32, v2_32, false, false));
          inequalities.push_back(new InequalityInvariant(v1_32, v2_32, true, false));

        }
      }
    }
  }

  return inequalities;
}

/** Return a set of possible lower-n bit invariants. */
vector<Mod2NInvariant*> build_mod2n_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<Mod2NInvariant*> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      for (auto j = 1; j < 5; ++j) {
        Variable v(*i, k);
        invariants.push_back(new Mod2NInvariant(v, j));
      }
    }
  }

  return invariants;
}

/** Return a set of sign invariants. */
vector<SignInvariant*> build_sign_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<SignInvariant*> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      invariants.push_back(new SignInvariant(v, true));
      invariants.push_back(new SignInvariant(v, false));
    }
  }

  return invariants;
}

bool invariant_holds(Invariant* invariant, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states) {

  for (size_t i = 0; i < target_states.size(); ++i)
    if (!invariant->check(target_states[i], rewrite_states[i]))
      return false;

  return true;
}

/** Returns true if the invariant is added. */
bool add_or_delete_inv(vector<Invariant*>& invs, Invariant* inv, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states) {
  if (invariant_holds(inv, target_states, rewrite_states)) {
    invs.push_back(inv);
    return true;
  } else {
    delete inv;
    return false;
  }
}

vector<Invariant*> build_flag_invariants(
  x64asm::RegSet target_regs,
  x64asm::RegSet rewrite_regs,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  cout << "target_regs: " << target_regs << endl;
  cout << "rewrite_regs: " << rewrite_regs << endl;

  vector<Invariant*> inv;

  for (auto tf = target_regs.flags_begin(); tf != target_regs.flags_end(); ++tf) {

    // Generate target flag true
    // these leak memory it unused
    Invariant* tf_true = new FlagSetInvariant(*tf, false, false);
    Invariant* tf_false = new FlagSetInvariant(*tf, false, true);

    // Generate target flag flase
    for (auto rf = rewrite_regs.flags_begin(); rf != rewrite_regs.flags_end(); ++rf) {

      Invariant* rf_true = new FlagSetInvariant(*rf, true, false);
      Invariant* rf_false = new FlagSetInvariant(*rf, true, true);

      auto target_implies_rewrite = new ImplicationInvariant(tf_true, rf_true);
      auto not_target_implies_rewrite = new ImplicationInvariant(tf_false, rf_true);
      auto target_implies_not_rewrite = new ImplicationInvariant(tf_true, rf_false);
      auto not_target_implies_not_rewrite = new ImplicationInvariant(tf_false, rf_false);

      bool keep = false;
      keep |= add_or_delete_inv(inv, target_implies_rewrite, target_states, rewrite_states);
      keep |= add_or_delete_inv(inv, not_target_implies_rewrite, target_states, rewrite_states);
      keep |= add_or_delete_inv(inv, target_implies_not_rewrite, target_states, rewrite_states);
      keep |= add_or_delete_inv(inv, not_target_implies_not_rewrite, target_states, rewrite_states);

      if (!keep) {
        delete rf_true;
        delete rf_false;
      }
    }
  }

  return inv;
}


ConjunctionInvariant* InvariantLearner::learn(x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const vector<CpuState>& target_states,
    const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());

  //TODO leaks memory

  MemoryEqualityInvariant* mem_equ = new MemoryEqualityInvariant();

  NoSignalsInvariant* no_sigs = new NoSignalsInvariant();
  ConjunctionInvariant* conj = new ConjunctionInvariant();
  conj->add_invariant(no_sigs);
  conj->add_invariant(mem_equ);

  if (target_states.size() == 0 || rewrite_states.size() == 0) {
    conj->add_invariant(new FalseInvariant());
    return conj;
  }

  // NonZero invariants
  for (size_t k = 0; k < 2; ++k) {
    auto& states = k ? rewrite_states : target_states;
    auto& regs = k ? rewrite_regs : target_regs;

    for (auto it = regs.gp_begin(); it != regs.gp_end(); ++it) {
      bool all_nonzero = true;

      for (auto state : states) {
        if (state.gp[*it].get_fixed_quad(0) == 0) {
          all_nonzero = false;
        }
      }

      if (all_nonzero) {
        Variable v(r64s[*it], k);
        auto nz = new NonzeroInvariant(v);
        if (nz->check(target_states, rewrite_states)) {
          conj->add_invariant(nz);
        } else {
          DDEC_DEBUG(cout << "GOT BAD INVARIANT " << *nz << endl;)
          delete nz;
        }
      }
    }
  }

  // mod2^n invariants
  auto potential_mod2n = build_mod2n_invariants(target_regs, rewrite_regs);
  for (auto modulo : potential_mod2n) {
    if (modulo->check(target_states, rewrite_states)) {
      conj->add_invariant(modulo);
    } else {
      delete modulo;
    }
  }

  // sign invariants
  auto potential_sign = build_sign_invariants(target_regs, rewrite_regs);
  for (auto sign : potential_sign) {
    if (sign->check(target_states, rewrite_states)) {
      conj->add_invariant(sign);
    } else {
      delete sign;
    }
  }

  // Inequality invariants
  auto potential_inequalities = build_inequality_invariants(target_regs, rewrite_regs);
  for (auto ineq : potential_inequalities) {
    if (ineq->check(target_states, rewrite_states)) {
      conj->add_invariant(ineq);
    } else {
      delete ineq;
    }
  }

  // flag invariants
  auto potential_flags = build_flag_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
  for (auto it : potential_flags)
    conj->add_invariant(it);

  auto potential_memory_nulls = build_memory_null_invariants(target_regs, rewrite_regs, target_, rewrite_);
  for (auto mem_null : potential_memory_nulls) {
    //cout << "Testing " << *mem_null << endl;
    if (mem_null->check(target_states, rewrite_states)) {
      //cout << " * pass" << endl;
      conj->add_invariant(mem_null);
    } else {
      //cout << " * fail" << endl;
      delete mem_null;
    }
  }

  for (auto ghost : ghosts_) {
    auto pointer_null = new PointerNullInvariant(ghost, 1);
    cout << "testing ptr " << *pointer_null << endl;
    if (pointer_null->check(target_states, rewrite_states)) {
      conj->add_invariant(pointer_null);
      cout << "  * accepted" << endl;
    } else {
      delete pointer_null;
      cout << "  * rejected" << endl;
    }
  }


  // Define columns that will be used to learn equalities
  vector<Variable> columns;

  for (size_t k = 0; k < 2; ++k) {
    auto def_ins = k ? rewrite_regs : target_regs;
    for (auto r = def_ins.gp_begin(); r != def_ins.gp_end(); ++r) {
      if ((*r).size() == 64) {
        Variable c(*r, k);
        columns.push_back(c);
      }
    }
    for (auto r = def_ins.sse_begin(); r != def_ins.sse_end(); ++r) {
      for (size_t i = 0; i < (*r).size()/64; ++i) {
        Variable c(*r,k,8,i*8);
        columns.push_back(c);
      }
    }
  }
  auto mem_vars = get_memory_variables(target_, rewrite_);
  for (auto var : mem_vars) {
    cout << "Checking mem var: " << var << endl;
    if (var.size <= 8) {
      cout << " * size <= 8 :)" << endl;
      columns.push_back(var);
    } else {
      cout << " * size " << var.size << endl;
    }
  }

  DDEC_DEBUG(
    cout << "Columns" << endl;
  for (auto it : columns) {
  cout << it << endl;
}
);

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  // Find some of the simple equalities by brute force
  DDEC_DEBUG(cout << "looking for simple equalities" << endl;)

  for (size_t i = 0; i < columns.size(); ++i) {
    for (size_t j = i+1; j < columns.size(); ++j) {
      // check if column i matches column j
      cout << " - Checking if column " << columns[i] << " matches " << columns[j] << endl;
      bool match = true;
      for (size_t k = 0; k < tc_count; ++k) {
        if (columns[i].from_state(target_states[k], rewrite_states[k]) !=
            columns[j].from_state(target_states[k], rewrite_states[k])) {
          match = false;
          break;
        }
      }
      // add equality asserting column[i] matches column[j].
      if (match) {
        vector<Variable> terms;
        columns[i].coefficient = 1;
        columns[j].coefficient = -1;
        terms.push_back(columns[i]);
        terms.push_back(columns[j]);

        auto ei = new EqualityInvariant(terms, 0);
        conj->add_invariant(ei);
        DDEC_DEBUG(cout << "generating " << *ei << endl;)
      }
    }
  }

  // Build the nullspace matrix
  DDEC_DEBUG(cout << dec << "allocating the matrix of size " << tc_count << " x " << num_columns << hex << endl;)
  uint64_t* matrix = new uint64_t[tc_count*num_columns];

  for (size_t i = 0; i < tc_count; ++i) {
    for (size_t j = 0; j < columns.size(); ++j) {
      matrix[i*num_columns + j] = columns[j].from_state(target_states[i], rewrite_states[i]);
    }
    matrix[i*num_columns + num_columns - 1] = 1;
  }

  DDEC_DEBUG(
  for (size_t i = 0; i < tc_count; ++i) {
  for (size_t j = 0; j < num_columns; ++j) {
      cout << hex << matrix[i*num_columns + j] << dec << " ";
    }
    cout << endl;
  }
  );

  // Compute the nullspace
  uint64_t** nullspace_out;
  size_t dim;

  dim = Nullspace::bv_nullspace(matrix, tc_count, num_columns, &nullspace_out);
  delete matrix;

  // Extract the data from the nullspace
  for (size_t i = 0; i < dim; ++i) {
    vector<Variable> terms;

    for (size_t j = 0; j < num_columns - 1; ++j) {
      auto column = columns[j];

      if (nullspace_out[i][j]) {
        column.coefficient = nullspace_out[i][j];
        terms.push_back(column);
      }
    }

    auto ei = new EqualityInvariant(terms, -nullspace_out[i][num_columns-1]);
    if (ei->check(target_states, rewrite_states)) {
      conj->add_invariant(ei);
      DDEC_DEBUG(cout << *ei << endl;)
    } else {
      DDEC_DEBUG(cout << "GOT BAD INVARIANT ? " << *ei << endl;)
    }
  }

  for (size_t i = 0; i < dim; ++i)
    delete nullspace_out[i];
  delete nullspace_out;

  DDEC_DEBUG(cout << "Nullspace dimension:" << dec << dim << endl;)
  DDEC_DEBUG(cout << "Column count: " << dec << num_columns << endl;)

  return conj;
}
