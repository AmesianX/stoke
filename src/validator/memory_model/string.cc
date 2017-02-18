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

#include <chrono>

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"
#include "src/validator/memory_model.h"
#include "src/validator/memory_model/string.h"


#define OBLIG_DEBUG(X) { }
#define CONSTRAINT_DEBUG(X) { }
#define BUILD_TC_DEBUG(X) { }
#define ALIAS_DEBUG(X) { }
#define ALIAS_CASE_DEBUG(X) { }
#define ALIAS_STRING_DEBUG(X) { }

#ifdef STOKE_DEBUG_CEG
#define CEG_DEBUG(X) { X }
#else
#define CEG_DEBUG(X) { }
#endif

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;


bool StringModel::build_testcase_cell_memory(CpuState& ceg, const CellMemory* target_memory, const CellMemory* rewrite_memory, bool begin) const {

  if (!target_memory || !rewrite_memory) {
    BUILD_TC_DEBUG(cout << "[build tc] no memory found" << endl;)
    return false;
  }

  std::unordered_map<uint64_t, BitVector> addr_value_pairs;

  // Allocate a tiny bit of stack memory
  auto rsp_val = ceg[rsp];
  if (rsp_val > 0x20 && rsp_val < 0xffffffffffffffe0) {
    BitVector zeros(64);
    zeros.get_fixed_quad(0) = 0;
    addr_value_pairs[rsp_val-8] = zeros;
  }

  for (size_t k = 0; k < 2; ++k) {
    auto& memory = k ? *rewrite_memory : *target_memory;
    auto access_map = memory.get_line_cell_map();

    for (auto pair : access_map) {
      auto access = pair.second;
      auto cell = access.cell;

      stringstream ss;
      ss << "CELL_" << cell << "_ADDR";

      auto addr_bv = solver_.get_model_bv(ss.str(), 64);
      auto address = addr_bv.get_fixed_quad(0);

      assert(memory.init_cells_.count(cell));
      const SymBitVector* v = NULL;
      if (begin) {
        v = &memory.init_cells_.at(cell);
      } else {
        v = &memory.cells_.at(cell);
      }
      auto value_var = dynamic_cast<const SymBitVectorVar*>(v->ptr);
      auto value_bv = solver_.get_model_bv(value_var->get_name(), value_var->get_size());

      BUILD_TC_DEBUG(cout << "[build tc] Cell " << cell << " address = " << hex << address
                     << "; has " << value_bv.num_fixed_bytes() << " bytes" << endl;)

      addr_value_pairs[address] = value_bv;
    }
  }

  BUILD_TC_DEBUG(
    cout << "[build tc] map:" << endl;
  for (auto it : addr_value_pairs) {
  cout << "  " << it.first << " -> ";
  for (size_t j = 0; j < it.second.num_fixed_bytes(); ++j) {
      cout << (uint64_t)it.second.get_fixed_byte(j);
    }
    cout << endl;
  }
  );

  return ceg.memory_from_map(addr_value_pairs);
}


vector<StringModel::CellArrangement>
StringModel::find_arrangements(
  vector<StringModel::OverlapDescriptor*>& start,
  vector<StringModel::OverlapDescriptor>& available_cells, size_t max_size) {

  vector<CellArrangement> results;
  // Check for termination.
  size_t size_so_far = 0;
  for (auto& descr : start) {
    assert(descr->size > 0);
    size_so_far += descr->size;
  }
  if (size_so_far >= max_size) {
    CellArrangement a;
    for (auto it : start)
      a.push_back(*it);
    results.push_back(a);
    return results;
  }

  // Option 1: pad the cell with an empty space
  OverlapDescriptor od;
  start.push_back(&od);
  od.is_empty = true;
  od.size = 1;
  od.cell = (size_t)(-1);
  {
    auto rec_results = find_arrangements(start, available_cells, max_size);
    results.insert(results.begin(), rec_results.begin(), rec_results.end());
  }

  // Option 2: add an available cell
  od.is_empty = false;
  for (size_t i = 0; i < available_cells.size(); ++i) {
    auto descr = available_cells[i];
    od.cell = descr.cell;
    if (size_so_far == 0) {
      // we can place this cell with any size we like
      // this way, 'j' bytes are not overlapping before the overlapping region
      for (size_t j = 1; j < descr.size; ++j) {
        od.size = j;
        available_cells.erase(available_cells.begin() + i);
        auto rec_results = find_arrangements(start, available_cells, max_size);
        results.insert(results.begin(), rec_results.begin(), rec_results.end());
        available_cells.insert(available_cells.begin() + i, descr);
      }
    }
    od.size = descr.size;
    available_cells.erase(available_cells.begin() + i);
    auto rec_results = find_arrangements(start, available_cells, max_size);
    results.insert(results.begin(), rec_results.begin(), rec_results.end());
    available_cells.insert(available_cells.begin() + i, descr);
  }

  start.erase(start.end() - 1);
  return results;

}

