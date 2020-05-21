#include "GBHigh.h"
bool GBHigh::decode_GBHigh_Read() {
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
  c_124 = GBHigh_arg_0_TVALID == 1;
  c_122 = GBHigh_arg_0_TREADY == 1;
  c_126 = (c_124 & c_122);
  c_120 = GBHigh_arg_1_TVALID == 0;
  c_127 = (c_126 & c_120);
  return c_127;
};
