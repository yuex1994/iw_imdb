module PeripheryBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29155.2]
  input   auto_subsystem_pbus_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29156.4]
  input   auto_subsystem_pbus_clock_groups_in_member_0_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29156.4]
);
  wire  subsystem_pbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@29170.4]
  wire  subsystem_pbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@29170.4]
  wire  subsystem_pbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@29170.4]
  wire  subsystem_pbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@29170.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@29172.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@29172.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@29172.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@29172.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@29174.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@29174.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@29174.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@29174.4]
  ClockGroupAggregator_1 subsystem_pbus_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@29170.4]
    .auto_in_member_0_clock(subsystem_pbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_pbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_pbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_pbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@29172.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@29174.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  assign subsystem_pbus_clock_groups_auto_in_member_0_clock = auto_subsystem_pbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29217.4]
  assign subsystem_pbus_clock_groups_auto_in_member_0_reset = auto_subsystem_pbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29217.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_pbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29214.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_pbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29214.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29215.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29215.4]
endmodule
