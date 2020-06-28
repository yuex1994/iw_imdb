module MemoryBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75948.2]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_fixer_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [2:0]  auto_fixer_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [2:0]  auto_fixer_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [2:0]  auto_fixer_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [1:0]  auto_fixer_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [31:0] auto_fixer_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [3:0]  auto_fixer_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input  [31:0] auto_fixer_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_fixer_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_fixer_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_fixer_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [2:0]  auto_fixer_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [1:0]  auto_fixer_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_fixer_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output [31:0] auto_fixer_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  output        auto_fixer_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_subsystem_mbus_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
  input         auto_subsystem_mbus_clock_groups_in_member_0_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75949.4]
);
  wire  subsystem_mbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@75963.4]
  wire  subsystem_mbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@75963.4]
  wire  subsystem_mbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@75963.4]
  wire  subsystem_mbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@75963.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@75965.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@75965.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@75965.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@75965.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@75967.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@75967.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@75967.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@75967.4]
  wire  subsystem_mbus_xbar_clock; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_reset; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_ready; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_valid; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_opcode; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_param; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_size; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [1:0] subsystem_mbus_xbar_auto_in_a_bits_source; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_in_a_bits_address; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [3:0] subsystem_mbus_xbar_auto_in_a_bits_mask; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_in_a_bits_data; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_corrupt; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_d_ready; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_d_valid; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_size; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [1:0] subsystem_mbus_xbar_auto_in_d_bits_source; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_d_bits_denied; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_in_d_bits_data; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_ready; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_valid; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_param; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_size; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [1:0] subsystem_mbus_xbar_auto_out_a_bits_source; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_out_a_bits_address; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [3:0] subsystem_mbus_xbar_auto_out_a_bits_mask; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_out_a_bits_data; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_corrupt; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_d_ready; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_d_valid; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_opcode; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_size; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [1:0] subsystem_mbus_xbar_auto_out_d_bits_source; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_d_bits_denied; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire [31:0] subsystem_mbus_xbar_auto_out_d_bits_data; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  subsystem_mbus_xbar_auto_out_d_bits_corrupt; // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [1:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [3:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [1:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [1:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [3:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [2:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [1:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire [31:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
  wire  picker_clock; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_reset; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_ready; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_valid; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_in_a_bits_opcode; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_in_a_bits_param; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_in_a_bits_size; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [1:0] picker_auto_in_a_bits_source; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_in_a_bits_address; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_bufferable; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_modifiable; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_readalloc; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_writealloc; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_privileged; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_secure; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_user_amba_prot_fetch; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [3:0] picker_auto_in_a_bits_mask; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_in_a_bits_data; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_a_bits_corrupt; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_d_ready; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_d_valid; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_in_d_bits_opcode; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_in_d_bits_size; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [1:0] picker_auto_in_d_bits_source; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_d_bits_denied; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_in_d_bits_data; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_in_d_bits_corrupt; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_ready; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_valid; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_out_a_bits_opcode; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_out_a_bits_param; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_out_a_bits_size; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [1:0] picker_auto_out_a_bits_source; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_out_a_bits_address; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_bufferable; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_modifiable; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_readalloc; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_writealloc; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_privileged; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_secure; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_user_amba_prot_fetch; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [3:0] picker_auto_out_a_bits_mask; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_out_a_bits_data; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_a_bits_corrupt; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_d_ready; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_d_valid; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_out_d_bits_opcode; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [2:0] picker_auto_out_d_bits_size; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [1:0] picker_auto_out_d_bits_source; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_d_bits_denied; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire [31:0] picker_auto_out_d_bits_data; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  picker_auto_out_d_bits_corrupt; // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
  wire  coupler_to_memory_controller_port_named_axi4_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
  ClockGroupAggregator_1 subsystem_mbus_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@75963.4]
    .auto_in_member_0_clock(subsystem_mbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_mbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_mbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_mbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@75965.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@75967.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar_6 subsystem_mbus_xbar ( // @[MemoryBus.scala 41:32:freechips.rocketchip.system.DefaultRV32Config.fir@75969.4]
    .clock(subsystem_mbus_xbar_clock),
    .reset(subsystem_mbus_xbar_reset),
    .auto_in_a_ready(subsystem_mbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_mbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_mbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(subsystem_mbus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(subsystem_mbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(subsystem_mbus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(subsystem_mbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(subsystem_mbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_mbus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(subsystem_mbus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(subsystem_mbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_mbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_mbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(subsystem_mbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(subsystem_mbus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_denied(subsystem_mbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_mbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_mbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_mbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_mbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_mbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(subsystem_mbus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(subsystem_mbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(subsystem_mbus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(subsystem_mbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(subsystem_mbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_mbus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(subsystem_mbus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(subsystem_mbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_mbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_mbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(subsystem_mbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(subsystem_mbus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_denied(subsystem_mbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_mbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_mbus_xbar_auto_out_d_bits_corrupt)
  );
  TLFIFOFixer_4 fixer ( // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@75975.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(fixer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(fixer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(fixer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(fixer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(fixer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(fixer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(fixer_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
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
    .auto_out_a_bits_user_amba_prot_bufferable(fixer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(fixer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(fixer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(fixer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(fixer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(fixer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(fixer_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  ProbePicker picker ( // @[ProbePicker.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@75981.4]
    .clock(picker_clock),
    .reset(picker_reset),
    .auto_in_a_ready(picker_auto_in_a_ready),
    .auto_in_a_valid(picker_auto_in_a_valid),
    .auto_in_a_bits_opcode(picker_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(picker_auto_in_a_bits_param),
    .auto_in_a_bits_size(picker_auto_in_a_bits_size),
    .auto_in_a_bits_source(picker_auto_in_a_bits_source),
    .auto_in_a_bits_address(picker_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(picker_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(picker_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(picker_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(picker_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(picker_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(picker_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(picker_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(picker_auto_in_a_bits_mask),
    .auto_in_a_bits_data(picker_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(picker_auto_in_a_bits_corrupt),
    .auto_in_d_ready(picker_auto_in_d_ready),
    .auto_in_d_valid(picker_auto_in_d_valid),
    .auto_in_d_bits_opcode(picker_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(picker_auto_in_d_bits_size),
    .auto_in_d_bits_source(picker_auto_in_d_bits_source),
    .auto_in_d_bits_denied(picker_auto_in_d_bits_denied),
    .auto_in_d_bits_data(picker_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(picker_auto_in_d_bits_corrupt),
    .auto_out_a_ready(picker_auto_out_a_ready),
    .auto_out_a_valid(picker_auto_out_a_valid),
    .auto_out_a_bits_opcode(picker_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(picker_auto_out_a_bits_param),
    .auto_out_a_bits_size(picker_auto_out_a_bits_size),
    .auto_out_a_bits_source(picker_auto_out_a_bits_source),
    .auto_out_a_bits_address(picker_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(picker_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(picker_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(picker_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(picker_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(picker_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(picker_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(picker_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(picker_auto_out_a_bits_mask),
    .auto_out_a_bits_data(picker_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(picker_auto_out_a_bits_corrupt),
    .auto_out_d_ready(picker_auto_out_d_ready),
    .auto_out_d_valid(picker_auto_out_d_valid),
    .auto_out_d_bits_opcode(picker_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(picker_auto_out_d_bits_size),
    .auto_out_d_bits_source(picker_auto_out_d_bits_source),
    .auto_out_d_bits_denied(picker_auto_out_d_bits_denied),
    .auto_out_d_bits_data(picker_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(picker_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_13 coupler_to_memory_controller_port_named_axi4 ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@75987.4]
    .clock(coupler_to_memory_controller_port_named_axi4_clock),
    .reset(coupler_to_memory_controller_port_named_axi4_reset),
    .auto_widget_in_a_ready(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_user_amba_prot_bufferable(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable),
    .auto_widget_in_a_bits_user_amba_prot_modifiable(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable),
    .auto_widget_in_a_bits_user_amba_prot_readalloc(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc),
    .auto_widget_in_a_bits_user_amba_prot_writealloc(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc),
    .auto_widget_in_a_bits_user_amba_prot_privileged(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_privileged),
    .auto_widget_in_a_bits_user_amba_prot_secure(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_secure),
    .auto_widget_in_a_bits_user_amba_prot_fetch(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_fetch),
    .auto_widget_in_a_bits_mask(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_size(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_denied(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt),
    .auto_axi4yank_out_aw_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready),
    .auto_axi4yank_out_aw_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid),
    .auto_axi4yank_out_aw_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id),
    .auto_axi4yank_out_aw_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr),
    .auto_axi4yank_out_aw_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len),
    .auto_axi4yank_out_aw_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size),
    .auto_axi4yank_out_aw_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst),
    .auto_axi4yank_out_aw_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock),
    .auto_axi4yank_out_aw_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache),
    .auto_axi4yank_out_aw_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot),
    .auto_axi4yank_out_aw_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos),
    .auto_axi4yank_out_w_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready),
    .auto_axi4yank_out_w_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid),
    .auto_axi4yank_out_w_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data),
    .auto_axi4yank_out_w_bits_strb(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb),
    .auto_axi4yank_out_w_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last),
    .auto_axi4yank_out_b_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready),
    .auto_axi4yank_out_b_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid),
    .auto_axi4yank_out_b_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id),
    .auto_axi4yank_out_b_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp),
    .auto_axi4yank_out_ar_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready),
    .auto_axi4yank_out_ar_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid),
    .auto_axi4yank_out_ar_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id),
    .auto_axi4yank_out_ar_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr),
    .auto_axi4yank_out_ar_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len),
    .auto_axi4yank_out_ar_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size),
    .auto_axi4yank_out_ar_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst),
    .auto_axi4yank_out_ar_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock),
    .auto_axi4yank_out_ar_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache),
    .auto_axi4yank_out_ar_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot),
    .auto_axi4yank_out_ar_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos),
    .auto_axi4yank_out_r_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready),
    .auto_axi4yank_out_r_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid),
    .auto_axi4yank_out_r_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id),
    .auto_axi4yank_out_r_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data),
    .auto_axi4yank_out_r_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp),
    .auto_axi4yank_out_r_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last)
  );
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign auto_fixer_in_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign auto_fixer_in_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign subsystem_mbus_clock_groups_auto_in_member_0_clock = auto_subsystem_mbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76001.4]
  assign subsystem_mbus_clock_groups_auto_in_member_0_reset = auto_subsystem_mbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76001.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_mbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75995.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_mbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75995.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75996.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75996.4]
  assign subsystem_mbus_xbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75973.4]
  assign subsystem_mbus_xbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75974.4]
  assign subsystem_mbus_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable = fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable = fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc = fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc = fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged = fixer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure = fixer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch = fixer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign subsystem_mbus_xbar_auto_out_a_ready = picker_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_valid = picker_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_opcode = picker_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_size = picker_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_source = picker_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_denied = picker_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_data = picker_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_corrupt = picker_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign fixer_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75979.4]
  assign fixer_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75980.4]
  assign fixer_auto_in_a_valid = auto_fixer_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_opcode = auto_fixer_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_param = auto_fixer_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_size = auto_fixer_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_source = auto_fixer_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_address = auto_fixer_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_bufferable = auto_fixer_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_modifiable = auto_fixer_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_readalloc = auto_fixer_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_writealloc = auto_fixer_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_privileged = auto_fixer_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_secure = auto_fixer_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_user_amba_prot_fetch = auto_fixer_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_mask = auto_fixer_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_data = auto_fixer_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_a_bits_corrupt = auto_fixer_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_in_d_ready = auto_fixer_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@76002.4]
  assign fixer_auto_out_a_ready = subsystem_mbus_xbar_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_valid = subsystem_mbus_xbar_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_opcode = subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_size = subsystem_mbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_source = subsystem_mbus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_denied = subsystem_mbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_data = subsystem_mbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign fixer_auto_out_d_bits_corrupt = subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@75999.4]
  assign picker_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75985.4]
  assign picker_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75986.4]
  assign picker_auto_in_a_valid = subsystem_mbus_xbar_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_opcode = subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_param = subsystem_mbus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_size = subsystem_mbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_source = subsystem_mbus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_address = subsystem_mbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_bufferable = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_modifiable = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_readalloc = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_writealloc = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_privileged = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_secure = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_user_amba_prot_fetch = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_mask = subsystem_mbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_data = subsystem_mbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_a_bits_corrupt = subsystem_mbus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_in_d_ready = subsystem_mbus_xbar_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@75998.4]
  assign picker_auto_out_a_ready = coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_valid = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_opcode = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_size = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_source = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_denied = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_data = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign picker_auto_out_d_bits_corrupt = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75991.4]
  assign coupler_to_memory_controller_port_named_axi4_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@75992.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid = picker_auto_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode = picker_auto_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param = picker_auto_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size = picker_auto_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source = picker_auto_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address = picker_auto_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable = picker_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable = picker_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc = picker_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc = picker_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_privileged = picker_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_secure = picker_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_user_amba_prot_fetch = picker_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask = picker_auto_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data = picker_auto_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt = picker_auto_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready = picker_auto_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@76000.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@76003.4]
endmodule
