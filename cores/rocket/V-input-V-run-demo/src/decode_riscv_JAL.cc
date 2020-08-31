#include "riscv.h"
bool riscv::decode_riscv_JAL() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_605 = c_15 == 111;
  return c_605;
};
