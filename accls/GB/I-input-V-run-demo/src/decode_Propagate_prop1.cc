#include "GBHigh.h"
bool GBHigh::decode_Propagate_prop1() {
  c_154 = GBHigh_arg_1_TREADY == 0;
  c_152 = GBHigh_arg_0_TREADY == 0;
  c_156 = (c_154 & c_152);
  if (!c_156) {
    return false;
  }
  c_951 = GBHigh_arg_1_TREADY == 0;
  c_949 = GBHigh_arg_0_TREADY == 0;
  c_953 = (c_951 & c_949);
  c_947 = GBHigh_st_ready == 0;
  c_954 = (c_953 & c_947);
  return c_954;
};
