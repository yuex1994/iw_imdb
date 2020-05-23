#include "riscv.h"
bool riscv::decode_riscv_SRLI() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_5958 = c_15 == 19;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_5954 = c_23 == 5;
  c_5960 = (c_5958 & c_5954);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_5950 = c_25 == 0;
  c_5961 = (c_5960 & c_5950);
  return c_5961;
};
