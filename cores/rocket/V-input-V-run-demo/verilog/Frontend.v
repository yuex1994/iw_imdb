module Frontend( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206432.2]
  input         gated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206433.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206434.4]
  input         auto_icache_master_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  output        auto_icache_master_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  output [31:0] auto_icache_master_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input         auto_icache_master_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input  [2:0]  auto_icache_master_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input  [3:0]  auto_icache_master_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input  [31:0] auto_icache_master_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input         auto_icache_master_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  input         io_cpu_might_request, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_cpu_req_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_req_bits_speculative, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_sfence_bits_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_cpu_sfence_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_cpu_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [4:0]  io_cpu_resp_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [7:0]  io_cpu_resp_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [31:0] io_cpu_resp_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [31:0] io_cpu_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_cpu_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_cpu_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_cpu_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [4:0]  io_cpu_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_cpu_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_cpu_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [7:0]  io_cpu_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_cpu_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_cpu_flush_icache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [31:0] io_cpu_npc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_ptw_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output        io_ptw_req_bits_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  output [19:0] io_ptw_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input         io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  input  [31:0] io_ptw_customCSRs_csrs_0_value // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  icache_clock; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_reset; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_auto_master_out_a_ready; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_auto_master_out_a_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [31:0] icache_auto_master_out_a_bits_address; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_auto_master_out_d_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [2:0] icache_auto_master_out_d_bits_opcode; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [3:0] icache_auto_master_out_d_bits_size; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [31:0] icache_auto_master_out_d_bits_data; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_auto_master_out_d_bits_corrupt; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_req_ready; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_req_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [31:0] icache_io_req_bits_addr; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [31:0] icache_io_s1_paddr; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_s1_kill; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_s2_kill; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_resp_valid; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire [31:0] icache_io_resp_bits_data; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_resp_bits_replay; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_resp_bits_ae; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  icache_io_invalidate; // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  fq_clock; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_reset; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_ready; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_valid; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [4:0] fq_io_enq_bits_btb_entry; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [7:0] fq_io_enq_bits_btb_bht_history; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [31:0] fq_io_enq_bits_pc; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [31:0] fq_io_enq_bits_data; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_bits_mask; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_enq_bits_replay; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_deq_ready; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_deq_valid; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [4:0] fq_io_deq_bits_btb_entry; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [7:0] fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [31:0] fq_io_deq_bits_pc; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [31:0] fq_io_deq_bits_data; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  fq_io_deq_bits_replay; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire [4:0] fq_io_mask; // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
  wire  tlb_clock; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_reset; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_req_ready; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_req_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_req_bits_vaddr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_resp_miss; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_resp_paddr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_resp_pf_inst; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_resp_ae_inst; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_resp_cacheable; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_sfence_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_sfence_bits_rs1; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_sfence_bits_rs2; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_sfence_bits_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_req_ready; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_req_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_req_bits_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [19:0] tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_valid; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_level; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_ptbr_mode; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_status_debug; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_status_prv; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  tlb_io_kill; // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire  btb_clock; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_reset; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_req_bits_addr; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_resp_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_resp_bits_taken; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_resp_bits_target; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [4:0] btb_io_resp_bits_entry; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [7:0] btb_io_resp_bits_bht_history; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_resp_bits_bht_value; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_btb_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [4:0] btb_io_btb_update_bits_prediction_entry; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_btb_update_bits_pc; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_btb_update_bits_isValid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [1:0] btb_io_btb_update_bits_cfiType; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [7:0] btb_io_bht_update_bits_prediction_history; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_bht_update_bits_pc; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_update_bits_branch; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_update_bits_taken; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_update_bits_mispredict; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_advance_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_bht_advance_bits_bht_value; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_ras_update_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [1:0] btb_io_ras_update_bits_cfiType; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_ras_update_bits_returnAddr; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_ras_head_valid; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire [31:0] btb_io_ras_head_bits; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  btb_io_flush; // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
  wire  _T_2; // @[Frontend.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@206459.4]
  wire  _T_3; // @[Frontend.scala 90:52:freechips.rocketchip.system.DefaultRV32Config.fir@206460.4]
  wire  _T_4; // @[Frontend.scala 90:75:freechips.rocketchip.system.DefaultRV32Config.fir@206461.4]
  wire  _T_5; // @[Frontend.scala 90:102:freechips.rocketchip.system.DefaultRV32Config.fir@206462.4]
  wire  _T_6; // @[Frontend.scala 90:10:freechips.rocketchip.system.DefaultRV32Config.fir@206463.4]
  wire  _T_7; // @[Frontend.scala 90:130:freechips.rocketchip.system.DefaultRV32Config.fir@206464.4]
  wire  _T_9; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206466.4]
  wire  _T_10; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206467.4]
  reg  s1_valid; // @[Frontend.scala 101:21:freechips.rocketchip.system.DefaultRV32Config.fir@206478.4]
  reg  s2_valid; // @[Frontend.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@206479.4]
  wire  _T_12; // @[Frontend.scala 104:5:freechips.rocketchip.system.DefaultRV32Config.fir@206481.4]
  wire  _T_14; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@206483.4]
  wire  _T_15; // @[Frontend.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@206484.4]
  wire  _T_16; // @[Frontend.scala 105:58:freechips.rocketchip.system.DefaultRV32Config.fir@206485.4]
  wire  _T_17; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@206486.4]
  wire  _T_18; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@206487.4]
  wire  _T_19; // @[Frontend.scala 104:40:freechips.rocketchip.system.DefaultRV32Config.fir@206488.4]
  wire  _T_21; // @[Frontend.scala 106:6:freechips.rocketchip.system.DefaultRV32Config.fir@206490.4]
  wire  _T_24; // @[Frontend.scala 106:55:freechips.rocketchip.system.DefaultRV32Config.fir@206493.4]
  wire  _T_25; // @[Frontend.scala 106:41:freechips.rocketchip.system.DefaultRV32Config.fir@206494.4]
  wire  s0_fq_has_space; // @[Frontend.scala 105:70:freechips.rocketchip.system.DefaultRV32Config.fir@206495.4]
  wire  s0_valid; // @[Frontend.scala 107:35:freechips.rocketchip.system.DefaultRV32Config.fir@206496.4]
  reg [31:0] s1_pc; // @[Frontend.scala 109:18:freechips.rocketchip.system.DefaultRV32Config.fir@206498.4]
  reg  s1_speculative; // @[Frontend.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@206499.4]
  reg [31:0] s2_pc; // @[Frontend.scala 111:22:freechips.rocketchip.system.DefaultRV32Config.fir@206503.4]
  reg  s2_btb_resp_valid; // @[Frontend.scala 112:44:freechips.rocketchip.system.DefaultRV32Config.fir@206504.4]
  reg  s2_btb_resp_bits_taken; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206505.4]
  reg [4:0] s2_btb_resp_bits_entry; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206505.4]
  reg [7:0] s2_btb_resp_bits_bht_history; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206505.4]
  reg  s2_btb_resp_bits_bht_value; // @[Frontend.scala 113:29:freechips.rocketchip.system.DefaultRV32Config.fir@206505.4]
  wire  s2_btb_taken; // @[Frontend.scala 114:40:freechips.rocketchip.system.DefaultRV32Config.fir@206506.4]
  reg  s2_tlb_resp_miss; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206507.4]
  reg  s2_tlb_resp_pf_inst; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206507.4]
  reg  s2_tlb_resp_ae_inst; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206507.4]
  reg  s2_tlb_resp_cacheable; // @[Frontend.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@206507.4]
  wire  s2_xcpt; // @[Frontend.scala 116:37:freechips.rocketchip.system.DefaultRV32Config.fir@206508.4]
  reg  s2_speculative; // @[Frontend.scala 117:27:freechips.rocketchip.system.DefaultRV32Config.fir@206509.4]
  reg  s2_partial_insn_valid; // @[Frontend.scala 118:38:freechips.rocketchip.system.DefaultRV32Config.fir@206510.4]
  reg [31:0] s2_partial_insn; // @[Frontend.scala 119:28:freechips.rocketchip.system.DefaultRV32Config.fir@206511.4]
  reg  wrong_path; // @[Frontend.scala 120:23:freechips.rocketchip.system.DefaultRV32Config.fir@206512.4]
  wire [31:0] _T_29; // @[Frontend.scala 122:22:freechips.rocketchip.system.DefaultRV32Config.fir@206513.4]
  wire [31:0] _T_30; // @[Frontend.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@206514.4]
  wire [31:0] s1_base_pc; // @[Frontend.scala 122:20:freechips.rocketchip.system.DefaultRV32Config.fir@206515.4]
  wire [31:0] ntpc; // @[Frontend.scala 123:25:freechips.rocketchip.system.DefaultRV32Config.fir@206517.4]
  wire  _T_32; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@206526.4]
  wire  _T_33; // @[Frontend.scala 128:29:freechips.rocketchip.system.DefaultRV32Config.fir@206527.4]
  wire  _T_34; // @[Frontend.scala 128:26:freechips.rocketchip.system.DefaultRV32Config.fir@206528.4]
  wire  _T_35; // @[Frontend.scala 128:72:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  reg  _T_37; // @[Frontend.scala 128:58:freechips.rocketchip.system.DefaultRV32Config.fir@206531.4]
  wire  s2_replay; // @[Frontend.scala 128:48:freechips.rocketchip.system.DefaultRV32Config.fir@206533.4]
  wire  _T_36; // @[Frontend.scala 128:69:freechips.rocketchip.system.DefaultRV32Config.fir@206530.4]
  wire  _T_334; // @[Frontend.scala 256:15:freechips.rocketchip.system.DefaultRV32Config.fir@206958.6]
  wire  _T_99; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206689.4]
  wire  _T_100; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@206690.4]
  wire  taken_prevRVI; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@206691.4]
  wire [31:0] taken_bits; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@206695.4]
  wire [63:0] taken_rviBits; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206698.4]
  wire  taken_rviJALR; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@206704.4]
  wire  _T_108; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@206706.4]
  wire  _T_109; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@206707.4]
  wire [4:0] _T_111; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206709.4]
  wire  _T_112; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206710.4]
  wire  taken_rviReturn; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@206711.4]
  wire  _T_302; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@206913.4]
  wire  _T_101; // @[Frontend.scala 212:38:freechips.rocketchip.system.DefaultRV32Config.fir@206692.4]
  wire  _T_102; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@206693.4]
  wire  taken_valid; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@206694.4]
  wire [31:0] _T_156; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206760.4]
  wire  _T_157; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206761.4]
  wire  _T_159; // @[Frontend.scala 225:59:freechips.rocketchip.system.DefaultRV32Config.fir@206763.4]
  wire  taken_rvcJR; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@206764.4]
  wire [4:0] _T_161; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206766.4]
  wire  _T_162; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206767.4]
  wire  taken_rvcReturn; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@206768.4]
  wire  _T_303; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@206914.4]
  wire  _T_304; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@206915.4]
  wire  taken_predictReturn; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@206916.4]
  wire  _T_343; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@206971.8]
  wire  useRAS; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@206959.6]
  wire  taken_rviBranch; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@206700.4]
  wire  _T_307; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@206920.4]
  wire [31:0] _T_115; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206715.4]
  wire  _T_116; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  wire  _T_118; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@206718.4]
  wire  taken_rvcBranch; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@206719.4]
  wire  _T_308; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@206921.4]
  wire  _T_309; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@206922.4]
  wire  taken_predictBranch; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@206923.4]
  wire  taken_rviJump; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@206702.4]
  wire  _T_305; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@206917.4]
  wire  _T_122; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  wire  taken_rvcJAL; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@206721.4]
  wire  taken_rvcJump; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@206725.4]
  wire  _T_306; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@206918.4]
  wire  taken_predictJump; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@206919.4]
  wire  _T_344; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@206975.8]
  wire  _T_345; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@206976.8]
  wire [31:0] _T_84; // @[Frontend.scala 203:24:freechips.rocketchip.system.DefaultRV32Config.fir@206653.4]
  wire [31:0] _T_85; // @[Frontend.scala 203:31:freechips.rocketchip.system.DefaultRV32Config.fir@206654.4]
  wire [31:0] s2_base_pc; // @[Frontend.scala 203:22:freechips.rocketchip.system.DefaultRV32Config.fir@206655.4]
  wire [31:0] _T_346; // @[Frontend.scala 266:32:freechips.rocketchip.system.DefaultRV32Config.fir@206979.10]
  wire  _T_170; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@206778.4]
  wire  _T_225; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206833.4]
  wire [10:0] _T_224; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206832.4]
  wire [7:0] _T_222; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206830.4]
  wire  _T_221; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206829.4]
  wire [31:0] _T_229; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206837.4]
  wire [7:0] _T_284; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206892.4]
  wire  _T_283; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206891.4]
  wire [31:0] _T_291; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206899.4]
  wire [31:0] taken_rviImm; // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@206900.4]
  wire [32:0] _T_347; // @[Frontend.scala 266:61:freechips.rocketchip.system.DefaultRV32Config.fir@206980.10]
  wire [4:0] _T_126; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206729.4]
  wire [12:0] _T_136; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@206739.4]
  wire [9:0] _T_139; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206742.4]
  wire [20:0] _T_155; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@206758.4]
  wire [20:0] taken_rvcImm; // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@206759.4]
  wire [32:0] _T_348; // @[Frontend.scala 266:44:freechips.rocketchip.system.DefaultRV32Config.fir@206981.10]
  wire [32:0] _GEN_91; // @[Frontend.scala 266:39:freechips.rocketchip.system.DefaultRV32Config.fir@206982.10]
  wire [32:0] _T_351; // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@206985.10]
  wire  predicted_taken; // @[Frontend.scala 194:29:freechips.rocketchip.system.DefaultRV32Config.fir@206642.4]
  wire [31:0] _GEN_28; // @[Frontend.scala 194:56:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  wire [32:0] _GEN_43; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@206977.8]
  wire [32:0] _GEN_46; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@206959.6]
  wire [32:0] predicted_npc; // @[Frontend.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@207023.4]
  wire [32:0] npc; // @[Frontend.scala 129:16:freechips.rocketchip.system.DefaultRV32Config.fir@206535.4]
  wire  _T_41; // @[Frontend.scala 141:9:freechips.rocketchip.system.DefaultRV32Config.fir@206544.4]
  wire  _T_293; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@206903.4]
  wire  _T_294; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@206904.4]
  wire  _T_295; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@206905.4]
  wire  _T_296; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@206906.4]
  wire  _T_164; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206770.4]
  wire  taken_rvcJALR; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@206773.4]
  wire  _T_297; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@206907.4]
  wire  _T_298; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@206908.4]
  wire  _T_299; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@206909.4]
  wire  _T_300; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@206910.4]
  wire  _T_301; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@206911.4]
  wire  taken_taken; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@206912.4]
  wire  _GEN_80; // @[Frontend.scala 318:33:freechips.rocketchip.system.DefaultRV32Config.fir@207039.8]
  wire  _GEN_84; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  wire  s2_redirect; // @[Frontend.scala 313:26:freechips.rocketchip.system.DefaultRV32Config.fir@207033.4]
  wire  _T_42; // @[Frontend.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@206546.6]
  wire  _GEN_0; // @[Frontend.scala 141:21:freechips.rocketchip.system.DefaultRV32Config.fir@206545.4]
  wire  _T_46; // @[Frontend.scala 162:36:freechips.rocketchip.system.DefaultRV32Config.fir@206568.4]
  wire  _T_49; // @[Frontend.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@206572.4]
  wire  s2_can_speculatively_refill; // @[Frontend.scala 163:59:freechips.rocketchip.system.DefaultRV32Config.fir@206573.4]
  wire  _T_50; // @[Frontend.scala 164:42:freechips.rocketchip.system.DefaultRV32Config.fir@206574.4]
  wire  _T_51; // @[Frontend.scala 164:39:freechips.rocketchip.system.DefaultRV32Config.fir@206575.4]
  reg  _T_56; // @[Frontend.scala 167:29:freechips.rocketchip.system.DefaultRV32Config.fir@206582.4]
  wire  _T_57; // @[Frontend.scala 167:40:freechips.rocketchip.system.DefaultRV32Config.fir@206584.4]
  wire  _T_58; // @[Frontend.scala 167:80:freechips.rocketchip.system.DefaultRV32Config.fir@206585.4]
  wire  _T_59; // @[Frontend.scala 167:98:freechips.rocketchip.system.DefaultRV32Config.fir@206586.4]
  wire  _T_60; // @[Frontend.scala 167:77:freechips.rocketchip.system.DefaultRV32Config.fir@206587.4]
  wire [32:0] _T_62; // @[Frontend.scala 169:28:freechips.rocketchip.system.DefaultRV32Config.fir@206591.4]
  wire [32:0] _T_63; // @[Frontend.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  wire [32:0] _T_64; // @[Frontend.scala 343:33:freechips.rocketchip.system.DefaultRV32Config.fir@206593.4]
  wire [32:0] _T_65; // @[Frontend.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  wire  _T_67; // @[Frontend.scala 173:79:freechips.rocketchip.system.DefaultRV32Config.fir@206599.4]
  wire  _T_68; // @[Frontend.scala 173:76:freechips.rocketchip.system.DefaultRV32Config.fir@206600.4]
  wire  _T_69; // @[Frontend.scala 173:104:freechips.rocketchip.system.DefaultRV32Config.fir@206601.4]
  wire  _T_70; // @[Frontend.scala 173:101:freechips.rocketchip.system.DefaultRV32Config.fir@206602.4]
  wire  _T_71; // @[Frontend.scala 173:55:freechips.rocketchip.system.DefaultRV32Config.fir@206603.4]
  wire  _T_73; // @[Frontend.scala 177:27:freechips.rocketchip.system.DefaultRV32Config.fir@206609.4]
  wire  _T_74; // @[Frontend.scala 177:113:freechips.rocketchip.system.DefaultRV32Config.fir@206610.4]
  wire  _T_75; // @[Frontend.scala 177:110:freechips.rocketchip.system.DefaultRV32Config.fir@206611.4]
  wire  _T_76; // @[Frontend.scala 177:10:freechips.rocketchip.system.DefaultRV32Config.fir@206612.4]
  wire  _T_78; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206614.4]
  wire  _T_79; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206615.4]
  wire  _T_80; // @[Frontend.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@206620.4]
  wire  _T_86; // @[Frontend.scala 294:11:freechips.rocketchip.system.DefaultRV32Config.fir@206666.4]
  wire  fetch_bubble_likely; // @[Frontend.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@206669.6]
  wire  _T_89; // @[Frontend.scala 296:54:freechips.rocketchip.system.DefaultRV32Config.fir@206671.6]
  wire  _T_90; // @[Frontend.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@206672.6]
  wire  _T_91; // @[Frontend.scala 296:66:freechips.rocketchip.system.DefaultRV32Config.fir@206673.6]
  wire  _T_358; // @[Frontend.scala 275:15:freechips.rocketchip.system.DefaultRV32Config.fir@206999.6]
  wire  _T_360; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207001.6]
  wire  _T_361; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207002.6]
  wire  _T_362; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207003.6]
  wire  updateBTB; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207004.6]
  wire  _T_92; // @[Frontend.scala 296:89:freechips.rocketchip.system.DefaultRV32Config.fir@206674.6]
  wire  taken_rvc; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4]
  wire  _T_113; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@206712.4]
  wire  taken_rviCall; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@206714.4]
  wire  taken_rvcCall; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@206774.4]
  wire  _T_310; // @[Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@206924.4]
  wire  _T_313; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@206927.4]
  wire  _T_314; // @[Frontend.scala 238:89:freechips.rocketchip.system.DefaultRV32Config.fir@206928.4]
  wire  _T_315; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@206929.4]
  wire  _GEN_40; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@206930.4]
  wire  _T_320; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@206942.6]
  wire  _T_321; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@206943.6]
  wire  _T_322; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@206944.6]
  wire  _T_323; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@206945.6]
  wire  _T_324; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@206946.6]
  wire  _T_326; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@206949.6]
  wire  _T_327; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@206950.6]
  wire  _T_328; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@206951.6]
  wire  _T_331; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@206954.6]
  wire [1:0] _T_332; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@206955.6]
  wire  _T_336; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@206961.8]
  wire  _T_337; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@206962.8]
  wire  _T_338; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@206963.8]
  wire  _T_339; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@206964.8]
  wire  _T_340; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@206965.8]
  wire  _T_341; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@206966.8]
  wire  _T_342; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@206967.8]
  wire  _GEN_41; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@206968.8]
  wire  _T_368; // @[Frontend.scala 283:37:freechips.rocketchip.system.DefaultRV32Config.fir@207015.6]
  wire [31:0] _T_369; // @[Frontend.scala 285:37:freechips.rocketchip.system.DefaultRV32Config.fir@207018.8]
  wire  _T_371; // @[Frontend.scala 310:45:freechips.rocketchip.system.DefaultRV32Config.fir@207027.4]
  wire  _T_372; // @[Frontend.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@207028.4]
  wire [4:0] _GEN_83; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  wire  _T_375; // @[Frontend.scala 322:12:freechips.rocketchip.system.DefaultRV32Config.fir@207044.4]
  wire  _T_377; // @[Frontend.scala 322:35:freechips.rocketchip.system.DefaultRV32Config.fir@207046.4]
  wire  _T_379; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207048.4]
  wire  _T_380; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207049.4]
  ICache icache ( // @[Frontend.scala 64:26:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
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
  ShiftQueue fq ( // @[Frontend.scala 85:57:freechips.rocketchip.system.DefaultRV32Config.fir@206452.4]
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
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
    .io_deq_bits_btb_entry(fq_io_deq_bits_btb_entry),
    .io_deq_bits_btb_bht_history(fq_io_deq_bits_btb_bht_history),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  TLB_1 tlb ( // @[Frontend.scala 99:19:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
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
  BTB btb ( // @[Frontend.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@206624.4]
    .clock(btb_clock),
    .reset(btb_reset),
    .io_req_bits_addr(btb_io_req_bits_addr),
    .io_resp_valid(btb_io_resp_valid),
    .io_resp_bits_taken(btb_io_resp_bits_taken),
    .io_resp_bits_target(btb_io_resp_bits_target),
    .io_resp_bits_entry(btb_io_resp_bits_entry),
    .io_resp_bits_bht_history(btb_io_resp_bits_bht_history),
    .io_resp_bits_bht_value(btb_io_resp_bits_bht_value),
    .io_btb_update_valid(btb_io_btb_update_valid),
    .io_btb_update_bits_prediction_entry(btb_io_btb_update_bits_prediction_entry),
    .io_btb_update_bits_pc(btb_io_btb_update_bits_pc),
    .io_btb_update_bits_isValid(btb_io_btb_update_bits_isValid),
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
  assign _T_2 = io_cpu_req_valid | io_cpu_sfence_valid; // @[Frontend.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@206459.4]
  assign _T_3 = _T_2 | io_cpu_flush_icache; // @[Frontend.scala 90:52:freechips.rocketchip.system.DefaultRV32Config.fir@206460.4]
  assign _T_4 = _T_3 | io_cpu_bht_update_valid; // @[Frontend.scala 90:75:freechips.rocketchip.system.DefaultRV32Config.fir@206461.4]
  assign _T_5 = _T_4 | io_cpu_btb_update_valid; // @[Frontend.scala 90:102:freechips.rocketchip.system.DefaultRV32Config.fir@206462.4]
  assign _T_6 = ~_T_5; // @[Frontend.scala 90:10:freechips.rocketchip.system.DefaultRV32Config.fir@206463.4]
  assign _T_7 = _T_6 | io_cpu_might_request; // @[Frontend.scala 90:130:freechips.rocketchip.system.DefaultRV32Config.fir@206464.4]
  assign _T_9 = _T_7 | reset; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206466.4]
  assign _T_10 = ~_T_9; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206467.4]
  assign _T_12 = ~fq_io_mask[2]; // @[Frontend.scala 104:5:freechips.rocketchip.system.DefaultRV32Config.fir@206481.4]
  assign _T_14 = ~fq_io_mask[3]; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@206483.4]
  assign _T_15 = ~s1_valid; // @[Frontend.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@206484.4]
  assign _T_16 = ~s2_valid; // @[Frontend.scala 105:58:freechips.rocketchip.system.DefaultRV32Config.fir@206485.4]
  assign _T_17 = _T_15 | _T_16; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@206486.4]
  assign _T_18 = _T_14 & _T_17; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@206487.4]
  assign _T_19 = _T_12 | _T_18; // @[Frontend.scala 104:40:freechips.rocketchip.system.DefaultRV32Config.fir@206488.4]
  assign _T_21 = ~fq_io_mask[4]; // @[Frontend.scala 106:6:freechips.rocketchip.system.DefaultRV32Config.fir@206490.4]
  assign _T_24 = _T_15 & _T_16; // @[Frontend.scala 106:55:freechips.rocketchip.system.DefaultRV32Config.fir@206493.4]
  assign _T_25 = _T_21 & _T_24; // @[Frontend.scala 106:41:freechips.rocketchip.system.DefaultRV32Config.fir@206494.4]
  assign s0_fq_has_space = _T_19 | _T_25; // @[Frontend.scala 105:70:freechips.rocketchip.system.DefaultRV32Config.fir@206495.4]
  assign s0_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 107:35:freechips.rocketchip.system.DefaultRV32Config.fir@206496.4]
  assign s2_btb_taken = s2_btb_resp_valid & s2_btb_resp_bits_taken; // @[Frontend.scala 114:40:freechips.rocketchip.system.DefaultRV32Config.fir@206506.4]
  assign s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst; // @[Frontend.scala 116:37:freechips.rocketchip.system.DefaultRV32Config.fir@206508.4]
  assign _T_29 = ~s1_pc; // @[Frontend.scala 122:22:freechips.rocketchip.system.DefaultRV32Config.fir@206513.4]
  assign _T_30 = _T_29 | 32'h3; // @[Frontend.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@206514.4]
  assign s1_base_pc = ~_T_30; // @[Frontend.scala 122:20:freechips.rocketchip.system.DefaultRV32Config.fir@206515.4]
  assign ntpc = s1_base_pc + 32'h4; // @[Frontend.scala 123:25:freechips.rocketchip.system.DefaultRV32Config.fir@206517.4]
  assign _T_32 = fq_io_enq_ready & fq_io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@206526.4]
  assign _T_33 = ~_T_32; // @[Frontend.scala 128:29:freechips.rocketchip.system.DefaultRV32Config.fir@206527.4]
  assign _T_34 = s2_valid & _T_33; // @[Frontend.scala 128:26:freechips.rocketchip.system.DefaultRV32Config.fir@206528.4]
  assign _T_35 = ~s0_valid; // @[Frontend.scala 128:72:freechips.rocketchip.system.DefaultRV32Config.fir@206529.4]
  assign s2_replay = _T_34 | _T_37; // @[Frontend.scala 128:48:freechips.rocketchip.system.DefaultRV32Config.fir@206533.4]
  assign _T_36 = s2_replay & _T_35; // @[Frontend.scala 128:69:freechips.rocketchip.system.DefaultRV32Config.fir@206530.4]
  assign _T_334 = ~s2_btb_taken; // @[Frontend.scala 256:15:freechips.rocketchip.system.DefaultRV32Config.fir@206958.6]
  assign _T_99 = s2_partial_insn[1:0] != 2'h3; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206689.4]
  assign _T_100 = ~_T_99; // @[Frontend.scala 211:34:freechips.rocketchip.system.DefaultRV32Config.fir@206690.4]
  assign taken_prevRVI = s2_partial_insn_valid & _T_100; // @[Frontend.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@206691.4]
  assign taken_bits = fq_io_enq_bits_data; // @[Frontend.scala 213:37:freechips.rocketchip.system.DefaultRV32Config.fir@206695.4]
  assign taken_rviBits = {taken_bits,s2_partial_insn}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206698.4]
  assign taken_rviJALR = taken_rviBits[6:0] == 7'h67; // @[Frontend.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@206704.4]
  assign _T_108 = ~taken_rviBits[7]; // @[Frontend.scala 219:34:freechips.rocketchip.system.DefaultRV32Config.fir@206706.4]
  assign _T_109 = taken_rviJALR & _T_108; // @[Frontend.scala 219:31:freechips.rocketchip.system.DefaultRV32Config.fir@206707.4]
  assign _T_111 = taken_rviBits[19:15] & 5'h1b; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206709.4]
  assign _T_112 = 5'h1 == _T_111; // @[Frontend.scala 219:66:freechips.rocketchip.system.DefaultRV32Config.fir@206710.4]
  assign taken_rviReturn = _T_109 & _T_112; // @[Frontend.scala 219:46:freechips.rocketchip.system.DefaultRV32Config.fir@206711.4]
  assign _T_302 = taken_prevRVI & taken_rviReturn; // @[Frontend.scala 234:61:freechips.rocketchip.system.DefaultRV32Config.fir@206913.4]
  assign _T_101 = fq_io_enq_bits_mask; // @[Frontend.scala 212:38:freechips.rocketchip.system.DefaultRV32Config.fir@206692.4]
  assign _T_102 = ~taken_prevRVI; // @[Frontend.scala 212:47:freechips.rocketchip.system.DefaultRV32Config.fir@206693.4]
  assign taken_valid = _T_101 & _T_102; // @[Frontend.scala 212:44:freechips.rocketchip.system.DefaultRV32Config.fir@206694.4]
  assign _T_156 = taken_bits & 32'hf003; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206760.4]
  assign _T_157 = 32'h8002 == _T_156; // @[Frontend.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@206761.4]
  assign _T_159 = taken_bits[6:2] == 5'h0; // @[Frontend.scala 225:59:freechips.rocketchip.system.DefaultRV32Config.fir@206763.4]
  assign taken_rvcJR = _T_157 & _T_159; // @[Frontend.scala 225:46:freechips.rocketchip.system.DefaultRV32Config.fir@206764.4]
  assign _T_161 = taken_bits[11:7] & 5'h1b; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206766.4]
  assign _T_162 = 5'h1 == _T_161; // @[Frontend.scala 226:49:freechips.rocketchip.system.DefaultRV32Config.fir@206767.4]
  assign taken_rvcReturn = taken_rvcJR & _T_162; // @[Frontend.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@206768.4]
  assign _T_303 = taken_valid & taken_rvcReturn; // @[Frontend.scala 234:83:freechips.rocketchip.system.DefaultRV32Config.fir@206914.4]
  assign _T_304 = _T_302 | _T_303; // @[Frontend.scala 234:74:freechips.rocketchip.system.DefaultRV32Config.fir@206915.4]
  assign taken_predictReturn = btb_io_ras_head_valid & _T_304; // @[Frontend.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@206916.4]
  assign _T_343 = s2_valid & taken_predictReturn; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@206971.8]
  assign useRAS = _T_334 & _T_343; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@206959.6]
  assign taken_rviBranch = taken_rviBits[6:0] == 7'h63; // @[Frontend.scala 216:36:freechips.rocketchip.system.DefaultRV32Config.fir@206700.4]
  assign _T_307 = taken_prevRVI & taken_rviBranch; // @[Frontend.scala 236:53:freechips.rocketchip.system.DefaultRV32Config.fir@206920.4]
  assign _T_115 = taken_bits & 32'he003; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206715.4]
  assign _T_116 = 32'hc001 == _T_115; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@206716.4]
  assign _T_118 = 32'he001 == _T_115; // @[Frontend.scala 221:60:freechips.rocketchip.system.DefaultRV32Config.fir@206718.4]
  assign taken_rvcBranch = _T_116 | _T_118; // @[Frontend.scala 221:52:freechips.rocketchip.system.DefaultRV32Config.fir@206719.4]
  assign _T_308 = taken_valid & taken_rvcBranch; // @[Frontend.scala 236:75:freechips.rocketchip.system.DefaultRV32Config.fir@206921.4]
  assign _T_309 = _T_307 | _T_308; // @[Frontend.scala 236:66:freechips.rocketchip.system.DefaultRV32Config.fir@206922.4]
  assign taken_predictBranch = s2_btb_resp_bits_bht_value & _T_309; // @[Frontend.scala 236:41:freechips.rocketchip.system.DefaultRV32Config.fir@206923.4]
  assign taken_rviJump = taken_rviBits[6:0] == 7'h6f; // @[Frontend.scala 217:34:freechips.rocketchip.system.DefaultRV32Config.fir@206702.4]
  assign _T_305 = taken_prevRVI & taken_rviJump; // @[Frontend.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@206917.4]
  assign _T_122 = 32'ha001 == _T_115; // @[Frontend.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@206724.4]
  assign taken_rvcJAL = 32'h2001 == _T_115; // @[Frontend.scala 222:45:freechips.rocketchip.system.DefaultRV32Config.fir@206721.4]
  assign taken_rvcJump = _T_122 | taken_rvcJAL; // @[Frontend.scala 223:47:freechips.rocketchip.system.DefaultRV32Config.fir@206725.4]
  assign _T_306 = taken_valid & taken_rvcJump; // @[Frontend.scala 235:53:freechips.rocketchip.system.DefaultRV32Config.fir@206918.4]
  assign taken_predictJump = _T_305 | _T_306; // @[Frontend.scala 235:44:freechips.rocketchip.system.DefaultRV32Config.fir@206919.4]
  assign _T_344 = taken_predictBranch | taken_predictJump; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@206975.8]
  assign _T_345 = s2_valid & _T_344; // @[Frontend.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@206976.8]
  assign _T_84 = ~s2_pc; // @[Frontend.scala 203:24:freechips.rocketchip.system.DefaultRV32Config.fir@206653.4]
  assign _T_85 = _T_84 | 32'h3; // @[Frontend.scala 203:31:freechips.rocketchip.system.DefaultRV32Config.fir@206654.4]
  assign s2_base_pc = ~_T_85; // @[Frontend.scala 203:22:freechips.rocketchip.system.DefaultRV32Config.fir@206655.4]
  assign _T_346 = ~_T_85; // @[Frontend.scala 266:32:freechips.rocketchip.system.DefaultRV32Config.fir@206979.10]
  assign _T_170 = taken_rviBits[31]; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@206778.4]
  assign _T_225 = taken_rviBits[31]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206833.4]
  assign _T_224 = {11{_T_170}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206832.4]
  assign _T_222 = taken_rviBits[19:12]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206830.4]
  assign _T_221 = taken_rviBits[20]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206829.4]
  assign _T_229 = {_T_225,_T_224,_T_222,_T_221,taken_rviBits[30:25],taken_rviBits[24:21],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206837.4]
  assign _T_284 = {8{_T_170}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206892.4]
  assign _T_283 = taken_rviBits[7]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206891.4]
  assign _T_291 = {_T_225,_T_224,_T_284,_T_283,taken_rviBits[30:25],taken_rviBits[11:8],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@206899.4]
  assign taken_rviImm = taken_rviBits[3] ? $signed(_T_229) : $signed(_T_291); // @[Frontend.scala 229:23:freechips.rocketchip.system.DefaultRV32Config.fir@206900.4]
  assign _T_347 = $signed(taken_rviImm) - 32'sh2; // @[Frontend.scala 266:61:freechips.rocketchip.system.DefaultRV32Config.fir@206980.10]
  assign _T_126 = taken_bits[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206729.4]
  assign _T_136 = {_T_126,taken_bits[6:5],taken_bits[2],taken_bits[11:10],taken_bits[4:3],1'h0}; // @[Frontend.scala 224:66:freechips.rocketchip.system.DefaultRV32Config.fir@206739.4]
  assign _T_139 = taken_bits[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@206742.4]
  assign _T_155 = {_T_139,taken_bits[8],taken_bits[10:9],taken_bits[6],taken_bits[7],taken_bits[2],taken_bits[11],taken_bits[5:3],1'h0}; // @[Frontend.scala 224:106:freechips.rocketchip.system.DefaultRV32Config.fir@206758.4]
  assign taken_rvcImm = taken_bits[14] ? $signed({{8{_T_136[12]}},_T_136}) : $signed(_T_155); // @[Frontend.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@206759.4]
  assign _T_348 = taken_prevRVI ? $signed(_T_347) : $signed({{12{taken_rvcImm[20]}},taken_rvcImm}); // @[Frontend.scala 266:44:freechips.rocketchip.system.DefaultRV32Config.fir@206981.10]
  assign _GEN_91 = {{1{_T_346[31]}},_T_346}; // @[Frontend.scala 266:39:freechips.rocketchip.system.DefaultRV32Config.fir@206982.10]
  assign _T_351 = $signed(_GEN_91) + $signed(_T_348); // @[Frontend.scala 268:34:freechips.rocketchip.system.DefaultRV32Config.fir@206985.10]
  assign predicted_taken = btb_io_resp_valid & btb_io_resp_bits_taken; // @[Frontend.scala 194:29:freechips.rocketchip.system.DefaultRV32Config.fir@206642.4]
  assign _GEN_28 = predicted_taken ? btb_io_resp_bits_target : ntpc; // @[Frontend.scala 194:56:freechips.rocketchip.system.DefaultRV32Config.fir@206643.4]
  assign _GEN_43 = _T_345 ? _T_351 : {{1'd0}, _GEN_28}; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@206977.8]
  assign _GEN_46 = _T_334 ? _GEN_43 : {{1'd0}, _GEN_28}; // @[Frontend.scala 256:30:freechips.rocketchip.system.DefaultRV32Config.fir@206959.6]
  assign predicted_npc = useRAS ? {{1'd0}, btb_io_ras_head_bits} : _GEN_46; // @[Frontend.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@207023.4]
  assign npc = s2_replay ? {{1'd0}, s2_pc} : predicted_npc; // @[Frontend.scala 129:16:freechips.rocketchip.system.DefaultRV32Config.fir@206535.4]
  assign _T_41 = ~s2_replay; // @[Frontend.scala 141:9:freechips.rocketchip.system.DefaultRV32Config.fir@206544.4]
  assign _T_293 = taken_rviJump | taken_rviJALR; // @[Frontend.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@206903.4]
  assign _T_294 = taken_rviBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@206904.4]
  assign _T_295 = _T_293 | _T_294; // @[Frontend.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@206905.4]
  assign _T_296 = taken_prevRVI & _T_295; // @[Frontend.scala 232:17:freechips.rocketchip.system.DefaultRV32Config.fir@206906.4]
  assign _T_164 = 32'h9002 == _T_156; // @[Frontend.scala 227:26:freechips.rocketchip.system.DefaultRV32Config.fir@206770.4]
  assign taken_rvcJALR = _T_164 & _T_159; // @[Frontend.scala 227:49:freechips.rocketchip.system.DefaultRV32Config.fir@206773.4]
  assign _T_297 = taken_rvcJump | taken_rvcJALR; // @[Frontend.scala 233:27:freechips.rocketchip.system.DefaultRV32Config.fir@206907.4]
  assign _T_298 = _T_297 | taken_rvcJR; // @[Frontend.scala 233:38:freechips.rocketchip.system.DefaultRV32Config.fir@206908.4]
  assign _T_299 = taken_rvcBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 233:60:freechips.rocketchip.system.DefaultRV32Config.fir@206909.4]
  assign _T_300 = _T_298 | _T_299; // @[Frontend.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@206910.4]
  assign _T_301 = taken_valid & _T_300; // @[Frontend.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@206911.4]
  assign taken_taken = _T_296 | _T_301; // @[Frontend.scala 232:71:freechips.rocketchip.system.DefaultRV32Config.fir@206912.4]
  assign _GEN_80 = _T_32 | io_cpu_req_valid; // @[Frontend.scala 318:33:freechips.rocketchip.system.DefaultRV32Config.fir@207039.8]
  assign _GEN_84 = taken_taken ? _GEN_80 : io_cpu_req_valid; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  assign s2_redirect = _T_334 ? _GEN_84 : io_cpu_req_valid; // @[Frontend.scala 313:26:freechips.rocketchip.system.DefaultRV32Config.fir@207033.4]
  assign _T_42 = ~s2_redirect; // @[Frontend.scala 142:17:freechips.rocketchip.system.DefaultRV32Config.fir@206546.6]
  assign _GEN_0 = _T_41 & _T_42; // @[Frontend.scala 141:21:freechips.rocketchip.system.DefaultRV32Config.fir@206545.4]
  assign _T_46 = s2_redirect | tlb_io_resp_miss; // @[Frontend.scala 162:36:freechips.rocketchip.system.DefaultRV32Config.fir@206568.4]
  assign _T_49 = ~io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@206572.4]
  assign s2_can_speculatively_refill = s2_tlb_resp_cacheable & _T_49; // @[Frontend.scala 163:59:freechips.rocketchip.system.DefaultRV32Config.fir@206573.4]
  assign _T_50 = ~s2_can_speculatively_refill; // @[Frontend.scala 164:42:freechips.rocketchip.system.DefaultRV32Config.fir@206574.4]
  assign _T_51 = s2_speculative & _T_50; // @[Frontend.scala 164:39:freechips.rocketchip.system.DefaultRV32Config.fir@206575.4]
  assign _T_57 = _T_56 & s2_valid; // @[Frontend.scala 167:40:freechips.rocketchip.system.DefaultRV32Config.fir@206584.4]
  assign _T_58 = ~s2_tlb_resp_miss; // @[Frontend.scala 167:80:freechips.rocketchip.system.DefaultRV32Config.fir@206585.4]
  assign _T_59 = _T_58 & icache_io_s2_kill; // @[Frontend.scala 167:98:freechips.rocketchip.system.DefaultRV32Config.fir@206586.4]
  assign _T_60 = icache_io_resp_valid | _T_59; // @[Frontend.scala 167:77:freechips.rocketchip.system.DefaultRV32Config.fir@206587.4]
  assign _T_62 = io_cpu_req_valid ? {{1'd0}, io_cpu_req_bits_pc} : npc; // @[Frontend.scala 169:28:freechips.rocketchip.system.DefaultRV32Config.fir@206591.4]
  assign _T_63 = ~_T_62; // @[Frontend.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@206592.4]
  assign _T_64 = _T_63 | 33'h3; // @[Frontend.scala 343:33:freechips.rocketchip.system.DefaultRV32Config.fir@206593.4]
  assign _T_65 = ~_T_64; // @[Frontend.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@206594.4]
  assign _T_67 = ~icache_io_resp_valid; // @[Frontend.scala 173:79:freechips.rocketchip.system.DefaultRV32Config.fir@206599.4]
  assign _T_68 = icache_io_s2_kill & _T_67; // @[Frontend.scala 173:76:freechips.rocketchip.system.DefaultRV32Config.fir@206600.4]
  assign _T_69 = ~s2_xcpt; // @[Frontend.scala 173:104:freechips.rocketchip.system.DefaultRV32Config.fir@206601.4]
  assign _T_70 = _T_68 & _T_69; // @[Frontend.scala 173:101:freechips.rocketchip.system.DefaultRV32Config.fir@206602.4]
  assign _T_71 = icache_io_resp_bits_replay | _T_70; // @[Frontend.scala 173:55:freechips.rocketchip.system.DefaultRV32Config.fir@206603.4]
  assign _T_73 = s2_speculative & io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 177:27:freechips.rocketchip.system.DefaultRV32Config.fir@206609.4]
  assign _T_74 = ~icache_io_s2_kill; // @[Frontend.scala 177:113:freechips.rocketchip.system.DefaultRV32Config.fir@206610.4]
  assign _T_75 = _T_73 & _T_74; // @[Frontend.scala 177:110:freechips.rocketchip.system.DefaultRV32Config.fir@206611.4]
  assign _T_76 = ~_T_75; // @[Frontend.scala 177:10:freechips.rocketchip.system.DefaultRV32Config.fir@206612.4]
  assign _T_78 = _T_76 | reset; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206614.4]
  assign _T_79 = ~_T_78; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206615.4]
  assign _T_80 = icache_io_resp_valid & icache_io_resp_bits_ae; // @[Frontend.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@206620.4]
  assign _T_86 = ~io_cpu_btb_update_valid; // @[Frontend.scala 294:11:freechips.rocketchip.system.DefaultRV32Config.fir@206666.4]
  assign fetch_bubble_likely = ~fq_io_mask[1]; // @[Frontend.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@206669.6]
  assign _T_89 = ~wrong_path; // @[Frontend.scala 296:54:freechips.rocketchip.system.DefaultRV32Config.fir@206671.6]
  assign _T_90 = _T_32 & _T_89; // @[Frontend.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@206672.6]
  assign _T_91 = _T_90 & fetch_bubble_likely; // @[Frontend.scala 296:66:freechips.rocketchip.system.DefaultRV32Config.fir@206673.6]
  assign _T_358 = ~s2_btb_resp_valid; // @[Frontend.scala 275:15:freechips.rocketchip.system.DefaultRV32Config.fir@206999.6]
  assign _T_360 = taken_predictBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 275:52:freechips.rocketchip.system.DefaultRV32Config.fir@207001.6]
  assign _T_361 = _T_360 | taken_predictJump; // @[Frontend.scala 275:91:freechips.rocketchip.system.DefaultRV32Config.fir@207002.6]
  assign _T_362 = _T_361 | taken_predictReturn; // @[Frontend.scala 275:106:freechips.rocketchip.system.DefaultRV32Config.fir@207003.6]
  assign updateBTB = _T_358 & _T_362; // @[Frontend.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@207004.6]
  assign _T_92 = _T_91 & updateBTB; // @[Frontend.scala 296:89:freechips.rocketchip.system.DefaultRV32Config.fir@206674.6]
  assign taken_rvc = taken_bits[1:0] != 2'h3; // @[Frontend.scala 210:45:freechips.rocketchip.system.DefaultRV32Config.fir@206697.4]
  assign _T_113 = taken_rviJALR | taken_rviJump; // @[Frontend.scala 220:30:freechips.rocketchip.system.DefaultRV32Config.fir@206712.4]
  assign taken_rviCall = _T_113 & taken_rviBits[7]; // @[Frontend.scala 220:42:freechips.rocketchip.system.DefaultRV32Config.fir@206714.4]
  assign taken_rvcCall = taken_rvcJAL | taken_rvcJALR; // @[Frontend.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@206774.4]
  assign _T_310 = s2_valid & s2_btb_resp_valid; // @[Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@206924.4]
  assign _T_313 = _T_310 & taken_valid; // @[Frontend.scala 238:77:freechips.rocketchip.system.DefaultRV32Config.fir@206927.4]
  assign _T_314 = ~taken_rvc; // @[Frontend.scala 238:89:freechips.rocketchip.system.DefaultRV32Config.fir@206928.4]
  assign _T_315 = _T_313 & _T_314; // @[Frontend.scala 238:86:freechips.rocketchip.system.DefaultRV32Config.fir@206929.4]
  assign _GEN_40 = _T_315 | wrong_path; // @[Frontend.scala 238:95:freechips.rocketchip.system.DefaultRV32Config.fir@206930.4]
  assign _T_320 = taken_rviCall | taken_rviReturn; // @[Frontend.scala 250:92:freechips.rocketchip.system.DefaultRV32Config.fir@206942.6]
  assign _T_321 = taken_prevRVI & _T_320; // @[Frontend.scala 250:80:freechips.rocketchip.system.DefaultRV32Config.fir@206943.6]
  assign _T_322 = taken_rvcCall | taken_rvcReturn; // @[Frontend.scala 250:127:freechips.rocketchip.system.DefaultRV32Config.fir@206944.6]
  assign _T_323 = taken_valid & _T_322; // @[Frontend.scala 250:115:freechips.rocketchip.system.DefaultRV32Config.fir@206945.6]
  assign _T_324 = _T_321 | _T_323; // @[Frontend.scala 250:106:freechips.rocketchip.system.DefaultRV32Config.fir@206946.6]
  assign _T_326 = taken_prevRVI ? taken_rviReturn : taken_rvcReturn; // @[Frontend.scala 251:50:freechips.rocketchip.system.DefaultRV32Config.fir@206949.6]
  assign _T_327 = taken_prevRVI ? taken_rviCall : taken_rvcCall; // @[Frontend.scala 252:50:freechips.rocketchip.system.DefaultRV32Config.fir@206950.6]
  assign _T_328 = taken_prevRVI ? taken_rviBranch : taken_rvcBranch; // @[Frontend.scala 253:50:freechips.rocketchip.system.DefaultRV32Config.fir@206951.6]
  assign _T_331 = _T_328 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46:freechips.rocketchip.system.DefaultRV32Config.fir@206954.6]
  assign _T_332 = _T_327 ? 2'h2 : {{1'd0}, _T_331}; // @[Frontend.scala 252:46:freechips.rocketchip.system.DefaultRV32Config.fir@206955.6]
  assign _T_336 = _T_32 & taken_taken; // @[Frontend.scala 257:34:freechips.rocketchip.system.DefaultRV32Config.fir@206961.8]
  assign _T_337 = ~taken_predictBranch; // @[Frontend.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@206962.8]
  assign _T_338 = _T_336 & _T_337; // @[Frontend.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@206963.8]
  assign _T_339 = ~taken_predictJump; // @[Frontend.scala 257:64:freechips.rocketchip.system.DefaultRV32Config.fir@206964.8]
  assign _T_340 = _T_338 & _T_339; // @[Frontend.scala 257:61:freechips.rocketchip.system.DefaultRV32Config.fir@206965.8]
  assign _T_341 = ~taken_predictReturn; // @[Frontend.scala 257:80:freechips.rocketchip.system.DefaultRV32Config.fir@206966.8]
  assign _T_342 = _T_340 & _T_341; // @[Frontend.scala 257:77:freechips.rocketchip.system.DefaultRV32Config.fir@206967.8]
  assign _GEN_41 = _T_342 | _GEN_40; // @[Frontend.scala 257:96:freechips.rocketchip.system.DefaultRV32Config.fir@206968.8]
  assign _T_368 = taken_valid & _T_314; // @[Frontend.scala 283:37:freechips.rocketchip.system.DefaultRV32Config.fir@207015.6]
  assign _T_369 = taken_bits | 32'h3; // @[Frontend.scala 285:37:freechips.rocketchip.system.DefaultRV32Config.fir@207018.8]
  assign _T_371 = s2_btb_taken | taken_taken; // @[Frontend.scala 310:45:freechips.rocketchip.system.DefaultRV32Config.fir@207027.4]
  assign _T_372 = _T_32 & _T_371; // @[Frontend.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@207028.4]
  assign _GEN_83 = taken_taken ? 5'h1c : s2_btb_resp_bits_entry; // @[Frontend.scala 314:20:freechips.rocketchip.system.DefaultRV32Config.fir@207034.6]
  assign _T_375 = ~s2_partial_insn_valid; // @[Frontend.scala 322:12:freechips.rocketchip.system.DefaultRV32Config.fir@207044.4]
  assign _T_377 = _T_375 | _T_101; // @[Frontend.scala 322:35:freechips.rocketchip.system.DefaultRV32Config.fir@207046.4]
  assign _T_379 = _T_377 | reset; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207048.4]
  assign _T_380 = ~_T_379; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207049.4]
  assign auto_icache_master_out_a_valid = icache_auto_master_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign auto_icache_master_out_a_bits_address = icache_auto_master_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign io_cpu_resp_valid = fq_io_deq_valid; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_btb_entry = fq_io_deq_bits_btb_entry; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_btb_bht_history = fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign io_cpu_npc = _T_65[31:0]; // @[Frontend.scala 169:14:freechips.rocketchip.system.DefaultRV32Config.fir@206595.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign io_ptw_req_bits_valid = tlb_io_ptw_req_bits_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign icache_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206447.4 Frontend.scala 95:16:freechips.rocketchip.system.DefaultRV32Config.fir@206472.4]
  assign icache_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206448.4]
  assign icache_auto_master_out_a_ready = auto_icache_master_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_auto_master_out_d_valid = auto_icache_master_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_auto_master_out_d_bits_opcode = auto_icache_master_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_auto_master_out_d_bits_size = auto_icache_master_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_auto_master_out_d_bits_data = auto_icache_master_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_auto_master_out_d_bits_corrupt = auto_icache_master_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign icache_io_req_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@206563.4]
  assign icache_io_req_bits_addr = io_cpu_npc; // @[Frontend.scala 158:27:freechips.rocketchip.system.DefaultRV32Config.fir@206564.4]
  assign icache_io_s1_paddr = tlb_io_resp_paddr; // @[Frontend.scala 160:22:freechips.rocketchip.system.DefaultRV32Config.fir@206566.4]
  assign icache_io_s1_kill = _T_46 | s2_replay; // @[Frontend.scala 162:21:freechips.rocketchip.system.DefaultRV32Config.fir@206570.4]
  assign icache_io_s2_kill = _T_51 | s2_xcpt; // @[Frontend.scala 164:21:freechips.rocketchip.system.DefaultRV32Config.fir@206577.4]
  assign icache_io_invalidate = io_cpu_flush_icache; // @[Frontend.scala 159:24:freechips.rocketchip.system.DefaultRV32Config.fir@206565.4]
  assign fq_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206454.4]
  assign fq_reset = reset | io_cpu_req_valid; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206455.4]
  assign fq_io_enq_valid = _T_57 & _T_60; // @[Frontend.scala 167:19:freechips.rocketchip.system.DefaultRV32Config.fir@206589.4]
  assign fq_io_enq_bits_btb_entry = _T_334 ? _GEN_83 : s2_btb_resp_bits_entry; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206605.4 Frontend.scala 317:34:freechips.rocketchip.system.DefaultRV32Config.fir@207037.8]
  assign fq_io_enq_bits_btb_bht_history = s2_btb_resp_bits_bht_history; // @[Frontend.scala 174:22:freechips.rocketchip.system.DefaultRV32Config.fir@206605.4]
  assign fq_io_enq_bits_pc = s2_pc; // @[Frontend.scala 168:21:freechips.rocketchip.system.DefaultRV32Config.fir@206590.4]
  assign fq_io_enq_bits_data = icache_io_resp_bits_data; // @[Frontend.scala 171:23:freechips.rocketchip.system.DefaultRV32Config.fir@206596.4]
  assign fq_io_enq_bits_mask = 1'h1; // @[Frontend.scala 172:23:freechips.rocketchip.system.DefaultRV32Config.fir@206598.4]
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst; // @[Frontend.scala 176:23:freechips.rocketchip.system.DefaultRV32Config.fir@206607.4]
  assign fq_io_enq_bits_xcpt_ae_inst = _T_80 | s2_tlb_resp_ae_inst; // @[Frontend.scala 176:23:freechips.rocketchip.system.DefaultRV32Config.fir@206607.4 Frontend.scala 178:87:freechips.rocketchip.system.DefaultRV32Config.fir@206622.6]
  assign fq_io_enq_bits_replay = _T_315 | _T_71; // @[Frontend.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@206604.4 Frontend.scala 242:31:freechips.rocketchip.system.DefaultRV32Config.fir@206932.6]
  assign fq_io_deq_ready = io_cpu_resp_ready; // @[Frontend.scala 327:15:freechips.rocketchip.system.DefaultRV32Config.fir@207060.4]
  assign tlb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign tlb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206477.4]
  assign tlb_io_req_valid = s1_valid & _T_41; // @[Frontend.scala 149:20:freechips.rocketchip.system.DefaultRV32Config.fir@206555.4]
  assign tlb_io_req_bits_vaddr = s1_pc; // @[Frontend.scala 150:25:freechips.rocketchip.system.DefaultRV32Config.fir@206556.4]
  assign tlb_io_sfence_valid = io_cpu_sfence_valid; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206559.4]
  assign tlb_io_sfence_bits_rs1 = io_cpu_sfence_bits_rs1; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206559.4]
  assign tlb_io_sfence_bits_rs2 = io_cpu_sfence_bits_rs2; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206559.4]
  assign tlb_io_sfence_bits_addr = io_cpu_sfence_bits_addr; // @[Frontend.scala 153:17:freechips.rocketchip.system.DefaultRV32Config.fir@206559.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_status_prv = io_ptw_status_prv; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[Frontend.scala 148:10:freechips.rocketchip.system.DefaultRV32Config.fir@206552.4]
  assign tlb_io_kill = ~s2_valid; // @[Frontend.scala 154:15:freechips.rocketchip.system.DefaultRV32Config.fir@206561.4]
  assign btb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206626.4]
  assign btb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@206627.4]
  assign btb_io_req_bits_addr = s1_pc; // @[Frontend.scala 184:26:freechips.rocketchip.system.DefaultRV32Config.fir@206630.4]
  assign btb_io_btb_update_valid = _T_86 ? _T_92 : io_cpu_btb_update_valid; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206631.4 Frontend.scala 296:31:freechips.rocketchip.system.DefaultRV32Config.fir@206675.6]
  assign btb_io_btb_update_bits_prediction_entry = _T_86 ? 5'h1c : io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206631.4 Frontend.scala 297:47:freechips.rocketchip.system.DefaultRV32Config.fir@206676.6]
  assign btb_io_btb_update_bits_pc = _T_86 ? s2_base_pc : io_cpu_btb_update_bits_pc; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206631.4 Frontend.scala 301:33:freechips.rocketchip.system.DefaultRV32Config.fir@206682.6]
  assign btb_io_btb_update_bits_isValid = _T_86 | io_cpu_btb_update_bits_isValid; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206631.4 Frontend.scala 298:38:freechips.rocketchip.system.DefaultRV32Config.fir@206677.6]
  assign btb_io_btb_update_bits_cfiType = _T_86 ? btb_io_ras_update_bits_cfiType : io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 185:23:freechips.rocketchip.system.DefaultRV32Config.fir@206631.4 Frontend.scala 299:38:freechips.rocketchip.system.DefaultRV32Config.fir@206678.6]
  assign btb_io_bht_update_valid = io_cpu_bht_update_valid; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4 Frontend.scala 201:50:freechips.rocketchip.system.DefaultRV32Config.fir@206651.6]
  assign btb_io_bht_update_bits_prediction_history = io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4]
  assign btb_io_bht_update_bits_pc = io_cpu_bht_update_bits_pc; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4]
  assign btb_io_bht_update_bits_branch = io_cpu_bht_update_bits_branch; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4]
  assign btb_io_bht_update_bits_taken = io_cpu_bht_update_bits_taken; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4]
  assign btb_io_bht_update_bits_mispredict = io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 186:23:freechips.rocketchip.system.DefaultRV32Config.fir@206632.4]
  assign btb_io_bht_advance_valid = _T_309 & _T_90; // @[Frontend.scala 188:30:freechips.rocketchip.system.DefaultRV32Config.fir@206634.4 Frontend.scala 272:36:freechips.rocketchip.system.DefaultRV32Config.fir@206996.8]
  assign btb_io_bht_advance_bits_bht_value = s2_btb_resp_bits_bht_value; // @[Frontend.scala 273:35:freechips.rocketchip.system.DefaultRV32Config.fir@206997.8]
  assign btb_io_ras_update_valid = _T_90 & _T_324; // @[Frontend.scala 187:29:freechips.rocketchip.system.DefaultRV32Config.fir@206633.4 Frontend.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@206948.6]
  assign btb_io_ras_update_bits_cfiType = _T_326 ? 2'h3 : _T_332; // @[Frontend.scala 251:40:freechips.rocketchip.system.DefaultRV32Config.fir@206957.6]
  assign btb_io_ras_update_bits_returnAddr = s2_base_pc + 32'h4; // @[Frontend.scala 304:39:freechips.rocketchip.system.DefaultRV32Config.fir@206687.4]
  assign btb_io_flush = _T_313 & _T_314; // @[Frontend.scala 182:18:freechips.rocketchip.system.DefaultRV32Config.fir@206628.4 Frontend.scala 200:54:freechips.rocketchip.system.DefaultRV32Config.fir@206648.6 Frontend.scala 241:22:freechips.rocketchip.system.DefaultRV32Config.fir@206931.6]
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
  s2_btb_resp_bits_entry = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_history = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_value = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s2_tlb_resp_miss = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tlb_resp_pf_inst = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_tlb_resp_ae_inst = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_speculative = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_partial_insn_valid = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s2_partial_insn = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  wrong_path = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  _T_37 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  _T_56 = _RAND_19[0:0];
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
      s1_speculative <= 1'h1;
    end
    if (reset) begin
      s2_pc <= 32'h10040;
    end else if (_T_41) begin
      s2_pc <= s1_pc;
    end
    if (_T_41) begin
      s2_btb_resp_valid <= btb_io_resp_valid;
    end
    if (_T_41) begin
      s2_btb_resp_bits_taken <= btb_io_resp_bits_taken;
    end
    if (_T_41) begin
      s2_btb_resp_bits_entry <= btb_io_resp_bits_entry;
    end
    if (_T_41) begin
      s2_btb_resp_bits_bht_history <= btb_io_resp_bits_bht_history;
    end
    if (_T_41) begin
      s2_btb_resp_bits_bht_value <= btb_io_resp_bits_bht_value;
    end
    if (_T_41) begin
      s2_tlb_resp_miss <= tlb_io_resp_miss;
    end
    if (_T_41) begin
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst;
    end
    if (_T_41) begin
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst;
    end
    if (_T_41) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (reset) begin
      s2_speculative <= 1'h0;
    end else if (_T_41) begin
      s2_speculative <= s1_speculative;
    end
    if (reset) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (s2_redirect) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_372) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_32) begin
      s2_partial_insn_valid <= _T_368;
    end
    if (_T_32) begin
      if (_T_368) begin
        s2_partial_insn <= _T_369;
      end
    end
    if (io_cpu_req_valid) begin
      wrong_path <= 1'h0;
    end else if (_T_334) begin
      wrong_path <= _GEN_41;
    end else begin
      wrong_path <= _GEN_40;
    end
    _T_37 <= reset | _T_36;
    _T_56 <= s1_valid;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:90 assert(!(io.cpu.req.valid || io.cpu.sfence.valid || io.cpu.flush_icache || io.cpu.bht_update.valid || io.cpu.btb_update.valid) || io.cpu.might_request)\n"); // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206469.6]
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
          $fatal; // @[Frontend.scala 90:9:freechips.rocketchip.system.DefaultRV32Config.fir@206470.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_79) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:177 assert(!(s2_speculative && io.ptw.customCSRs.asInstanceOf[RocketCustomCSRs].disableSpeculativeICacheRefill && !icache.io.s2_kill))\n"); // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206617.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_79) begin
          $fatal; // @[Frontend.scala 177:9:freechips.rocketchip.system.DefaultRV32Config.fir@206618.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_380) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:322 assert(!s2_partial_insn_valid || fq.io.enq.bits.mask(0))\n"); // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207051.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_380) begin
          $fatal; // @[Frontend.scala 322:11:freechips.rocketchip.system.DefaultRV32Config.fir@207052.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
