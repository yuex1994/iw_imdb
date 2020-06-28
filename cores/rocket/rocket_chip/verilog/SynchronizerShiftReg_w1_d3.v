module SynchronizerShiftReg_w1_d3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210918.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210919.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210921.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210921.4]
);
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210924.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210924.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210924.4]
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 NonSyncResetSynchronizerPrimitiveShiftReg_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210924.4]
    .clock(NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock),
    .io_d(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d),
    .io_q(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q)
  );
  assign io_q = NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[SynchronizerReg.scala 165:8:freechips.rocketchip.system.DefaultRV32Config.fir@210930.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210925.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d = io_d; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@210927.4]
endmodule
