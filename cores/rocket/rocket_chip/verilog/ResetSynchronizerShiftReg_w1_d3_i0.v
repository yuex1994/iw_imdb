module ResetSynchronizerShiftReg_w1_d3_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@233996.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@233997.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@233998.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@233999.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@233999.4]
);
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@234002.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@234002.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@234002.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@234002.4]
  InferredResetSynchronizerPrimitiveShiftReg_d3_i0 InferredResetSynchronizerPrimitiveShiftReg_d3_i0 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@234002.4]
    .clock(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[SynchronizerReg.scala 139:8:freechips.rocketchip.system.DefaultRV32Config.fir@234008.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@234003.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@234004.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@234005.4]
endmodule
