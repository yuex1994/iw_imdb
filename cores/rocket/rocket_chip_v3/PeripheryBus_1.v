module PeripheryBus_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66557.2]
  input         auto_coupler_to_bootrom_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_bootrom_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [1:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [9:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [16:0] auto_coupler_to_bootrom_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [3:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_bootrom_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_bootrom_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [1:0]  auto_coupler_to_bootrom_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [9:0]  auto_coupler_to_bootrom_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [31:0] auto_coupler_to_bootrom_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_debug_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_debug_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_debug_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_debug_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [1:0]  auto_coupler_to_debug_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [9:0]  auto_coupler_to_debug_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [11:0] auto_coupler_to_debug_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [3:0]  auto_coupler_to_debug_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [31:0] auto_coupler_to_debug_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_debug_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_debug_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_debug_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [2:0]  auto_coupler_to_debug_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [1:0]  auto_coupler_to_debug_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [9:0]  auto_coupler_to_debug_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [31:0] auto_coupler_to_debug_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_clint_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_clint_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_clint_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_clint_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [1:0]  auto_coupler_to_clint_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [9:0]  auto_coupler_to_clint_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [25:0] auto_coupler_to_clint_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [3:0]  auto_coupler_to_clint_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [31:0] auto_coupler_to_clint_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_clint_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_clint_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_clint_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [2:0]  auto_coupler_to_clint_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [1:0]  auto_coupler_to_clint_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [9:0]  auto_coupler_to_clint_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [31:0] auto_coupler_to_clint_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_plic_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_plic_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_plic_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_coupler_to_plic_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [1:0]  auto_coupler_to_plic_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [9:0]  auto_coupler_to_plic_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [27:0] auto_coupler_to_plic_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [3:0]  auto_coupler_to_plic_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [31:0] auto_coupler_to_plic_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_plic_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_coupler_to_plic_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_coupler_to_plic_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [2:0]  auto_coupler_to_plic_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [1:0]  auto_coupler_to_plic_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [9:0]  auto_coupler_to_plic_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [31:0] auto_coupler_to_plic_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_subsystem_cbus_clock_groups_in_member_1_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_subsystem_cbus_clock_groups_in_member_1_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_subsystem_cbus_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_subsystem_cbus_clock_groups_in_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_subsystem_cbus_clock_groups_out_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_subsystem_cbus_clock_groups_out_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_bus_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_bus_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [2:0]  auto_bus_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [2:0]  auto_bus_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [3:0]  auto_bus_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [4:0]  auto_bus_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [27:0] auto_bus_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [3:0]  auto_bus_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input  [31:0] auto_bus_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_bus_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  input         auto_bus_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_bus_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [2:0]  auto_bus_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [1:0]  auto_bus_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [3:0]  auto_bus_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [4:0]  auto_bus_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_bus_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_bus_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output [31:0] auto_bus_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
  output        auto_bus_xing_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66558.4]
);
  wire  subsystem_cbus_clock_groups_auto_in_member_1_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_in_member_1_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_out_1_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_out_1_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_out_0_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  subsystem_cbus_clock_groups_auto_out_0_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@66574.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@66574.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@66574.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@66574.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@66576.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@66576.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@66576.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@66576.4]
  wire  fixer_clock; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_reset; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_a_ready; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_a_valid; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_in_a_bits_size; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [4:0] fixer_auto_in_a_bits_source; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [27:0] fixer_auto_in_a_bits_address; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_in_a_bits_mask; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [31:0] fixer_auto_in_a_bits_data; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_d_ready; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_d_valid; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [1:0] fixer_auto_in_d_bits_param; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_in_d_bits_size; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [4:0] fixer_auto_in_d_bits_source; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_d_bits_sink; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_d_bits_denied; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [31:0] fixer_auto_in_d_bits_data; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_a_ready; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_a_valid; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_out_a_bits_size; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [4:0] fixer_auto_out_a_bits_source; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [27:0] fixer_auto_out_a_bits_address; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_out_a_bits_mask; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [31:0] fixer_auto_out_a_bits_data; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_d_ready; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_d_valid; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [1:0] fixer_auto_out_d_bits_param; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [3:0] fixer_auto_out_d_bits_size; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [4:0] fixer_auto_out_d_bits_source; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_d_bits_sink; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_d_bits_denied; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire [31:0] fixer_auto_out_d_bits_data; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
  wire  in_xbar_clock; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_reset; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_a_ready; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_a_valid; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [4:0] in_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [27:0] in_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [31:0] in_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_d_ready; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_d_valid; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [1:0] in_xbar_auto_in_d_bits_param; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [4:0] in_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_d_bits_sink; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_d_bits_denied; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [31:0] in_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_a_ready; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_a_valid; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_out_a_bits_opcode; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_out_a_bits_param; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_out_a_bits_size; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [4:0] in_xbar_auto_out_a_bits_source; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [27:0] in_xbar_auto_out_a_bits_address; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_out_a_bits_mask; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [31:0] in_xbar_auto_out_a_bits_data; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_d_ready; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_d_valid; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [2:0] in_xbar_auto_out_d_bits_opcode; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [1:0] in_xbar_auto_out_d_bits_param; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [3:0] in_xbar_auto_out_d_bits_size; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [4:0] in_xbar_auto_out_d_bits_source; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_d_bits_sink; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_d_bits_denied; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire [31:0] in_xbar_auto_out_d_bits_data; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  in_xbar_auto_out_d_bits_corrupt; // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
  wire  out_xbar_clock; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_reset; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [27:0] out_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [1:0] out_xbar_auto_in_d_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_d_bits_sink; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_d_bits_denied; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_4_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_4_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_4_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [16:0] out_xbar_auto_out_4_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_4_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_4_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_4_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_4_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_4_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_4_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_4_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_3_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_3_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_3_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [11:0] out_xbar_auto_out_3_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_3_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_3_a_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_3_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_3_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_3_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_3_d_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_3_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_3_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_3_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_2_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_2_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_2_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [25:0] out_xbar_auto_out_2_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_2_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_2_a_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_2_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_2_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_2_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_2_d_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_2_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_2_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_2_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_1_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_1_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_1_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [27:0] out_xbar_auto_out_1_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_1_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_1_a_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_1_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_1_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_1_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_1_d_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_1_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_1_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_1_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_a_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_a_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_0_a_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_0_a_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_0_a_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_0_a_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [13:0] out_xbar_auto_out_0_a_bits_address; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_0_a_bits_mask; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_a_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_d_ready; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_d_valid; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [2:0] out_xbar_auto_out_0_d_bits_opcode; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [1:0] out_xbar_auto_out_0_d_bits_param; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [3:0] out_xbar_auto_out_0_d_bits_size; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [4:0] out_xbar_auto_out_0_d_bits_source; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_d_bits_sink; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_d_bits_denied; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire [31:0] out_xbar_auto_out_0_d_bits_data; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  out_xbar_auto_out_0_d_bits_corrupt; // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [4:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [27:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [4:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [4:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [27:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [4:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
  wire  atomics_clock; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_reset; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_a_ready; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_a_valid; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_in_a_bits_opcode; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_in_a_bits_param; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_in_a_bits_size; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [4:0] atomics_auto_in_a_bits_source; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [27:0] atomics_auto_in_a_bits_address; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_in_a_bits_mask; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [31:0] atomics_auto_in_a_bits_data; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_a_bits_corrupt; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_d_ready; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_d_valid; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_in_d_bits_opcode; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [1:0] atomics_auto_in_d_bits_param; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_in_d_bits_size; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [4:0] atomics_auto_in_d_bits_source; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_d_bits_sink; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_d_bits_denied; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [31:0] atomics_auto_in_d_bits_data; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_in_d_bits_corrupt; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_a_ready; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_a_valid; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_out_a_bits_opcode; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_out_a_bits_param; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_out_a_bits_size; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [4:0] atomics_auto_out_a_bits_source; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [27:0] atomics_auto_out_a_bits_address; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_out_a_bits_mask; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [31:0] atomics_auto_out_a_bits_data; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_a_bits_corrupt; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_d_ready; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_d_valid; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [2:0] atomics_auto_out_d_bits_opcode; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [1:0] atomics_auto_out_d_bits_param; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [3:0] atomics_auto_out_d_bits_size; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [4:0] atomics_auto_out_d_bits_source; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_d_bits_sink; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_d_bits_denied; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire [31:0] atomics_auto_out_d_bits_data; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  atomics_auto_out_d_bits_corrupt; // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
  wire  wrapped_error_device_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [4:0] wrapped_error_device_auto_buffer_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [13:0] wrapped_error_device_auto_buffer_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [1:0] wrapped_error_device_auto_buffer_in_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [4:0] wrapped_error_device_auto_buffer_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire [31:0] wrapped_error_device_auto_buffer_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
  wire  buffer_1_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [4:0] buffer_1_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [27:0] buffer_1_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [31:0] buffer_1_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [1:0] buffer_1_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [4:0] buffer_1_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [31:0] buffer_1_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [4:0] buffer_1_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [27:0] buffer_1_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [31:0] buffer_1_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [2:0] buffer_1_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [1:0] buffer_1_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [3:0] buffer_1_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [4:0] buffer_1_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire [31:0] buffer_1_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  buffer_1_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
  wire  coupler_to_plic_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [4:0] coupler_to_plic_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [27:0] coupler_to_plic_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [3:0] coupler_to_plic_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [4:0] coupler_to_plic_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [1:0] coupler_to_plic_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [9:0] coupler_to_plic_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [27:0] coupler_to_plic_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [3:0] coupler_to_plic_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_plic_auto_fragmenter_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [1:0] coupler_to_plic_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [9:0] coupler_to_plic_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
  wire  coupler_to_clint_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [4:0] coupler_to_clint_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [25:0] coupler_to_clint_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [3:0] coupler_to_clint_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [4:0] coupler_to_clint_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [1:0] coupler_to_clint_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [9:0] coupler_to_clint_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [25:0] coupler_to_clint_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [3:0] coupler_to_clint_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_clint_auto_fragmenter_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [1:0] coupler_to_clint_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [9:0] coupler_to_clint_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
  wire  coupler_to_debug_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [4:0] coupler_to_debug_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [11:0] coupler_to_debug_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [3:0] coupler_to_debug_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [4:0] coupler_to_debug_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [1:0] coupler_to_debug_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [9:0] coupler_to_debug_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [11:0] coupler_to_debug_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [3:0] coupler_to_debug_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_debug_auto_fragmenter_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [1:0] coupler_to_debug_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [9:0] coupler_to_debug_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
  wire  coupler_to_bootrom_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [4:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [16:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [3:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [4:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [31:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [1:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [9:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [16:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [3:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [1:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [9:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  wire [31:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
  ClockGroupAggregator_3 subsystem_cbus_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@66572.4]
    .auto_in_member_1_clock(subsystem_cbus_clock_groups_auto_in_member_1_clock),
    .auto_in_member_1_reset(subsystem_cbus_clock_groups_auto_in_member_1_reset),
    .auto_in_member_0_clock(subsystem_cbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_cbus_clock_groups_auto_in_member_0_reset),
    .auto_out_1_member_0_clock(subsystem_cbus_clock_groups_auto_out_1_member_0_clock),
    .auto_out_1_member_0_reset(subsystem_cbus_clock_groups_auto_out_1_member_0_reset),
    .auto_out_0_member_0_clock(subsystem_cbus_clock_groups_auto_out_0_member_0_clock),
    .auto_out_0_member_0_reset(subsystem_cbus_clock_groups_auto_out_0_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@66574.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@66576.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLFIFOFixer_3 fixer ( // @[PeripheryBus.scala 45:33:freechips.rocketchip.system.DefaultRV32Config.fir@66578.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(fixer_auto_in_d_bits_param),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(fixer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fixer_auto_out_a_bits_param),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(fixer_auto_out_d_bits_param),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(fixer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  TLXbar_4 in_xbar ( // @[PeripheryBus.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@66584.4]
    .clock(in_xbar_clock),
    .reset(in_xbar_reset),
    .auto_in_a_ready(in_xbar_auto_in_a_ready),
    .auto_in_a_valid(in_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(in_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(in_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(in_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(in_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(in_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(in_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(in_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(in_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(in_xbar_auto_in_d_ready),
    .auto_in_d_valid(in_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(in_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(in_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(in_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(in_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(in_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(in_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(in_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(in_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(in_xbar_auto_out_a_ready),
    .auto_out_a_valid(in_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(in_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(in_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(in_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(in_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(in_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(in_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(in_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(in_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(in_xbar_auto_out_d_ready),
    .auto_out_d_valid(in_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(in_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(in_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(in_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(in_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(in_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(in_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(in_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(in_xbar_auto_out_d_bits_corrupt)
  );
  TLXbar_5 out_xbar ( // @[PeripheryBus.scala 48:30:freechips.rocketchip.system.DefaultRV32Config.fir@66590.4]
    .clock(out_xbar_clock),
    .reset(out_xbar_reset),
    .auto_in_a_ready(out_xbar_auto_in_a_ready),
    .auto_in_a_valid(out_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(out_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(out_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(out_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(out_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(out_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(out_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(out_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(out_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(out_xbar_auto_in_d_ready),
    .auto_in_d_valid(out_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(out_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(out_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(out_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(out_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(out_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(out_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(out_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(out_xbar_auto_in_d_bits_corrupt),
    .auto_out_4_a_ready(out_xbar_auto_out_4_a_ready),
    .auto_out_4_a_valid(out_xbar_auto_out_4_a_valid),
    .auto_out_4_a_bits_opcode(out_xbar_auto_out_4_a_bits_opcode),
    .auto_out_4_a_bits_param(out_xbar_auto_out_4_a_bits_param),
    .auto_out_4_a_bits_size(out_xbar_auto_out_4_a_bits_size),
    .auto_out_4_a_bits_source(out_xbar_auto_out_4_a_bits_source),
    .auto_out_4_a_bits_address(out_xbar_auto_out_4_a_bits_address),
    .auto_out_4_a_bits_mask(out_xbar_auto_out_4_a_bits_mask),
    .auto_out_4_a_bits_corrupt(out_xbar_auto_out_4_a_bits_corrupt),
    .auto_out_4_d_ready(out_xbar_auto_out_4_d_ready),
    .auto_out_4_d_valid(out_xbar_auto_out_4_d_valid),
    .auto_out_4_d_bits_size(out_xbar_auto_out_4_d_bits_size),
    .auto_out_4_d_bits_source(out_xbar_auto_out_4_d_bits_source),
    .auto_out_4_d_bits_data(out_xbar_auto_out_4_d_bits_data),
    .auto_out_3_a_ready(out_xbar_auto_out_3_a_ready),
    .auto_out_3_a_valid(out_xbar_auto_out_3_a_valid),
    .auto_out_3_a_bits_opcode(out_xbar_auto_out_3_a_bits_opcode),
    .auto_out_3_a_bits_param(out_xbar_auto_out_3_a_bits_param),
    .auto_out_3_a_bits_size(out_xbar_auto_out_3_a_bits_size),
    .auto_out_3_a_bits_source(out_xbar_auto_out_3_a_bits_source),
    .auto_out_3_a_bits_address(out_xbar_auto_out_3_a_bits_address),
    .auto_out_3_a_bits_mask(out_xbar_auto_out_3_a_bits_mask),
    .auto_out_3_a_bits_data(out_xbar_auto_out_3_a_bits_data),
    .auto_out_3_a_bits_corrupt(out_xbar_auto_out_3_a_bits_corrupt),
    .auto_out_3_d_ready(out_xbar_auto_out_3_d_ready),
    .auto_out_3_d_valid(out_xbar_auto_out_3_d_valid),
    .auto_out_3_d_bits_opcode(out_xbar_auto_out_3_d_bits_opcode),
    .auto_out_3_d_bits_size(out_xbar_auto_out_3_d_bits_size),
    .auto_out_3_d_bits_source(out_xbar_auto_out_3_d_bits_source),
    .auto_out_3_d_bits_data(out_xbar_auto_out_3_d_bits_data),
    .auto_out_2_a_ready(out_xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(out_xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(out_xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_param(out_xbar_auto_out_2_a_bits_param),
    .auto_out_2_a_bits_size(out_xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(out_xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(out_xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_mask(out_xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(out_xbar_auto_out_2_a_bits_data),
    .auto_out_2_a_bits_corrupt(out_xbar_auto_out_2_a_bits_corrupt),
    .auto_out_2_d_ready(out_xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(out_xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(out_xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(out_xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(out_xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_data(out_xbar_auto_out_2_d_bits_data),
    .auto_out_1_a_ready(out_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(out_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(out_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(out_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(out_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(out_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(out_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(out_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(out_xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(out_xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_d_ready(out_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(out_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(out_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_size(out_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(out_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_data(out_xbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(out_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(out_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(out_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(out_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(out_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(out_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(out_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(out_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_corrupt(out_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(out_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(out_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(out_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(out_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(out_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(out_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(out_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(out_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(out_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(out_xbar_auto_out_0_d_bits_corrupt)
  );
  TLBuffer_5 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66596.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  TLAtomicAutomata_1 atomics ( // @[AtomicAutomata.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@66602.4]
    .clock(atomics_clock),
    .reset(atomics_reset),
    .auto_in_a_ready(atomics_auto_in_a_ready),
    .auto_in_a_valid(atomics_auto_in_a_valid),
    .auto_in_a_bits_opcode(atomics_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(atomics_auto_in_a_bits_param),
    .auto_in_a_bits_size(atomics_auto_in_a_bits_size),
    .auto_in_a_bits_source(atomics_auto_in_a_bits_source),
    .auto_in_a_bits_address(atomics_auto_in_a_bits_address),
    .auto_in_a_bits_mask(atomics_auto_in_a_bits_mask),
    .auto_in_a_bits_data(atomics_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(atomics_auto_in_a_bits_corrupt),
    .auto_in_d_ready(atomics_auto_in_d_ready),
    .auto_in_d_valid(atomics_auto_in_d_valid),
    .auto_in_d_bits_opcode(atomics_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(atomics_auto_in_d_bits_param),
    .auto_in_d_bits_size(atomics_auto_in_d_bits_size),
    .auto_in_d_bits_source(atomics_auto_in_d_bits_source),
    .auto_in_d_bits_sink(atomics_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(atomics_auto_in_d_bits_denied),
    .auto_in_d_bits_data(atomics_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(atomics_auto_in_d_bits_corrupt),
    .auto_out_a_ready(atomics_auto_out_a_ready),
    .auto_out_a_valid(atomics_auto_out_a_valid),
    .auto_out_a_bits_opcode(atomics_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(atomics_auto_out_a_bits_param),
    .auto_out_a_bits_size(atomics_auto_out_a_bits_size),
    .auto_out_a_bits_source(atomics_auto_out_a_bits_source),
    .auto_out_a_bits_address(atomics_auto_out_a_bits_address),
    .auto_out_a_bits_mask(atomics_auto_out_a_bits_mask),
    .auto_out_a_bits_data(atomics_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(atomics_auto_out_a_bits_corrupt),
    .auto_out_d_ready(atomics_auto_out_d_ready),
    .auto_out_d_valid(atomics_auto_out_d_valid),
    .auto_out_d_bits_opcode(atomics_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(atomics_auto_out_d_bits_param),
    .auto_out_d_bits_size(atomics_auto_out_d_bits_size),
    .auto_out_d_bits_source(atomics_auto_out_d_bits_source),
    .auto_out_d_bits_sink(atomics_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(atomics_auto_out_d_bits_denied),
    .auto_out_d_bits_data(atomics_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(atomics_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_6 wrapped_error_device ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66608.4]
    .clock(wrapped_error_device_clock),
    .reset(wrapped_error_device_reset),
    .auto_buffer_in_a_ready(wrapped_error_device_auto_buffer_in_a_ready),
    .auto_buffer_in_a_valid(wrapped_error_device_auto_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode(wrapped_error_device_auto_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_param(wrapped_error_device_auto_buffer_in_a_bits_param),
    .auto_buffer_in_a_bits_size(wrapped_error_device_auto_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source(wrapped_error_device_auto_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address(wrapped_error_device_auto_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask(wrapped_error_device_auto_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_corrupt(wrapped_error_device_auto_buffer_in_a_bits_corrupt),
    .auto_buffer_in_d_ready(wrapped_error_device_auto_buffer_in_d_ready),
    .auto_buffer_in_d_valid(wrapped_error_device_auto_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode(wrapped_error_device_auto_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_param(wrapped_error_device_auto_buffer_in_d_bits_param),
    .auto_buffer_in_d_bits_size(wrapped_error_device_auto_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source(wrapped_error_device_auto_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_sink(wrapped_error_device_auto_buffer_in_d_bits_sink),
    .auto_buffer_in_d_bits_denied(wrapped_error_device_auto_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_data(wrapped_error_device_auto_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt(wrapped_error_device_auto_buffer_in_d_bits_corrupt)
  );
  TLBuffer_7 buffer_1 ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@66614.4]
    .clock(buffer_1_clock),
    .reset(buffer_1_reset),
    .auto_in_a_ready(buffer_1_auto_in_a_ready),
    .auto_in_a_valid(buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_1_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_1_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_1_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_1_auto_in_d_ready),
    .auto_in_d_valid(buffer_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_1_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_1_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_1_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_1_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_1_auto_out_a_ready),
    .auto_out_a_valid(buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_1_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_1_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_1_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_1_auto_out_d_ready),
    .auto_out_d_valid(buffer_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_1_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_1_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_1_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_1_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_1_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_8 coupler_to_plic ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66626.4]
    .clock(coupler_to_plic_clock),
    .reset(coupler_to_plic_reset),
    .auto_fragmenter_in_a_ready(coupler_to_plic_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_plic_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_plic_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_plic_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_plic_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_plic_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_plic_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_plic_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_plic_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_plic_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_plic_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_plic_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_plic_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_plic_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_plic_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_plic_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_plic_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_plic_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_plic_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_plic_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_plic_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_plic_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_plic_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_plic_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_plic_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_plic_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_plic_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_plic_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_plic_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_plic_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_plic_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_plic_auto_fragmenter_out_d_bits_data)
  );
  SimpleLazyModule_9 coupler_to_clint ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66632.4]
    .clock(coupler_to_clint_clock),
    .reset(coupler_to_clint_reset),
    .auto_fragmenter_in_a_ready(coupler_to_clint_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_clint_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_clint_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_clint_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_clint_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_clint_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_clint_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_clint_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_clint_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_clint_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_clint_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_clint_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_clint_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_clint_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_clint_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_clint_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_clint_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_clint_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_clint_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_clint_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_clint_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_clint_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_clint_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_clint_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_clint_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_clint_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_clint_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_clint_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_clint_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_clint_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_clint_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_clint_auto_fragmenter_out_d_bits_data)
  );
  SimpleLazyModule_10 coupler_to_debug ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66638.4]
    .clock(coupler_to_debug_clock),
    .reset(coupler_to_debug_reset),
    .auto_fragmenter_in_a_ready(coupler_to_debug_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_debug_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_debug_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_debug_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_debug_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_debug_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_debug_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_debug_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_debug_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_debug_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_debug_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_debug_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_debug_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_debug_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_debug_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_debug_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_debug_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_debug_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_debug_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_debug_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_debug_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_debug_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_debug_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_debug_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_debug_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_debug_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_debug_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_debug_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_debug_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_debug_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_debug_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_debug_auto_fragmenter_out_d_bits_data)
  );
  SimpleLazyModule_12 coupler_to_bootrom ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@66650.4]
    .clock(coupler_to_bootrom_clock),
    .reset(coupler_to_bootrom_reset),
    .auto_fragmenter_in_a_ready(coupler_to_bootrom_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_bootrom_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_bootrom_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_bootrom_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_bootrom_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_bootrom_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_bootrom_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_bootrom_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_bootrom_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_size(coupler_to_bootrom_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_bootrom_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_bootrom_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_bootrom_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_bootrom_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_bootrom_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_bootrom_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_bootrom_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_bootrom_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_bootrom_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_bootrom_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_bootrom_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_size(coupler_to_bootrom_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_bootrom_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_bootrom_auto_fragmenter_out_d_bits_data)
  );
  assign auto_coupler_to_bootrom_fragmenter_out_a_valid = coupler_to_bootrom_auto_fragmenter_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode = coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_param = coupler_to_bootrom_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_size = coupler_to_bootrom_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_source = coupler_to_bootrom_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_address = coupler_to_bootrom_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_mask = coupler_to_bootrom_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt = coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_bootrom_fragmenter_out_d_ready = coupler_to_bootrom_auto_fragmenter_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign auto_coupler_to_debug_fragmenter_out_a_valid = coupler_to_debug_auto_fragmenter_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_opcode = coupler_to_debug_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_param = coupler_to_debug_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_size = coupler_to_debug_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_source = coupler_to_debug_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_address = coupler_to_debug_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_mask = coupler_to_debug_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_data = coupler_to_debug_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_corrupt = coupler_to_debug_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_debug_fragmenter_out_d_ready = coupler_to_debug_auto_fragmenter_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign auto_coupler_to_clint_fragmenter_out_a_valid = coupler_to_clint_auto_fragmenter_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_opcode = coupler_to_clint_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_param = coupler_to_clint_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_size = coupler_to_clint_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_source = coupler_to_clint_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_address = coupler_to_clint_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_mask = coupler_to_clint_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_data = coupler_to_clint_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_corrupt = coupler_to_clint_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_clint_fragmenter_out_d_ready = coupler_to_clint_auto_fragmenter_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign auto_coupler_to_plic_fragmenter_out_a_valid = coupler_to_plic_auto_fragmenter_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_opcode = coupler_to_plic_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_param = coupler_to_plic_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_size = coupler_to_plic_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_source = coupler_to_plic_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_address = coupler_to_plic_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_mask = coupler_to_plic_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_data = coupler_to_plic_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_corrupt = coupler_to_plic_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_coupler_to_plic_fragmenter_out_d_ready = coupler_to_plic_auto_fragmenter_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign auto_subsystem_cbus_clock_groups_out_member_0_clock = subsystem_cbus_clock_groups_auto_out_1_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66678.4]
  assign auto_subsystem_cbus_clock_groups_out_member_0_reset = subsystem_cbus_clock_groups_auto_out_1_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66678.4]
  assign auto_bus_xing_in_a_ready = buffer_1_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_valid = buffer_1_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_opcode = buffer_1_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_param = buffer_1_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_size = buffer_1_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_source = buffer_1_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_sink = buffer_1_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_denied = buffer_1_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_data = buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign auto_bus_xing_in_d_bits_corrupt = buffer_1_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66677.4]
  assign subsystem_cbus_clock_groups_auto_in_member_1_clock = auto_subsystem_cbus_clock_groups_in_member_1_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66679.4]
  assign subsystem_cbus_clock_groups_auto_in_member_1_reset = auto_subsystem_cbus_clock_groups_in_member_1_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66679.4]
  assign subsystem_cbus_clock_groups_auto_in_member_0_clock = auto_subsystem_cbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66679.4]
  assign subsystem_cbus_clock_groups_auto_in_member_0_reset = auto_subsystem_cbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@66679.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_cbus_clock_groups_auto_out_0_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66663.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_cbus_clock_groups_auto_out_0_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66663.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66664.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66664.4]
  assign fixer_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66582.4]
  assign fixer_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66583.4]
  assign fixer_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign fixer_auto_out_a_ready = out_xbar_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_valid = out_xbar_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_opcode = out_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_param = out_xbar_auto_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_size = out_xbar_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_source = out_xbar_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_sink = out_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_denied = out_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_data = out_xbar_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign fixer_auto_out_d_bits_corrupt = out_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign in_xbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66588.4]
  assign in_xbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66589.4]
  assign in_xbar_auto_in_a_valid = buffer_1_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_opcode = buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_param = buffer_1_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_size = buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_source = buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_address = buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_mask = buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_data = buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_a_bits_corrupt = buffer_1_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_in_d_ready = buffer_1_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign in_xbar_auto_out_a_ready = atomics_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_valid = atomics_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_opcode = atomics_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_param = atomics_auto_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_size = atomics_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_source = atomics_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_sink = atomics_auto_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_denied = atomics_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_data = atomics_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign in_xbar_auto_out_d_bits_corrupt = atomics_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign out_xbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66594.4]
  assign out_xbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66595.4]
  assign out_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66666.4]
  assign out_xbar_auto_out_4_a_ready = coupler_to_bootrom_auto_fragmenter_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign out_xbar_auto_out_4_d_valid = coupler_to_bootrom_auto_fragmenter_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign out_xbar_auto_out_4_d_bits_size = coupler_to_bootrom_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign out_xbar_auto_out_4_d_bits_source = coupler_to_bootrom_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign out_xbar_auto_out_4_d_bits_data = coupler_to_bootrom_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign out_xbar_auto_out_3_a_ready = coupler_to_debug_auto_fragmenter_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_3_d_valid = coupler_to_debug_auto_fragmenter_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_3_d_bits_opcode = coupler_to_debug_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_3_d_bits_size = coupler_to_debug_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_3_d_bits_source = coupler_to_debug_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_3_d_bits_data = coupler_to_debug_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign out_xbar_auto_out_2_a_ready = coupler_to_clint_auto_fragmenter_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_2_d_valid = coupler_to_clint_auto_fragmenter_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_2_d_bits_opcode = coupler_to_clint_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_2_d_bits_size = coupler_to_clint_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_2_d_bits_source = coupler_to_clint_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_2_d_bits_data = coupler_to_clint_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign out_xbar_auto_out_1_a_ready = coupler_to_plic_auto_fragmenter_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_1_d_valid = coupler_to_plic_auto_fragmenter_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_1_d_bits_opcode = coupler_to_plic_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_1_d_bits_size = coupler_to_plic_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_1_d_bits_source = coupler_to_plic_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_1_d_bits_data = coupler_to_plic_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign out_xbar_auto_out_0_a_ready = wrapped_error_device_auto_buffer_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_valid = wrapped_error_device_auto_buffer_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_opcode = wrapped_error_device_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_param = wrapped_error_device_auto_buffer_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_size = wrapped_error_device_auto_buffer_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_source = wrapped_error_device_auto_buffer_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_sink = wrapped_error_device_auto_buffer_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_denied = wrapped_error_device_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_data = wrapped_error_device_auto_buffer_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign out_xbar_auto_out_0_d_bits_corrupt = wrapped_error_device_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign buffer_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66600.4]
  assign buffer_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66601.4]
  assign buffer_auto_in_a_valid = atomics_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_opcode = atomics_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_param = atomics_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_size = atomics_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_source = atomics_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_address = atomics_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_mask = atomics_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_data = atomics_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_a_bits_corrupt = atomics_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_in_d_ready = atomics_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign buffer_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_param = fixer_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_sink = fixer_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign buffer_auto_out_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66673.4]
  assign atomics_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66606.4]
  assign atomics_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66607.4]
  assign atomics_auto_in_a_valid = in_xbar_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_opcode = in_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_param = in_xbar_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_size = in_xbar_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_source = in_xbar_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_address = in_xbar_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_mask = in_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_data = in_xbar_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_a_bits_corrupt = in_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_in_d_ready = in_xbar_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66667.4]
  assign atomics_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign atomics_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66674.4]
  assign wrapped_error_device_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66612.4]
  assign wrapped_error_device_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66613.4]
  assign wrapped_error_device_auto_buffer_in_a_valid = out_xbar_auto_out_0_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_opcode = out_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_param = out_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_size = out_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_source = out_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_address = out_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_mask = out_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_corrupt = out_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign wrapped_error_device_auto_buffer_in_d_ready = out_xbar_auto_out_0_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66668.4]
  assign buffer_1_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66618.4]
  assign buffer_1_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66619.4]
  assign buffer_1_auto_in_a_valid = auto_bus_xing_in_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_opcode = auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_param = auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_size = auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_source = auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_address = auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_mask = auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_data = auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_a_bits_corrupt = auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_in_d_ready = auto_bus_xing_in_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66676.4]
  assign buffer_1_auto_out_a_ready = in_xbar_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_valid = in_xbar_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_opcode = in_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_param = in_xbar_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_size = in_xbar_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_source = in_xbar_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_sink = in_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_denied = in_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_data = in_xbar_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign buffer_1_auto_out_d_bits_corrupt = in_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@66675.4]
  assign coupler_to_plic_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66630.4]
  assign coupler_to_plic_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66631.4]
  assign coupler_to_plic_auto_fragmenter_in_a_valid = out_xbar_auto_out_1_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_in_d_ready = out_xbar_auto_out_1_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66669.4]
  assign coupler_to_plic_auto_fragmenter_out_a_ready = auto_coupler_to_plic_fragmenter_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_plic_auto_fragmenter_out_d_valid = auto_coupler_to_plic_fragmenter_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_plic_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_size = auto_coupler_to_plic_fragmenter_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_source = auto_coupler_to_plic_fragmenter_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_data = auto_coupler_to_plic_fragmenter_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66680.4]
  assign coupler_to_clint_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66636.4]
  assign coupler_to_clint_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66637.4]
  assign coupler_to_clint_auto_fragmenter_in_a_valid = out_xbar_auto_out_2_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_2_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_2_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_in_d_ready = out_xbar_auto_out_2_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66670.4]
  assign coupler_to_clint_auto_fragmenter_out_a_ready = auto_coupler_to_clint_fragmenter_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_clint_auto_fragmenter_out_d_valid = auto_coupler_to_clint_fragmenter_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_clint_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_size = auto_coupler_to_clint_fragmenter_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_source = auto_coupler_to_clint_fragmenter_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_data = auto_coupler_to_clint_fragmenter_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66681.4]
  assign coupler_to_debug_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66642.4]
  assign coupler_to_debug_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66643.4]
  assign coupler_to_debug_auto_fragmenter_in_a_valid = out_xbar_auto_out_3_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_3_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_3_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_3_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_3_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_3_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_3_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_3_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_3_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_in_d_ready = out_xbar_auto_out_3_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66671.4]
  assign coupler_to_debug_auto_fragmenter_out_a_ready = auto_coupler_to_debug_fragmenter_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_debug_auto_fragmenter_out_d_valid = auto_coupler_to_debug_fragmenter_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_debug_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_size = auto_coupler_to_debug_fragmenter_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_source = auto_coupler_to_debug_fragmenter_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_data = auto_coupler_to_debug_fragmenter_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66682.4]
  assign coupler_to_bootrom_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66654.4]
  assign coupler_to_bootrom_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66655.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_valid = out_xbar_auto_out_4_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_4_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_4_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_4_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_4_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_4_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_4_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_4_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_in_d_ready = out_xbar_auto_out_4_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@66672.4]
  assign coupler_to_bootrom_auto_fragmenter_out_a_ready = auto_coupler_to_bootrom_fragmenter_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_valid = auto_coupler_to_bootrom_fragmenter_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_size = auto_coupler_to_bootrom_fragmenter_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_source = auto_coupler_to_bootrom_fragmenter_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_data = auto_coupler_to_bootrom_fragmenter_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@66683.4]
endmodule
