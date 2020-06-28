module CoherenceManagerWrapper( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88882.2]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [1:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [31:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [4:0]  auto_coherent_jbar_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [31:0] auto_coherent_jbar_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [3:0]  auto_coherent_jbar_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [31:0] auto_coherent_jbar_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [1:0]  auto_coherent_jbar_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [31:0] auto_coherent_jbar_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [4:0]  auto_coherent_jbar_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [31:0] auto_coherent_jbar_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [31:0] auto_coherent_jbar_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [1:0]  auto_coherent_jbar_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [4:0]  auto_coherent_jbar_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [1:0]  auto_coherent_jbar_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output [31:0] auto_coherent_jbar_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_coherent_jbar_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_coherent_jbar_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input  [1:0]  auto_coherent_jbar_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_subsystem_l2_clock_groups_in_member_1_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_subsystem_l2_clock_groups_in_member_1_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_subsystem_l2_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  input         auto_subsystem_l2_clock_groups_in_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_subsystem_l2_clock_groups_out_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
  output        auto_subsystem_l2_clock_groups_out_member_0_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88883.4]
);
  wire  subsystem_l2_clock_groups_auto_in_member_1_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_in_member_1_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_out_1_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_out_1_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_out_0_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  subsystem_l2_clock_groups_auto_out_0_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@88899.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@88899.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@88899.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@88899.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@88901.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@88901.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@88901.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@88901.4]
  wire  bh_clock; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_reset; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_a_bits_opcode; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_a_bits_param; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_a_bits_size; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [4:0] bh_auto_in_a_bits_source; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_a_bits_address; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [3:0] bh_auto_in_a_bits_mask; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_a_bits_data; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_a_bits_corrupt; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_b_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_b_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [1:0] bh_auto_in_b_bits_param; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_b_bits_address; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_c_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_c_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_c_bits_opcode; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_c_bits_param; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_c_bits_size; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [4:0] bh_auto_in_c_bits_source; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_c_bits_address; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_c_bits_data; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_c_bits_corrupt; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_d_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_d_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_d_bits_opcode; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [1:0] bh_auto_in_d_bits_param; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_in_d_bits_size; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [4:0] bh_auto_in_d_bits_source; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [1:0] bh_auto_in_d_bits_sink; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_d_bits_denied; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_in_d_bits_data; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_d_bits_corrupt; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_in_e_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [1:0] bh_auto_in_e_bits_sink; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_out_a_bits_opcode; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_out_a_bits_param; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_out_a_bits_size; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [6:0] bh_auto_out_a_bits_source; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_out_a_bits_address; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [3:0] bh_auto_out_a_bits_mask; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_out_a_bits_data; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_a_bits_corrupt; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_d_ready; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_d_valid; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_out_d_bits_opcode; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [2:0] bh_auto_out_d_bits_size; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [6:0] bh_auto_out_d_bits_source; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_d_bits_denied; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire [31:0] bh_auto_out_d_bits_data; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  bh_auto_out_d_bits_corrupt; // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
  wire  shrinker_clock; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_reset; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_ready; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_valid; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_in_a_bits_opcode; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_in_a_bits_param; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_in_a_bits_size; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [6:0] shrinker_auto_in_a_bits_source; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_in_a_bits_address; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_bufferable; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_modifiable; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_readalloc; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_writealloc; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_privileged; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_secure; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_user_amba_prot_fetch; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [3:0] shrinker_auto_in_a_bits_mask; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_in_a_bits_data; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_a_bits_corrupt; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_d_ready; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_d_valid; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_in_d_bits_opcode; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_in_d_bits_size; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [6:0] shrinker_auto_in_d_bits_source; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_d_bits_denied; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_in_d_bits_data; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_in_d_bits_corrupt; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_ready; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_valid; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_out_a_bits_opcode; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_out_a_bits_param; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_out_a_bits_size; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [1:0] shrinker_auto_out_a_bits_source; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_out_a_bits_address; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_bufferable; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_modifiable; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_readalloc; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_writealloc; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_privileged; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_secure; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_user_amba_prot_fetch; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [3:0] shrinker_auto_out_a_bits_mask; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_out_a_bits_data; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_a_bits_corrupt; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_d_ready; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_d_valid; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_out_d_bits_opcode; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [2:0] shrinker_auto_out_d_bits_size; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [1:0] shrinker_auto_out_d_bits_source; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_d_bits_denied; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire [31:0] shrinker_auto_out_d_bits_data; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  shrinker_auto_out_d_bits_corrupt; // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
  wire  coherent_jbar_clock; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_reset; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_in_a_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_a_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [3:0] coherent_jbar_auto_in_a_bits_mask; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_a_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_a_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_b_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_b_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_in_b_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_b_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_c_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_c_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_in_c_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_c_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_c_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_c_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_d_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_d_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_in_d_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_in_d_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_in_d_bits_sink; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_d_bits_denied; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_in_d_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_d_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_in_e_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_in_e_bits_sink; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_out_a_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_a_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [3:0] coherent_jbar_auto_out_a_bits_mask; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_a_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_a_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_b_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_b_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_out_b_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_b_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_c_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_c_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_out_c_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_c_bits_address; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_c_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_c_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_d_ready; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_d_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_opcode; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_out_d_bits_param; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_size; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [4:0] coherent_jbar_auto_out_d_bits_source; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_out_d_bits_sink; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_d_bits_denied; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [31:0] coherent_jbar_auto_out_d_bits_data; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_d_bits_corrupt; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  coherent_jbar_auto_out_e_valid; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire [1:0] coherent_jbar_auto_out_e_bits_sink; // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
  wire  binder_clock; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_reset; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_ready; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_valid; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_in_a_bits_opcode; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_in_a_bits_param; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_in_a_bits_size; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [1:0] binder_auto_in_a_bits_source; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_in_a_bits_address; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_bufferable; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_modifiable; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_readalloc; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_writealloc; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_privileged; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_secure; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_user_amba_prot_fetch; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [3:0] binder_auto_in_a_bits_mask; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_in_a_bits_data; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_a_bits_corrupt; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_d_ready; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_d_valid; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_in_d_bits_opcode; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_in_d_bits_size; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [1:0] binder_auto_in_d_bits_source; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_d_bits_denied; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_in_d_bits_data; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_in_d_bits_corrupt; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_ready; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_valid; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_out_a_bits_opcode; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_out_a_bits_param; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_out_a_bits_size; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [1:0] binder_auto_out_a_bits_source; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_out_a_bits_address; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_bufferable; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_modifiable; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_readalloc; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_writealloc; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_privileged; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_secure; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_user_amba_prot_fetch; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [3:0] binder_auto_out_a_bits_mask; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_out_a_bits_data; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_a_bits_corrupt; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_d_ready; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_d_valid; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_out_d_bits_opcode; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [2:0] binder_auto_out_d_bits_size; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [1:0] binder_auto_out_d_bits_source; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_d_bits_denied; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire [31:0] binder_auto_out_d_bits_data; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  binder_auto_out_d_bits_corrupt; // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
  wire  coupler_to_bus_named_subsystem_mbus_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [1:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [1:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [1:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [1:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
  ClockGroupAggregator_3 subsystem_l2_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@88897.4]
    .auto_in_member_1_clock(subsystem_l2_clock_groups_auto_in_member_1_clock),
    .auto_in_member_1_reset(subsystem_l2_clock_groups_auto_in_member_1_reset),
    .auto_in_member_0_clock(subsystem_l2_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_l2_clock_groups_auto_in_member_0_reset),
    .auto_out_1_member_0_clock(subsystem_l2_clock_groups_auto_out_1_member_0_clock),
    .auto_out_1_member_0_reset(subsystem_l2_clock_groups_auto_out_1_member_0_reset),
    .auto_out_0_member_0_clock(subsystem_l2_clock_groups_auto_out_0_member_0_clock),
    .auto_out_0_member_0_reset(subsystem_l2_clock_groups_auto_out_0_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@88899.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@88901.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLBroadcast bh ( // @[BankedL2Params.scala 73:24:freechips.rocketchip.system.DefaultRV32Config.fir@88903.4]
    .clock(bh_clock),
    .reset(bh_reset),
    .auto_in_a_ready(bh_auto_in_a_ready),
    .auto_in_a_valid(bh_auto_in_a_valid),
    .auto_in_a_bits_opcode(bh_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(bh_auto_in_a_bits_param),
    .auto_in_a_bits_size(bh_auto_in_a_bits_size),
    .auto_in_a_bits_source(bh_auto_in_a_bits_source),
    .auto_in_a_bits_address(bh_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(bh_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(bh_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(bh_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(bh_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(bh_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(bh_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(bh_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(bh_auto_in_a_bits_mask),
    .auto_in_a_bits_data(bh_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(bh_auto_in_a_bits_corrupt),
    .auto_in_b_ready(bh_auto_in_b_ready),
    .auto_in_b_valid(bh_auto_in_b_valid),
    .auto_in_b_bits_param(bh_auto_in_b_bits_param),
    .auto_in_b_bits_address(bh_auto_in_b_bits_address),
    .auto_in_c_ready(bh_auto_in_c_ready),
    .auto_in_c_valid(bh_auto_in_c_valid),
    .auto_in_c_bits_opcode(bh_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(bh_auto_in_c_bits_param),
    .auto_in_c_bits_size(bh_auto_in_c_bits_size),
    .auto_in_c_bits_source(bh_auto_in_c_bits_source),
    .auto_in_c_bits_address(bh_auto_in_c_bits_address),
    .auto_in_c_bits_data(bh_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(bh_auto_in_c_bits_corrupt),
    .auto_in_d_ready(bh_auto_in_d_ready),
    .auto_in_d_valid(bh_auto_in_d_valid),
    .auto_in_d_bits_opcode(bh_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(bh_auto_in_d_bits_param),
    .auto_in_d_bits_size(bh_auto_in_d_bits_size),
    .auto_in_d_bits_source(bh_auto_in_d_bits_source),
    .auto_in_d_bits_sink(bh_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(bh_auto_in_d_bits_denied),
    .auto_in_d_bits_data(bh_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(bh_auto_in_d_bits_corrupt),
    .auto_in_e_valid(bh_auto_in_e_valid),
    .auto_in_e_bits_sink(bh_auto_in_e_bits_sink),
    .auto_out_a_ready(bh_auto_out_a_ready),
    .auto_out_a_valid(bh_auto_out_a_valid),
    .auto_out_a_bits_opcode(bh_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(bh_auto_out_a_bits_param),
    .auto_out_a_bits_size(bh_auto_out_a_bits_size),
    .auto_out_a_bits_source(bh_auto_out_a_bits_source),
    .auto_out_a_bits_address(bh_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(bh_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(bh_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(bh_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(bh_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(bh_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(bh_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(bh_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(bh_auto_out_a_bits_mask),
    .auto_out_a_bits_data(bh_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(bh_auto_out_a_bits_corrupt),
    .auto_out_d_ready(bh_auto_out_d_ready),
    .auto_out_d_valid(bh_auto_out_d_valid),
    .auto_out_d_bits_opcode(bh_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(bh_auto_out_d_bits_size),
    .auto_out_d_bits_source(bh_auto_out_d_bits_source),
    .auto_out_d_bits_denied(bh_auto_out_d_bits_denied),
    .auto_out_d_bits_data(bh_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(bh_auto_out_d_bits_corrupt)
  );
  TLSourceShrinker shrinker ( // @[SourceShrinker.scala 86:30:freechips.rocketchip.system.DefaultRV32Config.fir@88909.4]
    .clock(shrinker_clock),
    .reset(shrinker_reset),
    .auto_in_a_ready(shrinker_auto_in_a_ready),
    .auto_in_a_valid(shrinker_auto_in_a_valid),
    .auto_in_a_bits_opcode(shrinker_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(shrinker_auto_in_a_bits_param),
    .auto_in_a_bits_size(shrinker_auto_in_a_bits_size),
    .auto_in_a_bits_source(shrinker_auto_in_a_bits_source),
    .auto_in_a_bits_address(shrinker_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(shrinker_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(shrinker_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(shrinker_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(shrinker_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(shrinker_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(shrinker_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(shrinker_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(shrinker_auto_in_a_bits_mask),
    .auto_in_a_bits_data(shrinker_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(shrinker_auto_in_a_bits_corrupt),
    .auto_in_d_ready(shrinker_auto_in_d_ready),
    .auto_in_d_valid(shrinker_auto_in_d_valid),
    .auto_in_d_bits_opcode(shrinker_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(shrinker_auto_in_d_bits_size),
    .auto_in_d_bits_source(shrinker_auto_in_d_bits_source),
    .auto_in_d_bits_denied(shrinker_auto_in_d_bits_denied),
    .auto_in_d_bits_data(shrinker_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(shrinker_auto_in_d_bits_corrupt),
    .auto_out_a_ready(shrinker_auto_out_a_ready),
    .auto_out_a_valid(shrinker_auto_out_a_valid),
    .auto_out_a_bits_opcode(shrinker_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(shrinker_auto_out_a_bits_param),
    .auto_out_a_bits_size(shrinker_auto_out_a_bits_size),
    .auto_out_a_bits_source(shrinker_auto_out_a_bits_source),
    .auto_out_a_bits_address(shrinker_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(shrinker_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(shrinker_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(shrinker_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(shrinker_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(shrinker_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(shrinker_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(shrinker_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(shrinker_auto_out_a_bits_mask),
    .auto_out_a_bits_data(shrinker_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(shrinker_auto_out_a_bits_corrupt),
    .auto_out_d_ready(shrinker_auto_out_d_ready),
    .auto_out_d_valid(shrinker_auto_out_d_valid),
    .auto_out_d_bits_opcode(shrinker_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(shrinker_auto_out_d_bits_size),
    .auto_out_d_bits_source(shrinker_auto_out_d_bits_source),
    .auto_out_d_bits_denied(shrinker_auto_out_d_bits_denied),
    .auto_out_d_bits_data(shrinker_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(shrinker_auto_out_d_bits_corrupt)
  );
  TLJbar coherent_jbar ( // @[BankedL2Params.scala 56:41:freechips.rocketchip.system.DefaultRV32Config.fir@88915.4]
    .clock(coherent_jbar_clock),
    .reset(coherent_jbar_reset),
    .auto_in_a_ready(coherent_jbar_auto_in_a_ready),
    .auto_in_a_valid(coherent_jbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(coherent_jbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(coherent_jbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(coherent_jbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(coherent_jbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(coherent_jbar_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(coherent_jbar_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(coherent_jbar_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(coherent_jbar_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(coherent_jbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(coherent_jbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(coherent_jbar_auto_in_a_bits_corrupt),
    .auto_in_b_ready(coherent_jbar_auto_in_b_ready),
    .auto_in_b_valid(coherent_jbar_auto_in_b_valid),
    .auto_in_b_bits_param(coherent_jbar_auto_in_b_bits_param),
    .auto_in_b_bits_address(coherent_jbar_auto_in_b_bits_address),
    .auto_in_c_ready(coherent_jbar_auto_in_c_ready),
    .auto_in_c_valid(coherent_jbar_auto_in_c_valid),
    .auto_in_c_bits_opcode(coherent_jbar_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(coherent_jbar_auto_in_c_bits_param),
    .auto_in_c_bits_size(coherent_jbar_auto_in_c_bits_size),
    .auto_in_c_bits_source(coherent_jbar_auto_in_c_bits_source),
    .auto_in_c_bits_address(coherent_jbar_auto_in_c_bits_address),
    .auto_in_c_bits_data(coherent_jbar_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(coherent_jbar_auto_in_c_bits_corrupt),
    .auto_in_d_ready(coherent_jbar_auto_in_d_ready),
    .auto_in_d_valid(coherent_jbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(coherent_jbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(coherent_jbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(coherent_jbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(coherent_jbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(coherent_jbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(coherent_jbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(coherent_jbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(coherent_jbar_auto_in_d_bits_corrupt),
    .auto_in_e_valid(coherent_jbar_auto_in_e_valid),
    .auto_in_e_bits_sink(coherent_jbar_auto_in_e_bits_sink),
    .auto_out_a_ready(coherent_jbar_auto_out_a_ready),
    .auto_out_a_valid(coherent_jbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(coherent_jbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(coherent_jbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(coherent_jbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(coherent_jbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(coherent_jbar_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(coherent_jbar_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(coherent_jbar_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(coherent_jbar_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(coherent_jbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(coherent_jbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(coherent_jbar_auto_out_a_bits_corrupt),
    .auto_out_b_ready(coherent_jbar_auto_out_b_ready),
    .auto_out_b_valid(coherent_jbar_auto_out_b_valid),
    .auto_out_b_bits_param(coherent_jbar_auto_out_b_bits_param),
    .auto_out_b_bits_address(coherent_jbar_auto_out_b_bits_address),
    .auto_out_c_ready(coherent_jbar_auto_out_c_ready),
    .auto_out_c_valid(coherent_jbar_auto_out_c_valid),
    .auto_out_c_bits_opcode(coherent_jbar_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(coherent_jbar_auto_out_c_bits_param),
    .auto_out_c_bits_size(coherent_jbar_auto_out_c_bits_size),
    .auto_out_c_bits_source(coherent_jbar_auto_out_c_bits_source),
    .auto_out_c_bits_address(coherent_jbar_auto_out_c_bits_address),
    .auto_out_c_bits_data(coherent_jbar_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(coherent_jbar_auto_out_c_bits_corrupt),
    .auto_out_d_ready(coherent_jbar_auto_out_d_ready),
    .auto_out_d_valid(coherent_jbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(coherent_jbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(coherent_jbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(coherent_jbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(coherent_jbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(coherent_jbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(coherent_jbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(coherent_jbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(coherent_jbar_auto_out_d_bits_corrupt),
    .auto_out_e_valid(coherent_jbar_auto_out_e_valid),
    .auto_out_e_bits_sink(coherent_jbar_auto_out_e_bits_sink)
  );
  BankBinder binder ( // @[BankBinder.scala 68:28:freechips.rocketchip.system.DefaultRV32Config.fir@88921.4]
    .clock(binder_clock),
    .reset(binder_reset),
    .auto_in_a_ready(binder_auto_in_a_ready),
    .auto_in_a_valid(binder_auto_in_a_valid),
    .auto_in_a_bits_opcode(binder_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(binder_auto_in_a_bits_param),
    .auto_in_a_bits_size(binder_auto_in_a_bits_size),
    .auto_in_a_bits_source(binder_auto_in_a_bits_source),
    .auto_in_a_bits_address(binder_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(binder_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(binder_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(binder_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(binder_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(binder_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(binder_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(binder_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(binder_auto_in_a_bits_mask),
    .auto_in_a_bits_data(binder_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(binder_auto_in_a_bits_corrupt),
    .auto_in_d_ready(binder_auto_in_d_ready),
    .auto_in_d_valid(binder_auto_in_d_valid),
    .auto_in_d_bits_opcode(binder_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(binder_auto_in_d_bits_size),
    .auto_in_d_bits_source(binder_auto_in_d_bits_source),
    .auto_in_d_bits_denied(binder_auto_in_d_bits_denied),
    .auto_in_d_bits_data(binder_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(binder_auto_in_d_bits_corrupt),
    .auto_out_a_ready(binder_auto_out_a_ready),
    .auto_out_a_valid(binder_auto_out_a_valid),
    .auto_out_a_bits_opcode(binder_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(binder_auto_out_a_bits_param),
    .auto_out_a_bits_size(binder_auto_out_a_bits_size),
    .auto_out_a_bits_source(binder_auto_out_a_bits_source),
    .auto_out_a_bits_address(binder_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(binder_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(binder_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(binder_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(binder_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(binder_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(binder_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(binder_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(binder_auto_out_a_bits_mask),
    .auto_out_a_bits_data(binder_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(binder_auto_out_a_bits_corrupt),
    .auto_out_d_ready(binder_auto_out_d_ready),
    .auto_out_d_valid(binder_auto_out_d_valid),
    .auto_out_d_bits_opcode(binder_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(binder_auto_out_d_bits_size),
    .auto_out_d_bits_source(binder_auto_out_d_bits_source),
    .auto_out_d_bits_denied(binder_auto_out_d_bits_denied),
    .auto_out_d_bits_data(binder_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(binder_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_14 coupler_to_bus_named_subsystem_mbus ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@88927.4]
    .clock(coupler_to_bus_named_subsystem_mbus_clock),
    .reset(coupler_to_bus_named_subsystem_mbus_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_user_amba_prot_bufferable(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable),
    .auto_widget_in_a_bits_user_amba_prot_modifiable(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable),
    .auto_widget_in_a_bits_user_amba_prot_readalloc(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc),
    .auto_widget_in_a_bits_user_amba_prot_writealloc(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc),
    .auto_widget_in_a_bits_user_amba_prot_privileged(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged),
    .auto_widget_in_a_bits_user_amba_prot_secure(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure),
    .auto_widget_in_a_bits_user_amba_prot_fetch(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt),
    .auto_widget_out_a_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_user_amba_prot_bufferable(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_widget_out_a_bits_user_amba_prot_modifiable(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_widget_out_a_bits_user_amba_prot_readalloc(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_widget_out_a_bits_user_amba_prot_writealloc(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_widget_out_a_bits_user_amba_prot_privileged(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged),
    .auto_widget_out_a_bits_user_amba_prot_secure(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure),
    .auto_widget_out_a_bits_user_amba_prot_fetch(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch),
    .auto_widget_out_a_bits_mask(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_d_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_denied(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt)
  );
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready = coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign auto_coherent_jbar_in_a_ready = coherent_jbar_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_b_valid = coherent_jbar_auto_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_b_bits_param = coherent_jbar_auto_in_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_b_bits_address = coherent_jbar_auto_in_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_c_ready = coherent_jbar_auto_in_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_valid = coherent_jbar_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_opcode = coherent_jbar_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_param = coherent_jbar_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_size = coherent_jbar_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_source = coherent_jbar_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_sink = coherent_jbar_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_denied = coherent_jbar_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_data = coherent_jbar_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_coherent_jbar_in_d_bits_corrupt = coherent_jbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign auto_subsystem_l2_clock_groups_out_member_0_clock = subsystem_l2_clock_groups_auto_out_1_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88942.4]
  assign auto_subsystem_l2_clock_groups_out_member_0_reset = subsystem_l2_clock_groups_auto_out_1_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88942.4]
  assign subsystem_l2_clock_groups_auto_in_member_1_clock = auto_subsystem_l2_clock_groups_in_member_1_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88943.4]
  assign subsystem_l2_clock_groups_auto_in_member_1_reset = auto_subsystem_l2_clock_groups_in_member_1_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88943.4]
  assign subsystem_l2_clock_groups_auto_in_member_0_clock = auto_subsystem_l2_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88943.4]
  assign subsystem_l2_clock_groups_auto_in_member_0_reset = auto_subsystem_l2_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88943.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_l2_clock_groups_auto_out_0_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88935.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_l2_clock_groups_auto_out_0_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88935.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88936.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88936.4]
  assign bh_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88907.4]
  assign bh_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88908.4]
  assign bh_auto_in_a_valid = coherent_jbar_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_opcode = coherent_jbar_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_param = coherent_jbar_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_size = coherent_jbar_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_source = coherent_jbar_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_address = coherent_jbar_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_bufferable = coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_modifiable = coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_readalloc = coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_writealloc = coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_privileged = coherent_jbar_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_secure = coherent_jbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_user_amba_prot_fetch = coherent_jbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_mask = coherent_jbar_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_data = coherent_jbar_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_a_bits_corrupt = coherent_jbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_b_ready = coherent_jbar_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_valid = coherent_jbar_auto_out_c_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_opcode = coherent_jbar_auto_out_c_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_param = coherent_jbar_auto_out_c_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_size = coherent_jbar_auto_out_c_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_source = coherent_jbar_auto_out_c_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_address = coherent_jbar_auto_out_c_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_data = coherent_jbar_auto_out_c_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_c_bits_corrupt = coherent_jbar_auto_out_c_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_d_ready = coherent_jbar_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_e_valid = coherent_jbar_auto_out_e_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_in_e_bits_sink = coherent_jbar_auto_out_e_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign bh_auto_out_a_ready = shrinker_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_valid = shrinker_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_opcode = shrinker_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_size = shrinker_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_source = shrinker_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_denied = shrinker_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_data = shrinker_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign bh_auto_out_d_bits_corrupt = shrinker_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88913.4]
  assign shrinker_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88914.4]
  assign shrinker_auto_in_a_valid = bh_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_opcode = bh_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_param = bh_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_size = bh_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_source = bh_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_address = bh_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_bufferable = bh_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_modifiable = bh_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_readalloc = bh_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_writealloc = bh_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_privileged = bh_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_secure = bh_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_user_amba_prot_fetch = bh_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_mask = bh_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_data = bh_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_a_bits_corrupt = bh_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_in_d_ready = bh_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88938.4]
  assign shrinker_auto_out_a_ready = binder_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_valid = binder_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_opcode = binder_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_size = binder_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_source = binder_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_denied = binder_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_data = binder_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign shrinker_auto_out_d_bits_corrupt = binder_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign coherent_jbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88919.4]
  assign coherent_jbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88920.4]
  assign coherent_jbar_auto_in_a_valid = auto_coherent_jbar_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_opcode = auto_coherent_jbar_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_param = auto_coherent_jbar_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_size = auto_coherent_jbar_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_source = auto_coherent_jbar_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_address = auto_coherent_jbar_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable = auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable = auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc = auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc = auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_privileged = auto_coherent_jbar_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_secure = auto_coherent_jbar_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_fetch = auto_coherent_jbar_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_mask = auto_coherent_jbar_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_data = auto_coherent_jbar_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_a_bits_corrupt = auto_coherent_jbar_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_b_ready = auto_coherent_jbar_in_b_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_valid = auto_coherent_jbar_in_c_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_opcode = auto_coherent_jbar_in_c_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_param = auto_coherent_jbar_in_c_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_size = auto_coherent_jbar_in_c_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_source = auto_coherent_jbar_in_c_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_address = auto_coherent_jbar_in_c_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_data = auto_coherent_jbar_in_c_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_c_bits_corrupt = auto_coherent_jbar_in_c_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_d_ready = auto_coherent_jbar_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_e_valid = auto_coherent_jbar_in_e_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_in_e_bits_sink = auto_coherent_jbar_in_e_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@88944.4]
  assign coherent_jbar_auto_out_a_ready = bh_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_b_valid = bh_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_b_bits_param = bh_auto_in_b_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_b_bits_address = bh_auto_in_b_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_c_ready = bh_auto_in_c_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_valid = bh_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_opcode = bh_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_param = bh_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_size = bh_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_source = bh_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_sink = bh_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_denied = bh_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_data = bh_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign coherent_jbar_auto_out_d_bits_corrupt = bh_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@88940.4]
  assign binder_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88925.4]
  assign binder_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88926.4]
  assign binder_auto_in_a_valid = shrinker_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_opcode = shrinker_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_param = shrinker_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_size = shrinker_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_source = shrinker_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_address = shrinker_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_bufferable = shrinker_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_modifiable = shrinker_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_readalloc = shrinker_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_writealloc = shrinker_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_privileged = shrinker_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_secure = shrinker_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_user_amba_prot_fetch = shrinker_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_mask = shrinker_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_data = shrinker_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_a_bits_corrupt = shrinker_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_in_d_ready = shrinker_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88939.4]
  assign binder_auto_out_a_ready = coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_valid = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_opcode = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_size = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_source = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_denied = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_data = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign binder_auto_out_d_bits_corrupt = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88931.4]
  assign coupler_to_bus_named_subsystem_mbus_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@88932.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid = binder_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode = binder_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param = binder_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size = binder_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source = binder_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address = binder_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable = binder_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable = binder_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc = binder_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc = binder_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged = binder_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure = binder_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch = binder_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask = binder_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data = binder_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt = binder_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready = binder_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@88941.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready = auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@88945.4]
endmodule
