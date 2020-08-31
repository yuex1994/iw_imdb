module IntSyncAsyncCrossingSink( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210516.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210517.4]
  input   auto_in_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210519.4]
  output  auto_out_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210519.4]
);
  wire  SynchronizerShiftReg_w1_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210530.4]
  wire  SynchronizerShiftReg_w1_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210530.4]
  wire  SynchronizerShiftReg_w1_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210530.4]
  SynchronizerShiftReg_w1_d3 SynchronizerShiftReg_w1_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@210530.4]
    .clock(SynchronizerShiftReg_w1_d3_clock),
    .io_d(SynchronizerShiftReg_w1_d3_io_d),
    .io_q(SynchronizerShiftReg_w1_d3_io_q)
  );
  assign auto_out_0 = SynchronizerShiftReg_w1_d3_io_q; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210528.4]
  assign SynchronizerShiftReg_w1_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210531.4]
  assign SynchronizerShiftReg_w1_d3_io_d = auto_in_sync_0; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@210533.4]
endmodule
