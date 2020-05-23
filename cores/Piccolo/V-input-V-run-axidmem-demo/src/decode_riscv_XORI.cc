#include "riscv.h"
bool riscv::decode_riscv_XORI() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_5613 = c_15 == 19;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_5609 = c_23 == 4;
  c_5615 = (c_5613 & c_5609);
  return c_5615;
};
