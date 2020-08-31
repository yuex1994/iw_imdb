#include "riscv.h"
bool riscv::decode_riscv_SLL() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_3551 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_3547 = c_23 == 1;
  c_3553 = (c_3551 & c_3547);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_3543 = c_25 == 0;
  c_3554 = (c_3553 & c_3543);
  return c_3554;
};
