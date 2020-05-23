#include "riscv.h"
bool riscv::decode_riscv_SRA() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_4070 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_4066 = c_23 == 5;
  c_4072 = (c_4070 & c_4066);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_4062 = c_25 == 32;
  c_4073 = (c_4072 & c_4062);
  return c_4073;
};
