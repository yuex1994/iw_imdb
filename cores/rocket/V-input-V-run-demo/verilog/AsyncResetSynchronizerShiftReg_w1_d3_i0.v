module AsyncResetSynchronizerShiftReg_w1_d3_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104954.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104955.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104956.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104957.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104957.4]
);
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@104960.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@104960.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@104960.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@104960.4]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@104960.4]
    .clock(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[SynchronizerReg.scala 84:8:freechips.rocketchip.system.DefaultRV32Config.fir@104966.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104961.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104962.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@104963.4]
endmodule
