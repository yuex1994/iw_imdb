module SynchronizerShiftReg_w1_d3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210502.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210503.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210505.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210505.4]
);
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210508.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210508.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210508.4]
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 NonSyncResetSynchronizerPrimitiveShiftReg_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210508.4]
    .clock(NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock),
    .io_d(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d),
    .io_q(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q)
  );
  assign io_q = NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[SynchronizerReg.scala 165:8:freechips.rocketchip.system.DefaultRV32Config.fir@210514.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210509.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d = io_d; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@210511.4]
endmodule
