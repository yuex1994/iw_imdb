module Frontend( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206519.2]
  input         gated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206520.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206521.4]
  input         auto_icache_master_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  output        auto_icache_master_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  output [31:0] auto_icache_master_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input         auto_icache_master_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input  [2:0]  auto_icache_master_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input  [3:0]  auto_icache_master_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input  [31:0] auto_icache_master_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input         auto_icache_master_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206522.4]
  input         io_cpu_might_request, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_cpu_req_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_req_bits_speculative, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_sfence_bits_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_cpu_sfence_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [4:0]  io_cpu_resp_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [7:0]  io_cpu_resp_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [31:0] io_cpu_resp_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [31:0] io_cpu_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_cpu_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [4:0]  io_cpu_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_cpu_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_cpu_btb_update_bits_br_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_cpu_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [7:0]  io_cpu_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_cpu_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_cpu_flush_icache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [31:0] io_cpu_npc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_ptw_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output        io_ptw_req_bits_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  output [19:0] io_ptw_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input         io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
  input  [31:0] io_ptw_customCSRs_csrs_0_value // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206523.4]
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
  reg [31:0] _RAND_8;
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
`endif // RANDOMIZE_REG_INIT
  wire  icache_clock; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_reset; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_auto_master_out_a_ready; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_auto_master_out_a_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [31:0] icache_auto_master_out_a_bits_address; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_auto_master_out_d_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [2:0] icache_auto_master_out_d_bits_opcode; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [3:0] icache_auto_master_out_d_bits_size; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [31:0] icache_auto_master_out_d_bits_data; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_auto_master_out_d_bits_corrupt; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_req_ready; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_req_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [31:0] icache_io_req_bits_addr; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [31:0] icache_io_s1_paddr; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_s1_kill; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_s2_kill; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_resp_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire [31:0] icache_io_resp_bits_data; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_resp_bits_replay; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_resp_bits_ae; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  icache_io_invalidate; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  wire  fq_clock; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_reset; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_ready; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_valid; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_bits_btb_taken; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_bits_btb_bridx; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [4:0] fq_io_enq_bits_btb_entry; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [7:0] fq_io_enq_bits_btb_bht_history; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [31:0] fq_io_enq_bits_pc; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [31:0] fq_io_enq_bits_data; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [1:0] fq_io_enq_bits_mask; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_enq_bits_replay; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_ready; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_valid; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_bits_btb_taken; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_bits_btb_bridx; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [4:0] fq_io_deq_bits_btb_entry; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [7:0] fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [31:0] fq_io_deq_bits_pc; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [31:0] fq_io_deq_bits_data; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  fq_io_deq_bits_replay; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire [4:0] fq_io_mask; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
  wire  tlb_clock; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_reset; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_req_ready; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_req_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_req_bits_vaddr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_resp_miss; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_resp_paddr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_resp_pf_inst; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_resp_ae_inst; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_resp_cacheable; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_sfence_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_sfence_bits_rs1; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_sfence_bits_rs2; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_sfence_bits_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_req_ready; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_req_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_req_bits_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [19:0] tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_level; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_ptbr_mode; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_status_debug; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_status_prv; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  tlb_io_kill; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  wire  btb_clock; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_reset; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_req_bits_addr; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_resp_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_resp_bits_taken; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_resp_bits_bridx; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_resp_bits_target; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [4:0] btb_io_resp_bits_entry; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [7:0] btb_io_resp_bits_bht_history; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_resp_bits_bht_value; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_btb_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [4:0] btb_io_btb_update_bits_prediction_entry; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_btb_update_bits_pc; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_btb_update_bits_isValid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_btb_update_bits_br_pc; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [1:0] btb_io_btb_update_bits_cfiType; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [7:0] btb_io_bht_update_bits_prediction_history; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_bht_update_bits_pc; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_update_bits_branch; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_update_bits_taken; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_update_bits_mispredict; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_advance_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_bht_advance_bits_bht_value; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_ras_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [1:0] btb_io_ras_update_bits_cfiType; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_ras_update_bits_returnAddr; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_ras_head_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire [31:0] btb_io_ras_head_bits; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  btb_io_flush; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  _T_2; // @[Frontend.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@206546.4]
  wire  _T_3; // @[Frontend.scala 90:52:freechips.rocketchip.system.DefaultRV32Config.fir@206547.4]
  wire  _T_4; // @[Frontend.scala 90:75:freechips.rocketchip.system.DefaultRV32Config.fir@206548.4]
  wire  _T_5; // @[Frontend.scala 90:102:freechips.rocketchip.system.DefaultRV32Config.fir@206549.4]
  wire  _T_6; // @[Frontend.scala 90:10:freechips.rocketchip.system.DefaultRV32Config.fir@206550.4]
  wire  _T_7; // @[Frontend.scala 90:130:freechips.rocketchip.system.DefaultRV32Config.fir@206551.4]
  wire  _T_9; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206553.4]
  wire  _T_10; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206554.4]
  reg  s1_valid; // @[Frontend.scala 101:21:freechips.rocketchip.system.DefaultRV32Config.fir@206565.4]
  reg  s2_valid; // @[Frontend.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@206566.4]
  wire  _T_12; // @[Frontend.scala 104:5:freechips.rocketchip.system.DefaultRV32Config.fir@206568.4]
  wire  _T_14; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@206570.4]
  wire  _T_15; // @[Frontend.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@206571.4]
  wire  _T_16; // @[Frontend.scala 105:58:freechips.rocketchip.system.DefaultRV32Config.fir@206572.4]
  wire  _T_17; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@206573.4]
  wire  _T_18; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@206574.4]
  wire  _T_19; // @[Frontend.scala 104:40:freechips.rocketchip.system.DefaultRV32Config.fir@206575.4]
  wire  _T_21; // @[Frontend.scala 106:6:freechips.rocketchip.system.DefaultRV32Config.fir@206577.4]
  wire  _T_24; // @[Frontend.scala 106:55:freechips.rocketchip.system.DefaultRV32Config.fir@206580.4]
  wire  _T_25; // @[Frontend.scala 106:41:freechips.rocketchip.system.DefaultRV32Config.fir@206581.4]
  wire  s0_fq_has_space; // @[Frontend.scala 105:70:freechips.rocketchip.system.DefaultRV32Config.fir@206582.4]
  wire  s0_valid; // @[Frontend.scala 107:35:freechips.rocketchip.system.DefaultRV32Config.fir@206583.4]
  reg [31:0] s1_pc; // @[Frontend.scala 109:18:freechips.rocketchip.system.DefaultRV32Config.fir@206585.4]
  reg  s1_speculative; // @[Frontend.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@206586.4]
  reg [31:0] s2_pc; // @[Frontend.scala 111:22:freechips.rocketchip.system.DefaultRV32Config.fir@206590.4]
  reg  s2_btb_resp_valid; // @[Frontend.scala 112:44:freechips.rocketchip.system.DefaultRV32Config.fir@206591.4]
  reg  s2_btb_resp_bits_taken; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  reg  s2_btb_resp_bits_bridx; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  reg [4:0] s2_btb_resp_bits_entry; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  reg [7:0] s2_btb_resp_bits_bht_history; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  reg  s2_btb_resp_bits_bht_value; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  wire  s2_btb_taken; // @[Frontend.scala 114:40:freechips.rocketchip.system.DefaultRV32Config.fir@206593.4]
  reg  s2_tlb_resp_miss; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  reg  s2_tlb_resp_pf_inst; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  reg  s2_tlb_resp_ae_inst; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  reg  s2_tlb_resp_cacheable; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  wire  s2_xcpt; // @[Frontend.scala 116:37:freechips.rocketchip.system.DefaultRV32Config.fir@206595.4]
  reg  s2_speculative; // @[Frontend.scala 117:27:freechips.rocketchip.system.DefaultRV32Config.fir@206596.4]
  reg  s2_partial_insn_valid; // @[Frontend.scala 118:38:freechips.rocketchip.system.DefaultRV32Config.fir@206597.4]
  reg [15:0] s2_partial_insn; // @[Frontend.scala 119:28:freechips.rocketchip.system.DefaultRV32Config.fir@206598.4]
  reg  wrong_path; // @[Frontend.scala 120:23:freechips.rocketchip.system.DefaultRV32Config.fir@206599.4]
  wire [31:0] _T_29; // @[Frontend.scala 122:22:freechips.rocketchip.system.DefaultRV32Config.fir@206600.4]
  wire [31:0] _T_30; // @[Frontend.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@206601.4]
  wire [31:0] s1_base_pc; // @[Frontend.scala 122:20:freechips.rocketchip.system.DefaultRV32Config.fir@206602.4]
  wire [31:0] ntpc; // @[Frontend.scala 123:25:freechips.rocketchip.system.DefaultRV32Config.fir@206604.4]
  wire  _T_32; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@206613.4]
  wire  _T_33; // @[Frontend.scala 128:29:freechips.rocketchip.system.DefaultRV32Config.fir@206614.4]
  wire  _T_34; // @[Frontend.scala 128:26:freechips.rocketchip.system.DefaultRV32Config.fir@206615.4]
  wire  _T_35; // @[Frontend.scala 128:72:freechips.rocketchip.system.DefaultRV32Config.fir@206616.4]
  reg  _T_37; // @[Frontend.scala 128:58:freechips.rocketchip.system.DefaultRV32Config.fir@206618.4]
  wire  s2_replay; // @[Frontend.scala 128:48:freechips.rocketchip.system.DefaultRV32Config.fir@206620.4]
  wire  _T_36; // @[Frontend.scala 128:69:freechips.rocketchip.system.DefaultRV32Config.fir@206617.4]
  wire  _T_103; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206781.4]
  wire  _T_104; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@206782.4]
  wire  taken_prevRVI; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@206783.4]
  wire [15:0] taken_bits; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@206787.4]
  wire [31:0] taken_rviBits; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206790.4]
  wire  taken_rviJump; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@206794.4]
  wire  taken_rviJALR; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@206796.4]
  wire  _T_297; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@206995.4]
  wire  taken_rviBranch; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@206792.4]
  wire  _T_298; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@206996.4]
  wire  _T_299; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@206997.4]
  wire  _T_300; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@206998.4]
  wire  _T_106; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@206785.4]
  wire  taken_valid; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@206786.4]
  wire [15:0] _T_125; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206815.4]
  wire  _T_126; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206816.4]
  wire  taken_rvcJAL; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@206813.4]
  wire  taken_rvcJump; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@206817.4]
  wire [15:0] _T_167; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206861.4]
  wire  _T_168; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206862.4]
  wire  _T_170; // @[Frontend.scala 227:62:freechips.rocketchip.system.DefaultRV32Config.fir@206864.4]
  wire  taken_rvcJALR; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@206865.4]
  wire  _T_301; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@206999.4]
  wire  _T_161; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206853.4]
  wire  taken_rvcJR; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@206856.4]
  wire  _T_302; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@207000.4]
  wire  _T_120; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206808.4]
  wire  _T_122; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@206810.4]
  wire  taken_rvcBranch; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@206811.4]
  wire  _T_303; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@207001.4]
  wire  _T_304; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@207002.4]
  wire  _T_305; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@207003.4]
  wire  taken_taken; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@207004.4]
  wire  taken_idx; // @[Frontend.scala 247:13:freechips.rocketchip.system.DefaultRV32Config.fir@207349.4]
  wire  _T_605; // @[Frontend.scala 256:15:freechips.rocketchip.system.DefaultRV32Config.fir@207372.6]
  wire  _T_370; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@207103.4]
  wire  _T_371; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@207104.4]
  wire  taken_prevRVI_1; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@207105.4]
  wire [15:0] taken_bits_1; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@207109.4]
  wire [31:0] taken_rviBits_1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207112.4]
  wire  taken_rviJALR_1; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@207118.4]
  wire  _T_379; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@207120.4]
  wire  _T_380; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@207121.4]
  wire [4:0] _T_382; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@207123.4]
  wire  _T_383; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@207124.4]
  wire  taken_rviReturn_1; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@207125.4]
  wire  _T_573; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@207327.4]
  wire  _T_373; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@207107.4]
  wire  taken_valid_1; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@207108.4]
  wire [15:0] _T_427; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@207174.4]
  wire  _T_428; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@207175.4]
  wire  _T_430; // @[Frontend.scala 225:59:freechips.rocketchip.system.DefaultRV32Config.fir@207177.4]
  wire  taken_rvcJR_1; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@207178.4]
  wire [4:0] _T_432; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@207180.4]
  wire  _T_433; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@207181.4]
  wire  taken_rvcReturn_1; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@207182.4]
  wire  _T_574; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@207328.4]
  wire  _T_575; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@207329.4]
  wire  taken_predictReturn_1; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@207330.4]
  wire  _T_614; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@207385.8]
  wire  _T_112; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@206798.4]
  wire  _T_113; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@206799.4]
  wire [4:0] _T_115; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206801.4]
  wire  _T_116; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206802.4]
  wire  taken_rviReturn; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@206803.4]
  wire  _T_306; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@207005.4]
  wire [4:0] _T_165; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206858.4]
  wire  _T_166; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206859.4]
  wire  taken_rvcReturn; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@206860.4]
  wire  _T_307; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@207006.4]
  wire  _T_308; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@207007.4]
  wire  taken_predictReturn; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@207008.4]
  wire  _T_347; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@207063.8]
  wire  _GEN_45; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  wire  _GEN_78; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@207386.8]
  wire  _GEN_81; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207373.6]
  wire  useRAS; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  wire  taken_rviBranch_1; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@207114.4]
  wire  _T_578; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@207334.4]
  wire [15:0] _T_386; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@207129.4]
  wire  _T_387; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@207130.4]
  wire  _T_389; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@207132.4]
  wire  taken_rvcBranch_1; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@207133.4]
  wire  _T_579; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@207335.4]
  wire  _T_580; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@207336.4]
  wire  taken_predictBranch_1; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@207337.4]
  wire  taken_rviJump_1; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@207116.4]
  wire  _T_576; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@207331.4]
  wire  _T_393; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@207138.4]
  wire  taken_rvcJAL_1; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@207135.4]
  wire  taken_rvcJump_1; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@207139.4]
  wire  _T_577; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@207332.4]
  wire  taken_predictJump_1; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@207333.4]
  wire  _T_615; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@207389.8]
  wire  _T_616; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@207390.8]
  wire [31:0] _T_88; // @[Frontend.scala 203:24:freechips.rocketchip.system.DefaultRV32Config.fir@206745.4]
  wire [31:0] _T_89; // @[Frontend.scala 203:31:freechips.rocketchip.system.DefaultRV32Config.fir@206746.4]
  wire [31:0] s2_base_pc; // @[Frontend.scala 203:22:freechips.rocketchip.system.DefaultRV32Config.fir@206747.4]
  wire [31:0] taken_pc_1; // @[Frontend.scala 264:33:freechips.rocketchip.system.DefaultRV32Config.fir@207392.10]
  wire [31:0] _T_618; // @[Frontend.scala 267:36:freechips.rocketchip.system.DefaultRV32Config.fir@207394.10]
  wire [31:0] _T_620; // @[Frontend.scala 267:57:freechips.rocketchip.system.DefaultRV32Config.fir@207396.10]
  wire  _T_441; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@207192.4]
  wire  _T_496; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207247.4]
  wire [10:0] _T_495; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207246.4]
  wire [7:0] _T_493; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207244.4]
  wire  _T_492; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207243.4]
  wire [31:0] _T_500; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@207251.4]
  wire [7:0] _T_555; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207306.4]
  wire  _T_554; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207305.4]
  wire [31:0] _T_562; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@207313.4]
  wire [31:0] taken_rviImm_1; // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@207314.4]
  wire [4:0] _T_397; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@207143.4]
  wire [12:0] _T_407; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@207153.4]
  wire [9:0] _T_410; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@207156.4]
  wire [20:0] _T_426; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@207172.4]
  wire [20:0] taken_rvcImm_1; // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@207173.4]
  wire [31:0] _T_621; // @[Frontend.scala 267:69:freechips.rocketchip.system.DefaultRV32Config.fir@207397.10]
  wire [31:0] _T_624; // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@207401.10]
  wire  _T_311; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@207012.4]
  wire  _T_312; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@207013.4]
  wire  _T_313; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@207014.4]
  wire  taken_predictBranch; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@207015.4]
  wire  _T_309; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@207009.4]
  wire  _T_310; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@207010.4]
  wire  taken_predictJump; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@207011.4]
  wire  _T_348; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@207067.8]
  wire  _T_349; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@207068.8]
  wire [31:0] _T_350; // @[Frontend.scala 266:32:freechips.rocketchip.system.DefaultRV32Config.fir@207071.10]
  wire  _T_174; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@206870.4]
  wire  _T_229; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206925.4]
  wire [10:0] _T_228; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206924.4]
  wire [7:0] _T_226; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206922.4]
  wire  _T_225; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206921.4]
  wire [31:0] _T_233; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206929.4]
  wire [7:0] _T_288; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206984.4]
  wire  _T_287; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206983.4]
  wire [31:0] _T_295; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206991.4]
  wire [31:0] taken_rviImm; // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@206992.4]
  wire [32:0] _T_351; // @[Frontend.scala 266:61:freechips.rocketchip.system.DefaultRV32Config.fir@207072.10]
  wire [4:0] _T_130; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206821.4]
  wire [12:0] _T_140; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@206831.4]
  wire [9:0] _T_143; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206834.4]
  wire [20:0] _T_159; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@206850.4]
  wire [20:0] taken_rvcImm; // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@206851.4]
  wire [32:0] _T_352; // @[Frontend.scala 266:44:freechips.rocketchip.system.DefaultRV32Config.fir@207073.10]
  wire [32:0] _GEN_127; // @[Frontend.scala 266:39:freechips.rocketchip.system.DefaultRV32Config.fir@207074.10]
  wire [32:0] _T_355; // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@207077.10]
  wire  predicted_taken; // @[Frontend.scala 194:29:freechips.rocketchip.system.DefaultRV32Config.fir@206734.4]
  wire [31:0] _GEN_28; // @[Frontend.scala 194:56:freechips.rocketchip.system.DefaultRV32Config.fir@206735.4]
  wire [32:0] _GEN_43; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@207069.8]
  wire [32:0] _GEN_46; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  wire [32:0] _GEN_79; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@207391.8]
  wire [32:0] _GEN_82; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207373.6]
  wire [32:0] _GEN_99; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  wire [32:0] predicted_npc; // @[Frontend.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@207439.4]
  wire [32:0] npc; // @[Frontend.scala 129:16:freechips.rocketchip.system.DefaultRV32Config.fir@206622.4]
  wire  _T_39; // @[Frontend.scala 135:56:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  _T_40; // @[Frontend.scala 135:53:freechips.rocketchip.system.DefaultRV32Config.fir@206625.4]
  wire  _T_41; // @[Frontend.scala 135:41:freechips.rocketchip.system.DefaultRV32Config.fir@206626.4]
  wire  s0_speculative; // @[Frontend.scala 135:72:freechips.rocketchip.system.DefaultRV32Config.fir@206627.4]
  wire  _T_44; // @[Frontend.scala 141:9:freechips.rocketchip.system.DefaultRV32Config.fir@206635.4]
  wire  _T_564; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@207317.4]
  wire  _T_565; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@207318.4]
  wire  _T_566; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@207319.4]
  wire  _T_567; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@207320.4]
  wire  _T_435; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@207184.4]
  wire  taken_rvcJALR_1; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@207187.4]
  wire  _T_568; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@207321.4]
  wire  _T_569; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@207322.4]
  wire  _T_570; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@207323.4]
  wire  _T_571; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@207324.4]
  wire  _T_572; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@207325.4]
  wire  taken_taken_1; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@207326.4]
  wire  taken; // @[Frontend.scala 288:19:freechips.rocketchip.system.DefaultRV32Config.fir@207438.4]
  wire  _GEN_116; // @[Frontend.scala 318:33:freechips.rocketchip.system.DefaultRV32Config.fir@207455.8]
  wire  _GEN_120; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  wire  s2_redirect; // @[Frontend.scala 313:26:freechips.rocketchip.system.DefaultRV32Config.fir@207449.4]
  wire  _T_45; // @[Frontend.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@206637.6]
  wire  _GEN_0; // @[Frontend.scala 141:21:freechips.rocketchip.system.DefaultRV32Config.fir@206636.4]
  wire  _T_49; // @[Frontend.scala 162:36:freechips.rocketchip.system.DefaultRV32Config.fir@206659.4]
  wire  _T_52; // @[Frontend.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@206663.4]
  wire  s2_can_speculatively_refill; // @[Frontend.scala 163:59:freechips.rocketchip.system.DefaultRV32Config.fir@206664.4]
  wire  _T_53; // @[Frontend.scala 164:42:freechips.rocketchip.system.DefaultRV32Config.fir@206665.4]
  wire  _T_54; // @[Frontend.scala 164:39:freechips.rocketchip.system.DefaultRV32Config.fir@206666.4]
  reg  _T_59; // @[Frontend.scala 167:29:freechips.rocketchip.system.DefaultRV32Config.fir@206673.4]
  wire  _T_60; // @[Frontend.scala 167:40:freechips.rocketchip.system.DefaultRV32Config.fir@206675.4]
  wire  _T_61; // @[Frontend.scala 167:80:freechips.rocketchip.system.DefaultRV32Config.fir@206676.4]
  wire  _T_62; // @[Frontend.scala 167:98:freechips.rocketchip.system.DefaultRV32Config.fir@206677.4]
  wire  _T_63; // @[Frontend.scala 167:77:freechips.rocketchip.system.DefaultRV32Config.fir@206678.4]
  wire [32:0] _T_65; // @[Frontend.scala 169:28:freechips.rocketchip.system.DefaultRV32Config.fir@206682.4]
  wire [32:0] _T_66; // @[Frontend.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@206683.4]
  wire [32:0] _T_67; // @[Frontend.scala 343:33:freechips.rocketchip.system.DefaultRV32Config.fir@206684.4]
  wire [32:0] _T_68; // @[Frontend.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@206685.4]
  wire [2:0] _T_70; // @[Frontend.scala 172:52:freechips.rocketchip.system.DefaultRV32Config.fir@206689.4]
  wire  _T_71; // @[Frontend.scala 173:79:freechips.rocketchip.system.DefaultRV32Config.fir@206691.4]
  wire  _T_72; // @[Frontend.scala 173:76:freechips.rocketchip.system.DefaultRV32Config.fir@206692.4]
  wire  _T_73; // @[Frontend.scala 173:104:freechips.rocketchip.system.DefaultRV32Config.fir@206693.4]
  wire  _T_74; // @[Frontend.scala 173:101:freechips.rocketchip.system.DefaultRV32Config.fir@206694.4]
  wire  _T_75; // @[Frontend.scala 173:55:freechips.rocketchip.system.DefaultRV32Config.fir@206695.4]
  wire  _T_77; // @[Frontend.scala 177:27:freechips.rocketchip.system.DefaultRV32Config.fir@206701.4]
  wire  _T_78; // @[Frontend.scala 177:113:freechips.rocketchip.system.DefaultRV32Config.fir@206702.4]
  wire  _T_79; // @[Frontend.scala 177:110:freechips.rocketchip.system.DefaultRV32Config.fir@206703.4]
  wire  _T_80; // @[Frontend.scala 177:10:freechips.rocketchip.system.DefaultRV32Config.fir@206704.4]
  wire  _T_82; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206706.4]
  wire  _T_83; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206707.4]
  wire  _T_84; // @[Frontend.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@206712.4]
  wire  _T_90; // @[Frontend.scala 294:11:freechips.rocketchip.system.DefaultRV32Config.fir@206758.4]
  wire  fetch_bubble_likely; // @[Frontend.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@206761.6]
  wire  _T_93; // @[Frontend.scala 296:54:freechips.rocketchip.system.DefaultRV32Config.fir@206763.6]
  wire  _T_94; // @[Frontend.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@206764.6]
  wire  _T_95; // @[Frontend.scala 296:66:freechips.rocketchip.system.DefaultRV32Config.fir@206765.6]
  wire  _T_631; // @[Frontend.scala 275:15:freechips.rocketchip.system.DefaultRV32Config.fir@207415.6]
  wire  _T_633; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207417.6]
  wire  _T_634; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207418.6]
  wire  _T_635; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207419.6]
  wire  _T_636; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207420.6]
  wire  _T_364; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207093.6]
  wire  _T_365; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207094.6]
  wire  _T_366; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207095.6]
  wire  _T_367; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207096.6]
  wire  _GEN_92; // @[Frontend.scala 275:125:freechips.rocketchip.system.DefaultRV32Config.fir@207421.6]
  wire  updateBTB; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  wire  _T_96; // @[Frontend.scala 296:89:freechips.rocketchip.system.DefaultRV32Config.fir@206766.6]
  wire [1:0] _T_97; // @[Frontend.scala 300:63:freechips.rocketchip.system.DefaultRV32Config.fir@206771.6]
  wire [31:0] _GEN_128; // @[Frontend.scala 300:50:freechips.rocketchip.system.DefaultRV32Config.fir@206772.6]
  wire [31:0] _T_98; // @[Frontend.scala 300:50:freechips.rocketchip.system.DefaultRV32Config.fir@206772.6]
  wire [1:0] after_idx; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  wire [2:0] _T_99; // @[Frontend.scala 304:66:freechips.rocketchip.system.DefaultRV32Config.fir@206776.4]
  wire [31:0] _GEN_129; // @[Frontend.scala 304:53:freechips.rocketchip.system.DefaultRV32Config.fir@206777.4]
  wire  _T_117; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@206804.4]
  wire  taken_rviCall; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@206806.4]
  wire  taken_rvcCall; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@206866.4]
  wire  _T_314; // @[Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@207016.4]
  wire  _T_315; // @[Frontend.scala 238:69:freechips.rocketchip.system.DefaultRV32Config.fir@207017.4]
  wire  _T_316; // @[Frontend.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@207018.4]
  wire  _T_317; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@207019.4]
  wire  _T_319; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@207021.4]
  wire  _GEN_39; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207022.4]
  wire  _GEN_40; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207022.4]
  wire  _T_324; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  wire  _T_325; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@207035.6]
  wire  _T_326; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@207036.6]
  wire  _T_327; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@207037.6]
  wire  _T_328; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@207038.6]
  wire  _T_329; // @[Frontend.scala 250:68:freechips.rocketchip.system.DefaultRV32Config.fir@207039.6]
  wire  _T_330; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@207041.6]
  wire  _T_331; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@207042.6]
  wire  _T_332; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@207043.6]
  wire  _T_335; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@207046.6]
  wire [1:0] _T_336; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@207047.6]
  wire [1:0] _T_337; // @[Frontend.scala 251:46:freechips.rocketchip.system.DefaultRV32Config.fir@207048.6]
  wire  _T_340; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@207053.8]
  wire  _T_341; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@207054.8]
  wire  _T_342; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@207055.8]
  wire  _T_343; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@207056.8]
  wire  _T_344; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@207057.8]
  wire  _T_345; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@207058.8]
  wire  _T_346; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@207059.8]
  wire  _GEN_41; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@207060.8]
  wire  _GEN_44; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  wire  _GEN_47; // @[Frontend.scala 271:59:freechips.rocketchip.system.DefaultRV32Config.fir@207084.6]
  wire  taken_rvc_1; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@207111.4]
  wire  _T_384; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@207126.4]
  wire  taken_rviCall_1; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@207128.4]
  wire  taken_rvcCall_1; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@207188.4]
  wire  _T_583; // @[Frontend.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@207340.4]
  wire  _T_584; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@207341.4]
  wire  _T_585; // @[Frontend.scala 238:89:freechips.rocketchip.system.DefaultRV32Config.fir@207342.4]
  wire  _T_586; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@207343.4]
  wire  _GEN_76; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207344.4]
  wire  _T_591; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@207356.6]
  wire  _T_592; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@207357.6]
  wire  _T_593; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@207358.6]
  wire  _T_594; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@207359.6]
  wire  _T_595; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@207360.6]
  wire  _T_596; // @[Frontend.scala 250:68:freechips.rocketchip.system.DefaultRV32Config.fir@207361.6]
  wire  _T_597; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@207363.6]
  wire  _T_598; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@207364.6]
  wire  _T_599; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@207365.6]
  wire  _T_602; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@207368.6]
  wire [1:0] _T_603; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@207369.6]
  wire [1:0] _T_604; // @[Frontend.scala 251:46:freechips.rocketchip.system.DefaultRV32Config.fir@207370.6]
  wire  _T_607; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@207375.8]
  wire  _T_608; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@207376.8]
  wire  _T_609; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@207377.8]
  wire  _T_610; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@207378.8]
  wire  _T_611; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@207379.8]
  wire  _T_612; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@207380.8]
  wire  _T_613; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@207381.8]
  wire  _GEN_77; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@207382.8]
  wire  _GEN_83; // @[Frontend.scala 271:59:freechips.rocketchip.system.DefaultRV32Config.fir@207408.6]
  wire  _T_639; // @[Frontend.scala 283:23:freechips.rocketchip.system.DefaultRV32Config.fir@207429.6]
  wire  _T_641; // @[Frontend.scala 283:37:freechips.rocketchip.system.DefaultRV32Config.fir@207431.6]
  wire [15:0] _T_642; // @[Frontend.scala 285:37:freechips.rocketchip.system.DefaultRV32Config.fir@207434.8]
  wire  _T_644; // @[Frontend.scala 310:45:freechips.rocketchip.system.DefaultRV32Config.fir@207443.4]
  wire  _T_645; // @[Frontend.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@207444.4]
  wire  _GEN_117; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  wire  _GEN_118; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  wire [4:0] _GEN_119; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  wire  _T_648; // @[Frontend.scala 322:12:freechips.rocketchip.system.DefaultRV32Config.fir@207460.4]
  wire  _T_650; // @[Frontend.scala 322:35:freechips.rocketchip.system.DefaultRV32Config.fir@207462.4]
  wire  _T_652; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207464.4]
  wire  _T_653; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207465.4]
  ICache icache ( // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
    .clock(icache_clock),
    .reset(icache_reset),
    .auto_master_out_a_ready(icache_auto_master_out_a_ready),
    .auto_master_out_a_valid(icache_auto_master_out_a_valid),
    .auto_master_out_a_bits_address(icache_auto_master_out_a_bits_address),
    .auto_master_out_d_valid(icache_auto_master_out_d_valid),
    .auto_master_out_d_bits_opcode(icache_auto_master_out_d_bits_opcode),
    .auto_master_out_d_bits_size(icache_auto_master_out_d_bits_size),
    .auto_master_out_d_bits_data(icache_auto_master_out_d_bits_data),
    .auto_master_out_d_bits_corrupt(icache_auto_master_out_d_bits_corrupt),
    .io_req_ready(icache_io_req_ready),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_paddr(icache_io_s1_paddr),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_replay(icache_io_resp_bits_replay),
    .io_resp_bits_ae(icache_io_resp_bits_ae),
    .io_invalidate(icache_io_invalidate)
  );
  ShiftQueue fq ( // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206539.4]
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_btb_taken(fq_io_enq_bits_btb_taken),
    .io_enq_bits_btb_bridx(fq_io_enq_bits_btb_bridx),
    .io_enq_bits_btb_entry(fq_io_enq_bits_btb_entry),
    .io_enq_bits_btb_bht_history(fq_io_enq_bits_btb_bht_history),
    .io_enq_bits_pc(fq_io_enq_bits_pc),
    .io_enq_bits_data(fq_io_enq_bits_data),
    .io_enq_bits_mask(fq_io_enq_bits_mask),
    .io_enq_bits_xcpt_pf_inst(fq_io_enq_bits_xcpt_pf_inst),
    .io_enq_bits_xcpt_ae_inst(fq_io_enq_bits_xcpt_ae_inst),
    .io_enq_bits_replay(fq_io_enq_bits_replay),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_btb_taken(fq_io_deq_bits_btb_taken),
    .io_deq_bits_btb_bridx(fq_io_deq_bits_btb_bridx),
    .io_deq_bits_btb_entry(fq_io_deq_bits_btb_entry),
    .io_deq_bits_btb_bht_history(fq_io_deq_bits_btb_bht_history),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  TLB_1 tlb ( // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_inst(tlb_io_resp_pf_inst),
    .io_resp_ae_inst(tlb_io_resp_ae_inst),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_valid(tlb_io_ptw_req_bits_valid),
    .io_ptw_req_bits_bits_addr(tlb_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(tlb_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(tlb_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(tlb_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(tlb_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(tlb_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(tlb_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(tlb_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(tlb_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(tlb_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(tlb_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(tlb_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(tlb_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(tlb_io_ptw_ptbr_mode),
    .io_ptw_status_debug(tlb_io_ptw_status_debug),
    .io_ptw_status_prv(tlb_io_ptw_status_prv),
    .io_ptw_pmp_0_cfg_l(tlb_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(tlb_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(tlb_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(tlb_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(tlb_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(tlb_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(tlb_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(tlb_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(tlb_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(tlb_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(tlb_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(tlb_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(tlb_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(tlb_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(tlb_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(tlb_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(tlb_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(tlb_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(tlb_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(tlb_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(tlb_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(tlb_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(tlb_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(tlb_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(tlb_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(tlb_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(tlb_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(tlb_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(tlb_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(tlb_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(tlb_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(tlb_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(tlb_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(tlb_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(tlb_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(tlb_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(tlb_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(tlb_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(tlb_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(tlb_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(tlb_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(tlb_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(tlb_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(tlb_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(tlb_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(tlb_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(tlb_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(tlb_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(tlb_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(tlb_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(tlb_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(tlb_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(tlb_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(tlb_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(tlb_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask),
    .io_kill(tlb_io_kill)
  );
  BTB btb ( // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
    .clock(btb_clock),
    .reset(btb_reset),
    .io_req_bits_addr(btb_io_req_bits_addr),
    .io_resp_valid(btb_io_resp_valid),
    .io_resp_bits_taken(btb_io_resp_bits_taken),
    .io_resp_bits_bridx(btb_io_resp_bits_bridx),
    .io_resp_bits_target(btb_io_resp_bits_target),
    .io_resp_bits_entry(btb_io_resp_bits_entry),
    .io_resp_bits_bht_history(btb_io_resp_bits_bht_history),
    .io_resp_bits_bht_value(btb_io_resp_bits_bht_value),
    .io_btb_update_valid(btb_io_btb_update_valid),
    .io_btb_update_bits_prediction_entry(btb_io_btb_update_bits_prediction_entry),
    .io_btb_update_bits_pc(btb_io_btb_update_bits_pc),
    .io_btb_update_bits_isValid(btb_io_btb_update_bits_isValid),
    .io_btb_update_bits_br_pc(btb_io_btb_update_bits_br_pc),
    .io_btb_update_bits_cfiType(btb_io_btb_update_bits_cfiType),
    .io_bht_update_valid(btb_io_bht_update_valid),
    .io_bht_update_bits_prediction_history(btb_io_bht_update_bits_prediction_history),
    .io_bht_update_bits_pc(btb_io_bht_update_bits_pc),
    .io_bht_update_bits_branch(btb_io_bht_update_bits_branch),
    .io_bht_update_bits_taken(btb_io_bht_update_bits_taken),
    .io_bht_update_bits_mispredict(btb_io_bht_update_bits_mispredict),
    .io_bht_advance_valid(btb_io_bht_advance_valid),
    .io_bht_advance_bits_bht_value(btb_io_bht_advance_bits_bht_value),
    .io_ras_update_valid(btb_io_ras_update_valid),
    .io_ras_update_bits_cfiType(btb_io_ras_update_bits_cfiType),
    .io_ras_update_bits_returnAddr(btb_io_ras_update_bits_returnAddr),
    .io_ras_head_valid(btb_io_ras_head_valid),
    .io_ras_head_bits(btb_io_ras_head_bits),
    .io_flush(btb_io_flush)
  );
  assign _T_2 = io_cpu_req_valid | io_cpu_sfence_valid; // @[Frontend.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@206546.4]
  assign _T_3 = _T_2 | io_cpu_flush_icache; // @[Frontend.scala 90:52:freechips.rocketchip.system.DefaultRV32Config.fir@206547.4]
  assign _T_4 = _T_3 | io_cpu_bht_update_valid; // @[Frontend.scala 90:75:freechips.rocketchip.system.DefaultRV32Config.fir@206548.4]
  assign _T_5 = _T_4 | io_cpu_btb_update_valid; // @[Frontend.scala 90:102:freechips.rocketchip.system.DefaultRV32Config.fir@206549.4]
  assign _T_6 = ~_T_5; // @[Frontend.scala 90:10:freechips.rocketchip.system.DefaultRV32Config.fir@206550.4]
  assign _T_7 = _T_6 | io_cpu_might_request; // @[Frontend.scala 90:130:freechips.rocketchip.system.DefaultRV32Config.fir@206551.4]
  assign _T_9 = _T_7 | reset; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206553.4]
  assign _T_10 = ~_T_9; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206554.4]
  assign _T_12 = ~fq_io_mask[2]; // @[Frontend.scala 104:5:freechips.rocketchip.system.DefaultRV32Config.fir@206568.4]
  assign _T_14 = ~fq_io_mask[3]; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@206570.4]
  assign _T_15 = ~s1_valid; // @[Frontend.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@206571.4]
  assign _T_16 = ~s2_valid; // @[Frontend.scala 105:58:freechips.rocketchip.system.DefaultRV32Config.fir@206572.4]
  assign _T_17 = _T_15 | _T_16; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@206573.4]
  assign _T_18 = _T_14 & _T_17; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@206574.4]
  assign _T_19 = _T_12 | _T_18; // @[Frontend.scala 104:40:freechips.rocketchip.system.DefaultRV32Config.fir@206575.4]
  assign _T_21 = ~fq_io_mask[4]; // @[Frontend.scala 106:6:freechips.rocketchip.system.DefaultRV32Config.fir@206577.4]
  assign _T_24 = _T_15 & _T_16; // @[Frontend.scala 106:55:freechips.rocketchip.system.DefaultRV32Config.fir@206580.4]
  assign _T_25 = _T_21 & _T_24; // @[Frontend.scala 106:41:freechips.rocketchip.system.DefaultRV32Config.fir@206581.4]
  assign s0_fq_has_space = _T_19 | _T_25; // @[Frontend.scala 105:70:freechips.rocketchip.system.DefaultRV32Config.fir@206582.4]
  assign s0_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 107:35:freechips.rocketchip.system.DefaultRV32Config.fir@206583.4]
  assign s2_btb_taken = s2_btb_resp_valid & s2_btb_resp_bits_taken; // @[Frontend.scala 114:40:freechips.rocketchip.system.DefaultRV32Config.fir@206593.4]
  assign s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst; // @[Frontend.scala 116:37:freechips.rocketchip.system.DefaultRV32Config.fir@206595.4]
  assign _T_29 = ~s1_pc; // @[Frontend.scala 122:22:freechips.rocketchip.system.DefaultRV32Config.fir@206600.4]
  assign _T_30 = _T_29 | 32'h3; // @[Frontend.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@206601.4]
  assign s1_base_pc = ~_T_30; // @[Frontend.scala 122:20:freechips.rocketchip.system.DefaultRV32Config.fir@206602.4]
  assign ntpc = s1_base_pc + 32'h4; // @[Frontend.scala 123:25:freechips.rocketchip.system.DefaultRV32Config.fir@206604.4]
  assign _T_32 = fq_io_enq_ready & fq_io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@206613.4]
  assign _T_33 = ~_T_32; // @[Frontend.scala 128:29:freechips.rocketchip.system.DefaultRV32Config.fir@206614.4]
  assign _T_34 = s2_valid & _T_33; // @[Frontend.scala 128:26:freechips.rocketchip.system.DefaultRV32Config.fir@206615.4]
  assign _T_35 = ~s0_valid; // @[Frontend.scala 128:72:freechips.rocketchip.system.DefaultRV32Config.fir@206616.4]
  assign s2_replay = _T_34 | _T_37; // @[Frontend.scala 128:48:freechips.rocketchip.system.DefaultRV32Config.fir@206620.4]
  assign _T_36 = s2_replay & _T_35; // @[Frontend.scala 128:69:freechips.rocketchip.system.DefaultRV32Config.fir@206617.4]
  assign _T_103 = s2_partial_insn[1:0] != 2'h3; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206781.4]
  assign _T_104 = ~_T_103; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@206782.4]
  assign taken_prevRVI = s2_partial_insn_valid & _T_104; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@206783.4]
  assign taken_bits = fq_io_enq_bits_data[15:0]; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@206787.4]
  assign taken_rviBits = {taken_bits,s2_partial_insn}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206790.4]
  assign taken_rviJump = taken_rviBits[6:0] == 7'h6f; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@206794.4]
  assign taken_rviJALR = taken_rviBits[6:0] == 7'h67; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@206796.4]
  assign _T_297 = taken_rviJump | taken_rviJALR; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@206995.4]
  assign taken_rviBranch = taken_rviBits[6:0] == 7'h63; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@206792.4]
  assign _T_298 = taken_rviBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@206996.4]
  assign _T_299 = _T_297 | _T_298; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@206997.4]
  assign _T_300 = taken_prevRVI & _T_299; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@206998.4]
  assign _T_106 = ~taken_prevRVI; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@206785.4]
  assign taken_valid = fq_io_enq_bits_mask[0] & _T_106; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@206786.4]
  assign _T_125 = taken_bits & 16'he003; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206815.4]
  assign _T_126 = 16'ha001 == _T_125; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206816.4]
  assign taken_rvcJAL = 16'h2001 == _T_125; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@206813.4]
  assign taken_rvcJump = _T_126 | taken_rvcJAL; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@206817.4]
  assign _T_167 = taken_bits & 16'hf003; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206861.4]
  assign _T_168 = 16'h9002 == _T_167; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206862.4]
  assign _T_170 = taken_bits[6:2] == 5'h0; // @[Frontend.scala 227:62:freechips.rocketchip.system.DefaultRV32Config.fir@206864.4]
  assign taken_rvcJALR = _T_168 & _T_170; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@206865.4]
  assign _T_301 = taken_rvcJump | taken_rvcJALR; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@206999.4]
  assign _T_161 = 16'h8002 == _T_167; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206853.4]
  assign taken_rvcJR = _T_161 & _T_170; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@206856.4]
  assign _T_302 = _T_301 | taken_rvcJR; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@207000.4]
  assign _T_120 = 16'hc001 == _T_125; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206808.4]
  assign _T_122 = 16'he001 == _T_125; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@206810.4]
  assign taken_rvcBranch = _T_120 | _T_122; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@206811.4]
  assign _T_303 = taken_rvcBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@207001.4]
  assign _T_304 = _T_302 | _T_303; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@207002.4]
  assign _T_305 = taken_valid & _T_304; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@207003.4]
  assign taken_taken = _T_300 | _T_305; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@207004.4]
  assign taken_idx = ~taken_taken; // @[Frontend.scala 247:13:freechips.rocketchip.system.DefaultRV32Config.fir@207349.4]
  assign _T_605 = ~s2_btb_taken; // @[Frontend.scala 256:15:freechips.rocketchip.system.DefaultRV32Config.fir@207372.6]
  assign _T_370 = taken_bits[1:0] != 2'h3; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@207103.4]
  assign _T_371 = ~_T_370; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@207104.4]
  assign taken_prevRVI_1 = taken_valid & _T_371; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@207105.4]
  assign taken_bits_1 = fq_io_enq_bits_data[31:16]; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@207109.4]
  assign taken_rviBits_1 = {taken_bits_1,taken_bits}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207112.4]
  assign taken_rviJALR_1 = taken_rviBits_1[6:0] == 7'h67; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@207118.4]
  assign _T_379 = ~taken_rviBits_1[7]; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@207120.4]
  assign _T_380 = taken_rviJALR_1 & _T_379; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@207121.4]
  assign _T_382 = taken_rviBits_1[19:15] & 5'h1b; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@207123.4]
  assign _T_383 = 5'h1 == _T_382; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@207124.4]
  assign taken_rviReturn_1 = _T_380 & _T_383; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@207125.4]
  assign _T_573 = taken_prevRVI_1 & taken_rviReturn_1; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@207327.4]
  assign _T_373 = ~taken_prevRVI_1; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@207107.4]
  assign taken_valid_1 = fq_io_enq_bits_mask[1] & _T_373; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@207108.4]
  assign _T_427 = taken_bits_1 & 16'hf003; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@207174.4]
  assign _T_428 = 16'h8002 == _T_427; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@207175.4]
  assign _T_430 = taken_bits_1[6:2] == 5'h0; // @[Frontend.scala 225:59:freechips.rocketchip.system.DefaultRV32Config.fir@207177.4]
  assign taken_rvcJR_1 = _T_428 & _T_430; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@207178.4]
  assign _T_432 = taken_bits_1[11:7] & 5'h1b; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@207180.4]
  assign _T_433 = 5'h1 == _T_432; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@207181.4]
  assign taken_rvcReturn_1 = taken_rvcJR_1 & _T_433; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@207182.4]
  assign _T_574 = taken_valid_1 & taken_rvcReturn_1; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@207328.4]
  assign _T_575 = _T_573 | _T_574; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@207329.4]
  assign taken_predictReturn_1 = btb_io_ras_head_valid & _T_575; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@207330.4]
  assign _T_614 = s2_valid & taken_predictReturn_1; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@207385.8]
  assign _T_112 = ~taken_rviBits[7]; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@206798.4]
  assign _T_113 = taken_rviJALR & _T_112; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@206799.4]
  assign _T_115 = taken_rviBits[19:15] & 5'h1b; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206801.4]
  assign _T_116 = 5'h1 == _T_115; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206802.4]
  assign taken_rviReturn = _T_113 & _T_116; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@206803.4]
  assign _T_306 = taken_prevRVI & taken_rviReturn; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@207005.4]
  assign _T_165 = taken_bits[11:7] & 5'h1b; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206858.4]
  assign _T_166 = 5'h1 == _T_165; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206859.4]
  assign taken_rvcReturn = taken_rvcJR & _T_166; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@206860.4]
  assign _T_307 = taken_valid & taken_rvcReturn; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@207006.4]
  assign _T_308 = _T_306 | _T_307; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@207007.4]
  assign taken_predictReturn = btb_io_ras_head_valid & _T_308; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@207008.4]
  assign _T_347 = s2_valid & taken_predictReturn; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@207063.8]
  assign _GEN_45 = _T_605 & _T_347; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  assign _GEN_78 = _T_614 | _GEN_45; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@207386.8]
  assign _GEN_81 = _T_605 ? _GEN_78 : _GEN_45; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207373.6]
  assign useRAS = taken_idx ? _GEN_81 : _GEN_45; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  assign taken_rviBranch_1 = taken_rviBits_1[6:0] == 7'h63; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@207114.4]
  assign _T_578 = taken_prevRVI_1 & taken_rviBranch_1; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@207334.4]
  assign _T_386 = taken_bits_1 & 16'he003; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@207129.4]
  assign _T_387 = 16'hc001 == _T_386; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@207130.4]
  assign _T_389 = 16'he001 == _T_386; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@207132.4]
  assign taken_rvcBranch_1 = _T_387 | _T_389; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@207133.4]
  assign _T_579 = taken_valid_1 & taken_rvcBranch_1; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@207335.4]
  assign _T_580 = _T_578 | _T_579; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@207336.4]
  assign taken_predictBranch_1 = s2_btb_resp_bits_bht_value & _T_580; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@207337.4]
  assign taken_rviJump_1 = taken_rviBits_1[6:0] == 7'h6f; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@207116.4]
  assign _T_576 = taken_prevRVI_1 & taken_rviJump_1; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@207331.4]
  assign _T_393 = 16'ha001 == _T_386; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@207138.4]
  assign taken_rvcJAL_1 = 16'h2001 == _T_386; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@207135.4]
  assign taken_rvcJump_1 = _T_393 | taken_rvcJAL_1; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@207139.4]
  assign _T_577 = taken_valid_1 & taken_rvcJump_1; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@207332.4]
  assign taken_predictJump_1 = _T_576 | _T_577; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@207333.4]
  assign _T_615 = taken_predictBranch_1 | taken_predictJump_1; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@207389.8]
  assign _T_616 = s2_valid & _T_615; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@207390.8]
  assign _T_88 = ~s2_pc; // @[Frontend.scala 203:24:freechips.rocketchip.system.DefaultRV32Config.fir@206745.4]
  assign _T_89 = _T_88 | 32'h3; // @[Frontend.scala 203:31:freechips.rocketchip.system.DefaultRV32Config.fir@206746.4]
  assign s2_base_pc = ~_T_89; // @[Frontend.scala 203:22:freechips.rocketchip.system.DefaultRV32Config.fir@206747.4]
  assign taken_pc_1 = s2_base_pc | 32'h2; // @[Frontend.scala 264:33:freechips.rocketchip.system.DefaultRV32Config.fir@207392.10]
  assign _T_618 = taken_pc_1 - 32'h2; // @[Frontend.scala 267:36:freechips.rocketchip.system.DefaultRV32Config.fir@207394.10]
  assign _T_620 = taken_prevRVI_1 ? _T_618 : taken_pc_1; // @[Frontend.scala 267:57:freechips.rocketchip.system.DefaultRV32Config.fir@207396.10]
  assign _T_441 = taken_rviBits_1[31]; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@207192.4]
  assign _T_496 = taken_rviBits_1[31]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207247.4]
  assign _T_495 = {11{_T_441}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207246.4]
  assign _T_493 = taken_rviBits_1[19:12]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207244.4]
  assign _T_492 = taken_rviBits_1[20]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207243.4]
  assign _T_500 = {_T_496,_T_495,_T_493,_T_492,taken_rviBits_1[30:25],taken_rviBits_1[24:21],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@207251.4]
  assign _T_555 = {8{_T_441}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207306.4]
  assign _T_554 = taken_rviBits_1[7]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@207305.4]
  assign _T_562 = {_T_496,_T_495,_T_555,_T_554,taken_rviBits_1[30:25],taken_rviBits_1[11:8],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@207313.4]
  assign taken_rviImm_1 = taken_rviBits_1[3] ? $signed(_T_500) : $signed(_T_562); // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@207314.4]
  assign _T_397 = taken_bits_1[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@207143.4]
  assign _T_407 = {_T_397,taken_bits_1[6:5],taken_bits_1[2],taken_bits_1[11:10],taken_bits_1[4:3],1'h0}; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@207153.4]
  assign _T_410 = taken_bits_1[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@207156.4]
  assign _T_426 = {_T_410,taken_bits_1[8],taken_bits_1[10:9],taken_bits_1[6],taken_bits_1[7],taken_bits_1[2],taken_bits_1[11],taken_bits_1[5:3],1'h0}; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@207172.4]
  assign taken_rvcImm_1 = taken_bits_1[14] ? $signed({{8{_T_407[12]}},_T_407}) : $signed(_T_426); // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@207173.4]
  assign _T_621 = taken_prevRVI_1 ? $signed(taken_rviImm_1) : $signed({{11{taken_rvcImm_1[20]}},taken_rvcImm_1}); // @[Frontend.scala 267:69:freechips.rocketchip.system.DefaultRV32Config.fir@207397.10]
  assign _T_624 = $signed(_T_620) + $signed(_T_621); // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@207401.10]
  assign _T_311 = taken_prevRVI & taken_rviBranch; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@207012.4]
  assign _T_312 = taken_valid & taken_rvcBranch; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@207013.4]
  assign _T_313 = _T_311 | _T_312; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@207014.4]
  assign taken_predictBranch = s2_btb_resp_bits_bht_value & _T_313; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@207015.4]
  assign _T_309 = taken_prevRVI & taken_rviJump; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@207009.4]
  assign _T_310 = taken_valid & taken_rvcJump; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@207010.4]
  assign taken_predictJump = _T_309 | _T_310; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@207011.4]
  assign _T_348 = taken_predictBranch | taken_predictJump; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@207067.8]
  assign _T_349 = s2_valid & _T_348; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@207068.8]
  assign _T_350 = ~_T_89; // @[Frontend.scala 266:32:freechips.rocketchip.system.DefaultRV32Config.fir@207071.10]
  assign _T_174 = taken_rviBits[31]; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@206870.4]
  assign _T_229 = taken_rviBits[31]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206925.4]
  assign _T_228 = {11{_T_174}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206924.4]
  assign _T_226 = taken_rviBits[19:12]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206922.4]
  assign _T_225 = taken_rviBits[20]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206921.4]
  assign _T_233 = {_T_229,_T_228,_T_226,_T_225,taken_rviBits[30:25],taken_rviBits[24:21],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206929.4]
  assign _T_288 = {8{_T_174}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206984.4]
  assign _T_287 = taken_rviBits[7]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206983.4]
  assign _T_295 = {_T_229,_T_228,_T_288,_T_287,taken_rviBits[30:25],taken_rviBits[11:8],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206991.4]
  assign taken_rviImm = taken_rviBits[3] ? $signed(_T_233) : $signed(_T_295); // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@206992.4]
  assign _T_351 = $signed(taken_rviImm) - 32'sh2; // @[Frontend.scala 266:61:freechips.rocketchip.system.DefaultRV32Config.fir@207072.10]
  assign _T_130 = taken_bits[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206821.4]
  assign _T_140 = {_T_130,taken_bits[6:5],taken_bits[2],taken_bits[11:10],taken_bits[4:3],1'h0}; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@206831.4]
  assign _T_143 = taken_bits[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206834.4]
  assign _T_159 = {_T_143,taken_bits[8],taken_bits[10:9],taken_bits[6],taken_bits[7],taken_bits[2],taken_bits[11],taken_bits[5:3],1'h0}; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@206850.4]
  assign taken_rvcImm = taken_bits[14] ? $signed({{8{_T_140[12]}},_T_140}) : $signed(_T_159); // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@206851.4]
  assign _T_352 = taken_prevRVI ? $signed(_T_351) : $signed({{12{taken_rvcImm[20]}},taken_rvcImm}); // @[Frontend.scala 266:44:freechips.rocketchip.system.DefaultRV32Config.fir@207073.10]
  assign _GEN_127 = {{1{_T_350[31]}},_T_350}; // @[Frontend.scala 266:39:freechips.rocketchip.system.DefaultRV32Config.fir@207074.10]
  assign _T_355 = $signed(_GEN_127) + $signed(_T_352); // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@207077.10]
  assign predicted_taken = btb_io_resp_valid & btb_io_resp_bits_taken; // @[Frontend.scala 194:29:freechips.rocketchip.system.DefaultRV32Config.fir@206734.4]
  assign _GEN_28 = predicted_taken ? btb_io_resp_bits_target : ntpc; // @[Frontend.scala 194:56:freechips.rocketchip.system.DefaultRV32Config.fir@206735.4]
  assign _GEN_43 = _T_349 ? _T_355 : {{1'd0}, _GEN_28}; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@207069.8]
  assign _GEN_46 = _T_605 ? _GEN_43 : {{1'd0}, _GEN_28}; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  assign _GEN_79 = _T_616 ? {{1'd0}, _T_624} : _GEN_46; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@207391.8]
  assign _GEN_82 = _T_605 ? _GEN_79 : _GEN_46; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207373.6]
  assign _GEN_99 = taken_idx ? _GEN_82 : _GEN_46; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  assign predicted_npc = useRAS ? {{1'd0}, btb_io_ras_head_bits} : _GEN_99; // @[Frontend.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@207439.4]
  assign npc = s2_replay ? {{1'd0}, s2_pc} : predicted_npc; // @[Frontend.scala 129:16:freechips.rocketchip.system.DefaultRV32Config.fir@206622.4]
  assign _T_39 = ~s2_speculative; // @[Frontend.scala 135:56:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  assign _T_40 = s2_valid & _T_39; // @[Frontend.scala 135:53:freechips.rocketchip.system.DefaultRV32Config.fir@206625.4]
  assign _T_41 = s1_speculative | _T_40; // @[Frontend.scala 135:41:freechips.rocketchip.system.DefaultRV32Config.fir@206626.4]
  assign s0_speculative = _T_41 | predicted_taken; // @[Frontend.scala 135:72:freechips.rocketchip.system.DefaultRV32Config.fir@206627.4]
  assign _T_44 = ~s2_replay; // @[Frontend.scala 141:9:freechips.rocketchip.system.DefaultRV32Config.fir@206635.4]
  assign _T_564 = taken_rviJump_1 | taken_rviJALR_1; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@207317.4]
  assign _T_565 = taken_rviBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@207318.4]
  assign _T_566 = _T_564 | _T_565; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@207319.4]
  assign _T_567 = taken_prevRVI_1 & _T_566; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@207320.4]
  assign _T_435 = 16'h9002 == _T_427; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@207184.4]
  assign taken_rvcJALR_1 = _T_435 & _T_430; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@207187.4]
  assign _T_568 = taken_rvcJump_1 | taken_rvcJALR_1; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@207321.4]
  assign _T_569 = _T_568 | taken_rvcJR_1; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@207322.4]
  assign _T_570 = taken_rvcBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@207323.4]
  assign _T_571 = _T_569 | _T_570; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@207324.4]
  assign _T_572 = taken_valid_1 & _T_571; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@207325.4]
  assign taken_taken_1 = _T_567 | _T_572; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@207326.4]
  assign taken = taken_taken | taken_taken_1; // @[Frontend.scala 288:19:freechips.rocketchip.system.DefaultRV32Config.fir@207438.4]
  assign _GEN_116 = _T_32 | io_cpu_req_valid; // @[Frontend.scala 318:33:freechips.rocketchip.system.DefaultRV32Config.fir@207455.8]
  assign _GEN_120 = taken ? _GEN_116 : io_cpu_req_valid; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  assign s2_redirect = _T_605 ? _GEN_120 : io_cpu_req_valid; // @[Frontend.scala 313:26:freechips.rocketchip.system.DefaultRV32Config.fir@207449.4]
  assign _T_45 = ~s2_redirect; // @[Frontend.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@206637.6]
  assign _GEN_0 = _T_44 & _T_45; // @[Frontend.scala 141:21:freechips.rocketchip.system.DefaultRV32Config.fir@206636.4]
  assign _T_49 = s2_redirect | tlb_io_resp_miss; // @[Frontend.scala 162:36:freechips.rocketchip.system.DefaultRV32Config.fir@206659.4]
  assign _T_52 = ~io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@206663.4]
  assign s2_can_speculatively_refill = s2_tlb_resp_cacheable & _T_52; // @[Frontend.scala 163:59:freechips.rocketchip.system.DefaultRV32Config.fir@206664.4]
  assign _T_53 = ~s2_can_speculatively_refill; // @[Frontend.scala 164:42:freechips.rocketchip.system.DefaultRV32Config.fir@206665.4]
  assign _T_54 = s2_speculative & _T_53; // @[Frontend.scala 164:39:freechips.rocketchip.system.DefaultRV32Config.fir@206666.4]
  assign _T_60 = _T_59 & s2_valid; // @[Frontend.scala 167:40:freechips.rocketchip.system.DefaultRV32Config.fir@206675.4]
  assign _T_61 = ~s2_tlb_resp_miss; // @[Frontend.scala 167:80:freechips.rocketchip.system.DefaultRV32Config.fir@206676.4]
  assign _T_62 = _T_61 & icache_io_s2_kill; // @[Frontend.scala 167:98:freechips.rocketchip.system.DefaultRV32Config.fir@206677.4]
  assign _T_63 = icache_io_resp_valid | _T_62; // @[Frontend.scala 167:77:freechips.rocketchip.system.DefaultRV32Config.fir@206678.4]
  assign _T_65 = io_cpu_req_valid ? {{1'd0}, io_cpu_req_bits_pc} : npc; // @[Frontend.scala 169:28:freechips.rocketchip.system.DefaultRV32Config.fir@206682.4]
  assign _T_66 = ~_T_65; // @[Frontend.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@206683.4]
  assign _T_67 = _T_66 | 33'h1; // @[Frontend.scala 343:33:freechips.rocketchip.system.DefaultRV32Config.fir@206684.4]
  assign _T_68 = ~_T_67; // @[Frontend.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@206685.4]
  assign _T_70 = 3'h3 << s2_pc[1]; // @[Frontend.scala 172:52:freechips.rocketchip.system.DefaultRV32Config.fir@206689.4]
  assign _T_71 = ~icache_io_resp_valid; // @[Frontend.scala 173:79:freechips.rocketchip.system.DefaultRV32Config.fir@206691.4]
  assign _T_72 = icache_io_s2_kill & _T_71; // @[Frontend.scala 173:76:freechips.rocketchip.system.DefaultRV32Config.fir@206692.4]
  assign _T_73 = ~s2_xcpt; // @[Frontend.scala 173:104:freechips.rocketchip.system.DefaultRV32Config.fir@206693.4]
  assign _T_74 = _T_72 & _T_73; // @[Frontend.scala 173:101:freechips.rocketchip.system.DefaultRV32Config.fir@206694.4]
  assign _T_75 = icache_io_resp_bits_replay | _T_74; // @[Frontend.scala 173:55:freechips.rocketchip.system.DefaultRV32Config.fir@206695.4]
  assign _T_77 = s2_speculative & io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 177:27:freechips.rocketchip.system.DefaultRV32Config.fir@206701.4]
  assign _T_78 = ~icache_io_s2_kill; // @[Frontend.scala 177:113:freechips.rocketchip.system.DefaultRV32Config.fir@206702.4]
  assign _T_79 = _T_77 & _T_78; // @[Frontend.scala 177:110:freechips.rocketchip.system.DefaultRV32Config.fir@206703.4]
  assign _T_80 = ~_T_79; // @[Frontend.scala 177:10:freechips.rocketchip.system.DefaultRV32Config.fir@206704.4]
  assign _T_82 = _T_80 | reset; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206706.4]
  assign _T_83 = ~_T_82; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206707.4]
  assign _T_84 = icache_io_resp_valid & icache_io_resp_bits_ae; // @[Frontend.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@206712.4]
  assign _T_90 = ~io_cpu_btb_update_valid; // @[Frontend.scala 294:11:freechips.rocketchip.system.DefaultRV32Config.fir@206758.4]
  assign fetch_bubble_likely = ~fq_io_mask[1]; // @[Frontend.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@206761.6]
  assign _T_93 = ~wrong_path; // @[Frontend.scala 296:54:freechips.rocketchip.system.DefaultRV32Config.fir@206763.6]
  assign _T_94 = _T_32 & _T_93; // @[Frontend.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@206764.6]
  assign _T_95 = _T_94 & fetch_bubble_likely; // @[Frontend.scala 296:66:freechips.rocketchip.system.DefaultRV32Config.fir@206765.6]
  assign _T_631 = ~s2_btb_resp_valid; // @[Frontend.scala 275:15:freechips.rocketchip.system.DefaultRV32Config.fir@207415.6]
  assign _T_633 = taken_predictBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207417.6]
  assign _T_634 = _T_633 | taken_predictJump_1; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207418.6]
  assign _T_635 = _T_634 | taken_predictReturn_1; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207419.6]
  assign _T_636 = _T_631 & _T_635; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207420.6]
  assign _T_364 = taken_predictBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207093.6]
  assign _T_365 = _T_364 | taken_predictJump; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207094.6]
  assign _T_366 = _T_365 | taken_predictReturn; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207095.6]
  assign _T_367 = _T_631 & _T_366; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207096.6]
  assign _GEN_92 = _T_636 | _T_367; // @[Frontend.scala 275:125:freechips.rocketchip.system.DefaultRV32Config.fir@207421.6]
  assign updateBTB = taken_idx ? _GEN_92 : _T_367; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  assign _T_96 = _T_95 & updateBTB; // @[Frontend.scala 296:89:freechips.rocketchip.system.DefaultRV32Config.fir@206766.6]
  assign _T_97 = {taken_idx, 1'h0}; // @[Frontend.scala 300:63:freechips.rocketchip.system.DefaultRV32Config.fir@206771.6]
  assign _GEN_128 = {{30'd0}, _T_97}; // @[Frontend.scala 300:50:freechips.rocketchip.system.DefaultRV32Config.fir@206772.6]
  assign _T_98 = s2_base_pc | _GEN_128; // @[Frontend.scala 300:50:freechips.rocketchip.system.DefaultRV32Config.fir@206772.6]
  assign after_idx = taken_idx ? 2'h2 : 2'h1; // @[Frontend.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@207350.4]
  assign _T_99 = {after_idx, 1'h0}; // @[Frontend.scala 304:66:freechips.rocketchip.system.DefaultRV32Config.fir@206776.4]
  assign _GEN_129 = {{29'd0}, _T_99}; // @[Frontend.scala 304:53:freechips.rocketchip.system.DefaultRV32Config.fir@206777.4]
  assign _T_117 = taken_rviJALR | taken_rviJump; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@206804.4]
  assign taken_rviCall = _T_117 & taken_rviBits[7]; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@206806.4]
  assign taken_rvcCall = taken_rvcJAL | taken_rvcJALR; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@206866.4]
  assign _T_314 = s2_valid & s2_btb_resp_valid; // @[Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@207016.4]
  assign _T_315 = ~s2_btb_resp_bits_bridx; // @[Frontend.scala 238:69:freechips.rocketchip.system.DefaultRV32Config.fir@207017.4]
  assign _T_316 = _T_314 & _T_315; // @[Frontend.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@207018.4]
  assign _T_317 = _T_316 & taken_valid; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@207019.4]
  assign _T_319 = _T_317 & _T_371; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@207021.4]
  assign _GEN_39 = _T_319 | _T_75; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207022.4]
  assign _GEN_40 = _T_319 | wrong_path; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207022.4]
  assign _T_324 = taken_rviCall | taken_rviReturn; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  assign _T_325 = taken_prevRVI & _T_324; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@207035.6]
  assign _T_326 = taken_rvcCall | taken_rvcReturn; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@207036.6]
  assign _T_327 = taken_valid & _T_326; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@207037.6]
  assign _T_328 = _T_325 | _T_327; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@207038.6]
  assign _T_329 = _T_94 & _T_328; // @[Frontend.scala 250:68:freechips.rocketchip.system.DefaultRV32Config.fir@207039.6]
  assign _T_330 = taken_prevRVI ? taken_rviReturn : taken_rvcReturn; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@207041.6]
  assign _T_331 = taken_prevRVI ? taken_rviCall : taken_rvcCall; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@207042.6]
  assign _T_332 = taken_prevRVI ? taken_rviBranch : taken_rvcBranch; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@207043.6]
  assign _T_335 = _T_332 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@207046.6]
  assign _T_336 = _T_331 ? 2'h2 : {{1'd0}, _T_335}; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@207047.6]
  assign _T_337 = _T_330 ? 2'h3 : _T_336; // @[Frontend.scala 251:46:freechips.rocketchip.system.DefaultRV32Config.fir@207048.6]
  assign _T_340 = _T_32 & taken_taken; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@207053.8]
  assign _T_341 = ~taken_predictBranch; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@207054.8]
  assign _T_342 = _T_340 & _T_341; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@207055.8]
  assign _T_343 = ~taken_predictJump; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@207056.8]
  assign _T_344 = _T_342 & _T_343; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@207057.8]
  assign _T_345 = ~taken_predictReturn; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@207058.8]
  assign _T_346 = _T_344 & _T_345; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@207059.8]
  assign _GEN_41 = _T_346 | _GEN_40; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@207060.8]
  assign _GEN_44 = _T_605 ? _GEN_41 : _GEN_40; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
  assign _GEN_47 = _T_313 & _T_94; // @[Frontend.scala 271:59:freechips.rocketchip.system.DefaultRV32Config.fir@207084.6]
  assign taken_rvc_1 = taken_bits_1[1:0] != 2'h3; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@207111.4]
  assign _T_384 = taken_rviJALR_1 | taken_rviJump_1; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@207126.4]
  assign taken_rviCall_1 = _T_384 & taken_rviBits_1[7]; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@207128.4]
  assign taken_rvcCall_1 = taken_rvcJAL_1 | taken_rvcJALR_1; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@207188.4]
  assign _T_583 = _T_314 & s2_btb_resp_bits_bridx; // @[Frontend.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@207340.4]
  assign _T_584 = _T_583 & taken_valid_1; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@207341.4]
  assign _T_585 = ~taken_rvc_1; // @[Frontend.scala 238:89:freechips.rocketchip.system.DefaultRV32Config.fir@207342.4]
  assign _T_586 = _T_584 & _T_585; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@207343.4]
  assign _GEN_76 = _T_586 | _GEN_44; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@207344.4]
  assign _T_591 = taken_rviCall_1 | taken_rviReturn_1; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@207356.6]
  assign _T_592 = taken_prevRVI_1 & _T_591; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@207357.6]
  assign _T_593 = taken_rvcCall_1 | taken_rvcReturn_1; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@207358.6]
  assign _T_594 = taken_valid_1 & _T_593; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@207359.6]
  assign _T_595 = _T_592 | _T_594; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@207360.6]
  assign _T_596 = _T_94 & _T_595; // @[Frontend.scala 250:68:freechips.rocketchip.system.DefaultRV32Config.fir@207361.6]
  assign _T_597 = taken_prevRVI_1 ? taken_rviReturn_1 : taken_rvcReturn_1; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@207363.6]
  assign _T_598 = taken_prevRVI_1 ? taken_rviCall_1 : taken_rvcCall_1; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@207364.6]
  assign _T_599 = taken_prevRVI_1 ? taken_rviBranch_1 : taken_rvcBranch_1; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@207365.6]
  assign _T_602 = _T_599 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@207368.6]
  assign _T_603 = _T_598 ? 2'h2 : {{1'd0}, _T_602}; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@207369.6]
  assign _T_604 = _T_597 ? 2'h3 : _T_603; // @[Frontend.scala 251:46:freechips.rocketchip.system.DefaultRV32Config.fir@207370.6]
  assign _T_607 = _T_32 & taken_taken_1; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@207375.8]
  assign _T_608 = ~taken_predictBranch_1; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@207376.8]
  assign _T_609 = _T_607 & _T_608; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@207377.8]
  assign _T_610 = ~taken_predictJump_1; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@207378.8]
  assign _T_611 = _T_609 & _T_610; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@207379.8]
  assign _T_612 = ~taken_predictReturn_1; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@207380.8]
  assign _T_613 = _T_611 & _T_612; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@207381.8]
  assign _GEN_77 = _T_613 | _GEN_76; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@207382.8]
  assign _GEN_83 = _T_580 ? _T_94 : _GEN_47; // @[Frontend.scala 271:59:freechips.rocketchip.system.DefaultRV32Config.fir@207408.6]
  assign _T_639 = taken_valid_1 & taken_idx; // @[Frontend.scala 283:23:freechips.rocketchip.system.DefaultRV32Config.fir@207429.6]
  assign _T_641 = _T_639 & _T_585; // @[Frontend.scala 283:37:freechips.rocketchip.system.DefaultRV32Config.fir@207431.6]
  assign _T_642 = taken_bits_1 | 16'h3; // @[Frontend.scala 285:37:freechips.rocketchip.system.DefaultRV32Config.fir@207434.8]
  assign _T_644 = s2_btb_taken | taken; // @[Frontend.scala 310:45:freechips.rocketchip.system.DefaultRV32Config.fir@207443.4]
  assign _T_645 = _T_32 & _T_644; // @[Frontend.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@207444.4]
  assign _GEN_117 = taken ? taken_idx : s2_btb_resp_bits_bridx; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  assign _GEN_118 = taken | s2_btb_taken; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  assign _GEN_119 = taken ? 5'h1c : s2_btb_resp_bits_entry; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207450.6]
  assign _T_648 = ~s2_partial_insn_valid; // @[Frontend.scala 322:12:freechips.rocketchip.system.DefaultRV32Config.fir@207460.4]
  assign _T_650 = _T_648 | fq_io_enq_bits_mask[0]; // @[Frontend.scala 322:35:freechips.rocketchip.system.DefaultRV32Config.fir@207462.4]
  assign _T_652 = _T_650 | reset; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207464.4]
  assign _T_653 = ~_T_652; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207465.4]
  assign auto_icache_master_out_a_valid = icache_auto_master_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign auto_icache_master_out_a_bits_address = icache_auto_master_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign io_cpu_resp_valid = fq_io_deq_valid; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_btb_taken = fq_io_deq_bits_btb_taken; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_btb_bridx = fq_io_deq_bits_btb_bridx; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_btb_entry = fq_io_deq_bits_btb_entry; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_btb_bht_history = fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign io_cpu_npc = _T_68[31:0]; // @[Frontend.scala 169:14:freechips.rocketchip.system.DefaultRV32Config.fir@206686.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign io_ptw_req_bits_valid = tlb_io_ptw_req_bits_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign icache_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206534.4 Frontend.scala 95:16:freechips.rocketchip.system.DefaultRV32Config.fir@206559.4]
  assign icache_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206535.4]
  assign icache_auto_master_out_a_ready = auto_icache_master_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_auto_master_out_d_valid = auto_icache_master_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_auto_master_out_d_bits_opcode = auto_icache_master_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_auto_master_out_d_bits_size = auto_icache_master_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_auto_master_out_d_bits_data = auto_icache_master_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_auto_master_out_d_bits_corrupt = auto_icache_master_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206536.4]
  assign icache_io_req_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@206654.4]
  assign icache_io_req_bits_addr = io_cpu_npc; // @[Frontend.scala 158:27:freechips.rocketchip.system.DefaultRV32Config.fir@206655.4]
  assign icache_io_s1_paddr = tlb_io_resp_paddr; // @[Frontend.scala 160:22:freechips.rocketchip.system.DefaultRV32Config.fir@206657.4]
  assign icache_io_s1_kill = _T_49 | s2_replay; // @[Frontend.scala 162:21:freechips.rocketchip.system.DefaultRV32Config.fir@206661.4]
  assign icache_io_s2_kill = _T_54 | s2_xcpt; // @[Frontend.scala 164:21:freechips.rocketchip.system.DefaultRV32Config.fir@206668.4]
  assign icache_io_invalidate = io_cpu_flush_icache; // @[Frontend.scala 159:24:freechips.rocketchip.system.DefaultRV32Config.fir@206656.4]
  assign fq_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206541.4]
  assign fq_reset = reset | io_cpu_req_valid; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206542.4]
  assign fq_io_enq_valid = _T_60 & _T_63; // @[Frontend.scala 167:19:freechips.rocketchip.system.DefaultRV32Config.fir@206680.4]
  assign fq_io_enq_bits_btb_taken = _T_605 ? _GEN_118 : s2_btb_taken; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4 Frontend.scala 175:28:freechips.rocketchip.system.DefaultRV32Config.fir@206698.4 Frontend.scala 316:34:freechips.rocketchip.system.DefaultRV32Config.fir@207452.8]
  assign fq_io_enq_bits_btb_bridx = _T_605 ? _GEN_117 : s2_btb_resp_bits_bridx; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4 Frontend.scala 315:34:freechips.rocketchip.system.DefaultRV32Config.fir@207451.8]
  assign fq_io_enq_bits_btb_entry = _T_605 ? _GEN_119 : s2_btb_resp_bits_entry; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4 Frontend.scala 317:34:freechips.rocketchip.system.DefaultRV32Config.fir@207453.8]
  assign fq_io_enq_bits_btb_bht_history = s2_btb_resp_bits_bht_history; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4]
  assign fq_io_enq_bits_pc = s2_pc; // @[Frontend.scala 168:21:freechips.rocketchip.system.DefaultRV32Config.fir@206681.4]
  assign fq_io_enq_bits_data = icache_io_resp_bits_data; // @[Frontend.scala 171:23:freechips.rocketchip.system.DefaultRV32Config.fir@206687.4]
  assign fq_io_enq_bits_mask = _T_70[1:0]; // @[Frontend.scala 172:23:freechips.rocketchip.system.DefaultRV32Config.fir@206690.4]
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst; // @[Frontend.scala 176:23:freechips.rocketchip.system.DefaultRV32Config.fir@206699.4]
  assign fq_io_enq_bits_xcpt_ae_inst = _T_84 | s2_tlb_resp_ae_inst; // @[Frontend.scala 176:23:freechips.rocketchip.system.DefaultRV32Config.fir@206699.4 Frontend.scala 178:87:freechips.rocketchip.system.DefaultRV32Config.fir@206714.6]
  assign fq_io_enq_bits_replay = _T_586 | _GEN_39; // @[Frontend.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@206696.4 Frontend.scala 242:31:freechips.rocketchip.system.DefaultRV32Config.fir@207024.6 Frontend.scala 242:31:freechips.rocketchip.system.DefaultRV32Config.fir@207346.6]
  assign fq_io_deq_ready = io_cpu_resp_ready; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207476.4]
  assign tlb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206563.4]
  assign tlb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206564.4]
  assign tlb_io_req_valid = s1_valid & _T_44; // @[Frontend.scala 149:20:freechips.rocketchip.system.DefaultRV32Config.fir@206646.4]
  assign tlb_io_req_bits_vaddr = s1_pc; // @[Frontend.scala 150:25:freechips.rocketchip.system.DefaultRV32Config.fir@206647.4]
  assign tlb_io_sfence_valid = io_cpu_sfence_valid; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206650.4]
  assign tlb_io_sfence_bits_rs1 = io_cpu_sfence_bits_rs1; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206650.4]
  assign tlb_io_sfence_bits_rs2 = io_cpu_sfence_bits_rs2; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206650.4]
  assign tlb_io_sfence_bits_addr = io_cpu_sfence_bits_addr; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206650.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_status_prv = io_ptw_status_prv; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign tlb_io_kill = ~s2_valid; // @[Frontend.scala 154:15:freechips.rocketchip.system.DefaultRV32Config.fir@206652.4]
  assign btb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206718.4]
  assign btb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206719.4]
  assign btb_io_req_bits_addr = s1_pc; // @[Frontend.scala 184:26:freechips.rocketchip.system.DefaultRV32Config.fir@206722.4]
  assign btb_io_btb_update_valid = _T_90 ? _T_96 : io_cpu_btb_update_valid; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 296:31:freechips.rocketchip.system.DefaultRV32Config.fir@206767.6]
  assign btb_io_btb_update_bits_prediction_entry = _T_90 ? 5'h1c : io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 297:47:freechips.rocketchip.system.DefaultRV32Config.fir@206768.6]
  assign btb_io_btb_update_bits_pc = _T_90 ? s2_base_pc : io_cpu_btb_update_bits_pc; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 301:33:freechips.rocketchip.system.DefaultRV32Config.fir@206774.6]
  assign btb_io_btb_update_bits_isValid = _T_90 | io_cpu_btb_update_bits_isValid; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 298:38:freechips.rocketchip.system.DefaultRV32Config.fir@206769.6]
  assign btb_io_btb_update_bits_br_pc = _T_90 ? _T_98 : io_cpu_btb_update_bits_br_pc; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 300:36:freechips.rocketchip.system.DefaultRV32Config.fir@206773.6]
  assign btb_io_btb_update_bits_cfiType = _T_90 ? btb_io_ras_update_bits_cfiType : io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206723.4 Frontend.scala 299:38:freechips.rocketchip.system.DefaultRV32Config.fir@206770.6]
  assign btb_io_bht_update_valid = io_cpu_bht_update_valid; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4 Frontend.scala 201:50:freechips.rocketchip.system.DefaultRV32Config.fir@206743.6]
  assign btb_io_bht_update_bits_prediction_history = io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign btb_io_bht_update_bits_pc = io_cpu_bht_update_bits_pc; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign btb_io_bht_update_bits_branch = io_cpu_bht_update_bits_branch; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign btb_io_bht_update_bits_taken = io_cpu_bht_update_bits_taken; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign btb_io_bht_update_bits_mispredict = io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign btb_io_bht_advance_valid = taken_idx ? _GEN_83 : _GEN_47; // @[Frontend.scala 188:30:freechips.rocketchip.system.DefaultRV32Config.fir@206726.4 Frontend.scala 272:36:freechips.rocketchip.system.DefaultRV32Config.fir@207088.8 Frontend.scala 272:36:freechips.rocketchip.system.DefaultRV32Config.fir@207412.8]
  assign btb_io_bht_advance_bits_bht_value = s2_btb_resp_bits_bht_value; // @[Frontend.scala 273:35:freechips.rocketchip.system.DefaultRV32Config.fir@207089.8 Frontend.scala 273:35:freechips.rocketchip.system.DefaultRV32Config.fir@207413.8]
  assign btb_io_ras_update_valid = taken_idx ? _T_596 : _T_329; // @[Frontend.scala 187:29:freechips.rocketchip.system.DefaultRV32Config.fir@206725.4 Frontend.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@207040.6 Frontend.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@207362.6]
  assign btb_io_ras_update_bits_cfiType = taken_idx ? _T_604 : _T_337; // @[Frontend.scala 251:40:freechips.rocketchip.system.DefaultRV32Config.fir@207049.6 Frontend.scala 251:40:freechips.rocketchip.system.DefaultRV32Config.fir@207371.6]
  assign btb_io_ras_update_bits_returnAddr = s2_base_pc + _GEN_129; // @[Frontend.scala 304:39:freechips.rocketchip.system.DefaultRV32Config.fir@206779.4]
  assign btb_io_flush = _T_586 | _T_319; // @[Frontend.scala 182:18:freechips.rocketchip.system.DefaultRV32Config.fir@206720.4 Frontend.scala 200:54:freechips.rocketchip.system.DefaultRV32Config.fir@206740.6 Frontend.scala 241:22:freechips.rocketchip.system.DefaultRV32Config.fir@207023.6 Frontend.scala 241:22:freechips.rocketchip.system.DefaultRV32Config.fir@207345.6]
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s2_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_pc = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  s1_speculative = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s2_pc = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  s2_btb_resp_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_btb_resp_bits_taken = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_btb_resp_bits_bridx = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_btb_resp_bits_entry = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_history = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_value = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tlb_resp_miss = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_tlb_resp_pf_inst = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_tlb_resp_ae_inst = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_speculative = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s2_partial_insn_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s2_partial_insn = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  wrong_path = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  _T_37 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  _T_59 = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge gated_clock) begin
    s1_valid <= io_cpu_req_valid | s0_fq_has_space;
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _GEN_0;
    end
    s1_pc <= io_cpu_npc;
    if (io_cpu_req_valid) begin
      s1_speculative <= io_cpu_req_bits_speculative;
    end else if (s2_replay) begin
      s1_speculative <= s2_speculative;
    end else begin
      s1_speculative <= s0_speculative;
    end
    if (reset) begin
      s2_pc <= 32'h10040;
    end else if (_T_44) begin
      s2_pc <= s1_pc;
    end
    if (_T_44) begin
      s2_btb_resp_valid <= btb_io_resp_valid;
    end
    if (_T_44) begin
      s2_btb_resp_bits_taken <= btb_io_resp_bits_taken;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bridx <= btb_io_resp_bits_bridx;
    end
    if (_T_44) begin
      s2_btb_resp_bits_entry <= btb_io_resp_bits_entry;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_history <= btb_io_resp_bits_bht_history;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_value <= btb_io_resp_bits_bht_value;
    end
    if (_T_44) begin
      s2_tlb_resp_miss <= tlb_io_resp_miss;
    end
    if (_T_44) begin
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (reset) begin
      s2_speculative <= 1'h0;
    end else if (_T_44) begin
      s2_speculative <= s1_speculative;
    end
    if (reset) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (s2_redirect) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_645) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_32) begin
      s2_partial_insn_valid <= _T_641;
    end
    if (_T_32) begin
      if (_T_641) begin
        s2_partial_insn <= _T_642;
      end
    end
    if (io_cpu_req_valid) begin
      wrong_path <= 1'h0;
    end else if (taken_idx) begin
      if (_T_605) begin
        wrong_path <= _GEN_77;
      end else begin
        wrong_path <= _GEN_76;
      end
    end else begin
      wrong_path <= _GEN_76;
    end
    _T_37 <= reset | _T_36;
    _T_59 <= s1_valid;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:90 assert(!(io.cpu.req.valid || io.cpu.sfence.valid || io.cpu.flush_icache || io.cpu.bht_update.valid || io.cpu.btb_update.valid) || io.cpu.might_request)\n"); // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206556.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_10) begin
          $fatal; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206557.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_83) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:177 assert(!(s2_speculative && io.ptw.customCSRs.asInstanceOf[RocketCustomCSRs].disableSpeculativeICacheRefill && !icache.io.s2_kill))\n"); // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206709.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_83) begin
          $fatal; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206710.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:322 assert(!s2_partial_insn_valid || fq.io.enq.bits.mask(0))\n"); // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207467.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653) begin
          $fatal; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207468.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