vector<size_t> StringModel::enumerate_accesses(const Cfg& cfg) {
  vector<size_t> result;
  for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
    auto instr = cfg.get_code()[i];
    if (instr.is_memory_dereference() && !instr.is_ret()) {
      result.push_back(i);
    }
  }
  return result;
}

vector<vector<CellMemory::SymbolicAccess>> StringModel::enumerate_aliasing_helper(
    const vector<CellMemory::SymbolicAccess>& todo,
    const vector<CellMemory::SymbolicAccess>& done,
size_t accesses_done) {

  ALIAS_DEBUG(cout << "===================== RECURSIVE STEP ==============================" << endl;)

  vector<vector<CellMemory::SymbolicAccess>> result;

  // Step 1: if we've processed all the concrete accesses, we're done.  Generate CellMemories and return.
  if (todo.size() == accesses_done) {
    ALIAS_DEBUG(cout << " REACHED BASE CASE :D" << endl;)

    result.push_back(done);
    return result;
  }

  // Step 2: choose a memory access to add
  // whether we're taking an access from the target or the rewrite

  CellMemory::SymbolicAccess sa = todo[accesses_done];
  sa.unconstrained = false;

  // find the size of each cell
  map<size_t, size_t> cell_size_map;
  int tmp_cell_max = -1;
  for (auto it : done) {
    cell_size_map[it.cell] = it.cell_size;
    tmp_cell_max = tmp_cell_max > (int)it.cell ? tmp_cell_max : it.cell;
  }
  assert(tmp_cell_max >= 0);
  size_t cell_max = (size_t)tmp_cell_max;

  // Build list of available cells
  vector<OverlapDescriptor> available_cells;
  for (auto p : cell_size_map) {
    OverlapDescriptor od;
    od.cell = p.first;
    od.size = p.second;
    od.is_empty = false;
    available_cells.push_back(od);
  }
  vector<OverlapDescriptor*> start;
  auto overlap_options = find_arrangements(start, available_cells, sa.size);
  ALIAS_CASE_DEBUG(cout << "Overlap options for size " << sa.size << ":" << endl;
  for (auto& option : overlap_options) {
  for (auto& it : option) {
      if (it.is_empty)
        cout << "(E) ";
      else
        cout << "(" << it.cell << " sz. " << it.size << ") ";
    }
    cout << endl;
  })

  // For each overlap option, rewrite the cell map and recurse
  for (auto& option : overlap_options) {

    // first compute the total size of the new cell
    size_t new_cell_size = 0;
    for (auto descr : option)
      new_cell_size += descr.size;

    size_t offset_from_cell_start = 0;

    // check if the first cell in the option is shorter than the
    // actual cell; if so, that means that our offset from the
    // start of the cell is actually non-zero.
    if (!option[0].is_empty && (option[0].size < cell_size_map[option[0].cell])) {
      offset_from_cell_start = cell_size_map[option[0].cell] - option[0].size;
      new_cell_size += offset_from_cell_start;
    }

    sa.cell = cell_max+1;
    sa.cell_size = new_cell_size;
    sa.cell_offset = offset_from_cell_start;

    auto recursive_accesses = done;
    for (size_t i = 0; i < option.size(); ++i) {
      if (option[i].is_empty) {
        offset_from_cell_start += option[i].size;
        continue;
      }

      // Go through the map and rewrite every occurrence of cell[i] as
      // with the new cell.
      for (auto& it : recursive_accesses) {
        if (it.cell == option[i].cell) {
          it.cell = sa.cell;

          // when i is 0, we keep the cell offset the same, because this is the
          // first part of the new cell.  if we were to remove the
          // if-statement, offset_from_cell_start would be the wrong value
          // because it's already counting the "hangover" of this new
          if (i != 0)
            it.cell_offset = it.cell_offset + offset_from_cell_start;
          it.cell_size = new_cell_size;
        }
      }

      offset_from_cell_start += option[i].size;
    }
    recursive_accesses.push_back(sa);

    auto new_results = enumerate_aliasing_helper(todo, recursive_accesses, accesses_done+1);
    result.insert(result.begin(), new_results.begin(), new_results.end());
  }


  return result;
}

