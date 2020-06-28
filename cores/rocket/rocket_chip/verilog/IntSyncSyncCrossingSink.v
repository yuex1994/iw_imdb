module IntSyncSyncCrossingSink( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210957.2]
  input   auto_in_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210960.4]
  input   auto_in_sync_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210960.4]
  output  auto_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210960.4]
  output  auto_out_1 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210960.4]
);
  assign auto_out_0 = auto_in_sync_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210969.4]
  assign auto_out_1 = auto_in_sync_1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210969.4]
endmodule
