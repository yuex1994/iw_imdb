module ResetSynchronizerShiftReg_w1_d3_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232291.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232292.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232293.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232294.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232294.4]
);
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@232297.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@232297.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@232297.4]
  wire  InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@232297.4]
  InferredResetSynchronizerPrimitiveShiftReg_d3_i0 InferredResetSynchronizerPrimitiveShiftReg_d3_i0 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@232297.4]
    .clock(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[SynchronizerReg.scala 139:8:freechips.rocketchip.system.DefaultRV32Config.fir@232303.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232298.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232299.4]
  assign InferredResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@232300.4]
endmodule
