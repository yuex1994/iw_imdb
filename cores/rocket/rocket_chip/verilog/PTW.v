module PTW( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214485.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214486.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214487.4]
  output        io_requestor_0_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_requestor_0_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [19:0] io_requestor_0_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [53:0] io_requestor_0_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_0_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_0_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_0_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_0_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_requestor_1_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_requestor_1_req_bits_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [19:0] io_requestor_1_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [53:0] io_requestor_1_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [1:0]  io_requestor_1_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_requestor_1_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [29:0] io_requestor_1_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_requestor_1_customCSRs_csrs_0_value, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_mem_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_mem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output [31:0] io_mem_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  output        io_mem_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_mem_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_mem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_mem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_mem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [21:0] io_dpath_ptbr_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [1:0]  io_dpath_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input         io_dpath_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [29:0] io_dpath_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
  input  [31:0] io_dpath_customCSRs_csrs_0_value // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214488.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  wire  arb_io_in_0_ready; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_in_0_valid; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire [19:0] arb_io_in_0_bits_bits_addr; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_in_1_ready; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_in_1_valid; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_in_1_bits_valid; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire [19:0] arb_io_in_1_bits_bits_addr; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_out_ready; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_out_valid; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_out_bits_valid; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire [19:0] arb_io_out_bits_bits_addr; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire  arb_io_chosen; // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
  wire [2:0] OptimizationBarrier_io_x; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215355.4]
  wire [2:0] OptimizationBarrier_io_y; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215355.4]
  wire [53:0] OptimizationBarrier_1_io_x_ppn; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_d; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_a; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_g; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_u; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_x; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_w; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_r; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_x_v; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire [53:0] OptimizationBarrier_1_io_y_ppn; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_d; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_a; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_g; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_u; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_x; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_w; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_r; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  wire  OptimizationBarrier_1_io_y_v; // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
  reg [2:0] state; // @[PTW.scala 103:18:freechips.rocketchip.system.DefaultRV32Config.fir@214493.4]
  reg  resp_valid_0; // @[PTW.scala 109:23:freechips.rocketchip.system.DefaultRV32Config.fir@214506.4]
  reg  resp_valid_1; // @[PTW.scala 109:23:freechips.rocketchip.system.DefaultRV32Config.fir@214506.4]
  wire  _T_2; // @[PTW.scala 111:24:freechips.rocketchip.system.DefaultRV32Config.fir@214508.4]
  reg  invalidated; // @[PTW.scala 118:24:freechips.rocketchip.system.DefaultRV32Config.fir@214515.4]
  reg  count; // @[PTW.scala 119:18:freechips.rocketchip.system.DefaultRV32Config.fir@214516.4]
  reg  resp_ae; // @[PTW.scala 120:24:freechips.rocketchip.system.DefaultRV32Config.fir@214517.4]
  reg [19:0] r_req_addr; // @[PTW.scala 123:18:freechips.rocketchip.system.DefaultRV32Config.fir@214521.4]
  reg  r_req_dest; // @[PTW.scala 124:23:freechips.rocketchip.system.DefaultRV32Config.fir@214522.4]
  reg [53:0] r_pte_ppn; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_d; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_a; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_g; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_u; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_x; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_w; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_r; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  r_pte_v; // @[PTW.scala 125:18:freechips.rocketchip.system.DefaultRV32Config.fir@214523.4]
  reg  mem_resp_valid; // @[PTW.scala 127:31:freechips.rocketchip.system.DefaultRV32Config.fir@214524.4]
  reg [31:0] mem_resp_data; // @[PTW.scala 128:30:freechips.rocketchip.system.DefaultRV32Config.fir@214526.4]
  wire [63:0] _T_7; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214530.4 :freechips.rocketchip.system.DefaultRV32Config.fir@214532.4]
  wire  tmp_v; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214533.4]
  wire  tmp_r; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214535.4]
  wire  tmp_w; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214537.4]
  wire  tmp_x; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214539.4]
  wire  tmp_u; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214541.4]
  wire  tmp_g; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214543.4]
  wire  tmp_a; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214545.4]
  wire  tmp_d; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214547.4]
  wire [53:0] tmp_ppn; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214551.4]
  wire  _T_19; // @[PTW.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@214558.4]
  wire  _T_20; // @[PTW.scala 142:26:freechips.rocketchip.system.DefaultRV32Config.fir@214559.4]
  wire  _T_21; // @[PTW.scala 145:21:freechips.rocketchip.system.DefaultRV32Config.fir@214561.6]
  wire  _T_23; // @[PTW.scala 145:95:freechips.rocketchip.system.DefaultRV32Config.fir@214563.6]
  wire  _T_24; // @[PTW.scala 145:26:freechips.rocketchip.system.DefaultRV32Config.fir@214564.6]
  wire  _GEN_0; // @[PTW.scala 145:102:freechips.rocketchip.system.DefaultRV32Config.fir@214565.6]
  wire  res_v; // @[PTW.scala 142:36:freechips.rocketchip.system.DefaultRV32Config.fir@214560.4]
  wire  invalid_paddr; // @[PTW.scala 147:32:freechips.rocketchip.system.DefaultRV32Config.fir@214570.4]
  wire  _T_26; // @[PTW.scala 68:36:freechips.rocketchip.system.DefaultRV32Config.fir@214571.4]
  wire  _T_27; // @[PTW.scala 68:33:freechips.rocketchip.system.DefaultRV32Config.fir@214572.4]
  wire  _T_28; // @[PTW.scala 68:42:freechips.rocketchip.system.DefaultRV32Config.fir@214573.4]
  wire  _T_29; // @[PTW.scala 68:39:freechips.rocketchip.system.DefaultRV32Config.fir@214574.4]
  wire  _T_30; // @[PTW.scala 68:48:freechips.rocketchip.system.DefaultRV32Config.fir@214575.4]
  wire  _T_31; // @[PTW.scala 68:45:freechips.rocketchip.system.DefaultRV32Config.fir@214576.4]
  wire  _T_32; // @[PTW.scala 149:33:freechips.rocketchip.system.DefaultRV32Config.fir@214577.4]
  wire  _T_33; // @[PTW.scala 149:30:freechips.rocketchip.system.DefaultRV32Config.fir@214578.4]
  wire  _T_34; // @[PTW.scala 149:57:freechips.rocketchip.system.DefaultRV32Config.fir@214579.4]
  wire  traverse; // @[PTW.scala 149:48:freechips.rocketchip.system.DefaultRV32Config.fir@214580.4]
  wire [9:0] vpn_idxs_0; // @[PTW.scala 151:60:freechips.rocketchip.system.DefaultRV32Config.fir@214581.4]
  wire [9:0] vpn_idxs_1; // @[PTW.scala 151:90:freechips.rocketchip.system.DefaultRV32Config.fir@214584.4]
  wire [9:0] vpn_idx; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214586.4]
  wire [63:0] _T_38; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214587.4]
  wire [65:0] pte_addr; // @[PTW.scala 153:29:freechips.rocketchip.system.DefaultRV32Config.fir@214588.4]
  wire [53:0] choices_0; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214591.4]
  wire  _T_41; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@214592.4]
  reg [2:0] _T_42; // @[Replacement.scala 158:30:freechips.rocketchip.system.DefaultRV32Config.fir@214597.4]
  reg [3:0] valid; // @[PTW.scala 168:24:freechips.rocketchip.system.DefaultRV32Config.fir@214598.4]
  reg [31:0] tags_0; // @[PTW.scala 169:19:freechips.rocketchip.system.DefaultRV32Config.fir@214599.4]
  reg [31:0] tags_1; // @[PTW.scala 169:19:freechips.rocketchip.system.DefaultRV32Config.fir@214599.4]
  reg [31:0] tags_2; // @[PTW.scala 169:19:freechips.rocketchip.system.DefaultRV32Config.fir@214599.4]
  reg [31:0] tags_3; // @[PTW.scala 169:19:freechips.rocketchip.system.DefaultRV32Config.fir@214599.4]
  reg [19:0] data_0; // @[PTW.scala 170:19:freechips.rocketchip.system.DefaultRV32Config.fir@214600.4]
  reg [19:0] data_1; // @[PTW.scala 170:19:freechips.rocketchip.system.DefaultRV32Config.fir@214600.4]
  reg [19:0] data_2; // @[PTW.scala 170:19:freechips.rocketchip.system.DefaultRV32Config.fir@214600.4]
  reg [19:0] data_3; // @[PTW.scala 170:19:freechips.rocketchip.system.DefaultRV32Config.fir@214600.4]
  wire [65:0] _GEN_91; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214601.4]
  wire  _T_43; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214601.4]
  wire [65:0] _GEN_92; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214602.4]
  wire  _T_44; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214602.4]
  wire [65:0] _GEN_93; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214603.4]
  wire  _T_45; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214603.4]
  wire [65:0] _GEN_94; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214604.4]
  wire  _T_46; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214604.4]
  wire [3:0] _T_49; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214607.4]
  wire [3:0] hits; // @[PTW.scala 172:48:freechips.rocketchip.system.DefaultRV32Config.fir@214608.4]
  wire  hit; // @[PTW.scala 173:20:freechips.rocketchip.system.DefaultRV32Config.fir@214609.4]
  wire  _T_50; // @[PTW.scala 174:26:freechips.rocketchip.system.DefaultRV32Config.fir@214610.4]
  wire  _T_51; // @[PTW.scala 174:41:freechips.rocketchip.system.DefaultRV32Config.fir@214611.4]
  wire  _T_52; // @[PTW.scala 174:38:freechips.rocketchip.system.DefaultRV32Config.fir@214612.4]
  wire  _T_53; // @[PTW.scala 174:49:freechips.rocketchip.system.DefaultRV32Config.fir@214613.4]
  wire  _T_54; // @[PTW.scala 174:46:freechips.rocketchip.system.DefaultRV32Config.fir@214614.4]
  wire  _T_55; // @[PTW.scala 175:25:freechips.rocketchip.system.DefaultRV32Config.fir@214616.6]
  wire  _T_61; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@214622.6]
  wire [1:0] _T_62; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214623.6]
  wire [3:0] _T_63; // @[PTW.scala 175:57:freechips.rocketchip.system.DefaultRV32Config.fir@214624.6]
  wire [1:0] _T_68; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214629.6]
  wire [1:0] _T_69; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214630.6]
  wire [1:0] _T_70; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214631.6]
  wire [1:0] r; // @[PTW.scala 175:18:freechips.rocketchip.system.DefaultRV32Config.fir@214632.6]
  wire [3:0] _T_71; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@214633.6]
  wire [3:0] _T_72; // @[PTW.scala 176:22:freechips.rocketchip.system.DefaultRV32Config.fir@214634.6]
  wire [53:0] res_ppn; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214553.4 :freechips.rocketchip.system.DefaultRV32Config.fir@214555.4 PTW.scala 141:13:freechips.rocketchip.system.DefaultRV32Config.fir@214557.4]
  wire  _T_73; // @[PTW.scala 180:24:freechips.rocketchip.system.DefaultRV32Config.fir@214639.4]
  wire  _T_74; // @[PTW.scala 180:15:freechips.rocketchip.system.DefaultRV32Config.fir@214640.4]
  wire  _T_77; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@214644.6]
  wire [1:0] _T_78; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@214645.6]
  wire [1:0] _T_80; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214647.6]
  wire  _T_83; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@214650.6]
  wire  _T_88; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@214655.6]
  wire  _T_89; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@214656.6]
  wire  _T_93; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@214660.6]
  wire [2:0] _T_95; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214662.6]
  wire  _T_96; // @[PTW.scala 181:36:freechips.rocketchip.system.DefaultRV32Config.fir@214665.4]
  wire  _T_97; // @[PTW.scala 181:33:freechips.rocketchip.system.DefaultRV32Config.fir@214666.4]
  wire  pte_cache_hit; // @[PTW.scala 186:10:freechips.rocketchip.system.DefaultRV32Config.fir@214675.4]
  wire [19:0] _T_107; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214680.4]
  wire [19:0] _T_108; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214681.4]
  wire [19:0] _T_109; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214682.4]
  wire [19:0] _T_110; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214683.4]
  wire [19:0] _T_111; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214684.4]
  wire [19:0] _T_112; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214685.4]
  wire [19:0] pte_cache_data; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214686.4]
  wire  _T_115; // @[PTW.scala 245:56:freechips.rocketchip.system.DefaultRV32Config.fir@214695.4]
  wire  _T_118; // @[PTW.scala 247:48:freechips.rocketchip.system.DefaultRV32Config.fir@214699.4]
  wire [65:0] _T_122; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214712.4]
  wire [66:0] _T_123; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214713.4]
  wire [66:0] _T_125; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214715.4]
  wire  _T_126; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214716.4]
  wire [65:0] _T_127; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214717.4]
  wire [66:0] _T_128; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214718.4]
  wire [66:0] _T_130; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214720.4]
  wire  _T_131; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214721.4]
  wire [65:0] _T_132; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214722.4]
  wire [66:0] _T_133; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214723.4]
  wire [66:0] _T_135; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214725.4]
  wire  _T_136; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214726.4]
  wire  _T_138; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214728.4]
  wire  pmaPgLevelHomogeneous_0; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214729.4]
  wire [66:0] _T_142; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214733.4]
  wire [66:0] _T_169; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214760.4]
  wire  _T_170; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214761.4]
  wire [65:0] _T_171; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214762.4]
  wire [66:0] _T_172; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214763.4]
  wire [66:0] _T_174; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214765.4]
  wire  _T_175; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214766.4]
  wire [65:0] _T_176; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214767.4]
  wire [66:0] _T_177; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214768.4]
  wire [66:0] _T_179; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214770.4]
  wire  _T_180; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214771.4]
  wire [65:0] _T_181; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214772.4]
  wire [66:0] _T_182; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214773.4]
  wire [66:0] _T_184; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214775.4]
  wire  _T_185; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214776.4]
  wire  _T_202; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214793.4]
  wire  _T_203; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214794.4]
  wire  _T_204; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214795.4]
  wire  _T_205; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214796.4]
  wire  _T_206; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214797.4]
  wire  pmaPgLevelHomogeneous_1; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214798.4]
  wire  pmaHomogeneous; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214851.4]
  wire [65:0] _T_260; // @[PTW.scala 268:92:freechips.rocketchip.system.DefaultRV32Config.fir@214853.4]
  wire  _T_266; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214867.4]
  wire [31:0] _T_267; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214868.4]
  wire [31:0] _T_268; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214869.4]
  wire [31:0] _T_269; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214870.4]
  wire [31:0] _T_270; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214871.4]
  wire [65:0] _GEN_95; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214872.4]
  wire [65:0] _T_271; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214872.4]
  wire  _T_273; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214874.4]
  wire  _T_280; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214881.4]
  wire  _T_282; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214883.4]
  wire  _T_283; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@214884.4]
  wire  _T_285; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@214886.4]
  wire  _T_296; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@214897.4]
  wire  _T_297; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@214898.4]
  wire [31:0] _T_299; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214900.4]
  wire [65:0] _GEN_98; // @[PMP.scala 112:30:freechips.rocketchip.system.DefaultRV32Config.fir@214901.4]
  wire [65:0] _T_300; // @[PMP.scala 112:30:freechips.rocketchip.system.DefaultRV32Config.fir@214901.4]
  wire [31:0] _T_312; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@214913.4]
  wire [65:0] _GEN_100; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214914.4]
  wire  _T_313; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214914.4]
  wire  _T_316; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@214917.4]
  wire  _T_317; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@214918.4]
  wire  _T_318; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@214919.4]
  wire  _T_324; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214925.4]
  wire [31:0] _T_325; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214926.4]
  wire [31:0] _T_326; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214927.4]
  wire [31:0] _T_327; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214928.4]
  wire [31:0] _T_328; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214929.4]
  wire [65:0] _GEN_101; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214930.4]
  wire [65:0] _T_329; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214930.4]
  wire  _T_331; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214932.4]
  wire  _T_338; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214939.4]
  wire  _T_340; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214941.4]
  wire  _T_341; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@214942.4]
  wire  _T_343; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@214944.4]
  wire  _T_354; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@214955.4]
  wire  _T_355; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@214956.4]
  wire [31:0] _T_370; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@214971.4]
  wire [65:0] _GEN_108; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214972.4]
  wire  _T_371; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214972.4]
  wire  _T_372; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@214973.4]
  wire  _T_373; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@214974.4]
  wire  _T_374; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@214975.4]
  wire  _T_375; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@214976.4]
  wire  _T_376; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@214977.4]
  wire  _T_377; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@214978.4]
  wire  _T_382; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214983.4]
  wire [31:0] _T_383; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214984.4]
  wire [31:0] _T_384; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214985.4]
  wire [31:0] _T_385; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214986.4]
  wire [31:0] _T_386; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214987.4]
  wire [65:0] _GEN_109; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214988.4]
  wire [65:0] _T_387; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214988.4]
  wire  _T_389; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214990.4]
  wire  _T_396; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214997.4]
  wire  _T_398; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214999.4]
  wire  _T_399; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215000.4]
  wire  _T_401; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215002.4]
  wire  _T_412; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215013.4]
  wire  _T_413; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215014.4]
  wire [31:0] _T_428; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215029.4]
  wire [65:0] _GEN_116; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215030.4]
  wire  _T_429; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215030.4]
  wire  _T_430; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215031.4]
  wire  _T_431; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215032.4]
  wire  _T_432; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215033.4]
  wire  _T_433; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215034.4]
  wire  _T_434; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215035.4]
  wire  _T_435; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215036.4]
  wire  _T_440; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215041.4]
  wire [31:0] _T_441; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215042.4]
  wire [31:0] _T_442; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215043.4]
  wire [31:0] _T_443; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215044.4]
  wire [31:0] _T_444; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215045.4]
  wire [65:0] _GEN_117; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215046.4]
  wire [65:0] _T_445; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215046.4]
  wire  _T_447; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215048.4]
  wire  _T_454; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215055.4]
  wire  _T_456; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215057.4]
  wire  _T_457; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215058.4]
  wire  _T_459; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215060.4]
  wire  _T_470; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215071.4]
  wire  _T_471; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215072.4]
  wire [31:0] _T_486; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215087.4]
  wire [65:0] _GEN_124; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215088.4]
  wire  _T_487; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215088.4]
  wire  _T_488; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215089.4]
  wire  _T_489; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215090.4]
  wire  _T_490; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215091.4]
  wire  _T_491; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215092.4]
  wire  _T_492; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215093.4]
  wire  _T_493; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215094.4]
  wire  _T_498; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215099.4]
  wire [31:0] _T_499; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215100.4]
  wire [31:0] _T_500; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215101.4]
  wire [31:0] _T_501; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215102.4]
  wire [31:0] _T_502; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215103.4]
  wire [65:0] _GEN_125; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215104.4]
  wire [65:0] _T_503; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215104.4]
  wire  _T_505; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215106.4]
  wire  _T_512; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215113.4]
  wire  _T_514; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215115.4]
  wire  _T_515; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215116.4]
  wire  _T_517; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215118.4]
  wire  _T_528; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215129.4]
  wire  _T_529; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215130.4]
  wire [31:0] _T_544; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215145.4]
  wire [65:0] _GEN_132; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215146.4]
  wire  _T_545; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215146.4]
  wire  _T_546; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215147.4]
  wire  _T_547; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215148.4]
  wire  _T_548; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215149.4]
  wire  _T_549; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215150.4]
  wire  _T_550; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215151.4]
  wire  _T_551; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215152.4]
  wire  _T_556; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215157.4]
  wire [31:0] _T_557; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215158.4]
  wire [31:0] _T_558; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215159.4]
  wire [31:0] _T_559; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215160.4]
  wire [31:0] _T_560; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215161.4]
  wire [65:0] _GEN_133; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215162.4]
  wire [65:0] _T_561; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215162.4]
  wire  _T_563; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215164.4]
  wire  _T_570; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215171.4]
  wire  _T_572; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215173.4]
  wire  _T_573; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215174.4]
  wire  _T_575; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215176.4]
  wire  _T_586; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215187.4]
  wire  _T_587; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215188.4]
  wire [31:0] _T_602; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215203.4]
  wire [65:0] _GEN_140; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215204.4]
  wire  _T_603; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215204.4]
  wire  _T_604; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215205.4]
  wire  _T_605; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215206.4]
  wire  _T_606; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215207.4]
  wire  _T_607; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215208.4]
  wire  _T_608; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215209.4]
  wire  _T_609; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215210.4]
  wire  _T_614; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215215.4]
  wire [31:0] _T_615; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215216.4]
  wire [31:0] _T_616; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215217.4]
  wire [31:0] _T_617; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215218.4]
  wire [31:0] _T_618; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215219.4]
  wire [65:0] _GEN_141; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215220.4]
  wire [65:0] _T_619; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215220.4]
  wire  _T_621; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215222.4]
  wire  _T_628; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215229.4]
  wire  _T_630; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215231.4]
  wire  _T_631; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215232.4]
  wire  _T_633; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215234.4]
  wire  _T_644; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215245.4]
  wire  _T_645; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215246.4]
  wire [31:0] _T_660; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215261.4]
  wire [65:0] _GEN_148; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215262.4]
  wire  _T_661; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215262.4]
  wire  _T_662; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215263.4]
  wire  _T_663; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215264.4]
  wire  _T_664; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215265.4]
  wire  _T_665; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215266.4]
  wire  _T_666; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215267.4]
  wire  _T_667; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215268.4]
  wire  _T_672; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215273.4]
  wire [31:0] _T_673; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  wire [31:0] _T_674; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215275.4]
  wire [31:0] _T_675; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215276.4]
  wire [31:0] _T_676; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215277.4]
  wire [65:0] _GEN_149; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215278.4]
  wire [65:0] _T_677; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215278.4]
  wire  _T_679; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215280.4]
  wire  _T_686; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215287.4]
  wire  _T_688; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215289.4]
  wire  _T_689; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215290.4]
  wire  _T_691; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215292.4]
  wire  _T_702; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215303.4]
  wire  _T_703; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215304.4]
  wire [31:0] _T_718; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215319.4]
  wire [65:0] _GEN_156; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215320.4]
  wire  _T_719; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215320.4]
  wire  _T_720; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215321.4]
  wire  _T_721; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215322.4]
  wire  _T_722; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215323.4]
  wire  _T_723; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215324.4]
  wire  _T_724; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215325.4]
  wire  pmpHomogeneous; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215326.4]
  wire  homogeneous; // @[PTW.scala 269:36:freechips.rocketchip.system.DefaultRV32Config.fir@215327.4]
  wire  _T_729; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215361.4]
  wire [2:0] _T_731; // @[PTW.scala 291:26:freechips.rocketchip.system.DefaultRV32Config.fir@215365.8]
  wire [2:0] _GEN_23; // @[PTW.scala 290:32:freechips.rocketchip.system.DefaultRV32Config.fir@215364.6]
  wire  _T_734; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215373.6]
  wire  _T_736; // @[PTW.scala 297:24:freechips.rocketchip.system.DefaultRV32Config.fir@215377.10]
  wire [2:0] _T_737; // @[PTW.scala 299:26:freechips.rocketchip.system.DefaultRV32Config.fir@215381.10]
  wire [2:0] _GEN_25; // @[PTW.scala 296:28:freechips.rocketchip.system.DefaultRV32Config.fir@215375.8]
  wire  _T_738; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215386.8]
  wire  _T_740; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215392.10]
  wire  _GEN_26; // @[PTW.scala 311:32:freechips.rocketchip.system.DefaultRV32Config.fir@215400.14]
  wire [2:0] _GEN_29; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  wire  _GEN_30; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  wire  _GEN_31; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  wire  _T_743; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215404.12]
  wire  _T_746; // @[PTW.scala 318:13:freechips.rocketchip.system.DefaultRV32Config.fir@215411.14]
  wire  _GEN_34; // @[PTW.scala 318:27:freechips.rocketchip.system.DefaultRV32Config.fir@215412.14]
  wire [2:0] _GEN_36; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  wire  _GEN_37; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  wire  _GEN_38; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  wire [2:0] _GEN_42; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  wire  _GEN_43; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  wire  _GEN_44; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  wire  _GEN_45; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  wire [2:0] _GEN_48; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  wire  _GEN_50; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  wire  _GEN_51; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  wire [2:0] _GEN_55; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  wire  _GEN_57; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  wire  _GEN_58; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  wire [2:0] _GEN_60; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  wire  _GEN_63; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  wire  _GEN_64; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  wire  _T_749; // @[PTW.scala 333:15:freechips.rocketchip.system.DefaultRV32Config.fir@215419.4]
  wire  _T_751; // @[PTW.scala 333:40:freechips.rocketchip.system.DefaultRV32Config.fir@215421.4]
  wire  _T_753; // @[PTW.scala 334:25:freechips.rocketchip.system.DefaultRV32Config.fir@215427.4]
  wire [53:0] pte_2_ppn; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215433.4 :freechips.rocketchip.system.DefaultRV32Config.fir@215435.4 PTW.scala 327:13:freechips.rocketchip.system.DefaultRV32Config.fir@215436.4]
  wire [53:0] _T_755_ppn; // @[PTW.scala 335:8:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  wire [53:0] pte_1_ppn; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215428.4 :freechips.rocketchip.system.DefaultRV32Config.fir@215430.4 PTW.scala 327:13:freechips.rocketchip.system.DefaultRV32Config.fir@215431.4]
  wire [53:0] _T_756_ppn; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_d; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_a; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_g; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_u; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_x; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_w; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_r; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire  _T_756_v; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  wire [53:0] _T_757_ppn; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_d; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_a; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_g; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_u; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_x; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_w; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_r; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _T_757_v; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire  _GEN_66; // @[PTW.scala 341:28:freechips.rocketchip.system.DefaultRV32Config.fir@215464.6]
  wire  _GEN_67; // @[PTW.scala 341:28:freechips.rocketchip.system.DefaultRV32Config.fir@215464.6]
  wire  _T_770; // @[PTW.scala 346:18:freechips.rocketchip.system.DefaultRV32Config.fir@215469.6]
  wire  _T_772; // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215471.6]
  wire  _T_773; // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215472.6]
  wire  ae; // @[PTW.scala 352:22:freechips.rocketchip.system.DefaultRV32Config.fir@215489.8]
  wire [2:0] _GEN_78; // @[PTW.scala 347:21:freechips.rocketchip.system.DefaultRV32Config.fir@215477.6]
  wire [2:0] _GEN_84; // @[PTW.scala 345:25:freechips.rocketchip.system.DefaultRV32Config.fir@215468.4]
  wire  _T_786; // @[PTW.scala 363:18:freechips.rocketchip.system.DefaultRV32Config.fir@215507.6]
  wire  _T_788; // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215509.6]
  wire  _T_789; // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215510.6]
  Arbiter arb ( // @[PTW.scala 105:19:freechips.rocketchip.system.DefaultRV32Config.fir@214494.4]
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_bits_addr(arb_io_in_0_bits_bits_addr),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_valid(arb_io_in_1_bits_valid),
    .io_in_1_bits_bits_addr(arb_io_in_1_bits_bits_addr),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_valid(arb_io_out_bits_valid),
    .io_out_bits_bits_addr(arb_io_out_bits_bits_addr),
    .io_chosen(arb_io_chosen)
  );
  OptimizationBarrier_117 OptimizationBarrier ( // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215355.4]
    .io_x(OptimizationBarrier_io_x),
    .io_y(OptimizationBarrier_io_y)
  );
  OptimizationBarrier_118 OptimizationBarrier_1 ( // @[package.scala 231:25:freechips.rocketchip.system.DefaultRV32Config.fir@215442.4]
    .io_x_ppn(OptimizationBarrier_1_io_x_ppn),
    .io_x_d(OptimizationBarrier_1_io_x_d),
    .io_x_a(OptimizationBarrier_1_io_x_a),
    .io_x_g(OptimizationBarrier_1_io_x_g),
    .io_x_u(OptimizationBarrier_1_io_x_u),
    .io_x_x(OptimizationBarrier_1_io_x_x),
    .io_x_w(OptimizationBarrier_1_io_x_w),
    .io_x_r(OptimizationBarrier_1_io_x_r),
    .io_x_v(OptimizationBarrier_1_io_x_v),
    .io_y_ppn(OptimizationBarrier_1_io_y_ppn),
    .io_y_d(OptimizationBarrier_1_io_y_d),
    .io_y_a(OptimizationBarrier_1_io_y_a),
    .io_y_g(OptimizationBarrier_1_io_y_g),
    .io_y_u(OptimizationBarrier_1_io_y_u),
    .io_y_x(OptimizationBarrier_1_io_y_x),
    .io_y_w(OptimizationBarrier_1_io_y_w),
    .io_y_r(OptimizationBarrier_1_io_y_r),
    .io_y_v(OptimizationBarrier_1_io_y_v)
  );
  assign _T_2 = state != 3'h0; // @[PTW.scala 111:24:freechips.rocketchip.system.DefaultRV32Config.fir@214508.4]
  assign _T_7 = {{32'd0}, mem_resp_data}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214530.4 :freechips.rocketchip.system.DefaultRV32Config.fir@214532.4]
  assign tmp_v = _T_7[0]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214533.4]
  assign tmp_r = _T_7[1]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214535.4]
  assign tmp_w = _T_7[2]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214537.4]
  assign tmp_x = _T_7[3]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214539.4]
  assign tmp_u = _T_7[4]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214541.4]
  assign tmp_g = _T_7[5]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214543.4]
  assign tmp_a = _T_7[6]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214545.4]
  assign tmp_d = _T_7[7]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214547.4]
  assign tmp_ppn = _T_7[63:10]; // @[PTW.scala 139:33:freechips.rocketchip.system.DefaultRV32Config.fir@214551.4]
  assign _T_19 = tmp_r | tmp_w; // @[PTW.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@214558.4]
  assign _T_20 = _T_19 | tmp_x; // @[PTW.scala 142:26:freechips.rocketchip.system.DefaultRV32Config.fir@214559.4]
  assign _T_21 = count <= 1'h0; // @[PTW.scala 145:21:freechips.rocketchip.system.DefaultRV32Config.fir@214561.6]
  assign _T_23 = tmp_ppn[9:0] != 10'h0; // @[PTW.scala 145:95:freechips.rocketchip.system.DefaultRV32Config.fir@214563.6]
  assign _T_24 = _T_21 & _T_23; // @[PTW.scala 145:26:freechips.rocketchip.system.DefaultRV32Config.fir@214564.6]
  assign _GEN_0 = _T_24 ? 1'h0 : tmp_v; // @[PTW.scala 145:102:freechips.rocketchip.system.DefaultRV32Config.fir@214565.6]
  assign res_v = _T_20 ? _GEN_0 : tmp_v; // @[PTW.scala 142:36:freechips.rocketchip.system.DefaultRV32Config.fir@214560.4]
  assign invalid_paddr = tmp_ppn[53:20] != 34'h0; // @[PTW.scala 147:32:freechips.rocketchip.system.DefaultRV32Config.fir@214570.4]
  assign _T_26 = ~tmp_r; // @[PTW.scala 68:36:freechips.rocketchip.system.DefaultRV32Config.fir@214571.4]
  assign _T_27 = res_v & _T_26; // @[PTW.scala 68:33:freechips.rocketchip.system.DefaultRV32Config.fir@214572.4]
  assign _T_28 = ~tmp_w; // @[PTW.scala 68:42:freechips.rocketchip.system.DefaultRV32Config.fir@214573.4]
  assign _T_29 = _T_27 & _T_28; // @[PTW.scala 68:39:freechips.rocketchip.system.DefaultRV32Config.fir@214574.4]
  assign _T_30 = ~tmp_x; // @[PTW.scala 68:48:freechips.rocketchip.system.DefaultRV32Config.fir@214575.4]
  assign _T_31 = _T_29 & _T_30; // @[PTW.scala 68:45:freechips.rocketchip.system.DefaultRV32Config.fir@214576.4]
  assign _T_32 = ~invalid_paddr; // @[PTW.scala 149:33:freechips.rocketchip.system.DefaultRV32Config.fir@214577.4]
  assign _T_33 = _T_31 & _T_32; // @[PTW.scala 149:30:freechips.rocketchip.system.DefaultRV32Config.fir@214578.4]
  assign _T_34 = count < 1'h1; // @[PTW.scala 149:57:freechips.rocketchip.system.DefaultRV32Config.fir@214579.4]
  assign traverse = _T_33 & _T_34; // @[PTW.scala 149:48:freechips.rocketchip.system.DefaultRV32Config.fir@214580.4]
  assign vpn_idxs_0 = r_req_addr[19:10]; // @[PTW.scala 151:60:freechips.rocketchip.system.DefaultRV32Config.fir@214581.4]
  assign vpn_idxs_1 = r_req_addr[9:0]; // @[PTW.scala 151:90:freechips.rocketchip.system.DefaultRV32Config.fir@214584.4]
  assign vpn_idx = count ? vpn_idxs_1 : vpn_idxs_0; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214586.4]
  assign _T_38 = {r_pte_ppn,vpn_idx}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214587.4]
  assign pte_addr = {_T_38, 2'h0}; // @[PTW.scala 153:29:freechips.rocketchip.system.DefaultRV32Config.fir@214588.4]
  assign choices_0 = {r_pte_ppn[53:10],vpn_idxs_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214591.4]
  assign _T_41 = arb_io_out_ready & arb_io_out_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@214592.4]
  assign _GEN_91 = {{34'd0}, tags_0}; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214601.4]
  assign _T_43 = _GEN_91 == pte_addr; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214601.4]
  assign _GEN_92 = {{34'd0}, tags_1}; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214602.4]
  assign _T_44 = _GEN_92 == pte_addr; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214602.4]
  assign _GEN_93 = {{34'd0}, tags_2}; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214603.4]
  assign _T_45 = _GEN_93 == pte_addr; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214603.4]
  assign _GEN_94 = {{34'd0}, tags_3}; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214604.4]
  assign _T_46 = _GEN_94 == pte_addr; // @[PTW.scala 172:27:freechips.rocketchip.system.DefaultRV32Config.fir@214604.4]
  assign _T_49 = {_T_46,_T_45,_T_44,_T_43}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214607.4]
  assign hits = _T_49 & valid; // @[PTW.scala 172:48:freechips.rocketchip.system.DefaultRV32Config.fir@214608.4]
  assign hit = |hits; // @[PTW.scala 173:20:freechips.rocketchip.system.DefaultRV32Config.fir@214609.4]
  assign _T_50 = mem_resp_valid & traverse; // @[PTW.scala 174:26:freechips.rocketchip.system.DefaultRV32Config.fir@214610.4]
  assign _T_51 = ~hit; // @[PTW.scala 174:41:freechips.rocketchip.system.DefaultRV32Config.fir@214611.4]
  assign _T_52 = _T_50 & _T_51; // @[PTW.scala 174:38:freechips.rocketchip.system.DefaultRV32Config.fir@214612.4]
  assign _T_53 = ~invalidated; // @[PTW.scala 174:49:freechips.rocketchip.system.DefaultRV32Config.fir@214613.4]
  assign _T_54 = _T_52 & _T_53; // @[PTW.scala 174:46:freechips.rocketchip.system.DefaultRV32Config.fir@214614.4]
  assign _T_55 = &valid; // @[PTW.scala 175:25:freechips.rocketchip.system.DefaultRV32Config.fir@214616.6]
  assign _T_61 = _T_42[2] ? _T_42[1] : _T_42[0]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@214622.6]
  assign _T_62 = {_T_42[2],_T_61}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214623.6]
  assign _T_63 = ~valid; // @[PTW.scala 175:57:freechips.rocketchip.system.DefaultRV32Config.fir@214624.6]
  assign _T_68 = _T_63[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214629.6]
  assign _T_69 = _T_63[1] ? 2'h1 : _T_68; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214630.6]
  assign _T_70 = _T_63[0] ? 2'h0 : _T_69; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@214631.6]
  assign r = _T_55 ? _T_62 : _T_70; // @[PTW.scala 175:18:freechips.rocketchip.system.DefaultRV32Config.fir@214632.6]
  assign _T_71 = 4'h1 << r; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@214633.6]
  assign _T_72 = valid | _T_71; // @[PTW.scala 176:22:freechips.rocketchip.system.DefaultRV32Config.fir@214634.6]
  assign res_ppn = {{34'd0}, tmp_ppn[19:0]}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@214553.4 :freechips.rocketchip.system.DefaultRV32Config.fir@214555.4 PTW.scala 141:13:freechips.rocketchip.system.DefaultRV32Config.fir@214557.4]
  assign _T_73 = state == 3'h1; // @[PTW.scala 180:24:freechips.rocketchip.system.DefaultRV32Config.fir@214639.4]
  assign _T_74 = hit & _T_73; // @[PTW.scala 180:15:freechips.rocketchip.system.DefaultRV32Config.fir@214640.4]
  assign _T_77 = |hits[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@214644.6]
  assign _T_78 = hits[3:2] | hits[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@214645.6]
  assign _T_80 = {_T_77,_T_78[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214647.6]
  assign _T_83 = ~_T_80[1]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@214650.6]
  assign _T_88 = ~_T_80[0]; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@214655.6]
  assign _T_89 = _T_83 ? _T_42[1] : _T_88; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@214656.6]
  assign _T_93 = _T_83 ? _T_88 : _T_42[0]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@214660.6]
  assign _T_95 = {_T_83,_T_89,_T_93}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@214662.6]
  assign _T_96 = ~io_dpath_sfence_bits_rs1; // @[PTW.scala 181:36:freechips.rocketchip.system.DefaultRV32Config.fir@214665.4]
  assign _T_97 = io_dpath_sfence_valid & _T_96; // @[PTW.scala 181:33:freechips.rocketchip.system.DefaultRV32Config.fir@214666.4]
  assign pte_cache_hit = hit & _T_34; // @[PTW.scala 186:10:freechips.rocketchip.system.DefaultRV32Config.fir@214675.4]
  assign _T_107 = hits[0] ? data_0 : 20'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214680.4]
  assign _T_108 = hits[1] ? data_1 : 20'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214681.4]
  assign _T_109 = hits[2] ? data_2 : 20'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214682.4]
  assign _T_110 = hits[3] ? data_3 : 20'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214683.4]
  assign _T_111 = _T_107 | _T_108; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214684.4]
  assign _T_112 = _T_111 | _T_109; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214685.4]
  assign pte_cache_data = _T_112 | _T_110; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@214686.4]
  assign _T_115 = invalidated & _T_2; // @[PTW.scala 245:56:freechips.rocketchip.system.DefaultRV32Config.fir@214695.4]
  assign _T_118 = state == 3'h3; // @[PTW.scala 247:48:freechips.rocketchip.system.DefaultRV32Config.fir@214699.4]
  assign _T_122 = pte_addr ^ 66'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214712.4]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214713.4]
  assign _T_125 = $signed(_T_123) & -67'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214715.4]
  assign _T_126 = $signed(_T_125) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214716.4]
  assign _T_127 = pte_addr ^ 66'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214717.4]
  assign _T_128 = {1'b0,$signed(_T_127)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214718.4]
  assign _T_130 = $signed(_T_128) & -67'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214720.4]
  assign _T_131 = $signed(_T_130) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214721.4]
  assign _T_132 = pte_addr ^ 66'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214722.4]
  assign _T_133 = {1'b0,$signed(_T_132)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214723.4]
  assign _T_135 = $signed(_T_133) & -67'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214725.4]
  assign _T_136 = $signed(_T_135) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214726.4]
  assign _T_138 = _T_126 | _T_131; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214728.4]
  assign pmaPgLevelHomogeneous_0 = _T_138 | _T_136; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214729.4]
  assign _T_142 = {1'b0,$signed(pte_addr)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214733.4]
  assign _T_169 = $signed(_T_142) & -67'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214760.4]
  assign _T_170 = $signed(_T_169) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214761.4]
  assign _T_171 = pte_addr ^ 66'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214762.4]
  assign _T_172 = {1'b0,$signed(_T_171)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214763.4]
  assign _T_174 = $signed(_T_172) & -67'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214765.4]
  assign _T_175 = $signed(_T_174) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214766.4]
  assign _T_176 = pte_addr ^ 66'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214767.4]
  assign _T_177 = {1'b0,$signed(_T_176)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214768.4]
  assign _T_179 = $signed(_T_177) & -67'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214770.4]
  assign _T_180 = $signed(_T_179) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214771.4]
  assign _T_181 = pte_addr ^ 66'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@214772.4]
  assign _T_182 = {1'b0,$signed(_T_181)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@214773.4]
  assign _T_184 = $signed(_T_182) & -67'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@214775.4]
  assign _T_185 = $signed(_T_184) == 67'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@214776.4]
  assign _T_202 = _T_170 | _T_175; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214793.4]
  assign _T_203 = _T_202 | _T_180; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214794.4]
  assign _T_204 = _T_203 | _T_185; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214795.4]
  assign _T_205 = _T_204 | _T_126; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214796.4]
  assign _T_206 = _T_205 | _T_131; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214797.4]
  assign pmaPgLevelHomogeneous_1 = _T_206 | _T_136; // @[TLBPermissions.scala 98:65:freechips.rocketchip.system.DefaultRV32Config.fir@214798.4]
  assign pmaHomogeneous = count ? pmaPgLevelHomogeneous_1 : pmaPgLevelHomogeneous_0; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214851.4]
  assign _T_260 = {pte_addr[65:12], 12'h0}; // @[PTW.scala 268:92:freechips.rocketchip.system.DefaultRV32Config.fir@214853.4]
  assign _T_266 = count ? io_dpath_pmp_0_mask[11] : io_dpath_pmp_0_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214867.4]
  assign _T_267 = {io_dpath_pmp_0_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214868.4]
  assign _T_268 = ~_T_267; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214869.4]
  assign _T_269 = _T_268 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214870.4]
  assign _T_270 = ~_T_269; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214871.4]
  assign _GEN_95 = {{34'd0}, _T_270}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214872.4]
  assign _T_271 = _T_260 ^ _GEN_95; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214872.4]
  assign _T_273 = _T_271[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214874.4]
  assign _T_280 = _T_271[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214881.4]
  assign _T_282 = count ? _T_280 : _T_273; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214883.4]
  assign _T_283 = _T_266 | _T_282; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@214884.4]
  assign _T_285 = ~io_dpath_pmp_0_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@214886.4]
  assign _T_296 = _T_260 < _GEN_95; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@214897.4]
  assign _T_297 = ~_T_296; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@214898.4]
  assign _T_299 = count ? 32'hfffff000 : 32'hffc00000; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214900.4]
  assign _GEN_98 = {{34'd0}, _T_299}; // @[PMP.scala 112:30:freechips.rocketchip.system.DefaultRV32Config.fir@214901.4]
  assign _T_300 = _T_260 & _GEN_98; // @[PMP.scala 112:30:freechips.rocketchip.system.DefaultRV32Config.fir@214901.4]
  assign _T_312 = _T_270 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@214913.4]
  assign _GEN_100 = {{34'd0}, _T_312}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214914.4]
  assign _T_313 = _T_300 < _GEN_100; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214914.4]
  assign _T_316 = _T_297 | _T_313; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@214917.4]
  assign _T_317 = _T_285 | _T_316; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@214918.4]
  assign _T_318 = io_dpath_pmp_0_cfg_a[1] ? _T_283 : _T_317; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@214919.4]
  assign _T_324 = count ? io_dpath_pmp_1_mask[11] : io_dpath_pmp_1_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214925.4]
  assign _T_325 = {io_dpath_pmp_1_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214926.4]
  assign _T_326 = ~_T_325; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214927.4]
  assign _T_327 = _T_326 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214928.4]
  assign _T_328 = ~_T_327; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214929.4]
  assign _GEN_101 = {{34'd0}, _T_328}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214930.4]
  assign _T_329 = _T_260 ^ _GEN_101; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214930.4]
  assign _T_331 = _T_329[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214932.4]
  assign _T_338 = _T_329[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214939.4]
  assign _T_340 = count ? _T_338 : _T_331; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214941.4]
  assign _T_341 = _T_324 | _T_340; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@214942.4]
  assign _T_343 = ~io_dpath_pmp_1_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@214944.4]
  assign _T_354 = _T_260 < _GEN_101; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@214955.4]
  assign _T_355 = ~_T_354; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@214956.4]
  assign _T_370 = _T_328 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@214971.4]
  assign _GEN_108 = {{34'd0}, _T_370}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214972.4]
  assign _T_371 = _T_300 < _GEN_108; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@214972.4]
  assign _T_372 = _T_313 | _T_355; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@214973.4]
  assign _T_373 = _T_297 & _T_371; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@214974.4]
  assign _T_374 = _T_372 | _T_373; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@214975.4]
  assign _T_375 = _T_343 | _T_374; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@214976.4]
  assign _T_376 = io_dpath_pmp_1_cfg_a[1] ? _T_341 : _T_375; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@214977.4]
  assign _T_377 = _T_318 & _T_376; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@214978.4]
  assign _T_382 = count ? io_dpath_pmp_2_mask[11] : io_dpath_pmp_2_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214983.4]
  assign _T_383 = {io_dpath_pmp_2_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@214984.4]
  assign _T_384 = ~_T_383; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@214985.4]
  assign _T_385 = _T_384 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@214986.4]
  assign _T_386 = ~_T_385; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@214987.4]
  assign _GEN_109 = {{34'd0}, _T_386}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214988.4]
  assign _T_387 = _T_260 ^ _GEN_109; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@214988.4]
  assign _T_389 = _T_387[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214990.4]
  assign _T_396 = _T_387[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@214997.4]
  assign _T_398 = count ? _T_396 : _T_389; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@214999.4]
  assign _T_399 = _T_382 | _T_398; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215000.4]
  assign _T_401 = ~io_dpath_pmp_2_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215002.4]
  assign _T_412 = _T_260 < _GEN_109; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215013.4]
  assign _T_413 = ~_T_412; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215014.4]
  assign _T_428 = _T_386 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215029.4]
  assign _GEN_116 = {{34'd0}, _T_428}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215030.4]
  assign _T_429 = _T_300 < _GEN_116; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215030.4]
  assign _T_430 = _T_371 | _T_413; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215031.4]
  assign _T_431 = _T_355 & _T_429; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215032.4]
  assign _T_432 = _T_430 | _T_431; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215033.4]
  assign _T_433 = _T_401 | _T_432; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215034.4]
  assign _T_434 = io_dpath_pmp_2_cfg_a[1] ? _T_399 : _T_433; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215035.4]
  assign _T_435 = _T_377 & _T_434; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215036.4]
  assign _T_440 = count ? io_dpath_pmp_3_mask[11] : io_dpath_pmp_3_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215041.4]
  assign _T_441 = {io_dpath_pmp_3_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215042.4]
  assign _T_442 = ~_T_441; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215043.4]
  assign _T_443 = _T_442 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215044.4]
  assign _T_444 = ~_T_443; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215045.4]
  assign _GEN_117 = {{34'd0}, _T_444}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215046.4]
  assign _T_445 = _T_260 ^ _GEN_117; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215046.4]
  assign _T_447 = _T_445[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215048.4]
  assign _T_454 = _T_445[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215055.4]
  assign _T_456 = count ? _T_454 : _T_447; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215057.4]
  assign _T_457 = _T_440 | _T_456; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215058.4]
  assign _T_459 = ~io_dpath_pmp_3_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215060.4]
  assign _T_470 = _T_260 < _GEN_117; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215071.4]
  assign _T_471 = ~_T_470; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215072.4]
  assign _T_486 = _T_444 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215087.4]
  assign _GEN_124 = {{34'd0}, _T_486}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215088.4]
  assign _T_487 = _T_300 < _GEN_124; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215088.4]
  assign _T_488 = _T_429 | _T_471; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215089.4]
  assign _T_489 = _T_413 & _T_487; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215090.4]
  assign _T_490 = _T_488 | _T_489; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215091.4]
  assign _T_491 = _T_459 | _T_490; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215092.4]
  assign _T_492 = io_dpath_pmp_3_cfg_a[1] ? _T_457 : _T_491; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215093.4]
  assign _T_493 = _T_435 & _T_492; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215094.4]
  assign _T_498 = count ? io_dpath_pmp_4_mask[11] : io_dpath_pmp_4_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215099.4]
  assign _T_499 = {io_dpath_pmp_4_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215100.4]
  assign _T_500 = ~_T_499; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215101.4]
  assign _T_501 = _T_500 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215102.4]
  assign _T_502 = ~_T_501; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215103.4]
  assign _GEN_125 = {{34'd0}, _T_502}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215104.4]
  assign _T_503 = _T_260 ^ _GEN_125; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215104.4]
  assign _T_505 = _T_503[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215106.4]
  assign _T_512 = _T_503[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215113.4]
  assign _T_514 = count ? _T_512 : _T_505; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215115.4]
  assign _T_515 = _T_498 | _T_514; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215116.4]
  assign _T_517 = ~io_dpath_pmp_4_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215118.4]
  assign _T_528 = _T_260 < _GEN_125; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215129.4]
  assign _T_529 = ~_T_528; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215130.4]
  assign _T_544 = _T_502 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215145.4]
  assign _GEN_132 = {{34'd0}, _T_544}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215146.4]
  assign _T_545 = _T_300 < _GEN_132; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215146.4]
  assign _T_546 = _T_487 | _T_529; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215147.4]
  assign _T_547 = _T_471 & _T_545; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215148.4]
  assign _T_548 = _T_546 | _T_547; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215149.4]
  assign _T_549 = _T_517 | _T_548; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215150.4]
  assign _T_550 = io_dpath_pmp_4_cfg_a[1] ? _T_515 : _T_549; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215151.4]
  assign _T_551 = _T_493 & _T_550; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215152.4]
  assign _T_556 = count ? io_dpath_pmp_5_mask[11] : io_dpath_pmp_5_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215157.4]
  assign _T_557 = {io_dpath_pmp_5_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215158.4]
  assign _T_558 = ~_T_557; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215159.4]
  assign _T_559 = _T_558 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215160.4]
  assign _T_560 = ~_T_559; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215161.4]
  assign _GEN_133 = {{34'd0}, _T_560}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215162.4]
  assign _T_561 = _T_260 ^ _GEN_133; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215162.4]
  assign _T_563 = _T_561[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215164.4]
  assign _T_570 = _T_561[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215171.4]
  assign _T_572 = count ? _T_570 : _T_563; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215173.4]
  assign _T_573 = _T_556 | _T_572; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215174.4]
  assign _T_575 = ~io_dpath_pmp_5_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215176.4]
  assign _T_586 = _T_260 < _GEN_133; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215187.4]
  assign _T_587 = ~_T_586; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215188.4]
  assign _T_602 = _T_560 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215203.4]
  assign _GEN_140 = {{34'd0}, _T_602}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215204.4]
  assign _T_603 = _T_300 < _GEN_140; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215204.4]
  assign _T_604 = _T_545 | _T_587; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215205.4]
  assign _T_605 = _T_529 & _T_603; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215206.4]
  assign _T_606 = _T_604 | _T_605; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215207.4]
  assign _T_607 = _T_575 | _T_606; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215208.4]
  assign _T_608 = io_dpath_pmp_5_cfg_a[1] ? _T_573 : _T_607; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215209.4]
  assign _T_609 = _T_551 & _T_608; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215210.4]
  assign _T_614 = count ? io_dpath_pmp_6_mask[11] : io_dpath_pmp_6_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215215.4]
  assign _T_615 = {io_dpath_pmp_6_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215216.4]
  assign _T_616 = ~_T_615; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215217.4]
  assign _T_617 = _T_616 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215218.4]
  assign _T_618 = ~_T_617; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215219.4]
  assign _GEN_141 = {{34'd0}, _T_618}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215220.4]
  assign _T_619 = _T_260 ^ _GEN_141; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215220.4]
  assign _T_621 = _T_619[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215222.4]
  assign _T_628 = _T_619[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215229.4]
  assign _T_630 = count ? _T_628 : _T_621; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215231.4]
  assign _T_631 = _T_614 | _T_630; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215232.4]
  assign _T_633 = ~io_dpath_pmp_6_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215234.4]
  assign _T_644 = _T_260 < _GEN_141; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215245.4]
  assign _T_645 = ~_T_644; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215246.4]
  assign _T_660 = _T_618 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215261.4]
  assign _GEN_148 = {{34'd0}, _T_660}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215262.4]
  assign _T_661 = _T_300 < _GEN_148; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215262.4]
  assign _T_662 = _T_603 | _T_645; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215263.4]
  assign _T_663 = _T_587 & _T_661; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215264.4]
  assign _T_664 = _T_662 | _T_663; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215265.4]
  assign _T_665 = _T_633 | _T_664; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215266.4]
  assign _T_666 = io_dpath_pmp_6_cfg_a[1] ? _T_631 : _T_665; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215267.4]
  assign _T_667 = _T_609 & _T_666; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215268.4]
  assign _T_672 = count ? io_dpath_pmp_7_mask[11] : io_dpath_pmp_7_mask[21]; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215273.4]
  assign _T_673 = {io_dpath_pmp_7_addr, 2'h0}; // @[PMP.scala 62:36:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  assign _T_674 = ~_T_673; // @[PMP.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@215275.4]
  assign _T_675 = _T_674 | 32'h3; // @[PMP.scala 62:48:freechips.rocketchip.system.DefaultRV32Config.fir@215276.4]
  assign _T_676 = ~_T_675; // @[PMP.scala 62:27:freechips.rocketchip.system.DefaultRV32Config.fir@215277.4]
  assign _GEN_149 = {{34'd0}, _T_676}; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215278.4]
  assign _T_677 = _T_260 ^ _GEN_149; // @[PMP.scala 100:53:freechips.rocketchip.system.DefaultRV32Config.fir@215278.4]
  assign _T_679 = _T_677[65:22] != 44'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215280.4]
  assign _T_686 = _T_677[65:12] != 54'h0; // @[PMP.scala 100:78:freechips.rocketchip.system.DefaultRV32Config.fir@215287.4]
  assign _T_688 = count ? _T_686 : _T_679; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@215289.4]
  assign _T_689 = _T_672 | _T_688; // @[PMP.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@215290.4]
  assign _T_691 = ~io_dpath_pmp_7_cfg_a[0]; // @[PMP.scala 120:45:freechips.rocketchip.system.DefaultRV32Config.fir@215292.4]
  assign _T_702 = _T_260 < _GEN_149; // @[PMP.scala 109:32:freechips.rocketchip.system.DefaultRV32Config.fir@215303.4]
  assign _T_703 = ~_T_702; // @[PMP.scala 109:28:freechips.rocketchip.system.DefaultRV32Config.fir@215304.4]
  assign _T_718 = _T_676 & _T_299; // @[PMP.scala 113:53:freechips.rocketchip.system.DefaultRV32Config.fir@215319.4]
  assign _GEN_156 = {{34'd0}, _T_718}; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215320.4]
  assign _T_719 = _T_300 < _GEN_156; // @[PMP.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@215320.4]
  assign _T_720 = _T_661 | _T_703; // @[PMP.scala 115:21:freechips.rocketchip.system.DefaultRV32Config.fir@215321.4]
  assign _T_721 = _T_645 & _T_719; // @[PMP.scala 115:62:freechips.rocketchip.system.DefaultRV32Config.fir@215322.4]
  assign _T_722 = _T_720 | _T_721; // @[PMP.scala 115:41:freechips.rocketchip.system.DefaultRV32Config.fir@215323.4]
  assign _T_723 = _T_691 | _T_722; // @[PMP.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@215324.4]
  assign _T_724 = io_dpath_pmp_7_cfg_a[1] ? _T_689 : _T_723; // @[PMP.scala 120:8:freechips.rocketchip.system.DefaultRV32Config.fir@215325.4]
  assign pmpHomogeneous = _T_667 & _T_724; // @[PMP.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@215326.4]
  assign homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 269:36:freechips.rocketchip.system.DefaultRV32Config.fir@215327.4]
  assign _T_729 = 3'h0 == state; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215361.4]
  assign _T_731 = arb_io_out_bits_valid ? 3'h1 : 3'h0; // @[PTW.scala 291:26:freechips.rocketchip.system.DefaultRV32Config.fir@215365.8]
  assign _GEN_23 = _T_41 ? _T_731 : state; // @[PTW.scala 290:32:freechips.rocketchip.system.DefaultRV32Config.fir@215364.6]
  assign _T_734 = 3'h1 == state; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215373.6]
  assign _T_736 = count + 1'h1; // @[PTW.scala 297:24:freechips.rocketchip.system.DefaultRV32Config.fir@215377.10]
  assign _T_737 = io_mem_req_ready ? 3'h2 : 3'h1; // @[PTW.scala 299:26:freechips.rocketchip.system.DefaultRV32Config.fir@215381.10]
  assign _GEN_25 = pte_cache_hit ? state : _T_737; // @[PTW.scala 296:28:freechips.rocketchip.system.DefaultRV32Config.fir@215375.8]
  assign _T_738 = 3'h2 == state; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215386.8]
  assign _T_740 = 3'h4 == state; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215392.10]
  assign _GEN_26 = ~r_req_dest; // @[PTW.scala 311:32:freechips.rocketchip.system.DefaultRV32Config.fir@215400.14]
  assign _GEN_29 = io_mem_s2_xcpt_ae_ld ? 3'h0 : 3'h5; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  assign _GEN_30 = io_mem_s2_xcpt_ae_ld & _GEN_26; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  assign _GEN_31 = io_mem_s2_xcpt_ae_ld & r_req_dest; // @[PTW.scala 308:35:freechips.rocketchip.system.DefaultRV32Config.fir@215395.12]
  assign _T_743 = 3'h7 == state; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@215404.12]
  assign _T_746 = ~homogeneous; // @[PTW.scala 318:13:freechips.rocketchip.system.DefaultRV32Config.fir@215411.14]
  assign _GEN_34 = _T_746 | count; // @[PTW.scala 318:27:freechips.rocketchip.system.DefaultRV32Config.fir@215412.14]
  assign _GEN_36 = _T_743 ? 3'h0 : state; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  assign _GEN_37 = _T_743 & _GEN_26; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  assign _GEN_38 = _T_743 & r_req_dest; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215405.12]
  assign _GEN_42 = _T_740 ? _GEN_29 : _GEN_36; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  assign _GEN_43 = _T_740 & io_mem_s2_xcpt_ae_ld; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  assign _GEN_44 = _T_740 ? _GEN_30 : _GEN_37; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  assign _GEN_45 = _T_740 ? _GEN_31 : _GEN_38; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215393.10]
  assign _GEN_48 = _T_738 ? 3'h4 : _GEN_42; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  assign _GEN_50 = _T_738 ? 1'h0 : _GEN_44; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  assign _GEN_51 = _T_738 ? 1'h0 : _GEN_45; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215387.8]
  assign _GEN_55 = _T_734 ? _GEN_25 : _GEN_48; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  assign _GEN_57 = _T_734 ? 1'h0 : _GEN_50; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  assign _GEN_58 = _T_734 ? 1'h0 : _GEN_51; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@215374.6]
  assign _GEN_60 = _T_729 ? _GEN_23 : _GEN_55; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  assign _GEN_63 = _T_729 ? 1'h0 : _GEN_57; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  assign _GEN_64 = _T_729 ? 1'h0 : _GEN_58; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@215362.4]
  assign _T_749 = state == 3'h7; // @[PTW.scala 333:15:freechips.rocketchip.system.DefaultRV32Config.fir@215419.4]
  assign _T_751 = _T_749 & _T_746; // @[PTW.scala 333:40:freechips.rocketchip.system.DefaultRV32Config.fir@215421.4]
  assign _T_753 = _T_73 & pte_cache_hit; // @[PTW.scala 334:25:freechips.rocketchip.system.DefaultRV32Config.fir@215427.4]
  assign pte_2_ppn = {{32'd0}, io_dpath_ptbr_ppn}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215433.4 :freechips.rocketchip.system.DefaultRV32Config.fir@215435.4 PTW.scala 327:13:freechips.rocketchip.system.DefaultRV32Config.fir@215436.4]
  assign _T_755_ppn = _T_41 ? pte_2_ppn : r_pte_ppn; // @[PTW.scala 335:8:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  assign pte_1_ppn = {{34'd0}, pte_cache_data}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215428.4 :freechips.rocketchip.system.DefaultRV32Config.fir@215430.4 PTW.scala 327:13:freechips.rocketchip.system.DefaultRV32Config.fir@215431.4]
  assign _T_756_ppn = _T_753 ? pte_1_ppn : _T_755_ppn; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_d = _T_753 ? 1'h0 : r_pte_d; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_a = _T_753 ? 1'h0 : r_pte_a; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_g = _T_753 ? 1'h0 : r_pte_g; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_u = _T_753 ? 1'h0 : r_pte_u; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_x = _T_753 ? 1'h0 : r_pte_x; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_w = _T_753 ? 1'h0 : r_pte_w; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_r = _T_753 ? 1'h0 : r_pte_r; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_756_v = _T_753 ? 1'h0 : r_pte_v; // @[PTW.scala 334:8:freechips.rocketchip.system.DefaultRV32Config.fir@215438.4]
  assign _T_757_ppn = _T_751 ? choices_0 : _T_756_ppn; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_d = _T_751 ? r_pte_d : _T_756_d; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_a = _T_751 ? r_pte_a : _T_756_a; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_g = _T_751 ? r_pte_g : _T_756_g; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_u = _T_751 ? r_pte_u : _T_756_u; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_x = _T_751 ? r_pte_x : _T_756_x; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_w = _T_751 ? r_pte_w : _T_756_w; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_r = _T_751 ? r_pte_r : _T_756_r; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _T_757_v = _T_751 ? r_pte_v : _T_756_v; // @[PTW.scala 333:8:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  assign _GEN_66 = _GEN_26 | _GEN_63; // @[PTW.scala 341:28:freechips.rocketchip.system.DefaultRV32Config.fir@215464.6]
  assign _GEN_67 = r_req_dest | _GEN_64; // @[PTW.scala 341:28:freechips.rocketchip.system.DefaultRV32Config.fir@215464.6]
  assign _T_770 = state == 3'h5; // @[PTW.scala 346:18:freechips.rocketchip.system.DefaultRV32Config.fir@215469.6]
  assign _T_772 = _T_770 | reset; // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215471.6]
  assign _T_773 = ~_T_772; // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215472.6]
  assign ae = res_v & invalid_paddr; // @[PTW.scala 352:22:freechips.rocketchip.system.DefaultRV32Config.fir@215489.8]
  assign _GEN_78 = traverse ? 3'h1 : 3'h0; // @[PTW.scala 347:21:freechips.rocketchip.system.DefaultRV32Config.fir@215477.6]
  assign _GEN_84 = mem_resp_valid ? _GEN_78 : _GEN_60; // @[PTW.scala 345:25:freechips.rocketchip.system.DefaultRV32Config.fir@215468.4]
  assign _T_786 = state == 3'h4; // @[PTW.scala 363:18:freechips.rocketchip.system.DefaultRV32Config.fir@215507.6]
  assign _T_788 = _T_786 | reset; // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215509.6]
  assign _T_789 = ~_T_788; // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215510.6]
  assign io_requestor_0_req_ready = arb_io_in_0_ready; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214498.4]
  assign io_requestor_0_resp_valid = resp_valid_0; // @[PTW.scala 272:32:freechips.rocketchip.system.DefaultRV32Config.fir@215328.4]
  assign io_requestor_0_resp_bits_ae = resp_ae; // @[PTW.scala 273:34:freechips.rocketchip.system.DefaultRV32Config.fir@215329.4]
  assign io_requestor_0_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_d = r_pte_d; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_a = r_pte_a; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_g = r_pte_g; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_u = r_pte_u; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_x = r_pte_x; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_w = r_pte_w; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_r = r_pte_r; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_pte_v = r_pte_v; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215330.4]
  assign io_requestor_0_resp_bits_level = count; // @[PTW.scala 275:37:freechips.rocketchip.system.DefaultRV32Config.fir@215331.4]
  assign io_requestor_0_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 276:43:freechips.rocketchip.system.DefaultRV32Config.fir@215333.4]
  assign io_requestor_0_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 278:26:freechips.rocketchip.system.DefaultRV32Config.fir@215336.4]
  assign io_requestor_0_status_debug = io_dpath_status_debug; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215338.4]
  assign io_requestor_0_status_dprv = io_dpath_status_dprv; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215338.4]
  assign io_requestor_0_status_mxr = io_dpath_status_mxr; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215338.4]
  assign io_requestor_0_status_sum = io_dpath_status_sum; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215338.4]
  assign io_requestor_0_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_0_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215339.4]
  assign io_requestor_1_req_ready = arb_io_in_1_ready; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214499.4]
  assign io_requestor_1_resp_valid = resp_valid_1; // @[PTW.scala 272:32:freechips.rocketchip.system.DefaultRV32Config.fir@215340.4]
  assign io_requestor_1_resp_bits_ae = resp_ae; // @[PTW.scala 273:34:freechips.rocketchip.system.DefaultRV32Config.fir@215341.4]
  assign io_requestor_1_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_d = r_pte_d; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_a = r_pte_a; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_g = r_pte_g; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_u = r_pte_u; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_x = r_pte_x; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_w = r_pte_w; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_r = r_pte_r; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_pte_v = r_pte_v; // @[PTW.scala 274:35:freechips.rocketchip.system.DefaultRV32Config.fir@215342.4]
  assign io_requestor_1_resp_bits_level = count; // @[PTW.scala 275:37:freechips.rocketchip.system.DefaultRV32Config.fir@215343.4]
  assign io_requestor_1_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 276:43:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  assign io_requestor_1_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 278:26:freechips.rocketchip.system.DefaultRV32Config.fir@215348.4]
  assign io_requestor_1_status_debug = io_dpath_status_debug; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215350.4]
  assign io_requestor_1_status_prv = io_dpath_status_prv; // @[PTW.scala 280:28:freechips.rocketchip.system.DefaultRV32Config.fir@215350.4]
  assign io_requestor_1_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 281:25:freechips.rocketchip.system.DefaultRV32Config.fir@215351.4]
  assign io_requestor_1_customCSRs_csrs_0_value = io_dpath_customCSRs_csrs_0_value; // @[PTW.scala 279:32:freechips.rocketchip.system.DefaultRV32Config.fir@215349.4]
  assign io_mem_req_valid = _T_73 | _T_118; // @[PTW.scala 247:20:freechips.rocketchip.system.DefaultRV32Config.fir@214701.4]
  assign io_mem_req_bits_addr = pte_addr[31:0]; // @[PTW.scala 252:24:freechips.rocketchip.system.DefaultRV32Config.fir@214706.4]
  assign io_mem_s1_kill = state != 3'h2; // @[PTW.scala 254:18:freechips.rocketchip.system.DefaultRV32Config.fir@214710.4]
  assign arb_io_in_0_valid = io_requestor_0_req_valid; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214498.4]
  assign arb_io_in_0_bits_bits_addr = io_requestor_0_req_bits_bits_addr; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214498.4]
  assign arb_io_in_1_valid = io_requestor_1_req_valid; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214499.4]
  assign arb_io_in_1_bits_valid = io_requestor_1_req_bits_valid; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214499.4]
  assign arb_io_in_1_bits_bits_addr = io_requestor_1_req_bits_bits_addr; // @[PTW.scala 106:13:freechips.rocketchip.system.DefaultRV32Config.fir@214499.4]
  assign arb_io_out_ready = state == 3'h0; // @[PTW.scala 107:20:freechips.rocketchip.system.DefaultRV32Config.fir@214501.4]
  assign OptimizationBarrier_io_x = io_mem_s2_nack ? 3'h1 : _GEN_84; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215359.4]
  assign OptimizationBarrier_1_io_x_ppn = mem_resp_valid ? res_ppn : _T_757_ppn; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_d = mem_resp_valid ? tmp_d : _T_757_d; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_a = mem_resp_valid ? tmp_a : _T_757_a; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_g = mem_resp_valid ? tmp_g : _T_757_g; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_u = mem_resp_valid ? tmp_u : _T_757_u; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_x = mem_resp_valid ? tmp_x : _T_757_x; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_w = mem_resp_valid ? tmp_w : _T_757_w; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_r = mem_resp_valid ? tmp_r : _T_757_r; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign OptimizationBarrier_1_io_x_v = mem_resp_valid ? res_v : _T_757_v; // @[package.scala 239:18:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  resp_valid_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  resp_valid_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  invalidated = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  count = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  resp_ae = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_req_addr = _RAND_6[19:0];
  _RAND_7 = {1{`RANDOM}};
  r_req_dest = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  r_pte_ppn = _RAND_8[53:0];
  _RAND_9 = {1{`RANDOM}};
  r_pte_d = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_pte_a = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_pte_g = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_pte_u = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_pte_x = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  r_pte_w = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_pte_r = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_pte_v = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  mem_resp_valid = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  mem_resp_data = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  _T_42 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  valid = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  tags_0 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  tags_1 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  tags_2 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  tags_3 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  data_0 = _RAND_25[19:0];
  _RAND_26 = {1{`RANDOM}};
  data_1 = _RAND_26[19:0];
  _RAND_27 = {1{`RANDOM}};
  data_2 = _RAND_27[19:0];
  _RAND_28 = {1{`RANDOM}};
  data_3 = _RAND_28[19:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      state <= OptimizationBarrier_io_y;
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_729) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_734) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_738) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_740) begin
          resp_valid_0 <= _GEN_30;
        end else begin
          resp_valid_0 <= _GEN_37;
        end
      end else begin
        resp_valid_0 <= _GEN_66;
      end
    end else if (_T_729) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_734) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_738) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_740) begin
      resp_valid_0 <= _GEN_30;
    end else begin
      resp_valid_0 <= _GEN_37;
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_729) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_734) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_738) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_740) begin
          resp_valid_1 <= _GEN_31;
        end else begin
          resp_valid_1 <= _GEN_38;
        end
      end else begin
        resp_valid_1 <= _GEN_67;
      end
    end else if (_T_729) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_734) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_738) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_740) begin
      resp_valid_1 <= _GEN_31;
    end else begin
      resp_valid_1 <= _GEN_38;
    end
    invalidated <= io_dpath_sfence_valid | _T_115;
    if (mem_resp_valid) begin
      if (traverse) begin
        count <= _T_736;
      end else if (_T_729) begin
        count <= 1'h0;
      end else if (_T_734) begin
        if (pte_cache_hit) begin
          count <= _T_736;
        end
      end else if (!(_T_738)) begin
        if (!(_T_740)) begin
          if (_T_743) begin
            count <= _GEN_34;
          end
        end
      end
    end else if (_T_729) begin
      count <= 1'h0;
    end else if (_T_734) begin
      if (pte_cache_hit) begin
        count <= _T_736;
      end
    end else if (!(_T_738)) begin
      if (!(_T_740)) begin
        if (_T_743) begin
          count <= _GEN_34;
        end
      end
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_729) begin
          resp_ae <= 1'h0;
        end else if (_T_734) begin
          resp_ae <= 1'h0;
        end else if (_T_738) begin
          resp_ae <= 1'h0;
        end else begin
          resp_ae <= _GEN_43;
        end
      end else begin
        resp_ae <= ae;
      end
    end else if (_T_729) begin
      resp_ae <= 1'h0;
    end else if (_T_734) begin
      resp_ae <= 1'h0;
    end else if (_T_738) begin
      resp_ae <= 1'h0;
    end else begin
      resp_ae <= _GEN_43;
    end
    if (_T_41) begin
      r_req_addr <= arb_io_out_bits_bits_addr;
    end
    if (_T_41) begin
      r_req_dest <= arb_io_chosen;
    end
    r_pte_ppn <= OptimizationBarrier_1_io_y_ppn;
    r_pte_d <= OptimizationBarrier_1_io_y_d;
    r_pte_a <= OptimizationBarrier_1_io_y_a;
    r_pte_g <= OptimizationBarrier_1_io_y_g;
    r_pte_u <= OptimizationBarrier_1_io_y_u;
    r_pte_x <= OptimizationBarrier_1_io_y_x;
    r_pte_w <= OptimizationBarrier_1_io_y_w;
    r_pte_r <= OptimizationBarrier_1_io_y_r;
    r_pte_v <= OptimizationBarrier_1_io_y_v;
    mem_resp_valid <= io_mem_resp_valid;
    mem_resp_data <= io_mem_resp_bits_data;
    if (_T_74) begin
      _T_42 <= _T_95;
    end
    if (reset) begin
      valid <= 4'h0;
    end else if (_T_97) begin
      valid <= 4'h0;
    end else if (_T_54) begin
      valid <= _T_72;
    end
    if (_T_54) begin
      if (2'h0 == r) begin
        tags_0 <= pte_addr[31:0];
      end
    end
    if (_T_54) begin
      if (2'h1 == r) begin
        tags_1 <= pte_addr[31:0];
      end
    end
    if (_T_54) begin
      if (2'h2 == r) begin
        tags_2 <= pte_addr[31:0];
      end
    end
    if (_T_54) begin
      if (2'h3 == r) begin
        tags_3 <= pte_addr[31:0];
      end
    end
    if (_T_54) begin
      if (2'h0 == r) begin
        data_0 <= res_ppn[19:0];
      end
    end
    if (_T_54) begin
      if (2'h1 == r) begin
        data_1 <= res_ppn[19:0];
      end
    end
    if (_T_54) begin
      if (2'h2 == r) begin
        data_2 <= res_ppn[19:0];
      end
    end
    if (_T_54) begin
      if (2'h3 == r) begin
        data_3 <= res_ppn[19:0];
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (mem_resp_valid & _T_773) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:346 assert(state === s_wait3)\n"); // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215474.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (mem_resp_valid & _T_773) begin
          $fatal; // @[PTW.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@215475.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_mem_s2_nack & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:363 assert(state === s_wait2)\n"); // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215512.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_mem_s2_nack & _T_789) begin
          $fatal; // @[PTW.scala 363:11:freechips.rocketchip.system.DefaultRV32Config.fir@215513.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
