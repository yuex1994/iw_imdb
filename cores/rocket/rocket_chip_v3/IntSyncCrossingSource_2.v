module IntSyncCrossingSource_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225463.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225464.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225465.4]
  input   auto_in_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225466.4]
  input   auto_in_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225466.4]
  output  auto_out_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225466.4]
  output  auto_out_sync_1 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225466.4]
);
  wire  AsyncResetRegVec_w2_i0_clock; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225478.4]
  wire  AsyncResetRegVec_w2_i0_reset; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225478.4]
  wire [1:0] AsyncResetRegVec_w2_i0_io_d; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225478.4]
  wire [1:0] AsyncResetRegVec_w2_i0_io_q; // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225478.4]
  AsyncResetRegVec_w2_i0 AsyncResetRegVec_w2_i0 ( // @[AsyncResetReg.scala 89:21:freechips.rocketchip.system.DefaultRV32Config.fir@225478.4]
    .clock(AsyncResetRegVec_w2_i0_clock),
    .reset(AsyncResetRegVec_w2_i0_reset),
    .io_d(AsyncResetRegVec_w2_i0_io_d),
    .io_q(AsyncResetRegVec_w2_i0_io_q)
  );
  assign auto_out_sync_0 = AsyncResetRegVec_w2_i0_io_q[0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@225475.4]
  assign auto_out_sync_1 = AsyncResetRegVec_w2_i0_io_q[1]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@225475.4]
  assign AsyncResetRegVec_w2_i0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225480.4]
  assign AsyncResetRegVec_w2_i0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225481.4]
  assign AsyncResetRegVec_w2_i0_io_d = {auto_in_1,auto_in_0}; // @[AsyncResetReg.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@225482.4]
endmodule
