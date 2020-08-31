module FixedClockBroadcast( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103.2]
  input   auto_in_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104.4]
  input   auto_in_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104.4]
  output  auto_out_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104.4]
  output  auto_out_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104.4]
);
  assign auto_out_clock = auto_in_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@118.4]
  assign auto_out_reset = auto_in_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@118.4]
endmodule
