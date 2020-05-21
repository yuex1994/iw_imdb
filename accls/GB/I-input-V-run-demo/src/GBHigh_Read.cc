#include "GBHigh.h"
void GBHigh::decode_GBHigh_Read_update() {
  c_134 = GBHigh_gbit == 0;
  c_130 = GBHigh_gbit == 7;
  c_136 = (c_134 | c_130);
  c_137 = !c_136;
  GBHigh_arg_0_TVALID_next = c_137;
  c_143 = GBHigh_ram_x == 488;
  c_141 = GBHigh_ram_y == 648;
  c_145 = (c_143 & c_141);
  c_140 = (GBHigh_gbit + 1);
  c_146 = (c_145) ? c_140 : GBHigh_gbit;
  GBHigh_gbit_next = c_146;
};
