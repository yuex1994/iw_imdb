module SystemBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28948.2]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_from_tile_tl_master_xing_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_from_tile_tl_master_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_tile_tl_master_xing_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [1:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [4:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [27:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [4:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input  [31:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_5_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_5_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_4_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_4_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_3_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_3_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_2_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_2_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_1_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_1_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  input         auto_subsystem_sbus_clock_groups_in_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_1_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_1_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_1_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_1_member_0_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_1_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_1_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_0_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_0_reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28949.4]
);
  wire  subsystem_sbus_clock_groups_auto_in_member_5_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_5_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_4_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_4_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_3_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_3_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_2_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_2_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_1_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_1_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_1_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_1_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_1_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_1_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_0_clock; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_0_reset; // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@28965.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@28965.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@28965.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@28965.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@28967.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@28967.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@28967.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@28967.4]
  wire  system_bus_xbar_clock; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_reset; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_a_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_a_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_a_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_mask; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_a_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_b_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_b_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_b_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_b_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_c_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_c_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_1_c_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_c_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_c_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_c_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_c_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_d_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_d_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_d_bits_denied; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_1_d_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_d_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_1_e_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_1_e_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_mask; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_a_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_d_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_d_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_d_bits_denied; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_in_0_d_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_in_0_d_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_2_a_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [30:0] system_bus_xbar_auto_out_2_a_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_mask; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_2_a_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_a_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_d_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_d_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_2_d_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_2_d_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_2_d_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_d_bits_denied; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_2_d_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_2_d_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_1_a_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_1_a_bits_mask; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_a_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_b_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_b_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_out_1_b_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_b_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_c_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_c_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_1_c_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_c_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_d_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_d_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_1_d_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_d_bits_denied; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_1_d_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_d_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_1_e_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_out_1_e_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_a_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_a_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_0_a_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [27:0] system_bus_xbar_auto_out_0_a_bits_address; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_mask; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_0_a_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_a_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_d_ready; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_d_valid; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_opcode; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [1:0] system_bus_xbar_auto_out_0_d_bits_param; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [3:0] system_bus_xbar_auto_out_0_d_bits_size; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [4:0] system_bus_xbar_auto_out_0_d_bits_source; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_d_bits_sink; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_d_bits_denied; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire [31:0] system_bus_xbar_auto_out_0_d_bits_data; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  system_bus_xbar_auto_out_0_d_bits_corrupt; // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_1_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_1_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_1_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_1_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_b_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_b_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_b_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_b_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_c_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_c_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_1_c_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_1_c_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_1_c_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_c_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_c_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_c_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_c_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_1_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_1_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_1_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_1_e_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_1_e_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_0_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_0_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_0_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_0_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_0_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_0_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_0_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_in_0_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_0_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_0_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_in_0_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_in_0_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_in_0_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_in_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_1_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_1_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_1_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_1_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_b_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_b_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_b_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_b_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_c_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_c_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_1_c_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_1_c_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_1_c_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_c_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_c_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_c_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_c_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_1_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_1_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_1_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_1_e_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_1_e_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_0_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_0_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_0_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_0_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_0_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_0_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_0_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [2:0] fixer_auto_out_0_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_0_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_0_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [3:0] fixer_auto_out_0_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [1:0] fixer_auto_out_0_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire [31:0] fixer_auto_out_0_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  fixer_auto_out_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
  wire  coupler_to_bus_named_subsystem_cbus_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [27:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [31:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [31:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [27:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [31:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire [31:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
  wire  coupler_from_bus_named_subsystem_fbus_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
  wire  coupler_to_bus_named_subsystem_l2_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [3:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [3:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
  wire  coupler_from_tile_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_b_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_b_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_c_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_e_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
  wire  coupler_to_port_named_mmio_port_axi4_clock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_reset; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_param; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_address; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_mask; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last; // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
  ClockGroupAggregator subsystem_sbus_clock_groups ( // @[BusWrapper.scala 40:48:freechips.rocketchip.system.DefaultRV32Config.fir@28963.4]
    .auto_in_member_5_clock(subsystem_sbus_clock_groups_auto_in_member_5_clock),
    .auto_in_member_5_reset(subsystem_sbus_clock_groups_auto_in_member_5_reset),
    .auto_in_member_4_clock(subsystem_sbus_clock_groups_auto_in_member_4_clock),
    .auto_in_member_4_reset(subsystem_sbus_clock_groups_auto_in_member_4_reset),
    .auto_in_member_3_clock(subsystem_sbus_clock_groups_auto_in_member_3_clock),
    .auto_in_member_3_reset(subsystem_sbus_clock_groups_auto_in_member_3_reset),
    .auto_in_member_2_clock(subsystem_sbus_clock_groups_auto_in_member_2_clock),
    .auto_in_member_2_reset(subsystem_sbus_clock_groups_auto_in_member_2_reset),
    .auto_in_member_1_clock(subsystem_sbus_clock_groups_auto_in_member_1_clock),
    .auto_in_member_1_reset(subsystem_sbus_clock_groups_auto_in_member_1_reset),
    .auto_in_member_0_clock(subsystem_sbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_sbus_clock_groups_auto_in_member_0_reset),
    .auto_out_3_member_1_clock(subsystem_sbus_clock_groups_auto_out_3_member_1_clock),
    .auto_out_3_member_1_reset(subsystem_sbus_clock_groups_auto_out_3_member_1_reset),
    .auto_out_3_member_0_clock(subsystem_sbus_clock_groups_auto_out_3_member_0_clock),
    .auto_out_3_member_0_reset(subsystem_sbus_clock_groups_auto_out_3_member_0_reset),
    .auto_out_2_member_0_clock(subsystem_sbus_clock_groups_auto_out_2_member_0_clock),
    .auto_out_2_member_0_reset(subsystem_sbus_clock_groups_auto_out_2_member_0_reset),
    .auto_out_1_member_1_clock(subsystem_sbus_clock_groups_auto_out_1_member_1_clock),
    .auto_out_1_member_1_reset(subsystem_sbus_clock_groups_auto_out_1_member_1_reset),
    .auto_out_1_member_0_clock(subsystem_sbus_clock_groups_auto_out_1_member_0_clock),
    .auto_out_1_member_0_reset(subsystem_sbus_clock_groups_auto_out_1_member_0_reset),
    .auto_out_0_member_0_clock(subsystem_sbus_clock_groups_auto_out_0_member_0_clock),
    .auto_out_0_member_0_reset(subsystem_sbus_clock_groups_auto_out_0_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:freechips.rocketchip.system.DefaultRV32Config.fir@28965.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:freechips.rocketchip.system.DefaultRV32Config.fir@28967.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar system_bus_xbar ( // @[SystemBus.scala 38:43:freechips.rocketchip.system.DefaultRV32Config.fir@28969.4]
    .clock(system_bus_xbar_clock),
    .reset(system_bus_xbar_reset),
    .auto_in_1_a_ready(system_bus_xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(system_bus_xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(system_bus_xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(system_bus_xbar_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(system_bus_xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(system_bus_xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(system_bus_xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(system_bus_xbar_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(system_bus_xbar_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(system_bus_xbar_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(system_bus_xbar_auto_in_1_b_ready),
    .auto_in_1_b_valid(system_bus_xbar_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(system_bus_xbar_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(system_bus_xbar_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(system_bus_xbar_auto_in_1_c_ready),
    .auto_in_1_c_valid(system_bus_xbar_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(system_bus_xbar_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(system_bus_xbar_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(system_bus_xbar_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(system_bus_xbar_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(system_bus_xbar_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(system_bus_xbar_auto_in_1_c_bits_data),
    .auto_in_1_c_bits_corrupt(system_bus_xbar_auto_in_1_c_bits_corrupt),
    .auto_in_1_d_ready(system_bus_xbar_auto_in_1_d_ready),
    .auto_in_1_d_valid(system_bus_xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(system_bus_xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(system_bus_xbar_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(system_bus_xbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(system_bus_xbar_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(system_bus_xbar_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(system_bus_xbar_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(system_bus_xbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(system_bus_xbar_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(system_bus_xbar_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(system_bus_xbar_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(system_bus_xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(system_bus_xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(system_bus_xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(system_bus_xbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(system_bus_xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(system_bus_xbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(system_bus_xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable),
    .auto_in_0_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable),
    .auto_in_0_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc),
    .auto_in_0_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc),
    .auto_in_0_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged),
    .auto_in_0_a_bits_user_amba_prot_secure(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure),
    .auto_in_0_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch),
    .auto_in_0_a_bits_mask(system_bus_xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(system_bus_xbar_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(system_bus_xbar_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(system_bus_xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(system_bus_xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(system_bus_xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(system_bus_xbar_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(system_bus_xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(system_bus_xbar_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(system_bus_xbar_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(system_bus_xbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(system_bus_xbar_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(system_bus_xbar_auto_in_0_d_bits_corrupt),
    .auto_out_2_a_ready(system_bus_xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(system_bus_xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(system_bus_xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_param(system_bus_xbar_auto_out_2_a_bits_param),
    .auto_out_2_a_bits_size(system_bus_xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(system_bus_xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(system_bus_xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable),
    .auto_out_2_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable),
    .auto_out_2_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc),
    .auto_out_2_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc),
    .auto_out_2_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged),
    .auto_out_2_a_bits_user_amba_prot_secure(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure),
    .auto_out_2_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch),
    .auto_out_2_a_bits_mask(system_bus_xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(system_bus_xbar_auto_out_2_a_bits_data),
    .auto_out_2_a_bits_corrupt(system_bus_xbar_auto_out_2_a_bits_corrupt),
    .auto_out_2_d_ready(system_bus_xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(system_bus_xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(system_bus_xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(system_bus_xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(system_bus_xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_denied(system_bus_xbar_auto_out_2_d_bits_denied),
    .auto_out_2_d_bits_data(system_bus_xbar_auto_out_2_d_bits_data),
    .auto_out_2_d_bits_corrupt(system_bus_xbar_auto_out_2_d_bits_corrupt),
    .auto_out_1_a_ready(system_bus_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(system_bus_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(system_bus_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(system_bus_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(system_bus_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(system_bus_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(system_bus_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable),
    .auto_out_1_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable),
    .auto_out_1_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc),
    .auto_out_1_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc),
    .auto_out_1_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged),
    .auto_out_1_a_bits_user_amba_prot_secure(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure),
    .auto_out_1_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch),
    .auto_out_1_a_bits_mask(system_bus_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(system_bus_xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(system_bus_xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(system_bus_xbar_auto_out_1_b_ready),
    .auto_out_1_b_valid(system_bus_xbar_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(system_bus_xbar_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(system_bus_xbar_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(system_bus_xbar_auto_out_1_c_ready),
    .auto_out_1_c_valid(system_bus_xbar_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(system_bus_xbar_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(system_bus_xbar_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(system_bus_xbar_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(system_bus_xbar_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(system_bus_xbar_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(system_bus_xbar_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(system_bus_xbar_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(system_bus_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(system_bus_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(system_bus_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(system_bus_xbar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(system_bus_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(system_bus_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(system_bus_xbar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(system_bus_xbar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(system_bus_xbar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(system_bus_xbar_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(system_bus_xbar_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(system_bus_xbar_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(system_bus_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(system_bus_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(system_bus_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(system_bus_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(system_bus_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(system_bus_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(system_bus_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(system_bus_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(system_bus_xbar_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(system_bus_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(system_bus_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(system_bus_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(system_bus_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(system_bus_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(system_bus_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(system_bus_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(system_bus_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(system_bus_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(system_bus_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(system_bus_xbar_auto_out_0_d_bits_corrupt)
  );
  TLFIFOFixer fixer ( // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@28975.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_1_a_ready(fixer_auto_in_1_a_ready),
    .auto_in_1_a_valid(fixer_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(fixer_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(fixer_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(fixer_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(fixer_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(fixer_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(fixer_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(fixer_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(fixer_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(fixer_auto_in_1_b_ready),
    .auto_in_1_b_valid(fixer_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(fixer_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(fixer_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(fixer_auto_in_1_c_ready),
    .auto_in_1_c_valid(fixer_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(fixer_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(fixer_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(fixer_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(fixer_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(fixer_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(fixer_auto_in_1_c_bits_data),
    .auto_in_1_c_bits_corrupt(fixer_auto_in_1_c_bits_corrupt),
    .auto_in_1_d_ready(fixer_auto_in_1_d_ready),
    .auto_in_1_d_valid(fixer_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(fixer_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(fixer_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(fixer_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(fixer_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(fixer_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(fixer_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(fixer_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(fixer_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(fixer_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(fixer_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(fixer_auto_in_0_a_ready),
    .auto_in_0_a_valid(fixer_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(fixer_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(fixer_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(fixer_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(fixer_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(fixer_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_amba_prot_bufferable(fixer_auto_in_0_a_bits_user_amba_prot_bufferable),
    .auto_in_0_a_bits_user_amba_prot_modifiable(fixer_auto_in_0_a_bits_user_amba_prot_modifiable),
    .auto_in_0_a_bits_user_amba_prot_readalloc(fixer_auto_in_0_a_bits_user_amba_prot_readalloc),
    .auto_in_0_a_bits_user_amba_prot_writealloc(fixer_auto_in_0_a_bits_user_amba_prot_writealloc),
    .auto_in_0_a_bits_user_amba_prot_privileged(fixer_auto_in_0_a_bits_user_amba_prot_privileged),
    .auto_in_0_a_bits_user_amba_prot_secure(fixer_auto_in_0_a_bits_user_amba_prot_secure),
    .auto_in_0_a_bits_user_amba_prot_fetch(fixer_auto_in_0_a_bits_user_amba_prot_fetch),
    .auto_in_0_a_bits_mask(fixer_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(fixer_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(fixer_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(fixer_auto_in_0_d_ready),
    .auto_in_0_d_valid(fixer_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(fixer_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(fixer_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(fixer_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(fixer_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(fixer_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(fixer_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(fixer_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(fixer_auto_in_0_d_bits_corrupt),
    .auto_out_1_a_ready(fixer_auto_out_1_a_ready),
    .auto_out_1_a_valid(fixer_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(fixer_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(fixer_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(fixer_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(fixer_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(fixer_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(fixer_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(fixer_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(fixer_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(fixer_auto_out_1_b_ready),
    .auto_out_1_b_valid(fixer_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(fixer_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(fixer_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(fixer_auto_out_1_c_ready),
    .auto_out_1_c_valid(fixer_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(fixer_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(fixer_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(fixer_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(fixer_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(fixer_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(fixer_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(fixer_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(fixer_auto_out_1_d_ready),
    .auto_out_1_d_valid(fixer_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(fixer_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(fixer_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(fixer_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(fixer_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(fixer_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(fixer_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(fixer_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(fixer_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(fixer_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(fixer_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(fixer_auto_out_0_a_ready),
    .auto_out_0_a_valid(fixer_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(fixer_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(fixer_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(fixer_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(fixer_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(fixer_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_user_amba_prot_bufferable(fixer_auto_out_0_a_bits_user_amba_prot_bufferable),
    .auto_out_0_a_bits_user_amba_prot_modifiable(fixer_auto_out_0_a_bits_user_amba_prot_modifiable),
    .auto_out_0_a_bits_user_amba_prot_readalloc(fixer_auto_out_0_a_bits_user_amba_prot_readalloc),
    .auto_out_0_a_bits_user_amba_prot_writealloc(fixer_auto_out_0_a_bits_user_amba_prot_writealloc),
    .auto_out_0_a_bits_user_amba_prot_privileged(fixer_auto_out_0_a_bits_user_amba_prot_privileged),
    .auto_out_0_a_bits_user_amba_prot_secure(fixer_auto_out_0_a_bits_user_amba_prot_secure),
    .auto_out_0_a_bits_user_amba_prot_fetch(fixer_auto_out_0_a_bits_user_amba_prot_fetch),
    .auto_out_0_a_bits_mask(fixer_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(fixer_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(fixer_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(fixer_auto_out_0_d_ready),
    .auto_out_0_d_valid(fixer_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(fixer_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(fixer_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(fixer_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(fixer_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(fixer_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(fixer_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(fixer_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(fixer_auto_out_0_d_bits_corrupt)
  );
  SimpleLazyModule coupler_to_bus_named_subsystem_cbus ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28981.4]
    .clock(coupler_to_bus_named_subsystem_cbus_clock),
    .reset(coupler_to_bus_named_subsystem_cbus_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_param(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_sink(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt),
    .auto_bus_xing_out_a_ready(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_mask(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_param(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param),
    .auto_bus_xing_out_d_bits_size(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_source(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source),
    .auto_bus_xing_out_d_bits_sink(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink),
    .auto_bus_xing_out_d_bits_denied(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt)
  );
  SimpleLazyModule_1 coupler_from_bus_named_subsystem_fbus ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28987.4]
    .clock(coupler_from_bus_named_subsystem_fbus_clock),
    .reset(coupler_from_bus_named_subsystem_fbus_reset),
    .auto_widget_out_a_ready(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_user_amba_prot_bufferable(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_widget_out_a_bits_user_amba_prot_modifiable(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_widget_out_a_bits_user_amba_prot_readalloc(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_widget_out_a_bits_user_amba_prot_writealloc(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_widget_out_a_bits_user_amba_prot_privileged(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged),
    .auto_widget_out_a_bits_user_amba_prot_secure(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure),
    .auto_widget_out_a_bits_user_amba_prot_fetch(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch),
    .auto_widget_out_a_bits_mask(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_d_ready(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_param(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param),
    .auto_widget_out_d_bits_size(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_sink(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink),
    .auto_widget_out_d_bits_denied(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt),
    .auto_bus_xing_in_a_ready(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_user_amba_prot_bufferable(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable),
    .auto_bus_xing_in_a_bits_user_amba_prot_modifiable(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable),
    .auto_bus_xing_in_a_bits_user_amba_prot_readalloc(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc),
    .auto_bus_xing_in_a_bits_user_amba_prot_writealloc(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc),
    .auto_bus_xing_in_a_bits_user_amba_prot_privileged(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged),
    .auto_bus_xing_in_a_bits_user_amba_prot_secure(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure),
    .auto_bus_xing_in_a_bits_user_amba_prot_fetch(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch),
    .auto_bus_xing_in_a_bits_mask(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt)
  );
  SimpleLazyModule_2 coupler_to_bus_named_subsystem_l2 ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28993.4]
    .clock(coupler_to_bus_named_subsystem_l2_clock),
    .reset(coupler_to_bus_named_subsystem_l2_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_user_amba_prot_bufferable(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable),
    .auto_widget_in_a_bits_user_amba_prot_modifiable(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable),
    .auto_widget_in_a_bits_user_amba_prot_readalloc(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc),
    .auto_widget_in_a_bits_user_amba_prot_writealloc(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc),
    .auto_widget_in_a_bits_user_amba_prot_privileged(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged),
    .auto_widget_in_a_bits_user_amba_prot_secure(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure),
    .auto_widget_in_a_bits_user_amba_prot_fetch(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_b_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready),
    .auto_widget_in_b_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid),
    .auto_widget_in_b_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param),
    .auto_widget_in_b_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address),
    .auto_widget_in_c_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready),
    .auto_widget_in_c_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid),
    .auto_widget_in_c_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode),
    .auto_widget_in_c_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param),
    .auto_widget_in_c_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size),
    .auto_widget_in_c_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source),
    .auto_widget_in_c_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address),
    .auto_widget_in_c_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data),
    .auto_widget_in_c_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt),
    .auto_widget_in_e_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid),
    .auto_widget_in_e_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink),
    .auto_widget_out_a_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_user_amba_prot_bufferable(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_widget_out_a_bits_user_amba_prot_modifiable(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_widget_out_a_bits_user_amba_prot_readalloc(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_widget_out_a_bits_user_amba_prot_writealloc(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_widget_out_a_bits_user_amba_prot_privileged(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged),
    .auto_widget_out_a_bits_user_amba_prot_secure(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure),
    .auto_widget_out_a_bits_user_amba_prot_fetch(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch),
    .auto_widget_out_a_bits_mask(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_b_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready),
    .auto_widget_out_b_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid),
    .auto_widget_out_b_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param),
    .auto_widget_out_b_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address),
    .auto_widget_out_c_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready),
    .auto_widget_out_c_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid),
    .auto_widget_out_c_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode),
    .auto_widget_out_c_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param),
    .auto_widget_out_c_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size),
    .auto_widget_out_c_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source),
    .auto_widget_out_c_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address),
    .auto_widget_out_c_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data),
    .auto_widget_out_c_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt),
    .auto_widget_out_d_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param),
    .auto_widget_out_d_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink),
    .auto_widget_out_d_bits_denied(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt),
    .auto_widget_out_e_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid),
    .auto_widget_out_e_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink)
  );
  SimpleLazyModule_3 coupler_from_tile ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@28999.4]
    .clock(coupler_from_tile_clock),
    .reset(coupler_from_tile_reset),
    .auto_buffer_out_a_ready(coupler_from_tile_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_tile_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_tile_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_param(coupler_from_tile_auto_buffer_out_a_bits_param),
    .auto_buffer_out_a_bits_size(coupler_from_tile_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_source(coupler_from_tile_auto_buffer_out_a_bits_source),
    .auto_buffer_out_a_bits_address(coupler_from_tile_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_mask(coupler_from_tile_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_tile_auto_buffer_out_a_bits_data),
    .auto_buffer_out_a_bits_corrupt(coupler_from_tile_auto_buffer_out_a_bits_corrupt),
    .auto_buffer_out_b_ready(coupler_from_tile_auto_buffer_out_b_ready),
    .auto_buffer_out_b_valid(coupler_from_tile_auto_buffer_out_b_valid),
    .auto_buffer_out_b_bits_param(coupler_from_tile_auto_buffer_out_b_bits_param),
    .auto_buffer_out_b_bits_address(coupler_from_tile_auto_buffer_out_b_bits_address),
    .auto_buffer_out_c_ready(coupler_from_tile_auto_buffer_out_c_ready),
    .auto_buffer_out_c_valid(coupler_from_tile_auto_buffer_out_c_valid),
    .auto_buffer_out_c_bits_opcode(coupler_from_tile_auto_buffer_out_c_bits_opcode),
    .auto_buffer_out_c_bits_param(coupler_from_tile_auto_buffer_out_c_bits_param),
    .auto_buffer_out_c_bits_size(coupler_from_tile_auto_buffer_out_c_bits_size),
    .auto_buffer_out_c_bits_source(coupler_from_tile_auto_buffer_out_c_bits_source),
    .auto_buffer_out_c_bits_address(coupler_from_tile_auto_buffer_out_c_bits_address),
    .auto_buffer_out_c_bits_data(coupler_from_tile_auto_buffer_out_c_bits_data),
    .auto_buffer_out_c_bits_corrupt(coupler_from_tile_auto_buffer_out_c_bits_corrupt),
    .auto_buffer_out_d_ready(coupler_from_tile_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_tile_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_tile_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_tile_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_tile_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_source(coupler_from_tile_auto_buffer_out_d_bits_source),
    .auto_buffer_out_d_bits_sink(coupler_from_tile_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_tile_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_tile_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_tile_auto_buffer_out_d_bits_corrupt),
    .auto_buffer_out_e_valid(coupler_from_tile_auto_buffer_out_e_valid),
    .auto_buffer_out_e_bits_sink(coupler_from_tile_auto_buffer_out_e_bits_sink),
    .auto_tl_master_xing_in_a_ready(coupler_from_tile_auto_tl_master_xing_in_a_ready),
    .auto_tl_master_xing_in_a_valid(coupler_from_tile_auto_tl_master_xing_in_a_valid),
    .auto_tl_master_xing_in_a_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode),
    .auto_tl_master_xing_in_a_bits_param(coupler_from_tile_auto_tl_master_xing_in_a_bits_param),
    .auto_tl_master_xing_in_a_bits_size(coupler_from_tile_auto_tl_master_xing_in_a_bits_size),
    .auto_tl_master_xing_in_a_bits_source(coupler_from_tile_auto_tl_master_xing_in_a_bits_source),
    .auto_tl_master_xing_in_a_bits_address(coupler_from_tile_auto_tl_master_xing_in_a_bits_address),
    .auto_tl_master_xing_in_a_bits_mask(coupler_from_tile_auto_tl_master_xing_in_a_bits_mask),
    .auto_tl_master_xing_in_a_bits_data(coupler_from_tile_auto_tl_master_xing_in_a_bits_data),
    .auto_tl_master_xing_in_a_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt),
    .auto_tl_master_xing_in_b_ready(coupler_from_tile_auto_tl_master_xing_in_b_ready),
    .auto_tl_master_xing_in_b_valid(coupler_from_tile_auto_tl_master_xing_in_b_valid),
    .auto_tl_master_xing_in_b_bits_param(coupler_from_tile_auto_tl_master_xing_in_b_bits_param),
    .auto_tl_master_xing_in_b_bits_address(coupler_from_tile_auto_tl_master_xing_in_b_bits_address),
    .auto_tl_master_xing_in_c_ready(coupler_from_tile_auto_tl_master_xing_in_c_ready),
    .auto_tl_master_xing_in_c_valid(coupler_from_tile_auto_tl_master_xing_in_c_valid),
    .auto_tl_master_xing_in_c_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode),
    .auto_tl_master_xing_in_c_bits_param(coupler_from_tile_auto_tl_master_xing_in_c_bits_param),
    .auto_tl_master_xing_in_c_bits_size(coupler_from_tile_auto_tl_master_xing_in_c_bits_size),
    .auto_tl_master_xing_in_c_bits_source(coupler_from_tile_auto_tl_master_xing_in_c_bits_source),
    .auto_tl_master_xing_in_c_bits_address(coupler_from_tile_auto_tl_master_xing_in_c_bits_address),
    .auto_tl_master_xing_in_c_bits_data(coupler_from_tile_auto_tl_master_xing_in_c_bits_data),
    .auto_tl_master_xing_in_c_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt),
    .auto_tl_master_xing_in_d_ready(coupler_from_tile_auto_tl_master_xing_in_d_ready),
    .auto_tl_master_xing_in_d_valid(coupler_from_tile_auto_tl_master_xing_in_d_valid),
    .auto_tl_master_xing_in_d_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode),
    .auto_tl_master_xing_in_d_bits_param(coupler_from_tile_auto_tl_master_xing_in_d_bits_param),
    .auto_tl_master_xing_in_d_bits_size(coupler_from_tile_auto_tl_master_xing_in_d_bits_size),
    .auto_tl_master_xing_in_d_bits_source(coupler_from_tile_auto_tl_master_xing_in_d_bits_source),
    .auto_tl_master_xing_in_d_bits_sink(coupler_from_tile_auto_tl_master_xing_in_d_bits_sink),
    .auto_tl_master_xing_in_d_bits_denied(coupler_from_tile_auto_tl_master_xing_in_d_bits_denied),
    .auto_tl_master_xing_in_d_bits_data(coupler_from_tile_auto_tl_master_xing_in_d_bits_data),
    .auto_tl_master_xing_in_d_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt),
    .auto_tl_master_xing_in_e_valid(coupler_from_tile_auto_tl_master_xing_in_e_valid),
    .auto_tl_master_xing_in_e_bits_sink(coupler_from_tile_auto_tl_master_xing_in_e_bits_sink)
  );
  SimpleLazyModule_4 coupler_to_port_named_mmio_port_axi4 ( // @[LazyModule.scala 403:27:freechips.rocketchip.system.DefaultRV32Config.fir@29005.4]
    .clock(coupler_to_port_named_mmio_port_axi4_clock),
    .reset(coupler_to_port_named_mmio_port_axi4_reset),
    .auto_widget_in_a_ready(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_user_amba_prot_bufferable(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable),
    .auto_widget_in_a_bits_user_amba_prot_modifiable(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable),
    .auto_widget_in_a_bits_user_amba_prot_readalloc(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc),
    .auto_widget_in_a_bits_user_amba_prot_writealloc(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc),
    .auto_widget_in_a_bits_user_amba_prot_privileged(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_privileged),
    .auto_widget_in_a_bits_user_amba_prot_secure(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_secure),
    .auto_widget_in_a_bits_user_amba_prot_fetch(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_fetch),
    .auto_widget_in_a_bits_mask(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_size(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_denied(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_corrupt),
    .auto_axi4buf_out_aw_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready),
    .auto_axi4buf_out_aw_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid),
    .auto_axi4buf_out_aw_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id),
    .auto_axi4buf_out_aw_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr),
    .auto_axi4buf_out_aw_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len),
    .auto_axi4buf_out_aw_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size),
    .auto_axi4buf_out_aw_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst),
    .auto_axi4buf_out_aw_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock),
    .auto_axi4buf_out_aw_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache),
    .auto_axi4buf_out_aw_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot),
    .auto_axi4buf_out_aw_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos),
    .auto_axi4buf_out_w_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready),
    .auto_axi4buf_out_w_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid),
    .auto_axi4buf_out_w_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data),
    .auto_axi4buf_out_w_bits_strb(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb),
    .auto_axi4buf_out_w_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last),
    .auto_axi4buf_out_b_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready),
    .auto_axi4buf_out_b_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid),
    .auto_axi4buf_out_b_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id),
    .auto_axi4buf_out_b_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp),
    .auto_axi4buf_out_ar_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready),
    .auto_axi4buf_out_ar_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid),
    .auto_axi4buf_out_ar_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id),
    .auto_axi4buf_out_ar_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr),
    .auto_axi4buf_out_ar_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len),
    .auto_axi4buf_out_ar_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size),
    .auto_axi4buf_out_ar_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst),
    .auto_axi4buf_out_ar_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock),
    .auto_axi4buf_out_ar_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache),
    .auto_axi4buf_out_ar_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot),
    .auto_axi4buf_out_ar_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos),
    .auto_axi4buf_out_r_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready),
    .auto_axi4buf_out_r_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid),
    .auto_axi4buf_out_r_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id),
    .auto_axi4buf_out_r_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data),
    .auto_axi4buf_out_r_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp),
    .auto_axi4buf_out_r_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last)
  );
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign auto_coupler_from_tile_tl_master_xing_in_a_ready = coupler_from_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_valid = coupler_from_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_param = coupler_from_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_address = coupler_from_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_c_ready = coupler_from_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_valid = coupler_from_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode = coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_param = coupler_from_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_size = coupler_from_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_source = coupler_from_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_sink = coupler_from_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_denied = coupler_from_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_data = coupler_from_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt = coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready = coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready = coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink = coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_1_clock = subsystem_sbus_clock_groups_auto_out_3_member_1_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29025.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_1_reset = subsystem_sbus_clock_groups_auto_out_3_member_1_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29025.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_0_clock = subsystem_sbus_clock_groups_auto_out_3_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29025.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_0_reset = subsystem_sbus_clock_groups_auto_out_3_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29025.4]
  assign auto_subsystem_sbus_clock_groups_out_1_member_0_clock = subsystem_sbus_clock_groups_auto_out_2_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29024.4]
  assign auto_subsystem_sbus_clock_groups_out_1_member_0_reset = subsystem_sbus_clock_groups_auto_out_2_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29024.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_1_clock = subsystem_sbus_clock_groups_auto_out_1_member_1_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29023.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_1_reset = subsystem_sbus_clock_groups_auto_out_1_member_1_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29023.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_0_clock = subsystem_sbus_clock_groups_auto_out_1_member_0_clock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29023.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_0_reset = subsystem_sbus_clock_groups_auto_out_1_member_0_reset; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29023.4]
  assign subsystem_sbus_clock_groups_auto_in_member_5_clock = auto_subsystem_sbus_clock_groups_in_member_5_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_5_reset = auto_subsystem_sbus_clock_groups_in_member_5_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_4_clock = auto_subsystem_sbus_clock_groups_in_member_4_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_4_reset = auto_subsystem_sbus_clock_groups_in_member_4_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_3_clock = auto_subsystem_sbus_clock_groups_in_member_3_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_3_reset = auto_subsystem_sbus_clock_groups_in_member_3_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_2_clock = auto_subsystem_sbus_clock_groups_in_member_2_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_2_reset = auto_subsystem_sbus_clock_groups_in_member_2_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_1_clock = auto_subsystem_sbus_clock_groups_in_member_1_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_1_reset = auto_subsystem_sbus_clock_groups_in_member_1_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_0_clock = auto_subsystem_sbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign subsystem_sbus_clock_groups_auto_in_member_0_reset = auto_subsystem_sbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29026.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_sbus_clock_groups_auto_out_0_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29013.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_sbus_clock_groups_auto_out_0_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29013.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29014.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29014.4]
  assign system_bus_xbar_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28973.4]
  assign system_bus_xbar_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28974.4]
  assign system_bus_xbar_auto_in_1_a_valid = fixer_auto_out_1_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_opcode = fixer_auto_out_1_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_param = fixer_auto_out_1_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_size = fixer_auto_out_1_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_source = fixer_auto_out_1_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_address = fixer_auto_out_1_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_mask = fixer_auto_out_1_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_data = fixer_auto_out_1_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_a_bits_corrupt = fixer_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_b_ready = fixer_auto_out_1_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_valid = fixer_auto_out_1_c_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_opcode = fixer_auto_out_1_c_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_param = fixer_auto_out_1_c_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_size = fixer_auto_out_1_c_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_source = fixer_auto_out_1_c_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_address = fixer_auto_out_1_c_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_data = fixer_auto_out_1_c_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_c_bits_corrupt = fixer_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_d_ready = fixer_auto_out_1_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_e_valid = fixer_auto_out_1_e_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_1_e_bits_sink = fixer_auto_out_1_e_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign system_bus_xbar_auto_in_0_a_valid = fixer_auto_out_0_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_opcode = fixer_auto_out_0_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_param = fixer_auto_out_0_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_size = fixer_auto_out_0_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_source = fixer_auto_out_0_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_address = fixer_auto_out_0_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable = fixer_auto_out_0_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable = fixer_auto_out_0_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc = fixer_auto_out_0_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc = fixer_auto_out_0_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged = fixer_auto_out_0_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure = fixer_auto_out_0_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch = fixer_auto_out_0_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_mask = fixer_auto_out_0_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_data = fixer_auto_out_0_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_a_bits_corrupt = fixer_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_in_0_d_ready = fixer_auto_out_0_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign system_bus_xbar_auto_out_2_a_ready = coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_valid = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_opcode = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_size = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_source = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_denied = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_data = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_2_d_bits_corrupt = coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign system_bus_xbar_auto_out_1_a_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_b_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_b_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_b_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_c_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_sink = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_denied = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_1_d_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign system_bus_xbar_auto_out_0_a_ready = coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_valid = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_opcode = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_param = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_size = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_source = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_sink = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_denied = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_data = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign system_bus_xbar_auto_out_0_d_bits_corrupt = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign fixer_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28979.4]
  assign fixer_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28980.4]
  assign fixer_auto_in_1_a_valid = coupler_from_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_opcode = coupler_from_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_param = coupler_from_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_size = coupler_from_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_source = coupler_from_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_address = coupler_from_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_mask = coupler_from_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_data = coupler_from_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_a_bits_corrupt = coupler_from_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_b_ready = coupler_from_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_valid = coupler_from_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_opcode = coupler_from_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_param = coupler_from_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_size = coupler_from_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_source = coupler_from_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_address = coupler_from_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_data = coupler_from_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_c_bits_corrupt = coupler_from_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_d_ready = coupler_from_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_e_valid = coupler_from_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_1_e_bits_sink = coupler_from_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign fixer_auto_in_0_a_valid = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_opcode = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_param = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_size = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_source = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_address = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_bufferable = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_modifiable = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_readalloc = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_writealloc = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_privileged = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_secure = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_user_amba_prot_fetch = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_mask = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_data = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_a_bits_corrupt = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_in_0_d_ready = coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign fixer_auto_out_1_a_ready = system_bus_xbar_auto_in_1_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_b_valid = system_bus_xbar_auto_in_1_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_b_bits_param = system_bus_xbar_auto_in_1_b_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_b_bits_address = system_bus_xbar_auto_in_1_b_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_c_ready = system_bus_xbar_auto_in_1_c_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_valid = system_bus_xbar_auto_in_1_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_opcode = system_bus_xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_param = system_bus_xbar_auto_in_1_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_size = system_bus_xbar_auto_in_1_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_source = system_bus_xbar_auto_in_1_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_sink = system_bus_xbar_auto_in_1_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_denied = system_bus_xbar_auto_in_1_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_data = system_bus_xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_1_d_bits_corrupt = system_bus_xbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29020.4]
  assign fixer_auto_out_0_a_ready = system_bus_xbar_auto_in_0_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_valid = system_bus_xbar_auto_in_0_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_opcode = system_bus_xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_param = system_bus_xbar_auto_in_0_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_size = system_bus_xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_source = system_bus_xbar_auto_in_0_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_sink = system_bus_xbar_auto_in_0_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_denied = system_bus_xbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_data = system_bus_xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign fixer_auto_out_0_d_bits_corrupt = system_bus_xbar_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29019.4]
  assign coupler_to_bus_named_subsystem_cbus_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28985.4]
  assign coupler_to_bus_named_subsystem_cbus_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28986.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid = system_bus_xbar_auto_out_0_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready = system_bus_xbar_auto_out_0_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29016.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29027.4]
  assign coupler_from_bus_named_subsystem_fbus_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28991.4]
  assign coupler_from_bus_named_subsystem_fbus_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28992.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready = fixer_auto_in_0_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid = fixer_auto_in_0_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode = fixer_auto_in_0_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param = fixer_auto_in_0_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size = fixer_auto_in_0_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source = fixer_auto_in_0_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink = fixer_auto_in_0_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied = fixer_auto_in_0_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data = fixer_auto_in_0_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt = fixer_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29021.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29028.4]
  assign coupler_to_bus_named_subsystem_l2_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28997.4]
  assign coupler_to_bus_named_subsystem_l2_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28998.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid = system_bus_xbar_auto_out_1_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch = system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready = system_bus_xbar_auto_out_1_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid = system_bus_xbar_auto_out_1_c_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode = system_bus_xbar_auto_out_1_c_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param = system_bus_xbar_auto_out_1_c_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size = system_bus_xbar_auto_out_1_c_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source = system_bus_xbar_auto_out_1_c_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address = system_bus_xbar_auto_out_1_c_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data = system_bus_xbar_auto_out_1_c_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt = system_bus_xbar_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready = system_bus_xbar_auto_out_1_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid = system_bus_xbar_auto_out_1_e_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink = system_bus_xbar_auto_out_1_e_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29017.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready = auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready = auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29029.4]
  assign coupler_from_tile_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29003.4]
  assign coupler_from_tile_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29004.4]
  assign coupler_from_tile_auto_buffer_out_a_ready = fixer_auto_in_1_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_b_valid = fixer_auto_in_1_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_b_bits_param = fixer_auto_in_1_b_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_b_bits_address = fixer_auto_in_1_b_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_c_ready = fixer_auto_in_1_c_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_valid = fixer_auto_in_1_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_opcode = fixer_auto_in_1_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_param = fixer_auto_in_1_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_size = fixer_auto_in_1_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_source = fixer_auto_in_1_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_sink = fixer_auto_in_1_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_denied = fixer_auto_in_1_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_data = fixer_auto_in_1_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_corrupt = fixer_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@29022.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_valid = auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_param = auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_size = auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_source = auto_coupler_from_tile_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_address = auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_mask = auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_data = auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt = auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_b_ready = auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_valid = auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_param = auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_size = auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_source = auto_coupler_from_tile_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_address = auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_data = auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt = auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_d_ready = auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_e_valid = auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_from_tile_auto_tl_master_xing_in_e_bits_sink = auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@29030.4]
  assign coupler_to_port_named_mmio_port_axi4_clock = fixedClockNode_auto_out_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29009.4]
  assign coupler_to_port_named_mmio_port_axi4_reset = fixedClockNode_auto_out_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@29010.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_valid = system_bus_xbar_auto_out_2_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_2_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_bufferable = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_modifiable = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_readalloc = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_writealloc = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_privileged = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_secure = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_user_amba_prot_fetch = system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_2_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_widget_in_d_ready = system_bus_xbar_auto_out_2_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@29018.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@29031.4]
endmodule