// At this point we have mega-cells 0...max_cell-1
// mega-cell i has size given by cell_sizes[i]
// Also, we have accesses sym_accesses[0]...sym_accesses[total_accesses-1]
//   these each have a cell[i], offset[i].

// What we need to do is find every way these mega-cells could possibly
// overlap.  Essentially, each of these mega-cells will have a certain fixed
// offset into a big symbolic memory.  An "offset vector" will specify the
// offsets for each mega-cell into this memory.  We need a function to
// compute all possible offset vectors.

// Hence, a function 'compute_offset_vectors'.  It takes as input:
// - an array of all the cell sizes
// - the number of cells to work on
// and it returns
// - a vector of vectors of offsets; begins with two extra values: the 'min' and 'max' indexes.
vector<vector<int>> StringModel::compute_offset_vectors(size_t* cell_sizes, size_t cell_count, size_t debug_size = 0) {

  stringstream spaces;
  for (size_t i = 0; i < debug_size*2; ++i)
    spaces << " ";
  string ss = spaces.str();

  //cout << ss << "***********************************" << endl;
  //cout << ss << "** compute_offset_vectors() *******" << endl;
  //cout << ss << "***********************************" << endl << ss;
  //for(size_t i = 0; i < cell_count; ++i)
  //  cout << "  " << cell_sizes[i];
  //cout << "  (count=" << cell_count << ")" << endl;

  assert(cell_count > 0);

  if (cell_count == 1) {
    // If there's only one cell, there's only one offset it can exist at (0)
    vector<int> single_cell;
    single_cell.push_back(0); //minimum index;
    single_cell.push_back(cell_sizes[0]-1); //maximum index;
    single_cell.push_back(0); //index of cell 0.

    vector<vector<int>> results;
    results.push_back(single_cell);
    return results;
  }

  // Do the recursive call
  auto old_results = compute_offset_vectors(cell_sizes, cell_count - 1, debug_size+1);
  vector<vector<int>> new_results;

  for (auto old_result : old_results) {
    // get the min/max indexes.
    int min_index = old_result[0];
    int max_index = old_result[1];

    // we're going to 'schedule' cell 'cell_count-1'.
    size_t cell_size = cell_sizes[cell_count-1];
    assert(cell_size > 0);

    // We can schedule it anywhere between "totally before" the existing cells
    // and "totally after" the existing cells.  In the loop below, 'i' is the
    // starting index.
    //cout << ss << "answers!" << endl;
    old_result.push_back(0);
    for (int i = min_index - (int)cell_size; i <= max_index; ++i) {
      old_result.erase(old_result.end() - 1);
      old_result[0] = MIN(i, min_index);
      old_result[1] = MAX(i + (int)cell_size - 1, max_index);
      old_result.push_back(i);
      new_results.push_back(old_result);

      //cout << ss;
      //for(auto it : old_result) {
      //  cout << "  " << it;
      //i}
      //cout << endl;
    }
  }

  return new_results;
}



