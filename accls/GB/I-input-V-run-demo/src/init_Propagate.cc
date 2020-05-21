#include "GBHigh.h"
void GBHigh::init_Propagate() {
  c_154 = GBHigh_arg_1_TREADY == 0;
  c_152 = GBHigh_arg_0_TREADY == 0;
  c_156 = (c_154 & c_152);
  if (!c_156) {
    return;
  }
  return ;
};
