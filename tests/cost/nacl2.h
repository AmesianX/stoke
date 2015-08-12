// Copyright 2013-2015 Stanford University
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


#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/cost/nacl2.h"

namespace stoke {

class NaCl2CostTest : public ::testing::Test {

protected:

  NaCl2Cost<false> fxn;
  uint64_t bad_penalty;
  uint64_t reg_penalty;

private:
  void SetUp() {
    bad_penalty = 7;
    reg_penalty = 11;
    fxn.set_bad_instruction_penalty(bad_penalty);
    fxn.set_restricted_register_penalty(reg_penalty);
  }
};

TEST_F(NaCl2CostTest, ModifySpPenalty) {

  std::stringstream ss;
  ss << "movw $0x10, %sp" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  EXPECT_EQ(bad_penalty, fxn(cfg).second);

}

TEST_F(NaCl2CostTest, ModifyRspPenalty) {

  std::stringstream ss;
  ss << "movq $0x10, %rsp" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  EXPECT_EQ(bad_penalty, fxn(cfg).second);

}

} //namepsace stoke
