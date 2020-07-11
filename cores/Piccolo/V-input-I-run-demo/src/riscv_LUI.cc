#include "riscv.h"
void riscv::decode_riscv_LUI_update() {
  c_6295 = (riscv_pc + 4);
  riscv_pc_next = c_6295;
  riscv_x0_next = 0;
  uint5_t tmp_17 = 0 - 1;
  c_17 = static_cast<uint5_t> ((riscv_inst >> 7) & tmp_17);
  c_6305 = c_17 == 1;
  uint20_t tmp_81 = 0 - 1;
  c_81 = static_cast<uint20_t> ((riscv_inst >> 12) & tmp_81);
  c_89 = (static_cast<uint32_t>(c_81) << 12) + (static_cast<uint32_t>(0));
  c_6307 = (c_6305) ? c_89 : riscv_x1;
  riscv_x1_next = c_6307;
  c_6350 = c_17 == 10;
  c_6352 = (c_6350) ? c_89 : riscv_x10;
  riscv_x10_next = c_6352;
  c_6355 = c_17 == 11;
  c_6357 = (c_6355) ? c_89 : riscv_x11;
  riscv_x11_next = c_6357;
  c_6360 = c_17 == 12;
  c_6362 = (c_6360) ? c_89 : riscv_x12;
  riscv_x12_next = c_6362;
  c_6365 = c_17 == 13;
  c_6367 = (c_6365) ? c_89 : riscv_x13;
  riscv_x13_next = c_6367;
  c_6370 = c_17 == 14;
  c_6372 = (c_6370) ? c_89 : riscv_x14;
  riscv_x14_next = c_6372;
  c_6375 = c_17 == 15;
  c_6377 = (c_6375) ? c_89 : riscv_x15;
  riscv_x15_next = c_6377;
  c_6380 = c_17 == 16;
  c_6382 = (c_6380) ? c_89 : riscv_x16;
  riscv_x16_next = c_6382;
  c_6385 = c_17 == 17;
  c_6387 = (c_6385) ? c_89 : riscv_x17;
  riscv_x17_next = c_6387;
  c_6390 = c_17 == 18;
  c_6392 = (c_6390) ? c_89 : riscv_x18;
  riscv_x18_next = c_6392;
  c_6395 = c_17 == 19;
  c_6397 = (c_6395) ? c_89 : riscv_x19;
  riscv_x19_next = c_6397;
  c_6310 = c_17 == 2;
  c_6312 = (c_6310) ? c_89 : riscv_x2;
  riscv_x2_next = c_6312;
  c_6400 = c_17 == 20;
  c_6402 = (c_6400) ? c_89 : riscv_x20;
  riscv_x20_next = c_6402;
  c_6405 = c_17 == 21;
  c_6407 = (c_6405) ? c_89 : riscv_x21;
  riscv_x21_next = c_6407;
  c_6410 = c_17 == 22;
  c_6412 = (c_6410) ? c_89 : riscv_x22;
  riscv_x22_next = c_6412;
  c_6415 = c_17 == 23;
  c_6417 = (c_6415) ? c_89 : riscv_x23;
  riscv_x23_next = c_6417;
  c_6420 = c_17 == 24;
  c_6422 = (c_6420) ? c_89 : riscv_x24;
  riscv_x24_next = c_6422;
  c_6425 = c_17 == 25;
  c_6427 = (c_6425) ? c_89 : riscv_x25;
  riscv_x25_next = c_6427;
  c_6430 = c_17 == 26;
  c_6432 = (c_6430) ? c_89 : riscv_x26;
  riscv_x26_next = c_6432;
  c_6435 = c_17 == 27;
  c_6437 = (c_6435) ? c_89 : riscv_x27;
  riscv_x27_next = c_6437;
  c_6440 = c_17 == 28;
  c_6442 = (c_6440) ? c_89 : riscv_x28;
  riscv_x28_next = c_6442;
  c_6445 = c_17 == 29;
  c_6447 = (c_6445) ? c_89 : riscv_x29;
  riscv_x29_next = c_6447;
  c_6315 = c_17 == 3;
  c_6317 = (c_6315) ? c_89 : riscv_x3;
  riscv_x3_next = c_6317;
  c_6450 = c_17 == 30;
  c_6452 = (c_6450) ? c_89 : riscv_x30;
  riscv_x30_next = c_6452;
  c_6455 = c_17 == 31;
  c_6457 = (c_6455) ? c_89 : riscv_x31;
  riscv_x31_next = c_6457;
  c_6320 = c_17 == 4;
  c_6322 = (c_6320) ? c_89 : riscv_x4;
  riscv_x4_next = c_6322;
  c_6325 = c_17 == 5;
  c_6327 = (c_6325) ? c_89 : riscv_x5;
  riscv_x5_next = c_6327;
  c_6330 = c_17 == 6;
  c_6332 = (c_6330) ? c_89 : riscv_x6;
  riscv_x6_next = c_6332;
  c_6335 = c_17 == 7;
  c_6337 = (c_6335) ? c_89 : riscv_x7;
  riscv_x7_next = c_6337;
  c_6340 = c_17 == 8;
  c_6342 = (c_6340) ? c_89 : riscv_x8;
  riscv_x8_next = c_6342;
  c_6345 = c_17 == 9;
  c_6347 = (c_6345) ? c_89 : riscv_x9;
  riscv_x9_next = c_6347;
};
