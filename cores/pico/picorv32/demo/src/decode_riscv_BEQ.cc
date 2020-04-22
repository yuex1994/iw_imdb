#include "riscv.h"
bool riscv::decode_riscv_BEQ() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_524 = c_15 == 99;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_520 = c_23 == 0;
  c_526 = (c_524 & c_520);
  return c_526;
};
