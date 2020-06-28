module IntSyncAsyncCrossingSink( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210932.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210933.4]
  input   auto_in_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210935.4]
  output  auto_out_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210935.4]
);
  wire  SynchronizerShiftReg_w1_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210946.4]
  wire  SynchronizerShiftReg_w1_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210946.4]
  wire  SynchronizerShiftReg_w1_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210946.4]
  SynchronizerShiftReg_w1_d3 SynchronizerShiftReg_w1_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210946.4]
    .clock(SynchronizerShiftReg_w1_d3_clock),
    .io_d(SynchronizerShiftReg_w1_d3_io_d),
    .io_q(SynchronizerShiftReg_w1_d3_io_q)
  );
  assign auto_out_0 = SynchronizerShiftReg_w1_d3_io_q; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210944.4]
  assign SynchronizerShiftReg_w1_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210947.4]
  assign SynchronizerShiftReg_w1_d3_io_d = auto_in_sync_0; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@210949.4]
endmodule
