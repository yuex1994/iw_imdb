#include "GBHigh.h"
bool GBHigh::decode_Propagate_prop0() {
  c_154 = GBHigh_arg_1_TREADY == 0;
  c_152 = GBHigh_arg_0_TREADY == 0;
  c_156 = (c_154 & c_152);
  if (!c_156) {
    return false;
  }
  c_166 = GBHigh_arg_1_TREADY == 0;
  c_164 = GBHigh_arg_0_TREADY == 0;
  c_168 = (c_166 & c_164);
  c_162 = GBHigh_st_ready == 1;
  c_169 = (c_168 & c_162);
  return c_169;
};