vector<pair<CellMemory*, CellMemory*>> StringModel::enumerate_aliasing_string() {

  auto target_unroll = SymbolicExecutor::rewrite_cfg_with_path(target_, P_);
  auto rewrite_unroll = SymbolicExecutor::rewrite_cfg_with_path(rewrite_, Q_);

  auto target_concrete_accesses = enumerate_accesses(target_unroll);
  auto rewrite_concrete_accesses = enumerate_accesses(rewrite_unroll);

  // Setup memory management
  Validator::init_mm();

  TrivialMemory target_mem;
  TrivialMemory rewrite_mem;

  SymState target_state("1");
  target_state.memory = &target_mem;
  SymState rewrite_state("2");
  rewrite_state.memory = &rewrite_mem;

  vector<SymBool> constraints;

  // Symbolic execution
  executor_.execute(target_, P_, target_state);
  executor_.execute(rewrite_, Q_, rewrite_state);

  auto target_condition = executor_.path_condition(target_, target_.get_entry(), P_, target_state);
  auto rewrite_condition = executor_.path_condition(rewrite_, rewrite_.get_entry(), Q_, rewrite_state);

  for (auto it : target_condition)
    constraints.push_back(it);
  for (auto it : rewrite_condition)
    constraints.push_back(it);


  // Add miscelaneous constraints
  for (auto& it : target_state.constraints)
    constraints.push_back(it);
  for (auto& it : rewrite_state.constraints)
    constraints.push_back(it);

  // Add assumption constraint
  size_t target_fake_lineno = 0;
  size_t rewrite_fake_lineno = 0;
  constraints.push_back(assume_(target_state, rewrite_state, target_fake_lineno, rewrite_fake_lineno));

  // update the symbolic memory state with these further reads
  // however, we do not generate constraints based on them
  prove_(target_state, rewrite_state, target_fake_lineno, rewrite_fake_lineno);

  if (target_concrete_accesses.size() == 0 &&
      rewrite_concrete_accesses.size() == 0 &&
      target_fake_lineno == 0 &&
      rewrite_fake_lineno == 0) {
    map<size_t, CellMemory::SymbolicAccess> empty_map;

    auto left = new CellMemory(empty_map);
    auto right = new CellMemory(empty_map);

    auto empty_pair = pair<CellMemory*, CellMemory*>(left, right);
    auto v = vector<pair<CellMemory*, CellMemory*>>();
    v.push_back(empty_pair);
    return v;
  }




  vector<TrivialMemory::SymbolicAccess> sym_accesses;
  for (size_t k = 0; k < 2; ++k) {
    auto& mem = k ? rewrite_mem : target_mem;
    size_t line = 0;
    bool first = true;
    for (auto it : mem.get_all()) {
      if (!first && line == it.line)
        continue; //avoid duplicates from read+write operations, like add
      first = false;

      line = it.line;
      it.is_rewrite = k;
      /*
      cout << "Access: " << endl;
      cout << "  rewrite: " << it.is_rewrite << endl;
      cout << "  line:    " << it.line << endl;
      cout << "  size:    " << it.size << endl;
      */

      sym_accesses.push_back(it);
    }
  }

  size_t total_accesses = sym_accesses.size();

  ALIAS_STRING_DEBUG(
    cout << "TARGET: " << endl << target_unroll.get_code() << endl;
    cout << "REWRITE: " << endl << rewrite_unroll.get_code() << endl;
    cout << "Total accesses: " << total_accesses << endl;);

  bool same_address[total_accesses][total_accesses];
  bool next_address[total_accesses][total_accesses];

  //We're going to use the same constraints vector for all the queries.
  // Can be much more performant if stoke #716 is done.
  for (size_t i = 0; i < total_accesses; ++i) {
    for (size_t j = i+1; j < total_accesses; ++j) {

      // (i) Are these two accesses to the same memory locations?
      SymBool equal_addrs;
      equal_addrs = sym_accesses[i].address == sym_accesses[j].address;
      constraints.push_back(!equal_addrs);
      same_address[i][j] = !solver_.is_sat(constraints);
      if (solver_.has_error()) {
        throw VALIDATOR_ERROR("solver: " + solver_.get_error());
      }

      constraints.erase(--constraints.end());

      if (same_address[i][j]) {
        next_address[i][j] = false;
        continue;
      }

      // (ii) Are these two accesses in sequence?
      SymBool next_addrs;
      next_addrs = sym_accesses[i].address + SymBitVector::constant(64, sym_accesses[i].size) ==
                   sym_accesses[j].address;
      constraints.push_back(!next_addrs);
      next_address[i][j] = !solver_.is_sat(constraints);
      if (solver_.has_error()) {
        throw VALIDATOR_ERROR("solver: " + solver_.get_error());
      }


      constraints.erase(--constraints.end());
    }
  }

  for (size_t i = 0; i < total_accesses; ++i) {
    for (size_t j = 0; j < i; ++j) {
      same_address[i][j] = same_address[j][i];

      if (same_address[i][j]) {
        next_address[i][j] = false;
        continue;
      }

      // (ii) Are these two accesses in sequence?
      SymBool next_addrs;
      next_addrs = sym_accesses[i].address + SymBitVector::constant(64, sym_accesses[i].size) ==
                   sym_accesses[j].address;

      constraints.push_back(!next_addrs);
      next_address[i][j] = !solver_.is_sat(constraints);
      if (solver_.has_error()) {
        throw VALIDATOR_ERROR("solver: " + solver_.get_error());
      }

      constraints.erase(--constraints.end());
    }
  }


  ALIAS_STRING_DEBUG(
    cout << "SAME MAP" << endl;
    cout << "     ";
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << " ";
}
cout << endl << "------------------" << endl;
for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << (i < 10 ? " " : "") << " | ";
    for (size_t j = 0; j < total_accesses; ++j) {
      if (j <= i) {
        cout << "  ";
      } else {
        cout << same_address[i][j] << " ";
      }
    }
    cout << endl;
  }
  cout << endl;

       cout << "NEXT MAP" << endl;
       cout << "     ";
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << " ";
}
cout << endl << "------------------" << endl;
for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << (i < 10 ? " " : "") << " | ";
    for (size_t j = 0; j < total_accesses; ++j) {
      if (j <= i) {
        cout << "  ";
      } else {
        cout << next_address[i][j] << " ";
      }
    }
    cout << endl;
  }
  cout << endl;);




  Validator::stop_mm();

  int cell[total_accesses];
  size_t offset[total_accesses];
  size_t max_cell = 0;
  size_t cell_sizes[total_accesses];

  for (size_t i = 0; i < total_accesses; ++i) {
    cell[i] = -1;
  }

  for (size_t i = 0; i < total_accesses; ++i) {
    if (cell[i] == -1) {
      cell_sizes[max_cell] = sym_accesses[i].size;
      cell[i] = max_cell++;
      offset[i] = 0;
    }

    for (size_t j = i+1; j < total_accesses; ++j) {
      if (same_address[i][j]) {
        cell[j] = cell[i];
        offset[j] = offset[i];
        cell_sizes[cell[i]] = MAX(offset[j] + sym_accesses[j].size, cell_sizes[cell[j]]);
      } else if (next_address[i][j]) {
        cell[j] = cell[i];
        offset[j] = offset[i] + sym_accesses[i].size;
        cell_sizes[cell[i]] = MAX(offset[j] + sym_accesses[j].size, cell_sizes[cell[j]]);
      } else if (next_address[j][i]) {
        cell[j] = cell[i];
        if (offset[i] < sym_accesses[j].size) {
          size_t difference = sym_accesses[j].size - offset[i];
          // go through every sym_access whose cell is set to i, and add the difference to the offset
          for (size_t k = 0; k < total_accesses; ++k) {
            if (k == j)
              continue;
            if (cell[k] == cell[i]) {
              offset[k] += difference;
            }
          }
          cell_sizes[cell[i]] += difference;
          offset[j] = 0;
        } else {
          offset[j] = offset[i] - sym_accesses[j].size;
        }

        cell_sizes[cell[i]] = MAX(cell_sizes[cell[j]], offset[j] + sym_accesses[j].size);
        cell_sizes[cell[i]] = MAX(cell_sizes[cell[j]], offset[i] + sym_accesses[i].size);
      }
    }
  }

  ALIAS_STRING_DEBUG(
    cout << "TOTAL CELLS: " << max_cell << endl;
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << "Access " << i << " cell " << cell[i] << " offset " << offset[i]
         << " size " << sym_accesses[i].size
         << " (cell size " << cell_sizes[cell[i]] << ")" << endl;
  });

  assert(max_cell > 0);

  vector<pair<CellMemory*, CellMemory*>> result;

  if (max_cell > 1) {
    ALIAS_STRING_DEBUG(cout << "Alias Strategy STRING" << std::endl;)

    auto target_unroll = SymbolicExecutor::rewrite_cfg_with_path(target_, P_);
    auto rewrite_unroll = SymbolicExecutor::rewrite_cfg_with_path(rewrite_, Q_);

    // We'll use the helper to compute all overlaps of the mega-cells we found.
    // Typically, you give it a list of SymbolicAccesses, one per memory
    // access.  Here, we're giving it "fake" accesses, one per mega-cell we've
    // created.  The "line-number" will represent this "mega-cell".
    vector<CellMemory::SymbolicAccess> cell_list;
    for (size_t i = 0; i < max_cell; ++i) {
      CellMemory::SymbolicAccess sa;
      sa.line = i;
      sa.size = cell_sizes[i];
      sa.is_rewrite = false;
      cell_list.push_back(sa);
    }

    vector<CellMemory::SymbolicAccess> done;
    auto sa = cell_list[0];
    sa.cell = 0;
    sa.cell_offset = 0;
    sa.cell_size = cell_sizes[0];
    sa.unconstrained = false;
    done.push_back(sa);

    auto options = enumerate_aliasing_helper(cell_list, done, 1);

    for (auto option : options) {
      map<size_t, CellMemory::SymbolicAccess> target_map;
      map<size_t, CellMemory::SymbolicAccess> rewrite_map;

      for (size_t i = 0; i < total_accesses; ++i) {
        size_t my_cell = cell[i];
        assert(option[my_cell].line == my_cell);

        CellMemory::SymbolicAccess sa;
        sa.line = sym_accesses[i].line;
        sa.size = sym_accesses[i].size;
        sa.cell = option[my_cell].cell;
        sa.cell_offset = offset[i] + option[my_cell].cell_offset;
        sa.cell_size = option[my_cell].cell_size;
        sa.is_rewrite = sym_accesses[i].is_rewrite;
        sa.unconstrained = false;

        assert(sa.cell_offset + sa.size <= sa.cell_size);

        if (sym_accesses[i].is_rewrite) {
          rewrite_map[sa.line] = sa;
        } else {
          target_map[sa.line] = sa;
        }
      }

      auto target_mem = new CellMemory(target_map);
      auto rewrite_mem = new CellMemory(rewrite_map);
      result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
    }

    return result;
  }

  // EASY CASE!  The mega-cells don't overlap.
  {
    map<size_t, CellMemory::SymbolicAccess> target_map;
    map<size_t, CellMemory::SymbolicAccess> rewrite_map;

    for (size_t i = 0; i < total_accesses; ++i) {
      CellMemory::SymbolicAccess sa;
      sa.line = sym_accesses[i].line;
      sa.size = sym_accesses[i].size;
      sa.cell = cell[i];
      sa.cell_offset = offset[i];
      sa.cell_size = cell_sizes[cell[i]];
      sa.unconstrained = false;

      if (sym_accesses[i].is_rewrite) {
        rewrite_map[sa.line] = sa;
      } else {
        target_map[sa.line] = sa;
      }
    }

    auto target_mem = new CellMemory(target_map);
    auto rewrite_mem = new CellMemory(rewrite_map);
    result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
  }

  ALIAS_STRING_DEBUG(cout << "ALIASING CASES: " << result.size() << endl;)
  return result;

}

