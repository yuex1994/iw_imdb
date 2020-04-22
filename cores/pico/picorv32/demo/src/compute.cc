#include "riscv.h"
void riscv::compute() {
  if (decode_riscv_BEQ()) {
    decode_riscv_BEQ_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_BNE()) {
    decode_riscv_BNE_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_BLT()) {
    decode_riscv_BLT_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_BLTU()) {
    decode_riscv_BLTU_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_BGE()) {
    decode_riscv_BGE_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_BGEU()) {
    decode_riscv_BGEU_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_JAL()) {
    decode_riscv_JAL_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_JALR()) {
    decode_riscv_JALR_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LW()) {
    decode_riscv_LW_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LH()) {
    decode_riscv_LH_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LB()) {
    decode_riscv_LB_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LHU()) {
    decode_riscv_LHU_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LBU()) {
    decode_riscv_LBU_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SW()) {
    decode_riscv_SW_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_SH()) {
    decode_riscv_SH_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_SB()) {
    decode_riscv_SB_update();
    riscv_pc = riscv_pc_next;
  }
  if (decode_riscv_ADD()) {
    decode_riscv_ADD_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_AND()) {
    decode_riscv_AND_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_OR()) {
    decode_riscv_OR_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_XOR()) {
    decode_riscv_XOR_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLL()) {
    decode_riscv_SLL_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SRL()) {
    decode_riscv_SRL_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SUB()) {
    decode_riscv_SUB_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SRA()) {
    decode_riscv_SRA_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLT()) {
    decode_riscv_SLT_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLTU()) {
    decode_riscv_SLTU_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_ADDI()) {
    decode_riscv_ADDI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLTI()) {
    decode_riscv_SLTI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLTIU()) {
    decode_riscv_SLTIU_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_ANDI()) {
    decode_riscv_ANDI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_ORI()) {
    decode_riscv_ORI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_XORI()) {
    decode_riscv_XORI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SLLI()) {
    decode_riscv_SLLI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SRLI()) {
    decode_riscv_SRLI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_SRAI()) {
    decode_riscv_SRAI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_LUI()) {
    decode_riscv_LUI_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  if (decode_riscv_AUIPC()) {
    decode_riscv_AUIPC_update();
    riscv_pc = riscv_pc_next;
    riscv_x0 = riscv_x0_next;
    riscv_x1 = riscv_x1_next;
    riscv_x10 = riscv_x10_next;
    riscv_x11 = riscv_x11_next;
    riscv_x12 = riscv_x12_next;
    riscv_x13 = riscv_x13_next;
    riscv_x14 = riscv_x14_next;
    riscv_x15 = riscv_x15_next;
    riscv_x16 = riscv_x16_next;
    riscv_x17 = riscv_x17_next;
    riscv_x18 = riscv_x18_next;
    riscv_x19 = riscv_x19_next;
    riscv_x2 = riscv_x2_next;
    riscv_x20 = riscv_x20_next;
    riscv_x21 = riscv_x21_next;
    riscv_x22 = riscv_x22_next;
    riscv_x23 = riscv_x23_next;
    riscv_x24 = riscv_x24_next;
    riscv_x25 = riscv_x25_next;
    riscv_x26 = riscv_x26_next;
    riscv_x27 = riscv_x27_next;
    riscv_x28 = riscv_x28_next;
    riscv_x29 = riscv_x29_next;
    riscv_x3 = riscv_x3_next;
    riscv_x30 = riscv_x30_next;
    riscv_x31 = riscv_x31_next;
    riscv_x4 = riscv_x4_next;
    riscv_x5 = riscv_x5_next;
    riscv_x6 = riscv_x6_next;
    riscv_x7 = riscv_x7_next;
    riscv_x8 = riscv_x8_next;
    riscv_x9 = riscv_x9_next;
  }
  while (1) {
    int schedule_counter = 0;
    if (schedule_counter == 0) 
      break;
  }
};
