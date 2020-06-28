module IntSyncCrossingSource_3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227209.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227210.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227211.4]
  input   auto_in_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227212.4]
  output  auto_out_sync_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227212.4]
);
  wire  AsyncResetRegVec_w1_i0_clock; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@227223.4]
  wire  AsyncResetRegVec_w1_i0_reset; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@227223.4]
  wire  AsyncResetRegVec_w1_i0_io_d; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@227223.4]
  wire  AsyncResetRegVec_w1_i0_io_q; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@227223.4]
  AsyncResetRegVec_w1_i0 AsyncResetRegVec_w1_i0 ( // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@227223.4]
    .clock(AsyncResetRegVec_w1_i0_clock),
    .reset(AsyncResetRegVec_w1_i0_reset),
    .io_d(AsyncResetRegVec_w1_i0_io_d),
    .io_q(AsyncResetRegVec_w1_i0_io_q)
  );
  assign auto_out_sync_0 = AsyncResetRegVec_w1_i0_io_q; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@227221.4]
  assign AsyncResetRegVec_w1_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227225.4]
  assign AsyncResetRegVec_w1_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227226.4]
  assign AsyncResetRegVec_w1_i0_io_d = auto_in_0; // @[AsyncResetReg.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@227227.4]
endmodule
