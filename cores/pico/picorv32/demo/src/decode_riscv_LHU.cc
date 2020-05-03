#include "riscv.h"
bool riscv::decode_riscv_LHU() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_1670 = c_15 == 3;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_1666 = c_23 == 5;
  c_1672 = (c_1670 & c_1666);
  return c_1672;
};
