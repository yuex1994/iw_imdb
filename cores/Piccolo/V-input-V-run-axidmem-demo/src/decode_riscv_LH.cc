#include "riscv.h"
bool riscv::decode_riscv_LH() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_1279 = c_15 == 3;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_1275 = c_23 == 1;
  c_1281 = (c_1279 & c_1275);
  return c_1281;
};
