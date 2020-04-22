#include "riscv.h"
bool riscv::decode_riscv_BGEU() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_593 = c_15 == 99;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_589 = c_23 == 7;
  c_595 = (c_593 & c_589);
  return c_595;
};
