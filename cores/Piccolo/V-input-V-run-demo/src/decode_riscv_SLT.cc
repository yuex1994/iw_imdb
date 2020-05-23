#include "riscv.h"
bool riscv::decode_riscv_SLT() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_4243 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_4239 = c_23 == 2;
  c_4245 = (c_4243 & c_4239);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_4235 = c_25 == 0;
  c_4246 = (c_4245 & c_4235);
  return c_4246;
};
