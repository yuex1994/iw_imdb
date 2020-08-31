module FrontBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41738.2]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [3:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [3:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_subsystem_fbus_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_subsystem_fbus_clock_groups_in_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_bus_xing_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [2:0]  auto_bus_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [2:0]  auto_bus_xing_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [3:0]  auto_bus_xing_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [3:0]  auto_bus_xing_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [31:0] auto_bus_xing_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [3:0]  auto_bus_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output [31:0] auto_bus_xing_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  output        auto_bus_xing_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_bus_xing_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [2:0]  auto_bus_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [1:0]  auto_bus_xing_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [3:0]  auto_bus_xing_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [3:0]  auto_bus_xing_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [1:0]  auto_bus_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_bus_xing_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input  [31:0] auto_bus_xing_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
  input         auto_bus_xing_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41739.4]
);
  wire  subsystem_fbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@41753.4]
  wire  subsystem_fbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@41753.4]
  wire  subsystem_fbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@41753.4]
  wire  subsystem_fbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@41753.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@41755.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@41755.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@41755.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@41755.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@41757.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@41757.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@41757.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@41757.4]
  wire  subsystem_fbus_xbar_clock; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_reset; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_ready; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_valid; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_a_bits_opcode; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_a_bits_param; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_size; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_source; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_in_a_bits_address; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_mask; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_in_a_bits_data; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_a_bits_corrupt; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_d_ready; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_d_valid; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [1:0] subsystem_fbus_xbar_auto_in_d_bits_param; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_d_bits_size; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_d_bits_source; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [1:0] subsystem_fbus_xbar_auto_in_d_bits_sink; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_d_bits_denied; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_in_d_bits_data; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_in_d_bits_corrupt; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_ready; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_valid; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_a_bits_param; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_size; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_source; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_out_a_bits_address; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_mask; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_out_a_bits_data; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_a_bits_corrupt; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_d_ready; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_d_valid; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_d_bits_opcode; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [1:0] subsystem_fbus_xbar_auto_out_d_bits_param; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_d_bits_size; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_d_bits_source; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [1:0] subsystem_fbus_xbar_auto_out_d_bits_sink; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_d_bits_denied; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire [31:0] subsystem_fbus_xbar_auto_out_d_bits_data; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  subsystem_fbus_xbar_auto_out_d_bits_corrupt; // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [1:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [3:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [1:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
  wire  coupler_from_port_named_slave_port_axi4_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
  ClockGroupAggregator_1 subsystem_fbus_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@41753.4]
    .auto_in_member_0_clock(subsystem_fbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_fbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_fbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_fbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@41755.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@41757.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar_3 subsystem_fbus_xbar ( // @[BusWrapper.scala 348:32:freechips.rocketchip.system.DefaultRV32Config.fir@41759.4]
    .clock(subsystem_fbus_xbar_clock),
    .reset(subsystem_fbus_xbar_reset),
    .auto_in_a_ready(subsystem_fbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_fbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_fbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(subsystem_fbus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(subsystem_fbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(subsystem_fbus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(subsystem_fbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(subsystem_fbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_fbus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(subsystem_fbus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(subsystem_fbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_fbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_fbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(subsystem_fbus_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(subsystem_fbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(subsystem_fbus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(subsystem_fbus_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(subsystem_fbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_fbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_fbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_fbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_fbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_fbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(subsystem_fbus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(subsystem_fbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(subsystem_fbus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(subsystem_fbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(subsystem_fbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_fbus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(subsystem_fbus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(subsystem_fbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_fbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_fbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(subsystem_fbus_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(subsystem_fbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(subsystem_fbus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(subsystem_fbus_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(subsystem_fbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_fbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_fbus_xbar_auto_out_d_bits_corrupt)
  );
  TLBuffer_3 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41765.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(buffer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(buffer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(buffer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(buffer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(buffer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(buffer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(buffer_auto_in_a_bits_user_amba_prot_fetch),
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
    .auto_out_a_bits_user_amba_prot_bufferable(buffer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(buffer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(buffer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(buffer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(buffer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(buffer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(buffer_auto_out_a_bits_user_amba_prot_fetch),
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
  SimpleLazyModule_5 coupler_from_port_named_slave_port_axi4 ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@41771.4]
    .clock(coupler_from_port_named_slave_port_axi4_clock),
    .reset(coupler_from_port_named_slave_port_axi4_reset),
    .auto_axi4index_in_aw_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready),
    .auto_axi4index_in_aw_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid),
    .auto_axi4index_in_aw_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id),
    .auto_axi4index_in_aw_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr),
    .auto_axi4index_in_aw_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len),
    .auto_axi4index_in_aw_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size),
    .auto_axi4index_in_aw_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst),
    .auto_axi4index_in_aw_bits_cache(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache),
    .auto_axi4index_in_aw_bits_prot(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot),
    .auto_axi4index_in_w_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready),
    .auto_axi4index_in_w_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid),
    .auto_axi4index_in_w_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data),
    .auto_axi4index_in_w_bits_strb(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb),
    .auto_axi4index_in_w_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last),
    .auto_axi4index_in_b_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready),
    .auto_axi4index_in_b_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid),
    .auto_axi4index_in_b_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id),
    .auto_axi4index_in_b_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp),
    .auto_axi4index_in_ar_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready),
    .auto_axi4index_in_ar_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid),
    .auto_axi4index_in_ar_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id),
    .auto_axi4index_in_ar_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr),
    .auto_axi4index_in_ar_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len),
    .auto_axi4index_in_ar_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size),
    .auto_axi4index_in_ar_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst),
    .auto_axi4index_in_ar_bits_cache(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache),
    .auto_axi4index_in_ar_bits_prot(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot),
    .auto_axi4index_in_r_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready),
    .auto_axi4index_in_r_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid),
    .auto_axi4index_in_r_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id),
    .auto_axi4index_in_r_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data),
    .auto_axi4index_in_r_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp),
    .auto_axi4index_in_r_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last),
    .auto_buffer_out_a_ready(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_param(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param),
    .auto_buffer_out_a_bits_size(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_source(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source),
    .auto_buffer_out_a_bits_address(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_user_amba_prot_bufferable(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_bufferable),
    .auto_buffer_out_a_bits_user_amba_prot_modifiable(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_modifiable),
    .auto_buffer_out_a_bits_user_amba_prot_readalloc(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_readalloc),
    .auto_buffer_out_a_bits_user_amba_prot_writealloc(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_writealloc),
    .auto_buffer_out_a_bits_user_amba_prot_privileged(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_privileged),
    .auto_buffer_out_a_bits_user_amba_prot_secure(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_secure),
    .auto_buffer_out_a_bits_user_amba_prot_fetch(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_fetch),
    .auto_buffer_out_a_bits_mask(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data),
    .auto_buffer_out_a_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt),
    .auto_buffer_out_d_ready(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_source(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source),
    .auto_buffer_out_d_bits_sink(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt)
  );
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign auto_bus_xing_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_bufferable = buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_modifiable = buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_readalloc = buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_writealloc = buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_privileged = buffer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_secure = buffer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_user_amba_prot_fetch = buffer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign auto_bus_xing_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41790.4]
  assign subsystem_fbus_clock_groups_auto_in_member_0_clock = auto_subsystem_fbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41791.4]
  assign subsystem_fbus_clock_groups_auto_in_member_0_reset = auto_subsystem_fbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41791.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_fbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41784.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_fbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41784.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41785.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41785.4]
  assign subsystem_fbus_xbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41763.4]
  assign subsystem_fbus_xbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41764.4]
  assign subsystem_fbus_xbar_auto_in_a_valid = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_opcode = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_param = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_size = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_source = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_address = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_mask = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_data = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_corrupt = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_in_d_ready = coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign subsystem_fbus_xbar_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41769.4]
  assign buffer_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41770.4]
  assign buffer_auto_in_a_valid = subsystem_fbus_xbar_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_opcode = subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_param = subsystem_fbus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_size = subsystem_fbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_source = subsystem_fbus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_address = subsystem_fbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_bufferable = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_modifiable = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_readalloc = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_writealloc = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_privileged = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_secure = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_user_amba_prot_fetch = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_mask = subsystem_fbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_data = subsystem_fbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_a_bits_corrupt = subsystem_fbus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_in_d_ready = subsystem_fbus_xbar_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@41787.4]
  assign buffer_auto_out_a_ready = auto_bus_xing_out_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_valid = auto_bus_xing_out_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_param = auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_source = auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_sink = auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign buffer_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41788.4]
  assign coupler_from_port_named_slave_port_axi4_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41775.4]
  assign coupler_from_port_named_slave_port_axi4_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41776.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41792.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready = subsystem_fbus_xbar_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid = subsystem_fbus_xbar_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode = subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param = subsystem_fbus_xbar_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size = subsystem_fbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source = subsystem_fbus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink = subsystem_fbus_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied = subsystem_fbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data = subsystem_fbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt = subsystem_fbus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41789.4]
endmodule
