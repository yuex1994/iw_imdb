#include "riscv.h"
bool riscv::decode_riscv_ADD() {
  if (!1) {
    return false;
  }
  uint7_t tmp_15 = 0 - 1;
  c_15 = static_cast<uint7_t> ((riscv_inst >> 0) & tmp_15);
  c_2859 = c_15 == 51;
  uint3_t tmp_23 = 0 - 1;
  c_23 = static_cast<uint3_t> ((riscv_inst >> 12) & tmp_23);
  c_2855 = c_23 == 0;
  c_2861 = (c_2859 & c_2855);
  uint7_t tmp_25 = 0 - 1;
  c_25 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_25);
  c_2851 = c_25 == 0;
  c_2862 = (c_2861 & c_2851);
  return c_2862;
};
