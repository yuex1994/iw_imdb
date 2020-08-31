#include "riscv.h"
bool riscv::decode_riscv_SLTU() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_4422 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_4418 = c_23 == 3;
  c_4424 = (c_4422 & c_4418);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_4414 = c_25 == 0;
  c_4425 = (c_4424 & c_4414);
  return c_4425;
};
