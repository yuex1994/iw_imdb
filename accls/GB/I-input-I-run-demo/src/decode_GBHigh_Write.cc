#include "GBHigh.h"
bool GBHigh::decode_GBHigh_Write() {
  c_103 = GBHigh_arg_0_TREADY == 1;
  c_101 = GBHigh_arg_0_TVALID == 1;
  c_105 = (c_103 & c_101);
  c_98 = GBHigh_arg_1_TVALID == 1;
  c_96 = GBHigh_arg_1_TREADY == 1;
  c_100 = (c_98 & c_96);
  c_106 = (c_105 | c_100);
  if (!c_106) {
    return false;
  }
  c_114 = GBHigh_arg_1_TVALID == 1;
  c_112 = GBHigh_arg_1_TREADY == 1;
  c_116 = (c_114 & c_112);
  c_110 = GBHigh_arg_0_TVALID == 0;
  c_117 = (c_116 & c_110);
  c_108 = GBHigh_arg_0_TREADY == 0;
  c_118 = (c_117 & c_108);
  return c_118;
};
