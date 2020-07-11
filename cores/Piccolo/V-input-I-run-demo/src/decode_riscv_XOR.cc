#include "riscv.h"
bool riscv::decode_riscv_XOR() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_3378 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_3374 = c_23 == 4;
  c_3380 = (c_3378 & c_3374);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_3370 = c_25 == 0;
  c_3381 = (c_3380 & c_3370);
  return c_3381;
};
