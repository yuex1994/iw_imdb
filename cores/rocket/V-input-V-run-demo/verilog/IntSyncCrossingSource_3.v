module IntSyncCrossingSource_3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225504.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225505.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225506.4]
  input   auto_in_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225507.4]
  output  auto_out_sync_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225507.4]
);
  wire  AsyncResetRegVec_w1_i0_clock; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225518.4]
  wire  AsyncResetRegVec_w1_i0_reset; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225518.4]
  wire  AsyncResetRegVec_w1_i0_io_d; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225518.4]
  wire  AsyncResetRegVec_w1_i0_io_q; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225518.4]
  AsyncResetRegVec_w1_i0 AsyncResetRegVec_w1_i0 ( // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225518.4]
    .clock(AsyncResetRegVec_w1_i0_clock),
    .reset(AsyncResetRegVec_w1_i0_reset),
    .io_d(AsyncResetRegVec_w1_i0_io_d),
    .io_q(AsyncResetRegVec_w1_i0_io_q)
  );
  assign auto_out_sync_0 = AsyncResetRegVec_w1_i0_io_q; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@225516.4]
  assign AsyncResetRegVec_w1_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225520.4]
  assign AsyncResetRegVec_w1_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225521.4]
  assign AsyncResetRegVec_w1_i0_io_d = auto_in_0; // @[AsyncResetReg.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@225522.4]
endmodule
