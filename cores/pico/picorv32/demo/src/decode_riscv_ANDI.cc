#include "riscv.h"
bool riscv::decode_riscv_ANDI() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_5277 = c_15 == 19;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_5273 = c_23 == 7;
  c_5279 = (c_5277 & c_5273);
  return c_5279;
};
