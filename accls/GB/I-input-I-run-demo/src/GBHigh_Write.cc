#include "GBHigh.h"
void GBHigh::decode_GBHigh_Write_update() {
  GBHigh_arg_0_TVALID_next = 0;
  GBHigh_arg_1_TREADY_next = 0;
  GBHigh_cur_pic_next = GBHigh_arg_1_TDATA;
};
