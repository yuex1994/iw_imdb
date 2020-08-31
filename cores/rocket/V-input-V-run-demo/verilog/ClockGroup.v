module ClockGroup( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@83.2]
  input   auto_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@84.4]
  input   auto_in_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@84.4]
  output  auto_out_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@84.4]
  output  auto_out_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@84.4]
);
  assign auto_out_clock = auto_in_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@98.4]
  assign auto_out_reset = auto_in_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@98.4]
endmodule
