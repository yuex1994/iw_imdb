module Rocket( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223536.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223537.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223538.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_interrupts_seip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_might_request, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_imem_req_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_req_bits_speculative, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_sfence_bits_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_imem_sfence_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [4:0]  io_imem_resp_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [7:0]  io_imem_resp_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_imem_resp_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_imem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_imem_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [4:0]  io_imem_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_imem_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_imem_btb_update_bits_br_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_imem_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [7:0]  io_imem_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_imem_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_imem_flush_icache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_dmem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_dmem_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [6:0]  io_dmem_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_dmem_req_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_dmem_req_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_dmem_req_bits_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_dmem_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_dmem_s1_data_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [6:0]  io_dmem_resp_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_dmem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_resp_bits_has_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_dmem_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_replay_next, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_ordered, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_perf_release, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_dmem_perf_grant, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [21:0] io_ptw_ptbr_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_ptw_customCSRs_csrs_0_value, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_fpu_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_fpu_fromint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [2:0]  io_fpu_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [4:0]  io_fpu_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_fpu_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [31:0] io_fpu_toint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_fpu_dmem_resp_val, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [4:0]  io_fpu_dmem_resp_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output [31:0] io_fpu_dmem_resp_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_fpu_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_fcsr_rdy, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_nack_mem, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_illegal_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_fpu_killx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  output        io_fpu_killm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_dec_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_dec_ren1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_dec_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_dec_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_sboard_set, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input         io_fpu_sboard_clr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
  input  [4:0]  io_fpu_sboard_clra // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223539.4]
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
`endif // RANDOMIZE_REG_INIT
  wire  ibuf_clock; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_reset; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_imem_bits_btb_entry; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [7:0] ibuf_io_imem_bits_btb_bht_history; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [31:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_kill; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [31:0] ibuf_io_pc; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_btb_resp_entry; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [7:0] ibuf_io_btb_resp_bht_history; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
  reg [31:0] _T_590 [0:30]; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [31:0] _T_590__T_595_data; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [4:0] _T_590__T_595_addr; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [31:0] _T_590__T_601_data; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [4:0] _T_590__T_601_addr; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [31:0] _T_590__T_1284_data; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire [4:0] _T_590__T_1284_addr; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire  _T_590__T_1284_mask; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire  _T_590__T_1284_en; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  wire  csr_clock; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_reset; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_ungated_clock; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupts_seip; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_rw_rdata; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_rw_wdata; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_fp_illegal; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_fp_csr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_decode_0_system_illegal; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_csr_stall; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_eret; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_singleStep; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_debug; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_cease; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_wfi; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_sd; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [7:0] csr_io_status_zero1; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_tsr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_tw; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_tvm; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_mxr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_sum; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_mprv; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_status_vs; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_spp; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_mpie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_hpie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_spie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_upie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_mie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_hie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_sie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_status_uie; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_ptbr_mode; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [21:0] csr_io_ptbr_ppn; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_evec; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_exception; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_retire; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_cause; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pc; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_tval; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_time; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [2:0] csr_io_fcsr_rm; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_fcsr_flags_valid; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [4:0] csr_io_fcsr_flags_bits; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_interrupt; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_interrupt_cause; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_m; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_s; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_u; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_bp_0_address; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_0_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_0_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_0_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_0_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_0_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_0_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_0_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_1_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_1_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_1_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_1_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_1_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_1_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_1_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_2_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_2_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_2_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_2_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_2_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_2_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_2_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_3_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_3_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_3_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_3_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_3_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_3_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_3_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_4_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_4_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_4_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_4_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_4_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_4_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_4_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_5_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_5_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_5_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_5_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_5_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_5_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_5_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_6_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_6_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_6_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_6_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_6_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_6_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_6_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_7_cfg_l; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [1:0] csr_io_pmp_7_cfg_a; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_7_cfg_x; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_7_cfg_w; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_pmp_7_cfg_r; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [29:0] csr_io_pmp_7_addr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_pmp_7_mask; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire [31:0] csr_io_customCSRs_0_value; // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
  wire  bpu_io_status_debug; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [1:0] bpu_io_status_prv; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_m; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_s; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_u; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [31:0] bpu_io_bp_0_address; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [31:0] bpu_io_pc; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [31:0] bpu_io_ea; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_debug_if; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire  bpu_io_debug_st; // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
  wire [3:0] alu_io_fn; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire [31:0] alu_io_in2; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire [31:0] alu_io_in1; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire [31:0] alu_io_out; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire [31:0] alu_io_adder_out; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire  alu_io_cmp_out; // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
  wire  div_clock; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_reset; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_io_req_ready; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_io_req_valid; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [31:0] div_io_req_bits_in1; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [31:0] div_io_req_bits_in2; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_io_kill; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_io_resp_ready; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire  div_io_resp_valid; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [31:0] div_io_resp_bits_data; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
  reg  id_reg_pause; // @[RocketCore.scala 110:25:freechips.rocketchip.system.DefaultRV32Config.fir@223546.4]
  reg  imem_might_request_reg; // @[RocketCore.scala 111:35:freechips.rocketchip.system.DefaultRV32Config.fir@223547.4]
  reg  ex_ctrl_fp; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_branch; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_jal; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_jalr; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_rxs1; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_mem; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_rfs1; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_rfs2; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_wfd; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_div; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_wxd; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@223557.4]
  reg  mem_ctrl_fp; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_branch; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_jal; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_jalr; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_rxs2; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_rxs1; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_mem; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_rfs1; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_rfs2; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_wfd; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_div; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_wxd; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@223558.4]
  reg  wb_ctrl_rxs2; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_rxs1; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_mem; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_rfs1; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_rfs2; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_wfd; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_div; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_wxd; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 186:20:freechips.rocketchip.system.DefaultRV32Config.fir@223559.4]
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 188:35:freechips.rocketchip.system.DefaultRV32Config.fir@223560.4]
  reg  ex_reg_valid; // @[RocketCore.scala 189:35:freechips.rocketchip.system.DefaultRV32Config.fir@223561.4]
  reg  ex_reg_rvc; // @[RocketCore.scala 190:35:freechips.rocketchip.system.DefaultRV32Config.fir@223562.4]
  reg [4:0] ex_reg_btb_resp_entry; // @[RocketCore.scala 191:35:freechips.rocketchip.system.DefaultRV32Config.fir@223563.4]
  reg [7:0] ex_reg_btb_resp_bht_history; // @[RocketCore.scala 191:35:freechips.rocketchip.system.DefaultRV32Config.fir@223563.4]
  reg  ex_reg_xcpt; // @[RocketCore.scala 192:35:freechips.rocketchip.system.DefaultRV32Config.fir@223564.4]
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 193:35:freechips.rocketchip.system.DefaultRV32Config.fir@223565.4]
  reg  ex_reg_load_use; // @[RocketCore.scala 194:35:freechips.rocketchip.system.DefaultRV32Config.fir@223566.4]
  reg [31:0] ex_reg_cause; // @[RocketCore.scala 195:35:freechips.rocketchip.system.DefaultRV32Config.fir@223567.4]
  reg  ex_reg_replay; // @[RocketCore.scala 196:26:freechips.rocketchip.system.DefaultRV32Config.fir@223568.4]
  reg [31:0] ex_reg_pc; // @[RocketCore.scala 197:22:freechips.rocketchip.system.DefaultRV32Config.fir@223569.4]
  reg [1:0] ex_reg_mem_size; // @[RocketCore.scala 198:28:freechips.rocketchip.system.DefaultRV32Config.fir@223570.4]
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 199:24:freechips.rocketchip.system.DefaultRV32Config.fir@223571.4]
  reg [31:0] ex_reg_raw_inst; // @[RocketCore.scala 200:28:freechips.rocketchip.system.DefaultRV32Config.fir@223572.4]
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 205:36:freechips.rocketchip.system.DefaultRV32Config.fir@223576.4]
  reg  mem_reg_valid; // @[RocketCore.scala 206:36:freechips.rocketchip.system.DefaultRV32Config.fir@223577.4]
  reg  mem_reg_rvc; // @[RocketCore.scala 207:36:freechips.rocketchip.system.DefaultRV32Config.fir@223578.4]
  reg [4:0] mem_reg_btb_resp_entry; // @[RocketCore.scala 208:36:freechips.rocketchip.system.DefaultRV32Config.fir@223579.4]
  reg [7:0] mem_reg_btb_resp_bht_history; // @[RocketCore.scala 208:36:freechips.rocketchip.system.DefaultRV32Config.fir@223579.4]
  reg  mem_reg_xcpt; // @[RocketCore.scala 209:36:freechips.rocketchip.system.DefaultRV32Config.fir@223580.4]
  reg  mem_reg_replay; // @[RocketCore.scala 210:36:freechips.rocketchip.system.DefaultRV32Config.fir@223581.4]
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 211:36:freechips.rocketchip.system.DefaultRV32Config.fir@223582.4]
  reg [31:0] mem_reg_cause; // @[RocketCore.scala 212:36:freechips.rocketchip.system.DefaultRV32Config.fir@223583.4]
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 213:36:freechips.rocketchip.system.DefaultRV32Config.fir@223584.4]
  reg  mem_reg_load; // @[RocketCore.scala 214:36:freechips.rocketchip.system.DefaultRV32Config.fir@223585.4]
  reg  mem_reg_store; // @[RocketCore.scala 215:36:freechips.rocketchip.system.DefaultRV32Config.fir@223586.4]
  reg  mem_reg_sfence; // @[RocketCore.scala 216:27:freechips.rocketchip.system.DefaultRV32Config.fir@223587.4]
  reg [31:0] mem_reg_pc; // @[RocketCore.scala 217:23:freechips.rocketchip.system.DefaultRV32Config.fir@223588.4]
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 218:25:freechips.rocketchip.system.DefaultRV32Config.fir@223589.4]
  reg [1:0] mem_reg_mem_size; // @[RocketCore.scala 219:29:freechips.rocketchip.system.DefaultRV32Config.fir@223590.4]
  reg [31:0] mem_reg_raw_inst; // @[RocketCore.scala 220:29:freechips.rocketchip.system.DefaultRV32Config.fir@223591.4]
  reg [31:0] mem_reg_wdata; // @[RocketCore.scala 223:26:freechips.rocketchip.system.DefaultRV32Config.fir@223594.4]
  reg [31:0] mem_reg_rs2; // @[RocketCore.scala 224:24:freechips.rocketchip.system.DefaultRV32Config.fir@223595.4]
  reg  mem_br_taken; // @[RocketCore.scala 225:25:freechips.rocketchip.system.DefaultRV32Config.fir@223596.4]
  reg  wb_reg_valid; // @[RocketCore.scala 229:35:freechips.rocketchip.system.DefaultRV32Config.fir@223600.4]
  reg  wb_reg_xcpt; // @[RocketCore.scala 230:35:freechips.rocketchip.system.DefaultRV32Config.fir@223601.4]
  reg  wb_reg_replay; // @[RocketCore.scala 231:35:freechips.rocketchip.system.DefaultRV32Config.fir@223602.4]
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 232:35:freechips.rocketchip.system.DefaultRV32Config.fir@223603.4]
  reg [31:0] wb_reg_cause; // @[RocketCore.scala 233:35:freechips.rocketchip.system.DefaultRV32Config.fir@223604.4]
  reg  wb_reg_sfence; // @[RocketCore.scala 234:26:freechips.rocketchip.system.DefaultRV32Config.fir@223605.4]
  reg [31:0] wb_reg_pc; // @[RocketCore.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@223606.4]
  reg [1:0] wb_reg_mem_size; // @[RocketCore.scala 236:28:freechips.rocketchip.system.DefaultRV32Config.fir@223607.4]
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 237:24:freechips.rocketchip.system.DefaultRV32Config.fir@223608.4]
  reg [31:0] wb_reg_raw_inst; // @[RocketCore.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@223609.4]
  reg [31:0] wb_reg_wdata; // @[RocketCore.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@223610.4]
  wire  replay_wb_common; // @[RocketCore.scala 629:42:freechips.rocketchip.system.DefaultRV32Config.fir@225159.4]
  wire  _T_1225; // @[RocketCore.scala 607:19:freechips.rocketchip.system.DefaultRV32Config.fir@225118.4]
  wire  _T_1226; // @[RocketCore.scala 607:34:freechips.rocketchip.system.DefaultRV32Config.fir@225119.4]
  wire  _T_1237; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225130.4]
  wire  _T_1228; // @[RocketCore.scala 608:34:freechips.rocketchip.system.DefaultRV32Config.fir@225121.4]
  wire  _T_1238; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225131.4]
  wire  _T_1230; // @[RocketCore.scala 609:34:freechips.rocketchip.system.DefaultRV32Config.fir@225123.4]
  wire  _T_1239; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225132.4]
  wire  _T_1232; // @[RocketCore.scala 610:34:freechips.rocketchip.system.DefaultRV32Config.fir@225125.4]
  wire  _T_1240; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225133.4]
  wire  _T_1234; // @[RocketCore.scala 611:34:freechips.rocketchip.system.DefaultRV32Config.fir@225127.4]
  wire  _T_1241; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225134.4]
  wire  _T_1236; // @[RocketCore.scala 612:34:freechips.rocketchip.system.DefaultRV32Config.fir@225129.4]
  wire  wb_xcpt; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225135.4]
  wire  _T_1263; // @[RocketCore.scala 632:27:freechips.rocketchip.system.DefaultRV32Config.fir@225164.4]
  wire  _T_1264; // @[RocketCore.scala 632:38:freechips.rocketchip.system.DefaultRV32Config.fir@225165.4]
  wire  take_pc_wb; // @[RocketCore.scala 632:53:freechips.rocketchip.system.DefaultRV32Config.fir@225166.4]
  wire  _T_924; // @[RocketCore.scala 482:34:freechips.rocketchip.system.DefaultRV32Config.fir@224731.4]
  wire  ex_pc_valid; // @[RocketCore.scala 482:51:freechips.rocketchip.system.DefaultRV32Config.fir@224732.4]
  wire  _T_1080; // @[RocketCore.scala 505:36:freechips.rocketchip.system.DefaultRV32Config.fir@224898.4]
  wire  _T_950; // @[RocketCore.scala 502:25:freechips.rocketchip.system.DefaultRV32Config.fir@224767.4]
  wire  _T_953; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@224770.4]
  wire  _T_1008; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224825.4]
  wire [10:0] _T_1007; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224824.4]
  wire [7:0] _T_1005; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224822.4]
  wire  _T_1004; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224821.4]
  wire [31:0] _T_1012; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224829.4]
  wire [7:0] _T_1067; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224884.4]
  wire  _T_1066; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224883.4]
  wire [31:0] _T_1074; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224891.4]
  wire [3:0] _T_1075; // @[RocketCore.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@224892.4]
  wire [31:0] _T_1076; // @[RocketCore.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@224893.4]
  wire [31:0] _T_1077; // @[RocketCore.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@224894.4]
  wire [31:0] mem_br_target; // @[RocketCore.scala 501:41:freechips.rocketchip.system.DefaultRV32Config.fir@224897.4]
  wire [31:0] _T_1082; // @[RocketCore.scala 505:21:freechips.rocketchip.system.DefaultRV32Config.fir@224900.4]
  wire [31:0] mem_npc; // @[RocketCore.scala 505:141:freechips.rocketchip.system.DefaultRV32Config.fir@224903.4]
  wire  _T_1085; // @[RocketCore.scala 507:30:freechips.rocketchip.system.DefaultRV32Config.fir@224904.4]
  wire  _T_1086; // @[RocketCore.scala 508:31:freechips.rocketchip.system.DefaultRV32Config.fir@224905.4]
  wire  _T_1087; // @[RocketCore.scala 508:62:freechips.rocketchip.system.DefaultRV32Config.fir@224906.4]
  wire  _T_1088; // @[RocketCore.scala 508:8:freechips.rocketchip.system.DefaultRV32Config.fir@224907.4]
  wire  mem_wrong_npc; // @[RocketCore.scala 507:8:freechips.rocketchip.system.DefaultRV32Config.fir@224908.4]
  wire  _T_1104; // @[RocketCore.scala 515:54:freechips.rocketchip.system.DefaultRV32Config.fir@224929.4]
  wire  take_pc_mem; // @[RocketCore.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@224930.4]
  wire  take_pc_mem_wb; // @[RocketCore.scala 244:35:freechips.rocketchip.system.DefaultRV32Config.fir@223615.4]
  wire [31:0] _T_3; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223624.4]
  wire  _T_4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223625.4]
  wire  _T_6; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223627.4]
  wire  _T_8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223629.4]
  wire  _T_10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223631.4]
  wire  _T_12; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223633.4]
  wire  _T_14; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223635.4]
  wire  _T_16; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223637.4]
  wire  _T_18; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223639.4]
  wire [31:0] _T_19; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223640.4]
  wire  _T_20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223641.4]
  wire  _T_22; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223643.4]
  wire  _T_24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223645.4]
  wire  _T_26; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223647.4]
  wire  _T_28; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223649.4]
  wire  _T_30; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223651.4]
  wire  _T_32; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223653.4]
  wire  _T_34; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223655.4]
  wire  _T_36; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223657.4]
  wire [31:0] _T_37; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223658.4]
  wire  _T_38; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223659.4]
  wire  _T_40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223661.4]
  wire  _T_42; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223663.4]
  wire  _T_44; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223665.4]
  wire  _T_46; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223667.4]
  wire  _T_48; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223669.4]
  wire  _T_50; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223671.4]
  wire [31:0] _T_51; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223672.4]
  wire  _T_52; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223673.4]
  wire  _T_54; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223675.4]
  wire  _T_56; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223677.4]
  wire [31:0] _T_57; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223678.4]
  wire  _T_58; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223679.4]
  wire  _T_60; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223681.4]
  wire  _T_62; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223683.4]
  wire  _T_64; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223685.4]
  wire [31:0] _T_65; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223686.4]
  wire  _T_66; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223687.4]
  wire  _T_68; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223689.4]
  wire [31:0] _T_69; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223690.4]
  wire  _T_70; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223691.4]
  wire  _T_72; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223693.4]
  wire  _T_74; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223695.4]
  wire  _T_76; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223697.4]
  wire  _T_78; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223699.4]
  wire  _T_80; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223701.4]
  wire  _T_82; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223703.4]
  wire  _T_84; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223705.4]
  wire [31:0] _T_85; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223706.4]
  wire  _T_86; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223707.4]
  wire  _T_88; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223709.4]
  wire  _T_90; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223711.4]
  wire  _T_92; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223713.4]
  wire  _T_94; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223715.4]
  wire  _T_96; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223717.4]
  wire  _T_98; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223719.4]
  wire [31:0] _T_99; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223720.4]
  wire  _T_100; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223721.4]
  wire  _T_101; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223722.4]
  wire  _T_102; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223723.4]
  wire  _T_104; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223725.4]
  wire  _T_106; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223727.4]
  wire  _T_108; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223729.4]
  wire  _T_110; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223731.4]
  wire  _T_112; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223733.4]
  wire  _T_114; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223735.4]
  wire  _T_116; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223737.4]
  wire [31:0] _T_117; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223738.4]
  wire  _T_118; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223739.4]
  wire  _T_120; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223741.4]
  wire  _T_122; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223743.4]
  wire  _T_124; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223745.4]
  wire  _T_126; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223747.4]
  wire  _T_128; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223749.4]
  wire  _T_130; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223751.4]
  wire  _T_132; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223753.4]
  wire  _T_134; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223755.4]
  wire  _T_136; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223757.4]
  wire  _T_138; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223759.4]
  wire  _T_140; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223761.4]
  wire  _T_142; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223763.4]
  wire  _T_144; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223765.4]
  wire  _T_146; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223767.4]
  wire  _T_148; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223769.4]
  wire  _T_150; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223771.4]
  wire  _T_152; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223773.4]
  wire  _T_154; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223775.4]
  wire  _T_156; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223777.4]
  wire  _T_158; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223779.4]
  wire  _T_160; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223781.4]
  wire  _T_162; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223783.4]
  wire  _T_164; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223785.4]
  wire  _T_166; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223787.4]
  wire  _T_168; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223789.4]
  wire  _T_170; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223791.4]
  wire  _T_172; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223793.4]
  wire  _T_174; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223795.4]
  wire  _T_175; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223796.4]
  wire  _T_176; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223797.4]
  wire  _T_177; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223798.4]
  wire  _T_178; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223799.4]
  wire  _T_179; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223800.4]
  wire  _T_181; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223802.4]
  wire  _T_183; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223804.4]
  wire  _T_185; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223806.4]
  wire  _T_187; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223808.4]
  wire  _T_189; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223810.4]
  wire  _T_191; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223812.4]
  wire  _T_193; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223814.4]
  wire  _T_194; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223815.4]
  wire  _T_195; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223816.4]
  wire  _T_196; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223817.4]
  wire  _T_197; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223818.4]
  wire  _T_198; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223819.4]
  wire  _T_199; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223820.4]
  wire  _T_200; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223821.4]
  wire  _T_201; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223822.4]
  wire  _T_202; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223823.4]
  wire  _T_203; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223824.4]
  wire  _T_204; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223825.4]
  wire  _T_205; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223826.4]
  wire  _T_206; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223827.4]
  wire  _T_207; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223828.4]
  wire  _T_208; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223829.4]
  wire  _T_209; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223830.4]
  wire  _T_210; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223831.4]
  wire  _T_211; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223832.4]
  wire  _T_212; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223833.4]
  wire  _T_213; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223834.4]
  wire  _T_214; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223835.4]
  wire  _T_215; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223836.4]
  wire  _T_216; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223837.4]
  wire  _T_217; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223838.4]
  wire  _T_218; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223839.4]
  wire  _T_219; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223840.4]
  wire  _T_220; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223841.4]
  wire  _T_221; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223842.4]
  wire  _T_222; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223843.4]
  wire  _T_223; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223844.4]
  wire  _T_224; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223845.4]
  wire  _T_225; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223846.4]
  wire  _T_226; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223847.4]
  wire  _T_227; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223848.4]
  wire  _T_228; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223849.4]
  wire  _T_229; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223850.4]
  wire  _T_230; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223851.4]
  wire  _T_231; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223852.4]
  wire  _T_232; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223853.4]
  wire  _T_233; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223854.4]
  wire  _T_234; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223855.4]
  wire  _T_235; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223856.4]
  wire  _T_236; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223857.4]
  wire  _T_237; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223858.4]
  wire  _T_238; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223859.4]
  wire  _T_239; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223860.4]
  wire  _T_240; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223861.4]
  wire  _T_241; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223862.4]
  wire  _T_242; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223863.4]
  wire  _T_243; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223864.4]
  wire  _T_244; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223865.4]
  wire  _T_245; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223866.4]
  wire  _T_246; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223867.4]
  wire  _T_247; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223868.4]
  wire  _T_248; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223869.4]
  wire  _T_249; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223870.4]
  wire  _T_250; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223871.4]
  wire  _T_251; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223872.4]
  wire  _T_252; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223873.4]
  wire  _T_253; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223874.4]
  wire  _T_254; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223875.4]
  wire  _T_255; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223876.4]
  wire  _T_256; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223877.4]
  wire  _T_257; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223878.4]
  wire  _T_258; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223879.4]
  wire  _T_259; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223880.4]
  wire  _T_260; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223881.4]
  wire  _T_261; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223882.4]
  wire  _T_262; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223883.4]
  wire  _T_263; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223884.4]
  wire  _T_264; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223885.4]
  wire  _T_265; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223886.4]
  wire  _T_266; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223887.4]
  wire  _T_267; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223888.4]
  wire  _T_268; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223889.4]
  wire  _T_269; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223890.4]
  wire  _T_270; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223891.4]
  wire  _T_271; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223892.4]
  wire  _T_272; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223893.4]
  wire  _T_273; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223894.4]
  wire  _T_274; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223895.4]
  wire  _T_275; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223896.4]
  wire  _T_276; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223897.4]
  wire  _T_277; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223898.4]
  wire  _T_278; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223899.4]
  wire  _T_279; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223900.4]
  wire  _T_280; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223901.4]
  wire  _T_281; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223902.4]
  wire  _T_282; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223903.4]
  wire  _T_283; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223904.4]
  wire  _T_284; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223905.4]
  wire  _T_285; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223906.4]
  wire  _T_286; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223907.4]
  wire  _T_287; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223908.4]
  wire  _T_288; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223909.4]
  wire  id_ctrl_legal; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223910.4]
  wire [31:0] _T_290; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223911.4]
  wire  _T_291; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223912.4]
  wire [31:0] _T_292; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223913.4]
  wire  _T_293; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223914.4]
  wire  id_ctrl_fp; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223916.4]
  wire [31:0] _T_296; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223917.4]
  wire  id_ctrl_branch; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223918.4]
  wire [31:0] _T_299; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223920.4]
  wire  id_ctrl_jal; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223921.4]
  wire [31:0] _T_302; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223923.4]
  wire  id_ctrl_jalr; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223924.4]
  wire [31:0] _T_305; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223926.4]
  wire  _T_306; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223927.4]
  wire [31:0] _T_307; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223928.4]
  wire  _T_308; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223929.4]
  wire [31:0] _T_309; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223930.4]
  wire  id_ctrl_amo; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223931.4]
  wire [31:0] _T_311; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223932.4]
  wire  _T_312; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223933.4]
  wire  _T_314; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223935.4]
  wire  _T_315; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223936.4]
  wire  id_ctrl_rxs2; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223937.4]
  wire [31:0] _T_317; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223938.4]
  wire  _T_318; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223939.4]
  wire [31:0] _T_319; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223940.4]
  wire  _T_320; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223941.4]
  wire [31:0] _T_321; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223942.4]
  wire  _T_322; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223943.4]
  wire [31:0] _T_323; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223944.4]
  wire  _T_324; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223945.4]
  wire [31:0] _T_325; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223946.4]
  wire  _T_326; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223947.4]
  wire  _T_328; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223949.4]
  wire  _T_329; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223950.4]
  wire  _T_330; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223951.4]
  wire  id_ctrl_rxs1; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223952.4]
  wire [31:0] _T_332; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223953.4]
  wire  _T_333; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223954.4]
  wire [31:0] _T_334; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223955.4]
  wire  _T_335; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223956.4]
  wire [31:0] _T_336; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223957.4]
  wire  _T_337; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223958.4]
  wire [31:0] _T_338; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223959.4]
  wire  _T_339; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223960.4]
  wire [31:0] _T_340; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223961.4]
  wire  _T_341; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223962.4]
  wire  _T_343; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223964.4]
  wire  _T_344; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223965.4]
  wire  _T_345; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223966.4]
  wire  _T_346; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223967.4]
  wire  _T_348; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223969.4]
  wire [31:0] _T_349; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223970.4]
  wire  _T_350; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223971.4]
  wire [31:0] _T_351; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223972.4]
  wire  _T_352; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223973.4]
  wire  _T_354; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223975.4]
  wire  _T_355; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223976.4]
  wire [1:0] id_ctrl_sel_alu2; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223977.4]
  wire [31:0] _T_357; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223978.4]
  wire  _T_358; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223979.4]
  wire [31:0] _T_359; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223980.4]
  wire  _T_360; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223981.4]
  wire [31:0] _T_361; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223982.4]
  wire  _T_362; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223983.4]
  wire  _T_364; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223985.4]
  wire  _T_365; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223986.4]
  wire  _T_366; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223987.4]
  wire  _T_367; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223988.4]
  wire  _T_369; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223990.4]
  wire  _T_371; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223992.4]
  wire [1:0] id_ctrl_sel_alu1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223993.4]
  wire [31:0] _T_373; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223994.4]
  wire  _T_374; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223995.4]
  wire  _T_376; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223997.4]
  wire  _T_378; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223999.4]
  wire [31:0] _T_379; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224000.4]
  wire  _T_380; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224001.4]
  wire  _T_382; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224003.4]
  wire [31:0] _T_383; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224004.4]
  wire  _T_384; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224005.4]
  wire [31:0] _T_385; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224006.4]
  wire  _T_386; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224007.4]
  wire  _T_388; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224009.4]
  wire  _T_390; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224011.4]
  wire  _T_391; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224012.4]
  wire [2:0] id_ctrl_sel_imm; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224014.4]
  wire [31:0] _T_397; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224018.4]
  wire  _T_398; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224019.4]
  wire [31:0] _T_399; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224020.4]
  wire  _T_400; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224021.4]
  wire [31:0] _T_401; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224022.4]
  wire  _T_402; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224023.4]
  wire [31:0] _T_403; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224024.4]
  wire  _T_404; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224025.4]
  wire  _T_406; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224027.4]
  wire  _T_407; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224028.4]
  wire  _T_408; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224029.4]
  wire [31:0] _T_409; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224030.4]
  wire  _T_410; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224031.4]
  wire [31:0] _T_411; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224032.4]
  wire  _T_412; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224033.4]
  wire [31:0] _T_413; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224034.4]
  wire  _T_414; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224035.4]
  wire [31:0] _T_415; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224036.4]
  wire  _T_416; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224037.4]
  wire [31:0] _T_417; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224038.4]
  wire  _T_418; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224039.4]
  wire [31:0] _T_419; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224040.4]
  wire  _T_420; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224041.4]
  wire [31:0] _T_421; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224042.4]
  wire  _T_422; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224043.4]
  wire  _T_424; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224045.4]
  wire  _T_425; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224046.4]
  wire  _T_426; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224047.4]
  wire  _T_427; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224048.4]
  wire  _T_428; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224049.4]
  wire  _T_429; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224050.4]
  wire [31:0] _T_430; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224051.4]
  wire  _T_431; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224052.4]
  wire [31:0] _T_432; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224053.4]
  wire  _T_433; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224054.4]
  wire [31:0] _T_434; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224055.4]
  wire  _T_435; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224056.4]
  wire [31:0] _T_436; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224057.4]
  wire  _T_437; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224058.4]
  wire [31:0] _T_438; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224059.4]
  wire  _T_439; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224060.4]
  wire  _T_441; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224062.4]
  wire  _T_442; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224063.4]
  wire  _T_443; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224064.4]
  wire  _T_444; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224065.4]
  wire [31:0] _T_445; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224066.4]
  wire  _T_446; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224067.4]
  wire [31:0] _T_447; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224068.4]
  wire  _T_448; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224069.4]
  wire [31:0] _T_449; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224070.4]
  wire  _T_450; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224071.4]
  wire  _T_452; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224073.4]
  wire  _T_453; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224074.4]
  wire  _T_454; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224075.4]
  wire  _T_455; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224076.4]
  wire [3:0] id_ctrl_alu_fn; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224079.4]
  wire  _T_460; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224081.4]
  wire  _T_461; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224082.4]
  wire  _T_462; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224083.4]
  wire  _T_463; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224084.4]
  wire  _T_464; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224085.4]
  wire  _T_465; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224086.4]
  wire  _T_466; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224087.4]
  wire  _T_467; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224088.4]
  wire  _T_468; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224089.4]
  wire  _T_469; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224090.4]
  wire  _T_470; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224091.4]
  wire  _T_471; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224092.4]
  wire  _T_472; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224093.4]
  wire  _T_473; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224094.4]
  wire  _T_474; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224095.4]
  wire  _T_475; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224096.4]
  wire  _T_476; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224097.4]
  wire  _T_477; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224098.4]
  wire  _T_478; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224099.4]
  wire  _T_479; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224100.4]
  wire  id_ctrl_mem; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224101.4]
  wire  _T_482; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224103.4]
  wire [31:0] _T_483; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224104.4]
  wire  _T_484; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224105.4]
  wire [31:0] _T_485; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224106.4]
  wire  _T_486; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224107.4]
  wire  _T_488; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224109.4]
  wire  _T_489; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224110.4]
  wire [31:0] _T_490; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224111.4]
  wire  _T_491; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224112.4]
  wire [31:0] _T_492; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224113.4]
  wire  _T_493; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224114.4]
  wire  _T_495; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224116.4]
  wire [31:0] _T_496; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224117.4]
  wire  _T_497; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224118.4]
  wire [31:0] _T_498; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224119.4]
  wire  _T_499; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224120.4]
  wire [31:0] _T_500; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224121.4]
  wire  _T_501; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224122.4]
  wire  _T_503; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224124.4]
  wire  _T_504; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224125.4]
  wire  _T_505; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224126.4]
  wire [31:0] _T_506; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224127.4]
  wire  _T_507; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224128.4]
  wire [4:0] id_ctrl_mem_cmd; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224134.4]
  wire [31:0] _T_514; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224135.4]
  wire  _T_515; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224136.4]
  wire [31:0] _T_516; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224137.4]
  wire  _T_517; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224138.4]
  wire [31:0] _T_518; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224139.4]
  wire  id_ctrl_rfs3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224140.4]
  wire  _T_521; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224142.4]
  wire  id_ctrl_rfs1; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224143.4]
  wire [31:0] _T_523; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224144.4]
  wire  _T_524; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224145.4]
  wire [31:0] _T_525; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224146.4]
  wire  _T_526; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224147.4]
  wire  _T_528; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224149.4]
  wire  _T_529; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224150.4]
  wire  id_ctrl_rfs2; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224151.4]
  wire [31:0] _T_532; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224153.4]
  wire  _T_533; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224154.4]
  wire  _T_535; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224156.4]
  wire  _T_537; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224158.4]
  wire  _T_538; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224159.4]
  wire  id_ctrl_wfd; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224160.4]
  wire [31:0] _T_540; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224161.4]
  wire  id_ctrl_div; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224162.4]
  wire  _T_544; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224165.4]
  wire  _T_546; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224167.4]
  wire [31:0] _T_547; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224168.4]
  wire  _T_548; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224169.4]
  wire [31:0] _T_549; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224170.4]
  wire  _T_550; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224171.4]
  wire [31:0] _T_551; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224172.4]
  wire  _T_552; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224173.4]
  wire [31:0] _T_553; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224174.4]
  wire  _T_554; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224175.4]
  wire [31:0] _T_555; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224176.4]
  wire  _T_556; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224177.4]
  wire  _T_558; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224179.4]
  wire  _T_559; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224180.4]
  wire  _T_560; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224181.4]
  wire  _T_561; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224182.4]
  wire  _T_562; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224183.4]
  wire  id_ctrl_wxd; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224184.4]
  wire [31:0] _T_564; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224185.4]
  wire  _T_565; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224186.4]
  wire [31:0] _T_567; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224188.4]
  wire  _T_568; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224189.4]
  wire [31:0] _T_570; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224191.4]
  wire  _T_571; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224192.4]
  wire [31:0] _T_572; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224193.4]
  wire  _T_573; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224194.4]
  wire [31:0] _T_574; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224195.4]
  wire  _T_575; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224196.4]
  wire  _T_577; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224198.4]
  wire  _T_578; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224199.4]
  wire  _T_579; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224200.4]
  wire  _T_580; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224201.4]
  wire [2:0] id_ctrl_csr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224203.4]
  wire [31:0] _T_583; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224204.4]
  wire  id_ctrl_fence_i; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224205.4]
  wire  id_ctrl_fence; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224208.4]
  wire [4:0] id_raddr3; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224239.4]
  wire [4:0] id_raddr2; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224240.4]
  wire [4:0] id_raddr1; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224241.4]
  wire [4:0] id_waddr; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224242.4]
  reg  id_reg_fence; // @[RocketCore.scala 268:25:freechips.rocketchip.system.DefaultRV32Config.fir@224245.4]
  wire  _T_591; // @[RocketCore.scala 990:45:freechips.rocketchip.system.DefaultRV32Config.fir@224249.4]
  wire [31:0] _T_596; // @[RocketCore.scala 990:25:freechips.rocketchip.system.DefaultRV32Config.fir@224254.4]
  wire [31:0] _T_602; // @[RocketCore.scala 990:25:freechips.rocketchip.system.DefaultRV32Config.fir@224263.4]
  wire  _T_669; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224338.4]
  wire  _T_670; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224339.4]
  wire  _T_671; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224340.4]
  wire  _T_672; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224341.4]
  wire  id_csr_en; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224342.4]
  wire  id_system_insn; // @[RocketCore.scala 278:36:freechips.rocketchip.system.DefaultRV32Config.fir@224343.4]
  wire  id_csr_ren; // @[RocketCore.scala 279:54:freechips.rocketchip.system.DefaultRV32Config.fir@224348.4]
  wire  _T_677; // @[RocketCore.scala 281:50:freechips.rocketchip.system.DefaultRV32Config.fir@224350.4]
  wire  id_sfence; // @[RocketCore.scala 281:31:freechips.rocketchip.system.DefaultRV32Config.fir@224351.4]
  wire  _T_678; // @[RocketCore.scala 282:32:freechips.rocketchip.system.DefaultRV32Config.fir@224352.4]
  wire  _T_679; // @[RocketCore.scala 282:67:freechips.rocketchip.system.DefaultRV32Config.fir@224353.4]
  wire  _T_680; // @[RocketCore.scala 282:64:freechips.rocketchip.system.DefaultRV32Config.fir@224354.4]
  wire  _T_681; // @[RocketCore.scala 282:79:freechips.rocketchip.system.DefaultRV32Config.fir@224355.4]
  wire  id_csr_flush; // @[RocketCore.scala 282:50:freechips.rocketchip.system.DefaultRV32Config.fir@224356.4]
  wire  _T_682; // @[RocketCore.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@224359.4]
  wire  _T_685; // @[RocketCore.scala 291:37:freechips.rocketchip.system.DefaultRV32Config.fir@224362.4]
  wire  _T_686; // @[RocketCore.scala 291:34:freechips.rocketchip.system.DefaultRV32Config.fir@224363.4]
  wire  _T_687; // @[RocketCore.scala 290:40:freechips.rocketchip.system.DefaultRV32Config.fir@224364.4]
  wire  _T_689; // @[RocketCore.scala 292:20:freechips.rocketchip.system.DefaultRV32Config.fir@224366.4]
  wire  _T_690; // @[RocketCore.scala 292:17:freechips.rocketchip.system.DefaultRV32Config.fir@224367.4]
  wire  _T_691; // @[RocketCore.scala 291:65:freechips.rocketchip.system.DefaultRV32Config.fir@224368.4]
  wire  _T_692; // @[RocketCore.scala 293:48:freechips.rocketchip.system.DefaultRV32Config.fir@224369.4]
  wire  _T_693; // @[RocketCore.scala 293:16:freechips.rocketchip.system.DefaultRV32Config.fir@224370.4]
  wire  _T_694; // @[RocketCore.scala 292:48:freechips.rocketchip.system.DefaultRV32Config.fir@224371.4]
  wire  _T_700; // @[RocketCore.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@224377.4]
  wire  _T_722; // @[RocketCore.scala 301:64:freechips.rocketchip.system.DefaultRV32Config.fir@224399.4]
  wire  _T_723; // @[RocketCore.scala 301:49:freechips.rocketchip.system.DefaultRV32Config.fir@224400.4]
  wire  _T_724; // @[RocketCore.scala 301:15:freechips.rocketchip.system.DefaultRV32Config.fir@224401.4]
  wire  _T_725; // @[RocketCore.scala 300:81:freechips.rocketchip.system.DefaultRV32Config.fir@224402.4]
  wire  _T_728; // @[RocketCore.scala 302:65:freechips.rocketchip.system.DefaultRV32Config.fir@224405.4]
  wire  id_illegal_insn; // @[RocketCore.scala 301:99:freechips.rocketchip.system.DefaultRV32Config.fir@224407.4]
  wire  id_amo_aq; // @[RocketCore.scala 304:29:freechips.rocketchip.system.DefaultRV32Config.fir@224408.4]
  wire  id_amo_rl; // @[RocketCore.scala 305:29:freechips.rocketchip.system.DefaultRV32Config.fir@224409.4]
  wire [3:0] id_fence_succ; // @[RocketCore.scala 307:33:freechips.rocketchip.system.DefaultRV32Config.fir@224411.4]
  wire  _T_730; // @[RocketCore.scala 308:52:freechips.rocketchip.system.DefaultRV32Config.fir@224412.4]
  wire  id_fence_next; // @[RocketCore.scala 308:37:freechips.rocketchip.system.DefaultRV32Config.fir@224413.4]
  wire  _T_731; // @[RocketCore.scala 309:21:freechips.rocketchip.system.DefaultRV32Config.fir@224414.4]
  wire  id_mem_busy; // @[RocketCore.scala 309:38:freechips.rocketchip.system.DefaultRV32Config.fir@224415.4]
  wire  _T_732; // @[RocketCore.scala 310:9:freechips.rocketchip.system.DefaultRV32Config.fir@224416.4]
  wire  _GEN_0; // @[RocketCore.scala 310:23:freechips.rocketchip.system.DefaultRV32Config.fir@224417.4]
  wire  _T_740; // @[RocketCore.scala 315:33:freechips.rocketchip.system.DefaultRV32Config.fir@224428.4]
  wire  _T_741; // @[RocketCore.scala 315:46:freechips.rocketchip.system.DefaultRV32Config.fir@224429.4]
  wire  _T_743; // @[RocketCore.scala 315:81:freechips.rocketchip.system.DefaultRV32Config.fir@224431.4]
  wire  _T_744; // @[RocketCore.scala 315:65:freechips.rocketchip.system.DefaultRV32Config.fir@224432.4]
  wire  id_do_fence; // @[RocketCore.scala 315:17:freechips.rocketchip.system.DefaultRV32Config.fir@224433.4]
  wire  _T_747; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224446.4]
  wire  _T_748; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224447.4]
  wire  _T_749; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224448.4]
  wire  _T_750; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224449.4]
  wire  _T_751; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224450.4]
  wire  _T_752; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224451.4]
  wire  id_xcpt; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224452.4]
  wire [1:0] _T_753; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224453.4]
  wire [3:0] _T_754; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224454.4]
  wire [3:0] _T_755; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224455.4]
  wire [3:0] _T_756; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224456.4]
  wire [3:0] _T_757; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224457.4]
  wire [3:0] _T_758; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224458.4]
  wire [4:0] ex_waddr; // @[RocketCore.scala 351:29:freechips.rocketchip.system.DefaultRV32Config.fir@224471.4]
  wire [4:0] mem_waddr; // @[RocketCore.scala 352:31:freechips.rocketchip.system.DefaultRV32Config.fir@224473.4]
  wire [4:0] wb_waddr; // @[RocketCore.scala 353:29:freechips.rocketchip.system.DefaultRV32Config.fir@224475.4]
  wire  _T_772; // @[RocketCore.scala 356:19:freechips.rocketchip.system.DefaultRV32Config.fir@224477.4]
  wire  _T_773; // @[RocketCore.scala 357:20:freechips.rocketchip.system.DefaultRV32Config.fir@224478.4]
  wire  _T_774; // @[RocketCore.scala 357:39:freechips.rocketchip.system.DefaultRV32Config.fir@224479.4]
  wire  _T_775; // @[RocketCore.scala 357:36:freechips.rocketchip.system.DefaultRV32Config.fir@224480.4]
  wire  id_bypass_src_0_0; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224482.4]
  wire  _T_778; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224484.4]
  wire  id_bypass_src_0_1; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224485.4]
  wire  _T_779; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224486.4]
  wire  id_bypass_src_0_2; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224487.4]
  wire  id_bypass_src_0_3; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224489.4]
  wire  id_bypass_src_1_0; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224490.4]
  wire  _T_782; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224492.4]
  wire  id_bypass_src_1_1; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224493.4]
  wire  _T_783; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224494.4]
  wire  id_bypass_src_1_2; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224495.4]
  wire  id_bypass_src_1_3; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224497.4]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 363:29:freechips.rocketchip.system.DefaultRV32Config.fir@224498.4]
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 363:29:freechips.rocketchip.system.DefaultRV32Config.fir@224498.4]
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 364:26:freechips.rocketchip.system.DefaultRV32Config.fir@224499.4]
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 364:26:freechips.rocketchip.system.DefaultRV32Config.fir@224499.4]
  reg [29:0] ex_reg_rs_msb_0; // @[RocketCore.scala 365:26:freechips.rocketchip.system.DefaultRV32Config.fir@224500.4]
  reg [29:0] ex_reg_rs_msb_1; // @[RocketCore.scala 365:26:freechips.rocketchip.system.DefaultRV32Config.fir@224500.4]
  wire  _T_785; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224501.4]
  wire [31:0] _T_786; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224502.4]
  wire  _T_787; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224503.4]
  wire [31:0] _T_788; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224504.4]
  wire  _T_789; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224505.4]
  wire [31:0] _T_790; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224506.4]
  wire [31:0] _T_791; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224507.4]
  wire  _T_792; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224509.4]
  wire [31:0] _T_793; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224510.4]
  wire  _T_794; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224511.4]
  wire [31:0] _T_795; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224512.4]
  wire  _T_796; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224513.4]
  wire [31:0] _T_797; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224514.4]
  wire [31:0] _T_798; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224515.4]
  wire [31:0] ex_rs_1; // @[RocketCore.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@224516.4]
  wire  _T_799; // @[RocketCore.scala 1005:24:freechips.rocketchip.system.DefaultRV32Config.fir@224517.4]
  wire  _T_801; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@224519.4]
  wire  _T_802; // @[RocketCore.scala 1005:19:freechips.rocketchip.system.DefaultRV32Config.fir@224520.4]
  wire  _T_803; // @[RocketCore.scala 1006:26:freechips.rocketchip.system.DefaultRV32Config.fir@224521.4]
  wire [10:0] _T_805; // @[RocketCore.scala 1006:49:freechips.rocketchip.system.DefaultRV32Config.fir@224523.4]
  wire  _T_807; // @[RocketCore.scala 1007:26:freechips.rocketchip.system.DefaultRV32Config.fir@224525.4]
  wire  _T_808; // @[RocketCore.scala 1007:43:freechips.rocketchip.system.DefaultRV32Config.fir@224526.4]
  wire  _T_809; // @[RocketCore.scala 1007:36:freechips.rocketchip.system.DefaultRV32Config.fir@224527.4]
  wire [7:0] _T_811; // @[RocketCore.scala 1007:73:freechips.rocketchip.system.DefaultRV32Config.fir@224529.4]
  wire  _T_815; // @[RocketCore.scala 1008:33:freechips.rocketchip.system.DefaultRV32Config.fir@224533.4]
  wire  _T_816; // @[RocketCore.scala 1009:23:freechips.rocketchip.system.DefaultRV32Config.fir@224534.4]
  wire  _T_818; // @[RocketCore.scala 1009:44:freechips.rocketchip.system.DefaultRV32Config.fir@224536.4]
  wire  _T_819; // @[RocketCore.scala 1010:23:freechips.rocketchip.system.DefaultRV32Config.fir@224537.4]
  wire  _T_821; // @[RocketCore.scala 1010:43:freechips.rocketchip.system.DefaultRV32Config.fir@224539.4]
  wire  _T_822; // @[RocketCore.scala 1010:18:freechips.rocketchip.system.DefaultRV32Config.fir@224540.4]
  wire  _T_823; // @[RocketCore.scala 1009:18:freechips.rocketchip.system.DefaultRV32Config.fir@224541.4]
  wire [5:0] _T_829; // @[RocketCore.scala 1011:20:freechips.rocketchip.system.DefaultRV32Config.fir@224547.4]
  wire  _T_831; // @[RocketCore.scala 1013:24:freechips.rocketchip.system.DefaultRV32Config.fir@224549.4]
  wire  _T_833; // @[RocketCore.scala 1013:34:freechips.rocketchip.system.DefaultRV32Config.fir@224551.4]
  wire [3:0] _T_838; // @[RocketCore.scala 1014:19:freechips.rocketchip.system.DefaultRV32Config.fir@224556.4]
  wire [3:0] _T_839; // @[RocketCore.scala 1013:19:freechips.rocketchip.system.DefaultRV32Config.fir@224557.4]
  wire [3:0] _T_840; // @[RocketCore.scala 1012:19:freechips.rocketchip.system.DefaultRV32Config.fir@224558.4]
  wire  _T_843; // @[RocketCore.scala 1016:22:freechips.rocketchip.system.DefaultRV32Config.fir@224561.4]
  wire  _T_847; // @[RocketCore.scala 1017:17:freechips.rocketchip.system.DefaultRV32Config.fir@224565.4]
  wire  _T_848; // @[RocketCore.scala 1016:17:freechips.rocketchip.system.DefaultRV32Config.fir@224566.4]
  wire  _T_849; // @[RocketCore.scala 1015:17:freechips.rocketchip.system.DefaultRV32Config.fir@224567.4]
  wire  _T_852; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224570.4]
  wire [7:0] _T_853; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224571.4]
  wire [10:0] _T_855; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224573.4]
  wire  _T_856; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224574.4]
  wire [31:0] ex_imm; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224578.4]
  wire [31:0] _T_860; // @[RocketCore.scala 370:24:freechips.rocketchip.system.DefaultRV32Config.fir@224579.4]
  wire  _T_862; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224581.4]
  wire [31:0] _T_863; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224582.4]
  wire  _T_864; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224583.4]
  wire [31:0] _T_865; // @[RocketCore.scala 373:24:freechips.rocketchip.system.DefaultRV32Config.fir@224585.4]
  wire [3:0] _T_866; // @[RocketCore.scala 375:19:freechips.rocketchip.system.DefaultRV32Config.fir@224586.4]
  wire  _T_867; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224587.4]
  wire [31:0] _T_868; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224588.4]
  wire  _T_869; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224589.4]
  wire [31:0] _T_870; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224590.4]
  wire  _T_871; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224591.4]
  wire  _T_1512; // @[RocketCore.scala 774:17:freechips.rocketchip.system.DefaultRV32Config.fir@225513.4]
  wire  _T_1513; // @[RocketCore.scala 774:40:freechips.rocketchip.system.DefaultRV32Config.fir@225514.4]
  wire  _T_1514; // @[RocketCore.scala 774:71:freechips.rocketchip.system.DefaultRV32Config.fir@225515.4]
  wire  _T_1318; // @[RocketCore.scala 704:55:freechips.rocketchip.system.DefaultRV32Config.fir@225283.4]
  wire  _T_1319; // @[RocketCore.scala 704:42:freechips.rocketchip.system.DefaultRV32Config.fir@225284.4]
  wire  _T_1366; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225339.4]
  wire  _T_1367; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225340.4]
  wire  _T_1320; // @[RocketCore.scala 705:55:freechips.rocketchip.system.DefaultRV32Config.fir@225285.4]
  wire  _T_1321; // @[RocketCore.scala 705:42:freechips.rocketchip.system.DefaultRV32Config.fir@225286.4]
  wire  _T_1368; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225341.4]
  wire  _T_1369; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225342.4]
  wire  _T_1372; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225345.4]
  wire  _T_1322; // @[RocketCore.scala 706:55:freechips.rocketchip.system.DefaultRV32Config.fir@225287.4]
  wire  _T_1323; // @[RocketCore.scala 706:42:freechips.rocketchip.system.DefaultRV32Config.fir@225288.4]
  wire  _T_1370; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225343.4]
  wire  _T_1371; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225344.4]
  wire  _T_1373; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225346.4]
  wire  data_hazard_ex; // @[RocketCore.scala 724:36:freechips.rocketchip.system.DefaultRV32Config.fir@225347.4]
  wire  _T_1359; // @[RocketCore.scala 723:38:freechips.rocketchip.system.DefaultRV32Config.fir@225331.4]
  wire  _T_1360; // @[RocketCore.scala 723:48:freechips.rocketchip.system.DefaultRV32Config.fir@225332.4]
  wire  _T_1361; // @[RocketCore.scala 723:64:freechips.rocketchip.system.DefaultRV32Config.fir@225333.4]
  wire  _T_1363; // @[RocketCore.scala 723:94:freechips.rocketchip.system.DefaultRV32Config.fir@225335.4]
  wire  ex_cannot_bypass; // @[RocketCore.scala 723:109:freechips.rocketchip.system.DefaultRV32Config.fir@225336.4]
  wire  _T_1385; // @[RocketCore.scala 726:54:freechips.rocketchip.system.DefaultRV32Config.fir@225360.4]
  wire  _T_1375; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225349.4]
  wire  _T_1377; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225351.4]
  wire  _T_1382; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225356.4]
  wire  _T_1378; // @[RocketCore.scala 725:76:freechips.rocketchip.system.DefaultRV32Config.fir@225352.4]
  wire  _T_1379; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225353.4]
  wire  _T_1383; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225357.4]
  wire  _T_1381; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225355.4]
  wire  _T_1384; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225358.4]
  wire  fp_data_hazard_ex; // @[RocketCore.scala 725:39:freechips.rocketchip.system.DefaultRV32Config.fir@225359.4]
  wire  _T_1386; // @[RocketCore.scala 726:74:freechips.rocketchip.system.DefaultRV32Config.fir@225361.4]
  wire  id_ex_hazard; // @[RocketCore.scala 726:35:freechips.rocketchip.system.DefaultRV32Config.fir@225362.4]
  wire  _T_1393; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225371.4]
  wire  _T_1394; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225372.4]
  wire  _T_1395; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225373.4]
  wire  _T_1396; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225374.4]
  wire  _T_1399; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225377.4]
  wire  _T_1397; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225375.4]
  wire  _T_1398; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225376.4]
  wire  _T_1400; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225378.4]
  wire  data_hazard_mem; // @[RocketCore.scala 733:38:freechips.rocketchip.system.DefaultRV32Config.fir@225379.4]
  wire  _T_1387; // @[RocketCore.scala 732:40:freechips.rocketchip.system.DefaultRV32Config.fir@225364.4]
  wire  _T_1388; // @[RocketCore.scala 732:66:freechips.rocketchip.system.DefaultRV32Config.fir@225365.4]
  wire  _T_1389; // @[RocketCore.scala 732:50:freechips.rocketchip.system.DefaultRV32Config.fir@225366.4]
  wire  _T_1391; // @[RocketCore.scala 732:100:freechips.rocketchip.system.DefaultRV32Config.fir@225368.4]
  wire  mem_cannot_bypass; // @[RocketCore.scala 732:116:freechips.rocketchip.system.DefaultRV32Config.fir@225369.4]
  wire  _T_1412; // @[RocketCore.scala 735:57:freechips.rocketchip.system.DefaultRV32Config.fir@225392.4]
  wire  _T_1402; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225381.4]
  wire  _T_1404; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225383.4]
  wire  _T_1409; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225388.4]
  wire  _T_1405; // @[RocketCore.scala 734:78:freechips.rocketchip.system.DefaultRV32Config.fir@225384.4]
  wire  _T_1406; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225385.4]
  wire  _T_1410; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225389.4]
  wire  _T_1408; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225387.4]
  wire  _T_1411; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225390.4]
  wire  fp_data_hazard_mem; // @[RocketCore.scala 734:41:freechips.rocketchip.system.DefaultRV32Config.fir@225391.4]
  wire  _T_1413; // @[RocketCore.scala 735:78:freechips.rocketchip.system.DefaultRV32Config.fir@225393.4]
  wire  id_mem_hazard; // @[RocketCore.scala 735:37:freechips.rocketchip.system.DefaultRV32Config.fir@225394.4]
  wire  _T_1483; // @[RocketCore.scala 762:18:freechips.rocketchip.system.DefaultRV32Config.fir@225483.4]
  wire  _T_1416; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225398.4]
  wire  _T_1417; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225399.4]
  wire  _T_1418; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225400.4]
  wire  _T_1419; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225401.4]
  wire  _T_1422; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225404.4]
  wire  _T_1420; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225402.4]
  wire  _T_1421; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225403.4]
  wire  _T_1423; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225405.4]
  wire  data_hazard_wb; // @[RocketCore.scala 739:36:freechips.rocketchip.system.DefaultRV32Config.fir@225406.4]
  wire  _T_925; // @[RocketCore.scala 483:39:freechips.rocketchip.system.DefaultRV32Config.fir@224733.4]
  wire  wb_dcache_miss; // @[RocketCore.scala 483:36:freechips.rocketchip.system.DefaultRV32Config.fir@224734.4]
  wire  wb_set_sboard; // @[RocketCore.scala 628:35:freechips.rocketchip.system.DefaultRV32Config.fir@225157.4]
  wire  _T_1435; // @[RocketCore.scala 741:54:freechips.rocketchip.system.DefaultRV32Config.fir@225419.4]
  wire  _T_1425; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225408.4]
  wire  _T_1427; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225410.4]
  wire  _T_1432; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225415.4]
  wire  _T_1428; // @[RocketCore.scala 740:76:freechips.rocketchip.system.DefaultRV32Config.fir@225411.4]
  wire  _T_1429; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225412.4]
  wire  _T_1433; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225416.4]
  wire  _T_1431; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225414.4]
  wire  _T_1434; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225417.4]
  wire  fp_data_hazard_wb; // @[RocketCore.scala 740:39:freechips.rocketchip.system.DefaultRV32Config.fir@225418.4]
  wire  _T_1436; // @[RocketCore.scala 741:71:freechips.rocketchip.system.DefaultRV32Config.fir@225420.4]
  wire  id_wb_hazard; // @[RocketCore.scala 741:35:freechips.rocketchip.system.DefaultRV32Config.fir@225421.4]
  wire  _T_1484; // @[RocketCore.scala 762:35:freechips.rocketchip.system.DefaultRV32Config.fir@225484.4]
  reg [31:0] _T_1324; // @[RocketCore.scala 969:25:freechips.rocketchip.system.DefaultRV32Config.fir@225289.4]
  wire [31:0] _T_1326; // @[RocketCore.scala 970:40:freechips.rocketchip.system.DefaultRV32Config.fir@225291.4]
  wire [31:0] _T_1332; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225300.4]
  wire  dmem_resp_valid; // @[RocketCore.scala 638:44:freechips.rocketchip.system.DefaultRV32Config.fir@225174.4]
  wire  dmem_resp_replay; // @[RocketCore.scala 639:42:freechips.rocketchip.system.DefaultRV32Config.fir@225175.4]
  wire  dmem_resp_xpu; // @[RocketCore.scala 635:23:freechips.rocketchip.system.DefaultRV32Config.fir@225170.4]
  wire  _T_1271; // @[RocketCore.scala 654:26:freechips.rocketchip.system.DefaultRV32Config.fir@225188.4]
  wire  _T_1270; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@225184.4]
  wire  ll_wen; // @[RocketCore.scala 654:44:freechips.rocketchip.system.DefaultRV32Config.fir@225189.4]
  wire [4:0] dmem_resp_waddr; // @[RocketCore.scala 637:46:freechips.rocketchip.system.DefaultRV32Config.fir@225173.4]
  wire [4:0] ll_waddr; // @[RocketCore.scala 654:44:freechips.rocketchip.system.DefaultRV32Config.fir@225189.4]
  wire  _T_1334; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225302.4]
  wire  _T_1335; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225303.4]
  wire  _T_1336; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225304.4]
  wire  _T_1337; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225305.4]
  wire  _T_1338; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225306.4]
  wire [31:0] _T_1339; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225307.4]
  wire  _T_1341; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225309.4]
  wire  _T_1342; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225310.4]
  wire  _T_1343; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225311.4]
  wire  _T_1344; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225312.4]
  wire  _T_1345; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225313.4]
  wire  _T_1353; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225321.4]
  wire [31:0] _T_1346; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225314.4]
  wire  _T_1348; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225316.4]
  wire  _T_1349; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225317.4]
  wire  _T_1350; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225318.4]
  wire  _T_1351; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225319.4]
  wire  _T_1352; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225320.4]
  wire  id_sboard_hazard; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225322.4]
  wire  _T_1485; // @[RocketCore.scala 762:51:freechips.rocketchip.system.DefaultRV32Config.fir@225485.4]
  wire  _T_1486; // @[RocketCore.scala 763:40:freechips.rocketchip.system.DefaultRV32Config.fir@225486.4]
  wire  _T_1487; // @[RocketCore.scala 763:57:freechips.rocketchip.system.DefaultRV32Config.fir@225487.4]
  wire  _T_1488; // @[RocketCore.scala 763:23:freechips.rocketchip.system.DefaultRV32Config.fir@225488.4]
  wire  _T_1489; // @[RocketCore.scala 762:71:freechips.rocketchip.system.DefaultRV32Config.fir@225489.4]
  wire  _T_1490; // @[RocketCore.scala 764:15:freechips.rocketchip.system.DefaultRV32Config.fir@225490.4]
  wire  _T_1491; // @[RocketCore.scala 764:45:freechips.rocketchip.system.DefaultRV32Config.fir@225491.4]
  wire  _T_1492; // @[RocketCore.scala 764:42:freechips.rocketchip.system.DefaultRV32Config.fir@225492.4]
  wire  _T_1493; // @[RocketCore.scala 763:74:freechips.rocketchip.system.DefaultRV32Config.fir@225493.4]
  reg [31:0] _T_1437; // @[RocketCore.scala 969:25:freechips.rocketchip.system.DefaultRV32Config.fir@225422.4]
  wire [31:0] _T_1456; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225450.4]
  wire  _T_1458; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225452.4]
  wire [31:0] _T_1459; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225453.4]
  wire  _T_1461; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225455.4]
  wire  _T_1468; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225462.4]
  wire [31:0] _T_1462; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225456.4]
  wire  _T_1464; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225458.4]
  wire  _T_1469; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225463.4]
  wire [31:0] _T_1465; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225459.4]
  wire  _T_1467; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225461.4]
  wire  id_stall_fpu; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225464.4]
  wire  _T_1494; // @[RocketCore.scala 765:16:freechips.rocketchip.system.DefaultRV32Config.fir@225494.4]
  wire  _T_1495; // @[RocketCore.scala 764:62:freechips.rocketchip.system.DefaultRV32Config.fir@225495.4]
  reg  blocked; // @[RocketCore.scala 754:22:freechips.rocketchip.system.DefaultRV32Config.fir@225465.4]
  wire  _T_1477; // @[RocketCore.scala 756:16:freechips.rocketchip.system.DefaultRV32Config.fir@225474.4]
  wire  dcache_blocked; // @[RocketCore.scala 756:13:freechips.rocketchip.system.DefaultRV32Config.fir@225475.4]
  wire  _T_1496; // @[RocketCore.scala 766:17:freechips.rocketchip.system.DefaultRV32Config.fir@225496.4]
  wire  _T_1497; // @[RocketCore.scala 765:32:freechips.rocketchip.system.DefaultRV32Config.fir@225497.4]
  wire  wb_wxd; // @[RocketCore.scala 627:29:freechips.rocketchip.system.DefaultRV32Config.fir@225156.4]
  wire  _T_1500; // @[RocketCore.scala 768:65:freechips.rocketchip.system.DefaultRV32Config.fir@225500.4]
  wire  _T_1501; // @[RocketCore.scala 768:62:freechips.rocketchip.system.DefaultRV32Config.fir@225501.4]
  wire  _T_1502; // @[RocketCore.scala 768:40:freechips.rocketchip.system.DefaultRV32Config.fir@225502.4]
  wire  _T_1503; // @[RocketCore.scala 768:21:freechips.rocketchip.system.DefaultRV32Config.fir@225503.4]
  wire  _T_1504; // @[RocketCore.scala 768:75:freechips.rocketchip.system.DefaultRV32Config.fir@225504.4]
  wire  _T_1505; // @[RocketCore.scala 768:17:freechips.rocketchip.system.DefaultRV32Config.fir@225505.4]
  wire  _T_1506; // @[RocketCore.scala 767:34:freechips.rocketchip.system.DefaultRV32Config.fir@225506.4]
  wire  _T_1509; // @[RocketCore.scala 769:15:freechips.rocketchip.system.DefaultRV32Config.fir@225509.4]
  wire  _T_1510; // @[RocketCore.scala 770:17:freechips.rocketchip.system.DefaultRV32Config.fir@225510.4]
  wire  ctrl_stalld; // @[RocketCore.scala 771:22:freechips.rocketchip.system.DefaultRV32Config.fir@225511.4]
  wire  _T_1515; // @[RocketCore.scala 774:89:freechips.rocketchip.system.DefaultRV32Config.fir@225516.4]
  wire  ctrl_killd; // @[RocketCore.scala 774:104:freechips.rocketchip.system.DefaultRV32Config.fir@225517.4]
  wire  _T_875; // @[RocketCore.scala 415:19:freechips.rocketchip.system.DefaultRV32Config.fir@224614.4]
  wire  _T_876; // @[RocketCore.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@224616.4]
  wire  _T_877; // @[RocketCore.scala 416:29:freechips.rocketchip.system.DefaultRV32Config.fir@224617.4]
  wire  _T_887; // @[RocketCore.scala 426:42:freechips.rocketchip.system.DefaultRV32Config.fir@224636.6]
  wire  _T_888; // @[RocketCore.scala 426:25:freechips.rocketchip.system.DefaultRV32Config.fir@224637.6]
  wire  _GEN_1; // @[RocketCore.scala 426:49:freechips.rocketchip.system.DefaultRV32Config.fir@224638.6]
  wire  _GEN_2; // @[RocketCore.scala 427:26:freechips.rocketchip.system.DefaultRV32Config.fir@224641.6]
  wire [1:0] _T_889; // @[RocketCore.scala 433:22:freechips.rocketchip.system.DefaultRV32Config.fir@224649.8]
  wire  _T_890; // @[RocketCore.scala 433:29:freechips.rocketchip.system.DefaultRV32Config.fir@224650.8]
  wire [1:0] _T_891; // @[RocketCore.scala 438:40:freechips.rocketchip.system.DefaultRV32Config.fir@224656.8]
  wire  _T_892; // @[RocketCore.scala 438:47:freechips.rocketchip.system.DefaultRV32Config.fir@224657.8]
  wire  _T_893; // @[RocketCore.scala 438:28:freechips.rocketchip.system.DefaultRV32Config.fir@224658.8]
  wire  _GEN_12; // @[RocketCore.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@224644.6]
  wire  _T_894; // @[RocketCore.scala 443:42:freechips.rocketchip.system.DefaultRV32Config.fir@224664.6]
  wire  _T_897; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224670.6]
  wire  _T_898; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224671.6]
  wire [1:0] _T_901; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224675.8]
  wire  _T_902; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224678.6]
  wire  _T_903; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224679.6]
  wire  do_bypass; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224680.6]
  wire  _T_906; // @[RocketCore.scala 460:26:freechips.rocketchip.system.DefaultRV32Config.fir@224686.6]
  wire  _T_907; // @[RocketCore.scala 460:23:freechips.rocketchip.system.DefaultRV32Config.fir@224687.6]
  wire  _T_1272; // @[RocketCore.scala 662:34:freechips.rocketchip.system.DefaultRV32Config.fir@225194.4]
  wire  _T_1273; // @[RocketCore.scala 662:31:freechips.rocketchip.system.DefaultRV32Config.fir@225195.4]
  wire  _T_1274; // @[RocketCore.scala 662:48:freechips.rocketchip.system.DefaultRV32Config.fir@225196.4]
  wire  wb_valid; // @[RocketCore.scala 662:45:freechips.rocketchip.system.DefaultRV32Config.fir@225197.4]
  wire  wb_wen; // @[RocketCore.scala 663:25:freechips.rocketchip.system.DefaultRV32Config.fir@225198.4]
  wire  rf_wen; // @[RocketCore.scala 664:23:freechips.rocketchip.system.DefaultRV32Config.fir@225199.4]
  wire [4:0] rf_waddr; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@225200.4]
  wire  _T_1281; // @[RocketCore.scala 995:16:freechips.rocketchip.system.DefaultRV32Config.fir@225209.6]
  wire  _T_1285; // @[RocketCore.scala 998:20:freechips.rocketchip.system.DefaultRV32Config.fir@225215.8]
  wire  _T_1275; // @[RocketCore.scala 666:38:freechips.rocketchip.system.DefaultRV32Config.fir@225201.4]
  wire [31:0] ll_wdata; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225178.4 :freechips.rocketchip.system.DefaultRV32Config.fir@225180.4]
  wire  _T_1277; // @[RocketCore.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@225203.4]
  wire [31:0] _T_1279; // @[RocketCore.scala 668:21:freechips.rocketchip.system.DefaultRV32Config.fir@225205.4]
  wire [31:0] _T_1280; // @[RocketCore.scala 667:21:freechips.rocketchip.system.DefaultRV32Config.fir@225206.4]
  wire [31:0] rf_wdata; // @[RocketCore.scala 666:21:freechips.rocketchip.system.DefaultRV32Config.fir@225207.4]
  wire [31:0] _GEN_226; // @[RocketCore.scala 998:31:freechips.rocketchip.system.DefaultRV32Config.fir@225216.8]
  wire [31:0] _GEN_233; // @[RocketCore.scala 995:29:freechips.rocketchip.system.DefaultRV32Config.fir@225210.6]
  wire [31:0] id_rs_0; // @[RocketCore.scala 671:17:freechips.rocketchip.system.DefaultRV32Config.fir@225208.4]
  wire  _T_910; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224694.6]
  wire  _T_911; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224695.6]
  wire  do_bypass_1; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224696.6]
  wire  _T_914; // @[RocketCore.scala 460:26:freechips.rocketchip.system.DefaultRV32Config.fir@224702.6]
  wire  _T_915; // @[RocketCore.scala 460:23:freechips.rocketchip.system.DefaultRV32Config.fir@224703.6]
  wire  _T_1286; // @[RocketCore.scala 998:20:freechips.rocketchip.system.DefaultRV32Config.fir@225219.8]
  wire [31:0] _GEN_227; // @[RocketCore.scala 998:31:freechips.rocketchip.system.DefaultRV32Config.fir@225220.8]
  wire [31:0] _GEN_234; // @[RocketCore.scala 995:29:freechips.rocketchip.system.DefaultRV32Config.fir@225210.6]
  wire [31:0] id_rs_1; // @[RocketCore.scala 671:17:freechips.rocketchip.system.DefaultRV32Config.fir@225208.4]
  wire [31:0] inst; // @[RocketCore.scala 466:21:freechips.rocketchip.system.DefaultRV32Config.fir@224712.8]
  wire  _T_1414; // @[RocketCore.scala 736:32:freechips.rocketchip.system.DefaultRV32Config.fir@225395.4]
  wire  id_load_use; // @[RocketCore.scala 736:51:freechips.rocketchip.system.DefaultRV32Config.fir@225396.4]
  wire  _T_922; // @[RocketCore.scala 472:21:freechips.rocketchip.system.DefaultRV32Config.fir@224721.4]
  wire  _T_923; // @[RocketCore.scala 472:41:freechips.rocketchip.system.DefaultRV32Config.fir@224722.4]
  wire  _T_926; // @[RocketCore.scala 484:45:freechips.rocketchip.system.DefaultRV32Config.fir@224735.4]
  wire  _T_927; // @[RocketCore.scala 484:42:freechips.rocketchip.system.DefaultRV32Config.fir@224736.4]
  wire  _T_928; // @[RocketCore.scala 485:45:freechips.rocketchip.system.DefaultRV32Config.fir@224737.4]
  wire  _T_929; // @[RocketCore.scala 485:42:freechips.rocketchip.system.DefaultRV32Config.fir@224738.4]
  wire  replay_ex_structural; // @[RocketCore.scala 484:64:freechips.rocketchip.system.DefaultRV32Config.fir@224739.4]
  wire  replay_ex_load_use; // @[RocketCore.scala 486:43:freechips.rocketchip.system.DefaultRV32Config.fir@224740.4]
  wire  _T_930; // @[RocketCore.scala 487:75:freechips.rocketchip.system.DefaultRV32Config.fir@224741.4]
  wire  _T_931; // @[RocketCore.scala 487:50:freechips.rocketchip.system.DefaultRV32Config.fir@224742.4]
  wire  replay_ex; // @[RocketCore.scala 487:33:freechips.rocketchip.system.DefaultRV32Config.fir@224743.4]
  wire  _T_932; // @[RocketCore.scala 488:35:freechips.rocketchip.system.DefaultRV32Config.fir@224744.4]
  wire  _T_933; // @[RocketCore.scala 488:51:freechips.rocketchip.system.DefaultRV32Config.fir@224745.4]
  wire  ctrl_killx; // @[RocketCore.scala 488:48:freechips.rocketchip.system.DefaultRV32Config.fir@224746.4]
  wire  _T_934; // @[RocketCore.scala 490:40:freechips.rocketchip.system.DefaultRV32Config.fir@224747.4]
  wire  _T_935; // @[RocketCore.scala 490:69:freechips.rocketchip.system.DefaultRV32Config.fir@224748.4]
  wire  ex_slow_bypass; // @[RocketCore.scala 490:50:freechips.rocketchip.system.DefaultRV32Config.fir@224749.4]
  wire  _T_937; // @[RocketCore.scala 491:67:freechips.rocketchip.system.DefaultRV32Config.fir@224751.4]
  wire  ex_sfence; // @[RocketCore.scala 491:48:freechips.rocketchip.system.DefaultRV32Config.fir@224752.4]
  wire  ex_xcpt; // @[RocketCore.scala 494:28:freechips.rocketchip.system.DefaultRV32Config.fir@224753.4]
  wire  _T_948; // @[RocketCore.scala 500:36:freechips.rocketchip.system.DefaultRV32Config.fir@224764.4]
  wire  mem_pc_valid; // @[RocketCore.scala 500:54:freechips.rocketchip.system.DefaultRV32Config.fir@224765.4]
  wire  _T_1092; // @[RocketCore.scala 509:56:freechips.rocketchip.system.DefaultRV32Config.fir@224912.4]
  wire  _T_1093; // @[RocketCore.scala 509:73:freechips.rocketchip.system.DefaultRV32Config.fir@224913.4]
  wire  mem_npc_misaligned; // @[RocketCore.scala 509:70:freechips.rocketchip.system.DefaultRV32Config.fir@224914.4]
  wire  _T_1094; // @[RocketCore.scala 510:27:freechips.rocketchip.system.DefaultRV32Config.fir@224915.4]
  wire  _T_1095; // @[RocketCore.scala 510:59:freechips.rocketchip.system.DefaultRV32Config.fir@224916.4]
  wire  _T_1096; // @[RocketCore.scala 510:41:freechips.rocketchip.system.DefaultRV32Config.fir@224917.4]
  wire [31:0] mem_int_wdata; // @[RocketCore.scala 510:119:freechips.rocketchip.system.DefaultRV32Config.fir@224920.4]
  wire  _T_1099; // @[RocketCore.scala 511:33:freechips.rocketchip.system.DefaultRV32Config.fir@224921.4]
  wire  mem_cfi; // @[RocketCore.scala 511:50:freechips.rocketchip.system.DefaultRV32Config.fir@224922.4]
  wire  _T_1101; // @[RocketCore.scala 512:57:freechips.rocketchip.system.DefaultRV32Config.fir@224924.4]
  wire  mem_cfi_taken; // @[RocketCore.scala 512:74:freechips.rocketchip.system.DefaultRV32Config.fir@224925.4]
  wire  _T_1106; // @[RocketCore.scala 517:20:freechips.rocketchip.system.DefaultRV32Config.fir@224932.4]
  wire  _T_1113; // @[RocketCore.scala 524:23:freechips.rocketchip.system.DefaultRV32Config.fir@224943.4]
  wire  _T_1114; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@224953.8]
  wire  _T_1115; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@224954.8]
  wire  _T_1116; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@224955.8]
  wire  _T_1118; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@224957.8]
  wire  _T_1119; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224958.8]
  wire  _T_1120; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224959.8]
  wire  _T_1121; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224960.8]
  wire  _T_1122; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224961.8]
  wire  _T_1123; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224962.8]
  wire  _T_1124; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224963.8]
  wire  _T_1125; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224964.8]
  wire  _T_1126; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224965.8]
  wire  _T_1127; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224966.8]
  wire  _T_1128; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224967.8]
  wire  _T_1129; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224968.8]
  wire  _T_1130; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224969.8]
  wire  _T_1131; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224970.8]
  wire  _T_1132; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224971.8]
  wire  _T_1133; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224972.8]
  wire  _T_1134; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224973.8]
  wire  _T_1135; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@224974.8]
  wire  _T_1136; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@224975.8]
  wire  _T_1137; // @[RocketCore.scala 531:33:freechips.rocketchip.system.DefaultRV32Config.fir@224976.8]
  wire  _T_1138; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@224978.8]
  wire  _T_1139; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@224979.8]
  wire  _T_1140; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@224980.8]
  wire  _T_1142; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@224982.8]
  wire  _T_1160; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@225000.8]
  wire  _T_1161; // @[RocketCore.scala 532:34:freechips.rocketchip.system.DefaultRV32Config.fir@225001.8]
  wire [31:0] _T_1162; // @[RocketCore.scala 544:25:freechips.rocketchip.system.DefaultRV32Config.fir@225013.8]
  wire  _T_1164; // @[RocketCore.scala 547:56:freechips.rocketchip.system.DefaultRV32Config.fir@225017.8]
  wire  _T_1165; // @[RocketCore.scala 547:24:freechips.rocketchip.system.DefaultRV32Config.fir@225018.8]
  wire  _T_1167; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@225022.10]
  wire [31:0] _T_1170; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225025.10]
  wire  _T_1171; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@225026.10]
  wire [31:0] _T_1173; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225028.10]
  wire  _T_1176; // @[RocketCore.scala 551:24:freechips.rocketchip.system.DefaultRV32Config.fir@225033.8]
  wire  _GEN_77; // @[RocketCore.scala 551:48:freechips.rocketchip.system.DefaultRV32Config.fir@225034.8]
  wire  _GEN_78; // @[RocketCore.scala 551:48:freechips.rocketchip.system.DefaultRV32Config.fir@225034.8]
  wire  _T_1177; // @[RocketCore.scala 558:38:freechips.rocketchip.system.DefaultRV32Config.fir@225039.4]
  wire  _T_1178; // @[RocketCore.scala 558:75:freechips.rocketchip.system.DefaultRV32Config.fir@225040.4]
  wire  mem_breakpoint; // @[RocketCore.scala 558:57:freechips.rocketchip.system.DefaultRV32Config.fir@225041.4]
  wire  _T_1179; // @[RocketCore.scala 559:44:freechips.rocketchip.system.DefaultRV32Config.fir@225042.4]
  wire  _T_1180; // @[RocketCore.scala 559:82:freechips.rocketchip.system.DefaultRV32Config.fir@225043.4]
  wire  mem_debug_breakpoint; // @[RocketCore.scala 559:64:freechips.rocketchip.system.DefaultRV32Config.fir@225044.4]
  wire  mem_ldst_xcpt; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225045.4]
  wire [3:0] mem_ldst_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225046.4]
  wire  _T_1181; // @[RocketCore.scala 565:29:freechips.rocketchip.system.DefaultRV32Config.fir@225047.4]
  wire  _T_1182; // @[RocketCore.scala 566:20:freechips.rocketchip.system.DefaultRV32Config.fir@225048.4]
  wire  _T_1183; // @[RocketCore.scala 567:20:freechips.rocketchip.system.DefaultRV32Config.fir@225049.4]
  wire  _T_1184; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225050.4]
  wire  mem_xcpt; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225051.4]
  wire [3:0] _T_1185; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225052.4]
  wire  dcache_kill_mem; // @[RocketCore.scala 576:55:freechips.rocketchip.system.DefaultRV32Config.fir@225067.4]
  wire  _T_1199; // @[RocketCore.scala 577:36:freechips.rocketchip.system.DefaultRV32Config.fir@225068.4]
  wire  fpu_kill_mem; // @[RocketCore.scala 577:51:freechips.rocketchip.system.DefaultRV32Config.fir@225069.4]
  wire  _T_1200; // @[RocketCore.scala 578:37:freechips.rocketchip.system.DefaultRV32Config.fir@225070.4]
  wire  replay_mem; // @[RocketCore.scala 578:55:freechips.rocketchip.system.DefaultRV32Config.fir@225071.4]
  wire  _T_1201; // @[RocketCore.scala 579:38:freechips.rocketchip.system.DefaultRV32Config.fir@225072.4]
  wire  _T_1202; // @[RocketCore.scala 579:52:freechips.rocketchip.system.DefaultRV32Config.fir@225073.4]
  wire  _T_1203; // @[RocketCore.scala 579:71:freechips.rocketchip.system.DefaultRV32Config.fir@225074.4]
  wire  killm_common; // @[RocketCore.scala 579:68:freechips.rocketchip.system.DefaultRV32Config.fir@225075.4]
  reg  _T_1205; // @[RocketCore.scala 580:37:freechips.rocketchip.system.DefaultRV32Config.fir@225077.4]
  wire  _T_1207; // @[RocketCore.scala 581:33:freechips.rocketchip.system.DefaultRV32Config.fir@225081.4]
  wire  ctrl_killm; // @[RocketCore.scala 581:45:freechips.rocketchip.system.DefaultRV32Config.fir@225082.4]
  wire  _T_1208; // @[RocketCore.scala 584:19:freechips.rocketchip.system.DefaultRV32Config.fir@225083.4]
  wire  _T_1209; // @[RocketCore.scala 585:34:freechips.rocketchip.system.DefaultRV32Config.fir@225085.4]
  wire  _T_1216; // @[RocketCore.scala 592:25:freechips.rocketchip.system.DefaultRV32Config.fir@225098.6]
  wire  _T_1217; // @[RocketCore.scala 592:40:freechips.rocketchip.system.DefaultRV32Config.fir@225099.6]
  wire [2:0] _T_1242; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225136.4]
  wire [3:0] _T_1243; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225137.4]
  wire [3:0] _T_1244; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225138.4]
  wire [3:0] _T_1245; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225139.4]
  wire [3:0] _T_1246; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225140.4]
  wire [31:0] wb_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225141.4]
  wire  _T_1247; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225142.4]
  wire  _T_1249; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225144.4]
  wire  _T_1251; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225146.4]
  wire  _T_1253; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225148.4]
  wire  _T_1255; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225150.4]
  wire  _T_1257; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225152.4]
  wire  _T_1289; // @[RocketCore.scala 679:73:freechips.rocketchip.system.DefaultRV32Config.fir@225232.4]
  wire [15:0] _T_1291; // @[RocketCore.scala 679:50:freechips.rocketchip.system.DefaultRV32Config.fir@225234.4]
  wire  _T_1294; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225244.4]
  wire  _T_1295; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225245.4]
  wire  _T_1300; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225250.4]
  wire  _T_1303; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225253.4]
  wire  _T_1304; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225254.4]
  wire  _T_1305; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225255.4]
  wire  _T_1306; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225256.4]
  wire  _T_1307; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225257.4]
  wire  _T_1308; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225258.4]
  wire  _T_1309; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225259.4]
  wire  _T_1310; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225260.4]
  wire  _T_1311; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225261.4]
  wire  _T_1312; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225262.4]
  wire  tval_valid; // @[RocketCore.scala 686:28:freechips.rocketchip.system.DefaultRV32Config.fir@225263.4]
  wire [2:0] _T_1315; // @[CSR.scala 131:15:freechips.rocketchip.system.DefaultRV32Config.fir@225275.4]
  wire [2:0] _T_1316; // @[CSR.scala 131:11:freechips.rocketchip.system.DefaultRV32Config.fir@225276.4]
  wire [31:0] _T_1327; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225292.4]
  wire [31:0] _T_1328; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225293.4]
  wire [31:0] _T_1329; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225294.4]
  wire [31:0] _T_1330; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225295.4]
  wire  _T_1354; // @[RocketCore.scala 720:28:freechips.rocketchip.system.DefaultRV32Config.fir@225323.4]
  wire [31:0] _T_1355; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225324.4]
  wire [31:0] _T_1356; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225325.4]
  wire [31:0] _T_1357; // @[RocketCore.scala 964:60:freechips.rocketchip.system.DefaultRV32Config.fir@225326.4]
  wire  _T_1358; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225327.4]
  wire  _T_1438; // @[RocketCore.scala 745:35:freechips.rocketchip.system.DefaultRV32Config.fir@225423.4]
  wire  _T_1439; // @[RocketCore.scala 745:50:freechips.rocketchip.system.DefaultRV32Config.fir@225424.4]
  wire  _T_1440; // @[RocketCore.scala 745:72:freechips.rocketchip.system.DefaultRV32Config.fir@225425.4]
  wire [31:0] _T_1442; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225427.4]
  wire [31:0] _T_1443; // @[RocketCore.scala 964:60:freechips.rocketchip.system.DefaultRV32Config.fir@225428.4]
  wire  _T_1445; // @[RocketCore.scala 746:38:freechips.rocketchip.system.DefaultRV32Config.fir@225433.4]
  wire [31:0] _T_1446; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225434.4]
  wire [31:0] _T_1447; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225435.4]
  wire [31:0] _T_1448; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225436.4]
  wire [31:0] _T_1449; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225437.4]
  wire  _T_1450; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225438.4]
  wire [31:0] _T_1451; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225442.4]
  wire [31:0] _T_1452; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225443.4]
  wire [31:0] _T_1453; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225444.4]
  wire [31:0] _T_1454; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225445.4]
  wire  _T_1455; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225446.4]
  wire  _T_1473; // @[RocketCore.scala 755:60:freechips.rocketchip.system.DefaultRV32Config.fir@225469.4]
  wire  _T_1474; // @[RocketCore.scala 755:95:freechips.rocketchip.system.DefaultRV32Config.fir@225470.4]
  wire  _T_1475; // @[RocketCore.scala 755:116:freechips.rocketchip.system.DefaultRV32Config.fir@225471.4]
  wire  _T_1518; // @[RocketCore.scala 779:17:freechips.rocketchip.system.DefaultRV32Config.fir@225522.4]
  wire [31:0] _T_1519; // @[RocketCore.scala 780:8:freechips.rocketchip.system.DefaultRV32Config.fir@225523.4]
  wire  _T_1521; // @[RocketCore.scala 782:40:freechips.rocketchip.system.DefaultRV32Config.fir@225526.4]
  wire  _T_1522; // @[RocketCore.scala 782:62:freechips.rocketchip.system.DefaultRV32Config.fir@225527.4]
  wire  _T_1524; // @[RocketCore.scala 784:43:freechips.rocketchip.system.DefaultRV32Config.fir@225530.4]
  wire  _T_1532; // @[RocketCore.scala 796:45:freechips.rocketchip.system.DefaultRV32Config.fir@225547.4]
  wire  _T_1533; // @[RocketCore.scala 796:60:freechips.rocketchip.system.DefaultRV32Config.fir@225548.4]
  wire  _T_1534; // @[RocketCore.scala 796:81:freechips.rocketchip.system.DefaultRV32Config.fir@225549.4]
  wire  _T_1535; // @[RocketCore.scala 796:90:freechips.rocketchip.system.DefaultRV32Config.fir@225550.4]
  wire  _T_1537; // @[RocketCore.scala 799:23:freechips.rocketchip.system.DefaultRV32Config.fir@225554.4]
  wire  _T_1539; // @[RocketCore.scala 799:41:freechips.rocketchip.system.DefaultRV32Config.fir@225556.4]
  wire [4:0] _T_1542; // @[RocketCore.scala 800:62:freechips.rocketchip.system.DefaultRV32Config.fir@225559.4]
  wire  _T_1543; // @[RocketCore.scala 800:62:freechips.rocketchip.system.DefaultRV32Config.fir@225560.4]
  wire  _T_1544; // @[RocketCore.scala 800:23:freechips.rocketchip.system.DefaultRV32Config.fir@225561.4]
  wire [1:0] _T_1547; // @[RocketCore.scala 800:8:freechips.rocketchip.system.DefaultRV32Config.fir@225564.4]
  wire [1:0] _T_1549; // @[RocketCore.scala 804:74:freechips.rocketchip.system.DefaultRV32Config.fir@225568.4]
  wire [31:0] _GEN_248; // @[RocketCore.scala 804:69:freechips.rocketchip.system.DefaultRV32Config.fir@225569.4]
  wire [31:0] _T_1552; // @[RocketCore.scala 805:35:freechips.rocketchip.system.DefaultRV32Config.fir@225572.4]
  wire [31:0] _T_1553; // @[RocketCore.scala 805:66:freechips.rocketchip.system.DefaultRV32Config.fir@225573.4]
  wire [5:0] ex_dcache_tag; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225601.4]
  wire  _T_1565; // @[RocketCore.scala 837:35:freechips.rocketchip.system.DefaultRV32Config.fir@225613.4]
  wire  _T_1586; // @[RocketCore.scala 850:62:freechips.rocketchip.system.DefaultRV32Config.fir@225654.4]
  wire  _T_1587; // @[RocketCore.scala 850:68:freechips.rocketchip.system.DefaultRV32Config.fir@225655.4]
  wire  unpause; // @[RocketCore.scala 850:92:freechips.rocketchip.system.DefaultRV32Config.fir@225656.4]
  wire [31:0] coreMonitorBundle_timer; // @[RocketCore.scala 877:41:freechips.rocketchip.system.DefaultRV32Config.fir@225673.4]
  wire  _T_1593; // @[RocketCore.scala 878:55:freechips.rocketchip.system.DefaultRV32Config.fir@225675.4]
  wire  coreMonitorBundle_valid; // @[RocketCore.scala 878:52:freechips.rocketchip.system.DefaultRV32Config.fir@225676.4]
  wire [31:0] coreMonitorBundle_pc; // @[RocketCore.scala 879:48:freechips.rocketchip.system.DefaultRV32Config.fir@225678.4]
  wire  _T_1596; // @[RocketCore.scala 880:40:freechips.rocketchip.system.DefaultRV32Config.fir@225680.4]
  wire  coreMonitorBundle_wrenx; // @[RocketCore.scala 880:37:freechips.rocketchip.system.DefaultRV32Config.fir@225681.4]
  reg [31:0] _T_1599; // @[RocketCore.scala 885:43:freechips.rocketchip.system.DefaultRV32Config.fir@225688.4]
  reg [31:0] coreMonitorBundle_rd0val; // @[RocketCore.scala 885:34:freechips.rocketchip.system.DefaultRV32Config.fir@225690.4]
  reg [31:0] _T_1602; // @[RocketCore.scala 887:43:freechips.rocketchip.system.DefaultRV32Config.fir@225695.4]
  reg [31:0] coreMonitorBundle_rd1val; // @[RocketCore.scala 887:34:freechips.rocketchip.system.DefaultRV32Config.fir@225697.4]
  wire  _T_1604; // @[RocketCore.scala 923:26:freechips.rocketchip.system.DefaultRV32Config.fir@225704.6]
  wire [4:0] _T_1605; // @[RocketCore.scala 923:13:freechips.rocketchip.system.DefaultRV32Config.fir@225705.6]
  wire [31:0] _T_1606; // @[RocketCore.scala 924:13:freechips.rocketchip.system.DefaultRV32Config.fir@225706.6]
  wire  _T_1607; // @[RocketCore.scala 926:27:freechips.rocketchip.system.DefaultRV32Config.fir@225707.6]
  wire [4:0] _T_1608; // @[RocketCore.scala 926:13:freechips.rocketchip.system.DefaultRV32Config.fir@225708.6]
  wire [31:0] _T_1610; // @[RocketCore.scala 927:13:freechips.rocketchip.system.DefaultRV32Config.fir@225710.6]
  wire  _T_1611; // @[RocketCore.scala 928:27:freechips.rocketchip.system.DefaultRV32Config.fir@225711.6]
  wire [4:0] _T_1612; // @[RocketCore.scala 928:13:freechips.rocketchip.system.DefaultRV32Config.fir@225712.6]
  wire [31:0] _T_1614; // @[RocketCore.scala 929:13:freechips.rocketchip.system.DefaultRV32Config.fir@225714.6]
  wire  _T_1616; // @[RocketCore.scala 920:13:freechips.rocketchip.system.DefaultRV32Config.fir@225716.6]
  wire [31:0] coreMonitorBundle_inst; // @[RocketCore.scala 872:31:freechips.rocketchip.system.DefaultRV32Config.fir@225668.4 RocketCore.scala 888:26:freechips.rocketchip.system.DefaultRV32Config.fir@225700.4]
  IBuf ibuf ( // @[RocketCore.scala 248:20:freechips.rocketchip.system.DefaultRV32Config.fir@223616.4]
    .clock(ibuf_clock),
    .reset(ibuf_reset),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_btb_entry(ibuf_io_imem_bits_btb_entry),
    .io_imem_bits_btb_bht_history(ibuf_io_imem_bits_btb_bht_history),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_kill(ibuf_io_kill),
    .io_pc(ibuf_io_pc),
    .io_btb_resp_entry(ibuf_io_btb_resp_entry),
    .io_btb_resp_bht_history(ibuf_io_btb_resp_bht_history),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  CSRFile csr ( // @[RocketCore.scala 276:19:freechips.rocketchip.system.DefaultRV32Config.fir@224334.4]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_ungated_clock(csr_io_ungated_clock),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_interrupts_seip(csr_io_interrupts_seip),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_fp_illegal(csr_io_decode_0_fp_illegal),
    .io_decode_0_fp_csr(csr_io_decode_0_fp_csr),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_decode_0_system_illegal(csr_io_decode_0_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_cease(csr_io_status_cease),
    .io_status_wfi(csr_io_status_wfi),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_vs(csr_io_status_vs),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_mode(csr_io_ptbr_mode),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_tval(csr_io_tval),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_pmp_0_cfg_l(csr_io_pmp_0_cfg_l),
    .io_pmp_0_cfg_a(csr_io_pmp_0_cfg_a),
    .io_pmp_0_cfg_x(csr_io_pmp_0_cfg_x),
    .io_pmp_0_cfg_w(csr_io_pmp_0_cfg_w),
    .io_pmp_0_cfg_r(csr_io_pmp_0_cfg_r),
    .io_pmp_0_addr(csr_io_pmp_0_addr),
    .io_pmp_0_mask(csr_io_pmp_0_mask),
    .io_pmp_1_cfg_l(csr_io_pmp_1_cfg_l),
    .io_pmp_1_cfg_a(csr_io_pmp_1_cfg_a),
    .io_pmp_1_cfg_x(csr_io_pmp_1_cfg_x),
    .io_pmp_1_cfg_w(csr_io_pmp_1_cfg_w),
    .io_pmp_1_cfg_r(csr_io_pmp_1_cfg_r),
    .io_pmp_1_addr(csr_io_pmp_1_addr),
    .io_pmp_1_mask(csr_io_pmp_1_mask),
    .io_pmp_2_cfg_l(csr_io_pmp_2_cfg_l),
    .io_pmp_2_cfg_a(csr_io_pmp_2_cfg_a),
    .io_pmp_2_cfg_x(csr_io_pmp_2_cfg_x),
    .io_pmp_2_cfg_w(csr_io_pmp_2_cfg_w),
    .io_pmp_2_cfg_r(csr_io_pmp_2_cfg_r),
    .io_pmp_2_addr(csr_io_pmp_2_addr),
    .io_pmp_2_mask(csr_io_pmp_2_mask),
    .io_pmp_3_cfg_l(csr_io_pmp_3_cfg_l),
    .io_pmp_3_cfg_a(csr_io_pmp_3_cfg_a),
    .io_pmp_3_cfg_x(csr_io_pmp_3_cfg_x),
    .io_pmp_3_cfg_w(csr_io_pmp_3_cfg_w),
    .io_pmp_3_cfg_r(csr_io_pmp_3_cfg_r),
    .io_pmp_3_addr(csr_io_pmp_3_addr),
    .io_pmp_3_mask(csr_io_pmp_3_mask),
    .io_pmp_4_cfg_l(csr_io_pmp_4_cfg_l),
    .io_pmp_4_cfg_a(csr_io_pmp_4_cfg_a),
    .io_pmp_4_cfg_x(csr_io_pmp_4_cfg_x),
    .io_pmp_4_cfg_w(csr_io_pmp_4_cfg_w),
    .io_pmp_4_cfg_r(csr_io_pmp_4_cfg_r),
    .io_pmp_4_addr(csr_io_pmp_4_addr),
    .io_pmp_4_mask(csr_io_pmp_4_mask),
    .io_pmp_5_cfg_l(csr_io_pmp_5_cfg_l),
    .io_pmp_5_cfg_a(csr_io_pmp_5_cfg_a),
    .io_pmp_5_cfg_x(csr_io_pmp_5_cfg_x),
    .io_pmp_5_cfg_w(csr_io_pmp_5_cfg_w),
    .io_pmp_5_cfg_r(csr_io_pmp_5_cfg_r),
    .io_pmp_5_addr(csr_io_pmp_5_addr),
    .io_pmp_5_mask(csr_io_pmp_5_mask),
    .io_pmp_6_cfg_l(csr_io_pmp_6_cfg_l),
    .io_pmp_6_cfg_a(csr_io_pmp_6_cfg_a),
    .io_pmp_6_cfg_x(csr_io_pmp_6_cfg_x),
    .io_pmp_6_cfg_w(csr_io_pmp_6_cfg_w),
    .io_pmp_6_cfg_r(csr_io_pmp_6_cfg_r),
    .io_pmp_6_addr(csr_io_pmp_6_addr),
    .io_pmp_6_mask(csr_io_pmp_6_mask),
    .io_pmp_7_cfg_l(csr_io_pmp_7_cfg_l),
    .io_pmp_7_cfg_a(csr_io_pmp_7_cfg_a),
    .io_pmp_7_cfg_x(csr_io_pmp_7_cfg_x),
    .io_pmp_7_cfg_w(csr_io_pmp_7_cfg_w),
    .io_pmp_7_cfg_r(csr_io_pmp_7_cfg_r),
    .io_pmp_7_addr(csr_io_pmp_7_addr),
    .io_pmp_7_mask(csr_io_pmp_7_mask),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception),
    .io_customCSRs_0_value(csr_io_customCSRs_0_value)
  );
  BreakpointUnit bpu ( // @[RocketCore.scala 317:19:freechips.rocketchip.system.DefaultRV32Config.fir@224438.4]
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  ALU alu ( // @[RocketCore.scala 377:19:freechips.rocketchip.system.DefaultRV32Config.fir@224593.4]
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MulDiv div ( // @[RocketCore.scala 401:19:freechips.rocketchip.system.DefaultRV32Config.fir@224603.4]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  assign _T_590__T_595_addr = ~id_raddr1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_590__T_595_data = _T_590[_T_590__T_595_addr]; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  `else
  assign _T_590__T_595_data = _T_590__T_595_addr >= 5'h1f ? _RAND_1[31:0] : _T_590[_T_590__T_595_addr]; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_590__T_601_addr = ~id_raddr2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_590__T_601_data = _T_590[_T_590__T_601_addr]; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  `else
  assign _T_590__T_601_data = _T_590__T_601_addr >= 5'h1f ? _RAND_2[31:0] : _T_590[_T_590__T_601_addr]; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_590__T_1284_data = _T_1275 ? io_dmem_resp_bits_data : _T_1280;
  assign _T_590__T_1284_addr = ~rf_waddr;
  assign _T_590__T_1284_mask = 1'h1;
  assign _T_590__T_1284_en = rf_wen & _T_1281;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 629:42:freechips.rocketchip.system.DefaultRV32Config.fir@225159.4]
  assign _T_1225 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 607:19:freechips.rocketchip.system.DefaultRV32Config.fir@225118.4]
  assign _T_1226 = _T_1225 & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 607:34:freechips.rocketchip.system.DefaultRV32Config.fir@225119.4]
  assign _T_1237 = wb_reg_xcpt | _T_1226; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225130.4]
  assign _T_1228 = _T_1225 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 608:34:freechips.rocketchip.system.DefaultRV32Config.fir@225121.4]
  assign _T_1238 = _T_1237 | _T_1228; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225131.4]
  assign _T_1230 = _T_1225 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 609:34:freechips.rocketchip.system.DefaultRV32Config.fir@225123.4]
  assign _T_1239 = _T_1238 | _T_1230; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225132.4]
  assign _T_1232 = _T_1225 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 610:34:freechips.rocketchip.system.DefaultRV32Config.fir@225125.4]
  assign _T_1240 = _T_1239 | _T_1232; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225133.4]
  assign _T_1234 = _T_1225 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 611:34:freechips.rocketchip.system.DefaultRV32Config.fir@225127.4]
  assign _T_1241 = _T_1240 | _T_1234; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225134.4]
  assign _T_1236 = _T_1225 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 612:34:freechips.rocketchip.system.DefaultRV32Config.fir@225129.4]
  assign wb_xcpt = _T_1241 | _T_1236; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225135.4]
  assign _T_1263 = replay_wb_common | wb_xcpt; // @[RocketCore.scala 632:27:freechips.rocketchip.system.DefaultRV32Config.fir@225164.4]
  assign _T_1264 = _T_1263 | csr_io_eret; // @[RocketCore.scala 632:38:freechips.rocketchip.system.DefaultRV32Config.fir@225165.4]
  assign take_pc_wb = _T_1264 | wb_reg_flush_pipe; // @[RocketCore.scala 632:53:freechips.rocketchip.system.DefaultRV32Config.fir@225166.4]
  assign _T_924 = ex_reg_valid | ex_reg_replay; // @[RocketCore.scala 482:34:freechips.rocketchip.system.DefaultRV32Config.fir@224731.4]
  assign ex_pc_valid = _T_924 | ex_reg_xcpt_interrupt; // @[RocketCore.scala 482:51:freechips.rocketchip.system.DefaultRV32Config.fir@224732.4]
  assign _T_1080 = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 505:36:freechips.rocketchip.system.DefaultRV32Config.fir@224898.4]
  assign _T_950 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 502:25:freechips.rocketchip.system.DefaultRV32Config.fir@224767.4]
  assign _T_953 = mem_reg_inst[31]; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@224770.4]
  assign _T_1008 = mem_reg_inst[31]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224825.4]
  assign _T_1007 = {11{_T_953}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224824.4]
  assign _T_1005 = {8{_T_953}}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224822.4]
  assign _T_1004 = mem_reg_inst[7]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224821.4]
  assign _T_1012 = {_T_1008,_T_1007,_T_1005,_T_1004,mem_reg_inst[30:25],mem_reg_inst[11:8],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224829.4]
  assign _T_1067 = mem_reg_inst[19:12]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224884.4]
  assign _T_1066 = mem_reg_inst[20]; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224883.4]
  assign _T_1074 = {_T_1008,_T_1007,_T_1067,_T_1066,mem_reg_inst[30:25],mem_reg_inst[24:21],1'h0}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224891.4]
  assign _T_1075 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@224892.4]
  assign _T_1076 = mem_ctrl_jal ? $signed(_T_1074) : $signed({{28{_T_1075[3]}},_T_1075}); // @[RocketCore.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@224893.4]
  assign _T_1077 = _T_950 ? $signed(_T_1012) : $signed(_T_1076); // @[RocketCore.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@224894.4]
  assign mem_br_target = $signed(mem_reg_pc) + $signed(_T_1077); // @[RocketCore.scala 501:41:freechips.rocketchip.system.DefaultRV32Config.fir@224897.4]
  assign _T_1082 = _T_1080 ? $signed(mem_reg_wdata) : $signed(mem_br_target); // @[RocketCore.scala 505:21:freechips.rocketchip.system.DefaultRV32Config.fir@224900.4]
  assign mem_npc = $signed(_T_1082) & -32'sh2; // @[RocketCore.scala 505:141:freechips.rocketchip.system.DefaultRV32Config.fir@224903.4]
  assign _T_1085 = mem_npc != ex_reg_pc; // @[RocketCore.scala 507:30:freechips.rocketchip.system.DefaultRV32Config.fir@224904.4]
  assign _T_1086 = ibuf_io_inst_0_valid | ibuf_io_imem_valid; // @[RocketCore.scala 508:31:freechips.rocketchip.system.DefaultRV32Config.fir@224905.4]
  assign _T_1087 = mem_npc != ibuf_io_pc; // @[RocketCore.scala 508:62:freechips.rocketchip.system.DefaultRV32Config.fir@224906.4]
  assign _T_1088 = _T_1086 ? _T_1087 : 1'h1; // @[RocketCore.scala 508:8:freechips.rocketchip.system.DefaultRV32Config.fir@224907.4]
  assign mem_wrong_npc = ex_pc_valid ? _T_1085 : _T_1088; // @[RocketCore.scala 507:8:freechips.rocketchip.system.DefaultRV32Config.fir@224908.4]
  assign _T_1104 = mem_wrong_npc | mem_reg_sfence; // @[RocketCore.scala 515:54:freechips.rocketchip.system.DefaultRV32Config.fir@224929.4]
  assign take_pc_mem = mem_reg_valid & _T_1104; // @[RocketCore.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@224930.4]
  assign take_pc_mem_wb = take_pc_wb | take_pc_mem; // @[RocketCore.scala 244:35:freechips.rocketchip.system.DefaultRV32Config.fir@223615.4]
  assign _T_3 = ibuf_io_inst_0_bits_inst_bits & 32'hfe00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223624.4]
  assign _T_4 = _T_3 == 32'h2000033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223625.4]
  assign _T_6 = _T_3 == 32'h2001033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223627.4]
  assign _T_8 = _T_3 == 32'h2003033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223629.4]
  assign _T_10 = _T_3 == 32'h2002033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223631.4]
  assign _T_12 = _T_3 == 32'h2004033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223633.4]
  assign _T_14 = _T_3 == 32'h2005033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223635.4]
  assign _T_16 = _T_3 == 32'h2006033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223637.4]
  assign _T_18 = _T_3 == 32'h2007033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223639.4]
  assign _T_19 = ibuf_io_inst_0_bits_inst_bits & 32'hf800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223640.4]
  assign _T_20 = _T_19 == 32'h202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223641.4]
  assign _T_22 = _T_19 == 32'h2000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223643.4]
  assign _T_24 = _T_19 == 32'h800202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223645.4]
  assign _T_26 = _T_19 == 32'h6000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223647.4]
  assign _T_28 = _T_19 == 32'h4000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223649.4]
  assign _T_30 = _T_19 == 32'h8000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223651.4]
  assign _T_32 = _T_19 == 32'hc000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223653.4]
  assign _T_34 = _T_19 == 32'ha000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223655.4]
  assign _T_36 = _T_19 == 32'he000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223657.4]
  assign _T_37 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223658.4]
  assign _T_38 = _T_37 == 32'h1000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223659.4]
  assign _T_40 = _T_19 == 32'h1800202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223661.4]
  assign _T_42 = _T_3 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223663.4]
  assign _T_44 = _T_3 == 32'h20002053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223665.4]
  assign _T_46 = _T_3 == 32'h20001053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223667.4]
  assign _T_48 = _T_3 == 32'h28000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223669.4]
  assign _T_50 = _T_3 == 32'h28001053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223671.4]
  assign _T_51 = ibuf_io_inst_0_bits_inst_bits & 32'hfe00007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223672.4]
  assign _T_52 = _T_51 == 32'h53; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223673.4]
  assign _T_54 = _T_51 == 32'h8000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223675.4]
  assign _T_56 = _T_51 == 32'h10000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223677.4]
  assign _T_57 = ibuf_io_inst_0_bits_inst_bits & 32'h600007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223678.4]
  assign _T_58 = _T_57 == 32'h43; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223679.4]
  assign _T_60 = _T_57 == 32'h47; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223681.4]
  assign _T_62 = _T_57 == 32'h4f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223683.4]
  assign _T_64 = _T_57 == 32'h4b; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223685.4]
  assign _T_65 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223686.4]
  assign _T_66 = _T_65 == 32'he0001053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223687.4]
  assign _T_68 = _T_65 == 32'he0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223689.4]
  assign _T_69 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223690.4]
  assign _T_70 = _T_69 == 32'hc0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223691.4]
  assign _T_72 = _T_69 == 32'hc0100053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223693.4]
  assign _T_74 = _T_3 == 32'ha0002053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223695.4]
  assign _T_76 = _T_3 == 32'ha0001053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223697.4]
  assign _T_78 = _T_3 == 32'ha0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223699.4]
  assign _T_80 = _T_65 == 32'hf0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223701.4]
  assign _T_82 = _T_69 == 32'hd0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223703.4]
  assign _T_84 = _T_69 == 32'hd0100053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223705.4]
  assign _T_85 = ibuf_io_inst_0_bits_inst_bits & 32'h707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223706.4]
  assign _T_86 = _T_85 == 32'h2007; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223707.4]
  assign _T_88 = _T_85 == 32'h2027; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223709.4]
  assign _T_90 = _T_51 == 32'h18000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223711.4]
  assign _T_92 = _T_69 == 32'h58000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223713.4]
  assign _T_94 = _T_3 == 32'h1013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223715.4]
  assign _T_96 = _T_3 == 32'h5013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223717.4]
  assign _T_98 = _T_3 == 32'h40005013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223719.4]
  assign _T_99 = ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223720.4]
  assign _T_100 = _T_99 == 32'h12000073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223721.4]
  assign _T_101 = ibuf_io_inst_0_bits_inst_bits == 32'h10200073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223722.4]
  assign _T_102 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223723.4]
  assign _T_104 = _T_85 == 32'h100f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223725.4]
  assign _T_106 = _T_85 == 32'h1063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223727.4]
  assign _T_108 = _T_85 == 32'h63; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223729.4]
  assign _T_110 = _T_85 == 32'h4063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223731.4]
  assign _T_112 = _T_85 == 32'h6063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223733.4]
  assign _T_114 = _T_85 == 32'h5063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223735.4]
  assign _T_116 = _T_85 == 32'h7063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223737.4]
  assign _T_117 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223738.4]
  assign _T_118 = _T_117 == 32'h6f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223739.4]
  assign _T_120 = _T_85 == 32'h67; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223741.4]
  assign _T_122 = _T_117 == 32'h17; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223743.4]
  assign _T_124 = _T_85 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223745.4]
  assign _T_126 = _T_85 == 32'h1003; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223747.4]
  assign _T_128 = _T_85 == 32'h2003; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223749.4]
  assign _T_130 = _T_85 == 32'h4003; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223751.4]
  assign _T_132 = _T_85 == 32'h5003; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223753.4]
  assign _T_134 = _T_85 == 32'h23; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223755.4]
  assign _T_136 = _T_85 == 32'h1023; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223757.4]
  assign _T_138 = _T_85 == 32'h2023; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223759.4]
  assign _T_140 = _T_117 == 32'h37; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223761.4]
  assign _T_142 = _T_85 == 32'h13; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223763.4]
  assign _T_144 = _T_85 == 32'h2013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223765.4]
  assign _T_146 = _T_85 == 32'h3013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223767.4]
  assign _T_148 = _T_85 == 32'h7013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223769.4]
  assign _T_150 = _T_85 == 32'h6013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223771.4]
  assign _T_152 = _T_85 == 32'h4013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223773.4]
  assign _T_154 = _T_3 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223775.4]
  assign _T_156 = _T_3 == 32'h40000033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223777.4]
  assign _T_158 = _T_3 == 32'h2033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223779.4]
  assign _T_160 = _T_3 == 32'h3033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223781.4]
  assign _T_162 = _T_3 == 32'h7033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223783.4]
  assign _T_164 = _T_3 == 32'h6033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223785.4]
  assign _T_166 = _T_3 == 32'h4033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223787.4]
  assign _T_168 = _T_3 == 32'h1033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223789.4]
  assign _T_170 = _T_3 == 32'h5033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223791.4]
  assign _T_172 = _T_3 == 32'h40005033; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223793.4]
  assign _T_174 = _T_85 == 32'hf; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223795.4]
  assign _T_175 = ibuf_io_inst_0_bits_inst_bits == 32'h73; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223796.4]
  assign _T_176 = ibuf_io_inst_0_bits_inst_bits == 32'h100073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223797.4]
  assign _T_177 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223798.4]
  assign _T_178 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223799.4]
  assign _T_179 = ibuf_io_inst_0_bits_inst_bits == 32'h30500073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223800.4]
  assign _T_181 = _T_85 == 32'h1073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223802.4]
  assign _T_183 = _T_85 == 32'h2073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223804.4]
  assign _T_185 = _T_85 == 32'h3073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223806.4]
  assign _T_187 = _T_85 == 32'h5073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223808.4]
  assign _T_189 = _T_85 == 32'h6073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223810.4]
  assign _T_191 = _T_85 == 32'h7073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223812.4]
  assign _T_193 = _T_4 | _T_6; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223814.4]
  assign _T_194 = _T_193 | _T_8; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223815.4]
  assign _T_195 = _T_194 | _T_10; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223816.4]
  assign _T_196 = _T_195 | _T_12; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223817.4]
  assign _T_197 = _T_196 | _T_14; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223818.4]
  assign _T_198 = _T_197 | _T_16; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223819.4]
  assign _T_199 = _T_198 | _T_18; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223820.4]
  assign _T_200 = _T_199 | _T_20; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223821.4]
  assign _T_201 = _T_200 | _T_22; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223822.4]
  assign _T_202 = _T_201 | _T_24; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223823.4]
  assign _T_203 = _T_202 | _T_26; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223824.4]
  assign _T_204 = _T_203 | _T_28; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223825.4]
  assign _T_205 = _T_204 | _T_30; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223826.4]
  assign _T_206 = _T_205 | _T_32; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223827.4]
  assign _T_207 = _T_206 | _T_34; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223828.4]
  assign _T_208 = _T_207 | _T_36; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223829.4]
  assign _T_209 = _T_208 | _T_38; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223830.4]
  assign _T_210 = _T_209 | _T_40; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223831.4]
  assign _T_211 = _T_210 | _T_42; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223832.4]
  assign _T_212 = _T_211 | _T_44; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223833.4]
  assign _T_213 = _T_212 | _T_46; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223834.4]
  assign _T_214 = _T_213 | _T_48; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223835.4]
  assign _T_215 = _T_214 | _T_50; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223836.4]
  assign _T_216 = _T_215 | _T_52; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223837.4]
  assign _T_217 = _T_216 | _T_54; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223838.4]
  assign _T_218 = _T_217 | _T_56; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223839.4]
  assign _T_219 = _T_218 | _T_58; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223840.4]
  assign _T_220 = _T_219 | _T_60; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223841.4]
  assign _T_221 = _T_220 | _T_62; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223842.4]
  assign _T_222 = _T_221 | _T_64; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223843.4]
  assign _T_223 = _T_222 | _T_66; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223844.4]
  assign _T_224 = _T_223 | _T_68; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223845.4]
  assign _T_225 = _T_224 | _T_70; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223846.4]
  assign _T_226 = _T_225 | _T_72; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223847.4]
  assign _T_227 = _T_226 | _T_74; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223848.4]
  assign _T_228 = _T_227 | _T_76; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223849.4]
  assign _T_229 = _T_228 | _T_78; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223850.4]
  assign _T_230 = _T_229 | _T_80; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223851.4]
  assign _T_231 = _T_230 | _T_82; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223852.4]
  assign _T_232 = _T_231 | _T_84; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223853.4]
  assign _T_233 = _T_232 | _T_86; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223854.4]
  assign _T_234 = _T_233 | _T_88; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223855.4]
  assign _T_235 = _T_234 | _T_90; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223856.4]
  assign _T_236 = _T_235 | _T_92; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223857.4]
  assign _T_237 = _T_236 | _T_94; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223858.4]
  assign _T_238 = _T_237 | _T_96; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223859.4]
  assign _T_239 = _T_238 | _T_98; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223860.4]
  assign _T_240 = _T_239 | _T_100; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223861.4]
  assign _T_241 = _T_240 | _T_101; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223862.4]
  assign _T_242 = _T_241 | _T_102; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223863.4]
  assign _T_243 = _T_242 | _T_104; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223864.4]
  assign _T_244 = _T_243 | _T_106; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223865.4]
  assign _T_245 = _T_244 | _T_108; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223866.4]
  assign _T_246 = _T_245 | _T_110; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223867.4]
  assign _T_247 = _T_246 | _T_112; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223868.4]
  assign _T_248 = _T_247 | _T_114; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223869.4]
  assign _T_249 = _T_248 | _T_116; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223870.4]
  assign _T_250 = _T_249 | _T_118; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223871.4]
  assign _T_251 = _T_250 | _T_120; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223872.4]
  assign _T_252 = _T_251 | _T_122; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223873.4]
  assign _T_253 = _T_252 | _T_124; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223874.4]
  assign _T_254 = _T_253 | _T_126; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223875.4]
  assign _T_255 = _T_254 | _T_128; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223876.4]
  assign _T_256 = _T_255 | _T_130; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223877.4]
  assign _T_257 = _T_256 | _T_132; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223878.4]
  assign _T_258 = _T_257 | _T_134; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223879.4]
  assign _T_259 = _T_258 | _T_136; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223880.4]
  assign _T_260 = _T_259 | _T_138; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223881.4]
  assign _T_261 = _T_260 | _T_140; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223882.4]
  assign _T_262 = _T_261 | _T_142; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223883.4]
  assign _T_263 = _T_262 | _T_144; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223884.4]
  assign _T_264 = _T_263 | _T_146; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223885.4]
  assign _T_265 = _T_264 | _T_148; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223886.4]
  assign _T_266 = _T_265 | _T_150; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223887.4]
  assign _T_267 = _T_266 | _T_152; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223888.4]
  assign _T_268 = _T_267 | _T_154; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223889.4]
  assign _T_269 = _T_268 | _T_156; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223890.4]
  assign _T_270 = _T_269 | _T_158; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223891.4]
  assign _T_271 = _T_270 | _T_160; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223892.4]
  assign _T_272 = _T_271 | _T_162; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223893.4]
  assign _T_273 = _T_272 | _T_164; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223894.4]
  assign _T_274 = _T_273 | _T_166; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223895.4]
  assign _T_275 = _T_274 | _T_168; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223896.4]
  assign _T_276 = _T_275 | _T_170; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223897.4]
  assign _T_277 = _T_276 | _T_172; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223898.4]
  assign _T_278 = _T_277 | _T_174; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223899.4]
  assign _T_279 = _T_278 | _T_175; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223900.4]
  assign _T_280 = _T_279 | _T_176; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223901.4]
  assign _T_281 = _T_280 | _T_177; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223902.4]
  assign _T_282 = _T_281 | _T_178; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223903.4]
  assign _T_283 = _T_282 | _T_179; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223904.4]
  assign _T_284 = _T_283 | _T_181; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223905.4]
  assign _T_285 = _T_284 | _T_183; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223906.4]
  assign _T_286 = _T_285 | _T_185; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223907.4]
  assign _T_287 = _T_286 | _T_187; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223908.4]
  assign _T_288 = _T_287 | _T_189; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223909.4]
  assign id_ctrl_legal = _T_288 | _T_191; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223910.4]
  assign _T_290 = ibuf_io_inst_0_bits_inst_bits & 32'h5c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223911.4]
  assign _T_291 = _T_290 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223912.4]
  assign _T_292 = ibuf_io_inst_0_bits_inst_bits & 32'h60; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223913.4]
  assign _T_293 = _T_292 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223914.4]
  assign id_ctrl_fp = _T_291 | _T_293; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223916.4]
  assign _T_296 = ibuf_io_inst_0_bits_inst_bits & 32'h74; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223917.4]
  assign id_ctrl_branch = _T_296 == 32'h60; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223918.4]
  assign _T_299 = ibuf_io_inst_0_bits_inst_bits & 32'h68; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223920.4]
  assign id_ctrl_jal = _T_299 == 32'h68; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223921.4]
  assign _T_302 = ibuf_io_inst_0_bits_inst_bits & 32'h203c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223923.4]
  assign id_ctrl_jalr = _T_302 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223924.4]
  assign _T_305 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223926.4]
  assign _T_306 = _T_305 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223927.4]
  assign _T_307 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223928.4]
  assign _T_308 = _T_307 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223929.4]
  assign _T_309 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223930.4]
  assign id_ctrl_amo = _T_309 == 32'h2008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223931.4]
  assign _T_311 = ibuf_io_inst_0_bits_inst_bits & 32'h42003044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223932.4]
  assign _T_312 = _T_311 == 32'h2000040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223933.4]
  assign _T_314 = _T_306 | _T_308; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223935.4]
  assign _T_315 = _T_314 | id_ctrl_amo; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223936.4]
  assign id_ctrl_rxs2 = _T_315 | _T_312; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223937.4]
  assign _T_317 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223938.4]
  assign _T_318 = _T_317 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223939.4]
  assign _T_319 = ibuf_io_inst_0_bits_inst_bits & 32'h4024; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223940.4]
  assign _T_320 = _T_319 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223941.4]
  assign _T_321 = ibuf_io_inst_0_bits_inst_bits & 32'h38; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223942.4]
  assign _T_322 = _T_321 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223943.4]
  assign _T_323 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223944.4]
  assign _T_324 = _T_323 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223945.4]
  assign _T_325 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223946.4]
  assign _T_326 = _T_325 == 32'h90000010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223947.4]
  assign _T_328 = _T_318 | _T_320; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223949.4]
  assign _T_329 = _T_328 | _T_322; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223950.4]
  assign _T_330 = _T_329 | _T_324; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223951.4]
  assign id_ctrl_rxs1 = _T_330 | _T_326; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223952.4]
  assign _T_332 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223953.4]
  assign _T_333 = _T_332 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223954.4]
  assign _T_334 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223955.4]
  assign _T_335 = _T_334 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223956.4]
  assign _T_336 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223957.4]
  assign _T_337 = _T_336 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223958.4]
  assign _T_338 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223959.4]
  assign _T_339 = _T_338 == 32'h48; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223960.4]
  assign _T_340 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223961.4]
  assign _T_341 = _T_340 == 32'h4050; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223962.4]
  assign _T_343 = _T_333 | _T_335; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223964.4]
  assign _T_344 = _T_343 | _T_337; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223965.4]
  assign _T_345 = _T_344 | _T_339; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223966.4]
  assign _T_346 = _T_345 | _T_341; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223967.4]
  assign _T_348 = _T_338 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223969.4]
  assign _T_349 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223970.4]
  assign _T_350 = _T_349 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223971.4]
  assign _T_351 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223972.4]
  assign _T_352 = _T_351 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223973.4]
  assign _T_354 = _T_348 | _T_350; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223975.4]
  assign _T_355 = _T_354 | _T_352; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223976.4]
  assign id_ctrl_sel_alu2 = {_T_355,_T_346}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223977.4]
  assign _T_357 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223978.4]
  assign _T_358 = _T_357 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223979.4]
  assign _T_359 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223980.4]
  assign _T_360 = _T_359 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223981.4]
  assign _T_361 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223982.4]
  assign _T_362 = _T_361 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223983.4]
  assign _T_364 = _T_358 | _T_360; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223985.4]
  assign _T_365 = _T_364 | _T_318; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223986.4]
  assign _T_366 = _T_365 | _T_362; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223987.4]
  assign _T_367 = _T_366 | _T_350; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223988.4]
  assign _T_369 = _T_307 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223990.4]
  assign _T_371 = _T_369 | _T_339; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223992.4]
  assign id_ctrl_sel_alu1 = {_T_371,_T_367}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223993.4]
  assign _T_373 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223994.4]
  assign _T_374 = _T_373 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223995.4]
  assign _T_376 = _T_317 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223997.4]
  assign _T_378 = _T_374 | _T_376; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223999.4]
  assign _T_379 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224000.4]
  assign _T_380 = _T_379 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224001.4]
  assign _T_382 = _T_374 | _T_380; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224003.4]
  assign _T_383 = ibuf_io_inst_0_bits_inst_bits & 32'h30; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224004.4]
  assign _T_384 = _T_383 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224005.4]
  assign _T_385 = ibuf_io_inst_0_bits_inst_bits & 32'h201c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224006.4]
  assign _T_386 = _T_385 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224007.4]
  assign _T_388 = _T_379 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224009.4]
  assign _T_390 = _T_384 | _T_386; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224011.4]
  assign _T_391 = _T_390 | _T_388; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224012.4]
  assign id_ctrl_sel_imm = {_T_391,_T_382,_T_378}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224014.4]
  assign _T_397 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224018.4]
  assign _T_398 = _T_397 == 32'h1010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224019.4]
  assign _T_399 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224020.4]
  assign _T_400 = _T_399 == 32'h1040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224021.4]
  assign _T_401 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224022.4]
  assign _T_402 = _T_401 == 32'h7000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224023.4]
  assign _T_403 = ibuf_io_inst_0_bits_inst_bits & 32'h2001074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224024.4]
  assign _T_404 = _T_403 == 32'h2001030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224025.4]
  assign _T_406 = _T_398 | _T_400; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224027.4]
  assign _T_407 = _T_406 | _T_402; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224028.4]
  assign _T_408 = _T_407 | _T_404; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224029.4]
  assign _T_409 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224030.4]
  assign _T_410 = _T_409 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224031.4]
  assign _T_411 = ibuf_io_inst_0_bits_inst_bits & 32'h3044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224032.4]
  assign _T_412 = _T_411 == 32'h3000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224033.4]
  assign _T_413 = ibuf_io_inst_0_bits_inst_bits & 32'h6044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224034.4]
  assign _T_414 = _T_413 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224035.4]
  assign _T_415 = ibuf_io_inst_0_bits_inst_bits & 32'h6018; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224036.4]
  assign _T_416 = _T_415 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224037.4]
  assign _T_417 = ibuf_io_inst_0_bits_inst_bits & 32'h2002074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224038.4]
  assign _T_418 = _T_417 == 32'h2002030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224039.4]
  assign _T_419 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224040.4]
  assign _T_420 = _T_419 == 32'h40000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224041.4]
  assign _T_421 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224042.4]
  assign _T_422 = _T_421 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224043.4]
  assign _T_424 = _T_410 | _T_412; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224045.4]
  assign _T_425 = _T_424 | _T_414; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224046.4]
  assign _T_426 = _T_425 | _T_416; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224047.4]
  assign _T_427 = _T_426 | _T_418; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224048.4]
  assign _T_428 = _T_427 | _T_420; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224049.4]
  assign _T_429 = _T_428 | _T_422; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224050.4]
  assign _T_430 = ibuf_io_inst_0_bits_inst_bits & 32'h2002054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224051.4]
  assign _T_431 = _T_430 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224052.4]
  assign _T_432 = ibuf_io_inst_0_bits_inst_bits & 32'h2034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224053.4]
  assign _T_433 = _T_432 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224054.4]
  assign _T_434 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224055.4]
  assign _T_435 = _T_434 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224056.4]
  assign _T_436 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224057.4]
  assign _T_437 = _T_436 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224058.4]
  assign _T_438 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224059.4]
  assign _T_439 = _T_438 == 32'h4040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224060.4]
  assign _T_441 = _T_431 | _T_433; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224062.4]
  assign _T_442 = _T_441 | _T_435; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224063.4]
  assign _T_443 = _T_442 | _T_437; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224064.4]
  assign _T_444 = _T_443 | _T_439; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224065.4]
  assign _T_445 = ibuf_io_inst_0_bits_inst_bits & 32'h2006054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224066.4]
  assign _T_446 = _T_445 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224067.4]
  assign _T_447 = ibuf_io_inst_0_bits_inst_bits & 32'h6034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224068.4]
  assign _T_448 = _T_447 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224069.4]
  assign _T_449 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224070.4]
  assign _T_450 = _T_449 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224071.4]
  assign _T_452 = _T_446 | _T_448; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224073.4]
  assign _T_453 = _T_452 | _T_439; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224074.4]
  assign _T_454 = _T_453 | _T_420; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224075.4]
  assign _T_455 = _T_454 | _T_450; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224076.4]
  assign id_ctrl_alu_fn = {_T_455,_T_444,_T_429,_T_408}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224079.4]
  assign _T_460 = _T_20 | _T_22; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224081.4]
  assign _T_461 = _T_460 | _T_24; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224082.4]
  assign _T_462 = _T_461 | _T_26; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224083.4]
  assign _T_463 = _T_462 | _T_28; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224084.4]
  assign _T_464 = _T_463 | _T_30; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224085.4]
  assign _T_465 = _T_464 | _T_32; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224086.4]
  assign _T_466 = _T_465 | _T_34; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224087.4]
  assign _T_467 = _T_466 | _T_36; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224088.4]
  assign _T_468 = _T_467 | _T_38; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224089.4]
  assign _T_469 = _T_468 | _T_40; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224090.4]
  assign _T_470 = _T_469 | _T_86; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224091.4]
  assign _T_471 = _T_470 | _T_88; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224092.4]
  assign _T_472 = _T_471 | _T_100; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224093.4]
  assign _T_473 = _T_472 | _T_124; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224094.4]
  assign _T_474 = _T_473 | _T_126; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224095.4]
  assign _T_475 = _T_474 | _T_128; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224096.4]
  assign _T_476 = _T_475 | _T_130; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224097.4]
  assign _T_477 = _T_476 | _T_132; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224098.4]
  assign _T_478 = _T_477 | _T_134; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224099.4]
  assign _T_479 = _T_478 | _T_136; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224100.4]
  assign id_ctrl_mem = _T_479 | _T_138; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224101.4]
  assign _T_482 = _T_299 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224103.4]
  assign _T_483 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224104.4]
  assign _T_484 = _T_483 == 32'h18000020; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224105.4]
  assign _T_485 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224106.4]
  assign _T_486 = _T_485 == 32'h20000020; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224107.4]
  assign _T_488 = _T_482 | _T_484; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224109.4]
  assign _T_489 = _T_488 | _T_486; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224110.4]
  assign _T_490 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224111.4]
  assign _T_491 = _T_490 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224112.4]
  assign _T_492 = ibuf_io_inst_0_bits_inst_bits & 32'h40000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224113.4]
  assign _T_493 = _T_492 == 32'h40000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224114.4]
  assign _T_495 = _T_491 | _T_493; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224116.4]
  assign _T_496 = ibuf_io_inst_0_bits_inst_bits & 32'h40; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224117.4]
  assign _T_497 = _T_496 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224118.4]
  assign _T_498 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224119.4]
  assign _T_499 = _T_498 == 32'h8000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224120.4]
  assign _T_500 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224121.4]
  assign _T_501 = _T_500 == 32'h80000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224122.4]
  assign _T_503 = _T_497 | _T_499; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224124.4]
  assign _T_504 = _T_503 | _T_491; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224125.4]
  assign _T_505 = _T_504 | _T_501; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224126.4]
  assign _T_506 = ibuf_io_inst_0_bits_inst_bits & 32'h18000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224127.4]
  assign _T_507 = _T_506 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224128.4]
  assign id_ctrl_mem_cmd = {_T_497,_T_507,_T_505,_T_495,_T_489}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224134.4]
  assign _T_514 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224135.4]
  assign _T_515 = _T_514 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224136.4]
  assign _T_516 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224137.4]
  assign _T_517 = _T_516 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224138.4]
  assign _T_518 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224139.4]
  assign id_ctrl_rfs3 = _T_518 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224140.4]
  assign _T_521 = _T_515 | _T_517; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224142.4]
  assign id_ctrl_rfs1 = _T_521 | id_ctrl_rfs3; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224143.4]
  assign _T_523 = ibuf_io_inst_0_bits_inst_bits & 32'h7c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224144.4]
  assign _T_524 = _T_523 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224145.4]
  assign _T_525 = ibuf_io_inst_0_bits_inst_bits & 32'h40000060; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224146.4]
  assign _T_526 = _T_525 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224147.4]
  assign _T_528 = _T_524 | _T_515; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224149.4]
  assign _T_529 = _T_528 | _T_526; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224150.4]
  assign id_ctrl_rfs2 = _T_529 | id_ctrl_rfs3; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224151.4]
  assign _T_532 = ibuf_io_inst_0_bits_inst_bits & 32'h3c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224153.4]
  assign _T_533 = _T_532 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224154.4]
  assign _T_535 = _T_516 == 32'h10000040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224156.4]
  assign _T_537 = _T_533 | _T_515; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224158.4]
  assign _T_538 = _T_537 | id_ctrl_rfs3; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224159.4]
  assign id_ctrl_wfd = _T_538 | _T_535; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224160.4]
  assign _T_540 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224161.4]
  assign id_ctrl_div = _T_540 == 32'h2000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224162.4]
  assign _T_544 = _T_305 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224165.4]
  assign _T_546 = _T_359 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224167.4]
  assign _T_547 = ibuf_io_inst_0_bits_inst_bits & 32'h2024; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224168.4]
  assign _T_548 = _T_547 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224169.4]
  assign _T_549 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224170.4]
  assign _T_550 = _T_549 == 32'h28; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224171.4]
  assign _T_551 = ibuf_io_inst_0_bits_inst_bits & 32'h1030; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224172.4]
  assign _T_552 = _T_551 == 32'h1030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224173.4]
  assign _T_553 = ibuf_io_inst_0_bits_inst_bits & 32'h2030; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224174.4]
  assign _T_554 = _T_553 == 32'h2030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224175.4]
  assign _T_555 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224176.4]
  assign _T_556 = _T_555 == 32'h80000010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224177.4]
  assign _T_558 = _T_544 | _T_546; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224179.4]
  assign _T_559 = _T_558 | _T_548; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224180.4]
  assign _T_560 = _T_559 | _T_550; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224181.4]
  assign _T_561 = _T_560 | _T_552; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224182.4]
  assign _T_562 = _T_561 | _T_554; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224183.4]
  assign id_ctrl_wxd = _T_562 | _T_556; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224184.4]
  assign _T_564 = ibuf_io_inst_0_bits_inst_bits & 32'h1070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224185.4]
  assign _T_565 = _T_564 == 32'h1070; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224186.4]
  assign _T_567 = ibuf_io_inst_0_bits_inst_bits & 32'h2070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224188.4]
  assign _T_568 = _T_567 == 32'h2070; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224189.4]
  assign _T_570 = ibuf_io_inst_0_bits_inst_bits & 32'h10000070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224191.4]
  assign _T_571 = _T_570 == 32'h70; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224192.4]
  assign _T_572 = ibuf_io_inst_0_bits_inst_bits & 32'h12000034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224193.4]
  assign _T_573 = _T_572 == 32'h10000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224194.4]
  assign _T_574 = ibuf_io_inst_0_bits_inst_bits & 32'he0000050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224195.4]
  assign _T_575 = _T_574 == 32'h60000050; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224196.4]
  assign _T_577 = _T_571 | _T_565; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224198.4]
  assign _T_578 = _T_577 | _T_568; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224199.4]
  assign _T_579 = _T_578 | _T_573; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224200.4]
  assign _T_580 = _T_579 | _T_575; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@224201.4]
  assign id_ctrl_csr = {_T_580,_T_568,_T_565}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224203.4]
  assign _T_583 = ibuf_io_inst_0_bits_inst_bits & 32'h1048; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@224204.4]
  assign id_ctrl_fence_i = _T_583 == 32'h1008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224205.4]
  assign id_ctrl_fence = _T_309 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@224208.4]
  assign id_raddr3 = ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224239.4]
  assign id_raddr2 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224240.4]
  assign id_raddr1 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224241.4]
  assign id_waddr = ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 261:72:freechips.rocketchip.system.DefaultRV32Config.fir@224242.4]
  assign _T_591 = id_raddr1 == 5'h0; // @[RocketCore.scala 990:45:freechips.rocketchip.system.DefaultRV32Config.fir@224249.4]
  assign _T_596 = _T_590__T_595_data; // @[RocketCore.scala 990:25:freechips.rocketchip.system.DefaultRV32Config.fir@224254.4]
  assign _T_602 = _T_590__T_601_data; // @[RocketCore.scala 990:25:freechips.rocketchip.system.DefaultRV32Config.fir@224263.4]
  assign _T_669 = id_ctrl_csr == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224338.4]
  assign _T_670 = id_ctrl_csr == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224339.4]
  assign _T_671 = id_ctrl_csr == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224340.4]
  assign _T_672 = _T_669 | _T_670; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224341.4]
  assign id_csr_en = _T_672 | _T_671; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224342.4]
  assign id_system_insn = id_ctrl_csr == 3'h4; // @[RocketCore.scala 278:36:freechips.rocketchip.system.DefaultRV32Config.fir@224343.4]
  assign id_csr_ren = _T_672 & _T_591; // @[RocketCore.scala 279:54:freechips.rocketchip.system.DefaultRV32Config.fir@224348.4]
  assign _T_677 = id_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 281:50:freechips.rocketchip.system.DefaultRV32Config.fir@224350.4]
  assign id_sfence = id_ctrl_mem & _T_677; // @[RocketCore.scala 281:31:freechips.rocketchip.system.DefaultRV32Config.fir@224351.4]
  assign _T_678 = id_sfence | id_system_insn; // @[RocketCore.scala 282:32:freechips.rocketchip.system.DefaultRV32Config.fir@224352.4]
  assign _T_679 = ~id_csr_ren; // @[RocketCore.scala 282:67:freechips.rocketchip.system.DefaultRV32Config.fir@224353.4]
  assign _T_680 = id_csr_en & _T_679; // @[RocketCore.scala 282:64:freechips.rocketchip.system.DefaultRV32Config.fir@224354.4]
  assign _T_681 = _T_680 & csr_io_decode_0_write_flush; // @[RocketCore.scala 282:79:freechips.rocketchip.system.DefaultRV32Config.fir@224355.4]
  assign id_csr_flush = _T_678 | _T_681; // @[RocketCore.scala 282:50:freechips.rocketchip.system.DefaultRV32Config.fir@224356.4]
  assign _T_682 = ~id_ctrl_legal; // @[RocketCore.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@224359.4]
  assign _T_685 = ~csr_io_status_isa[12]; // @[RocketCore.scala 291:37:freechips.rocketchip.system.DefaultRV32Config.fir@224362.4]
  assign _T_686 = id_ctrl_div & _T_685; // @[RocketCore.scala 291:34:freechips.rocketchip.system.DefaultRV32Config.fir@224363.4]
  assign _T_687 = _T_682 | _T_686; // @[RocketCore.scala 290:40:freechips.rocketchip.system.DefaultRV32Config.fir@224364.4]
  assign _T_689 = ~csr_io_status_isa[0]; // @[RocketCore.scala 292:20:freechips.rocketchip.system.DefaultRV32Config.fir@224366.4]
  assign _T_690 = id_ctrl_amo & _T_689; // @[RocketCore.scala 292:17:freechips.rocketchip.system.DefaultRV32Config.fir@224367.4]
  assign _T_691 = _T_687 | _T_690; // @[RocketCore.scala 291:65:freechips.rocketchip.system.DefaultRV32Config.fir@224368.4]
  assign _T_692 = csr_io_decode_0_fp_illegal | io_fpu_illegal_rm; // @[RocketCore.scala 293:48:freechips.rocketchip.system.DefaultRV32Config.fir@224369.4]
  assign _T_693 = id_ctrl_fp & _T_692; // @[RocketCore.scala 293:16:freechips.rocketchip.system.DefaultRV32Config.fir@224370.4]
  assign _T_694 = _T_691 | _T_693; // @[RocketCore.scala 292:48:freechips.rocketchip.system.DefaultRV32Config.fir@224371.4]
  assign _T_700 = ~csr_io_status_isa[2]; // @[RocketCore.scala 295:33:freechips.rocketchip.system.DefaultRV32Config.fir@224377.4]
  assign _T_722 = _T_679 & csr_io_decode_0_write_illegal; // @[RocketCore.scala 301:64:freechips.rocketchip.system.DefaultRV32Config.fir@224399.4]
  assign _T_723 = csr_io_decode_0_read_illegal | _T_722; // @[RocketCore.scala 301:49:freechips.rocketchip.system.DefaultRV32Config.fir@224400.4]
  assign _T_724 = id_csr_en & _T_723; // @[RocketCore.scala 301:15:freechips.rocketchip.system.DefaultRV32Config.fir@224401.4]
  assign _T_725 = _T_694 | _T_724; // @[RocketCore.scala 300:81:freechips.rocketchip.system.DefaultRV32Config.fir@224402.4]
  assign _T_728 = _T_678 & csr_io_decode_0_system_illegal; // @[RocketCore.scala 302:65:freechips.rocketchip.system.DefaultRV32Config.fir@224405.4]
  assign id_illegal_insn = _T_725 | _T_728; // @[RocketCore.scala 301:99:freechips.rocketchip.system.DefaultRV32Config.fir@224407.4]
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 304:29:freechips.rocketchip.system.DefaultRV32Config.fir@224408.4]
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 305:29:freechips.rocketchip.system.DefaultRV32Config.fir@224409.4]
  assign id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20]; // @[RocketCore.scala 307:33:freechips.rocketchip.system.DefaultRV32Config.fir@224411.4]
  assign _T_730 = id_ctrl_amo & id_amo_aq; // @[RocketCore.scala 308:52:freechips.rocketchip.system.DefaultRV32Config.fir@224412.4]
  assign id_fence_next = id_ctrl_fence | _T_730; // @[RocketCore.scala 308:37:freechips.rocketchip.system.DefaultRV32Config.fir@224413.4]
  assign _T_731 = ~io_dmem_ordered; // @[RocketCore.scala 309:21:freechips.rocketchip.system.DefaultRV32Config.fir@224414.4]
  assign id_mem_busy = _T_731 | io_dmem_req_valid; // @[RocketCore.scala 309:38:freechips.rocketchip.system.DefaultRV32Config.fir@224415.4]
  assign _T_732 = ~id_mem_busy; // @[RocketCore.scala 310:9:freechips.rocketchip.system.DefaultRV32Config.fir@224416.4]
  assign _GEN_0 = _T_732 ? 1'h0 : id_reg_fence; // @[RocketCore.scala 310:23:freechips.rocketchip.system.DefaultRV32Config.fir@224417.4]
  assign _T_740 = id_ctrl_amo & id_amo_rl; // @[RocketCore.scala 315:33:freechips.rocketchip.system.DefaultRV32Config.fir@224428.4]
  assign _T_741 = _T_740 | id_ctrl_fence_i; // @[RocketCore.scala 315:46:freechips.rocketchip.system.DefaultRV32Config.fir@224429.4]
  assign _T_743 = id_reg_fence & id_ctrl_mem; // @[RocketCore.scala 315:81:freechips.rocketchip.system.DefaultRV32Config.fir@224431.4]
  assign _T_744 = _T_741 | _T_743; // @[RocketCore.scala 315:65:freechips.rocketchip.system.DefaultRV32Config.fir@224432.4]
  assign id_do_fence = id_mem_busy & _T_744; // @[RocketCore.scala 315:17:freechips.rocketchip.system.DefaultRV32Config.fir@224433.4]
  assign _T_747 = csr_io_interrupt | bpu_io_debug_if; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224446.4]
  assign _T_748 = _T_747 | bpu_io_xcpt_if; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224447.4]
  assign _T_749 = _T_748 | ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224448.4]
  assign _T_750 = _T_749 | ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224449.4]
  assign _T_751 = _T_750 | ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224450.4]
  assign _T_752 = _T_751 | ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224451.4]
  assign id_xcpt = _T_752 | id_illegal_insn; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@224452.4]
  assign _T_753 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224453.4]
  assign _T_754 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_753}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224454.4]
  assign _T_755 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_754; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224455.4]
  assign _T_756 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_755; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224456.4]
  assign _T_757 = bpu_io_xcpt_if ? 4'h3 : _T_756; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224457.4]
  assign _T_758 = bpu_io_debug_if ? 4'he : _T_757; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@224458.4]
  assign ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 351:29:freechips.rocketchip.system.DefaultRV32Config.fir@224471.4]
  assign mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 352:31:freechips.rocketchip.system.DefaultRV32Config.fir@224473.4]
  assign wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 353:29:freechips.rocketchip.system.DefaultRV32Config.fir@224475.4]
  assign _T_772 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 356:19:freechips.rocketchip.system.DefaultRV32Config.fir@224477.4]
  assign _T_773 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 357:20:freechips.rocketchip.system.DefaultRV32Config.fir@224478.4]
  assign _T_774 = ~mem_ctrl_mem; // @[RocketCore.scala 357:39:freechips.rocketchip.system.DefaultRV32Config.fir@224479.4]
  assign _T_775 = _T_773 & _T_774; // @[RocketCore.scala 357:36:freechips.rocketchip.system.DefaultRV32Config.fir@224480.4]
  assign id_bypass_src_0_0 = 5'h0 == id_raddr1; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224482.4]
  assign _T_778 = ex_waddr == id_raddr1; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224484.4]
  assign id_bypass_src_0_1 = _T_772 & _T_778; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224485.4]
  assign _T_779 = mem_waddr == id_raddr1; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224486.4]
  assign id_bypass_src_0_2 = _T_775 & _T_779; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224487.4]
  assign id_bypass_src_0_3 = _T_773 & _T_779; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224489.4]
  assign id_bypass_src_1_0 = 5'h0 == id_raddr2; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224490.4]
  assign _T_782 = ex_waddr == id_raddr2; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224492.4]
  assign id_bypass_src_1_1 = _T_772 & _T_782; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224493.4]
  assign _T_783 = mem_waddr == id_raddr2; // @[RocketCore.scala 359:82:freechips.rocketchip.system.DefaultRV32Config.fir@224494.4]
  assign id_bypass_src_1_2 = _T_775 & _T_783; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224495.4]
  assign id_bypass_src_1_3 = _T_773 & _T_783; // @[RocketCore.scala 359:74:freechips.rocketchip.system.DefaultRV32Config.fir@224497.4]
  assign _T_785 = ex_reg_rs_lsb_0 == 2'h1; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224501.4]
  assign _T_786 = _T_785 ? mem_reg_wdata : 32'h0; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224502.4]
  assign _T_787 = ex_reg_rs_lsb_0 == 2'h2; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224503.4]
  assign _T_788 = _T_787 ? wb_reg_wdata : _T_786; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224504.4]
  assign _T_789 = ex_reg_rs_lsb_0 == 2'h3; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224505.4]
  assign _T_790 = _T_789 ? io_dmem_resp_bits_data_word_bypass : _T_788; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224506.4]
  assign _T_791 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224507.4]
  assign _T_792 = ex_reg_rs_lsb_1 == 2'h1; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224509.4]
  assign _T_793 = _T_792 ? mem_reg_wdata : 32'h0; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224510.4]
  assign _T_794 = ex_reg_rs_lsb_1 == 2'h2; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224511.4]
  assign _T_795 = _T_794 ? wb_reg_wdata : _T_793; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224512.4]
  assign _T_796 = ex_reg_rs_lsb_1 == 2'h3; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@224513.4]
  assign _T_797 = _T_796 ? io_dmem_resp_bits_data_word_bypass : _T_795; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@224514.4]
  assign _T_798 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224515.4]
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_797 : _T_798; // @[RocketCore.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@224516.4]
  assign _T_799 = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 1005:24:freechips.rocketchip.system.DefaultRV32Config.fir@224517.4]
  assign _T_801 = ex_reg_inst[31]; // @[RocketCore.scala 1005:53:freechips.rocketchip.system.DefaultRV32Config.fir@224519.4]
  assign _T_802 = _T_799 ? $signed(1'sh0) : $signed(_T_801); // @[RocketCore.scala 1005:19:freechips.rocketchip.system.DefaultRV32Config.fir@224520.4]
  assign _T_803 = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 1006:26:freechips.rocketchip.system.DefaultRV32Config.fir@224521.4]
  assign _T_805 = ex_reg_inst[30:20]; // @[RocketCore.scala 1006:49:freechips.rocketchip.system.DefaultRV32Config.fir@224523.4]
  assign _T_807 = ex_ctrl_sel_imm != 3'h2; // @[RocketCore.scala 1007:26:freechips.rocketchip.system.DefaultRV32Config.fir@224525.4]
  assign _T_808 = ex_ctrl_sel_imm != 3'h3; // @[RocketCore.scala 1007:43:freechips.rocketchip.system.DefaultRV32Config.fir@224526.4]
  assign _T_809 = _T_807 & _T_808; // @[RocketCore.scala 1007:36:freechips.rocketchip.system.DefaultRV32Config.fir@224527.4]
  assign _T_811 = ex_reg_inst[19:12]; // @[RocketCore.scala 1007:73:freechips.rocketchip.system.DefaultRV32Config.fir@224529.4]
  assign _T_815 = _T_803 | _T_799; // @[RocketCore.scala 1008:33:freechips.rocketchip.system.DefaultRV32Config.fir@224533.4]
  assign _T_816 = ex_ctrl_sel_imm == 3'h3; // @[RocketCore.scala 1009:23:freechips.rocketchip.system.DefaultRV32Config.fir@224534.4]
  assign _T_818 = ex_reg_inst[20]; // @[RocketCore.scala 1009:44:freechips.rocketchip.system.DefaultRV32Config.fir@224536.4]
  assign _T_819 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 1010:23:freechips.rocketchip.system.DefaultRV32Config.fir@224537.4]
  assign _T_821 = ex_reg_inst[7]; // @[RocketCore.scala 1010:43:freechips.rocketchip.system.DefaultRV32Config.fir@224539.4]
  assign _T_822 = _T_819 ? $signed(_T_821) : $signed(_T_802); // @[RocketCore.scala 1010:18:freechips.rocketchip.system.DefaultRV32Config.fir@224540.4]
  assign _T_823 = _T_816 ? $signed(_T_818) : $signed(_T_822); // @[RocketCore.scala 1009:18:freechips.rocketchip.system.DefaultRV32Config.fir@224541.4]
  assign _T_829 = _T_815 ? 6'h0 : ex_reg_inst[30:25]; // @[RocketCore.scala 1011:20:freechips.rocketchip.system.DefaultRV32Config.fir@224547.4]
  assign _T_831 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 1013:24:freechips.rocketchip.system.DefaultRV32Config.fir@224549.4]
  assign _T_833 = _T_831 | _T_819; // @[RocketCore.scala 1013:34:freechips.rocketchip.system.DefaultRV32Config.fir@224551.4]
  assign _T_838 = _T_799 ? ex_reg_inst[19:16] : ex_reg_inst[24:21]; // @[RocketCore.scala 1014:19:freechips.rocketchip.system.DefaultRV32Config.fir@224556.4]
  assign _T_839 = _T_833 ? ex_reg_inst[11:8] : _T_838; // @[RocketCore.scala 1013:19:freechips.rocketchip.system.DefaultRV32Config.fir@224557.4]
  assign _T_840 = _T_803 ? 4'h0 : _T_839; // @[RocketCore.scala 1012:19:freechips.rocketchip.system.DefaultRV32Config.fir@224558.4]
  assign _T_843 = ex_ctrl_sel_imm == 3'h4; // @[RocketCore.scala 1016:22:freechips.rocketchip.system.DefaultRV32Config.fir@224561.4]
  assign _T_847 = _T_799 & ex_reg_inst[15]; // @[RocketCore.scala 1017:17:freechips.rocketchip.system.DefaultRV32Config.fir@224565.4]
  assign _T_848 = _T_843 ? ex_reg_inst[20] : _T_847; // @[RocketCore.scala 1016:17:freechips.rocketchip.system.DefaultRV32Config.fir@224566.4]
  assign _T_849 = _T_831 ? ex_reg_inst[7] : _T_848; // @[RocketCore.scala 1015:17:freechips.rocketchip.system.DefaultRV32Config.fir@224567.4]
  assign _T_852 = _T_815 ? $signed(1'sh0) : $signed(_T_823); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224570.4]
  assign _T_853 = _T_809 ? $signed({8{_T_802}}) : $signed(_T_811); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224571.4]
  assign _T_855 = _T_803 ? $signed(_T_805) : $signed({11{_T_802}}); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224573.4]
  assign _T_856 = _T_799 ? $signed(1'sh0) : $signed(_T_801); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224574.4]
  assign ex_imm = {_T_856,_T_855,_T_853,_T_852,_T_829,_T_840,_T_849}; // @[RocketCore.scala 1019:53:freechips.rocketchip.system.DefaultRV32Config.fir@224578.4]
  assign _T_860 = ex_reg_rs_bypass_0 ? _T_790 : _T_791; // @[RocketCore.scala 370:24:freechips.rocketchip.system.DefaultRV32Config.fir@224579.4]
  assign _T_862 = 2'h1 == ex_ctrl_sel_alu1; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224581.4]
  assign _T_863 = _T_862 ? $signed(_T_860) : $signed(32'sh0); // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224582.4]
  assign _T_864 = 2'h2 == ex_ctrl_sel_alu1; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224583.4]
  assign _T_865 = ex_reg_rs_bypass_1 ? _T_797 : _T_798; // @[RocketCore.scala 373:24:freechips.rocketchip.system.DefaultRV32Config.fir@224585.4]
  assign _T_866 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 375:19:freechips.rocketchip.system.DefaultRV32Config.fir@224586.4]
  assign _T_867 = 2'h2 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224587.4]
  assign _T_868 = _T_867 ? $signed(_T_865) : $signed(32'sh0); // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224588.4]
  assign _T_869 = 2'h3 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224589.4]
  assign _T_870 = _T_869 ? $signed(ex_imm) : $signed(_T_868); // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@224590.4]
  assign _T_871 = 2'h1 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@224591.4]
  assign _T_1512 = ~ibuf_io_inst_0_valid; // @[RocketCore.scala 774:17:freechips.rocketchip.system.DefaultRV32Config.fir@225513.4]
  assign _T_1513 = _T_1512 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 774:40:freechips.rocketchip.system.DefaultRV32Config.fir@225514.4]
  assign _T_1514 = _T_1513 | take_pc_mem_wb; // @[RocketCore.scala 774:71:freechips.rocketchip.system.DefaultRV32Config.fir@225515.4]
  assign _T_1318 = id_raddr1 != 5'h0; // @[RocketCore.scala 704:55:freechips.rocketchip.system.DefaultRV32Config.fir@225283.4]
  assign _T_1319 = id_ctrl_rxs1 & _T_1318; // @[RocketCore.scala 704:42:freechips.rocketchip.system.DefaultRV32Config.fir@225284.4]
  assign _T_1366 = id_raddr1 == ex_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225339.4]
  assign _T_1367 = _T_1319 & _T_1366; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225340.4]
  assign _T_1320 = id_raddr2 != 5'h0; // @[RocketCore.scala 705:55:freechips.rocketchip.system.DefaultRV32Config.fir@225285.4]
  assign _T_1321 = id_ctrl_rxs2 & _T_1320; // @[RocketCore.scala 705:42:freechips.rocketchip.system.DefaultRV32Config.fir@225286.4]
  assign _T_1368 = id_raddr2 == ex_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225341.4]
  assign _T_1369 = _T_1321 & _T_1368; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225342.4]
  assign _T_1372 = _T_1367 | _T_1369; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225345.4]
  assign _T_1322 = id_waddr != 5'h0; // @[RocketCore.scala 706:55:freechips.rocketchip.system.DefaultRV32Config.fir@225287.4]
  assign _T_1323 = id_ctrl_wxd & _T_1322; // @[RocketCore.scala 706:42:freechips.rocketchip.system.DefaultRV32Config.fir@225288.4]
  assign _T_1370 = id_waddr == ex_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@225343.4]
  assign _T_1371 = _T_1323 & _T_1370; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225344.4]
  assign _T_1373 = _T_1372 | _T_1371; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225346.4]
  assign data_hazard_ex = ex_ctrl_wxd & _T_1373; // @[RocketCore.scala 724:36:freechips.rocketchip.system.DefaultRV32Config.fir@225347.4]
  assign _T_1359 = ex_ctrl_csr != 3'h0; // @[RocketCore.scala 723:38:freechips.rocketchip.system.DefaultRV32Config.fir@225331.4]
  assign _T_1360 = _T_1359 | ex_ctrl_jalr; // @[RocketCore.scala 723:48:freechips.rocketchip.system.DefaultRV32Config.fir@225332.4]
  assign _T_1361 = _T_1360 | ex_ctrl_mem; // @[RocketCore.scala 723:64:freechips.rocketchip.system.DefaultRV32Config.fir@225333.4]
  assign _T_1363 = _T_1361 | ex_ctrl_div; // @[RocketCore.scala 723:94:freechips.rocketchip.system.DefaultRV32Config.fir@225335.4]
  assign ex_cannot_bypass = _T_1363 | ex_ctrl_fp; // @[RocketCore.scala 723:109:freechips.rocketchip.system.DefaultRV32Config.fir@225336.4]
  assign _T_1385 = data_hazard_ex & ex_cannot_bypass; // @[RocketCore.scala 726:54:freechips.rocketchip.system.DefaultRV32Config.fir@225360.4]
  assign _T_1375 = io_fpu_dec_ren1 & _T_1366; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225349.4]
  assign _T_1377 = io_fpu_dec_ren2 & _T_1368; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225351.4]
  assign _T_1382 = _T_1375 | _T_1377; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225356.4]
  assign _T_1378 = id_raddr3 == ex_waddr; // @[RocketCore.scala 725:76:freechips.rocketchip.system.DefaultRV32Config.fir@225352.4]
  assign _T_1379 = io_fpu_dec_ren3 & _T_1378; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225353.4]
  assign _T_1383 = _T_1382 | _T_1379; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225357.4]
  assign _T_1381 = io_fpu_dec_wen & _T_1370; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225355.4]
  assign _T_1384 = _T_1383 | _T_1381; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225358.4]
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_1384; // @[RocketCore.scala 725:39:freechips.rocketchip.system.DefaultRV32Config.fir@225359.4]
  assign _T_1386 = _T_1385 | fp_data_hazard_ex; // @[RocketCore.scala 726:74:freechips.rocketchip.system.DefaultRV32Config.fir@225361.4]
  assign id_ex_hazard = ex_reg_valid & _T_1386; // @[RocketCore.scala 726:35:freechips.rocketchip.system.DefaultRV32Config.fir@225362.4]
  assign _T_1393 = id_raddr1 == mem_waddr; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225371.4]
  assign _T_1394 = _T_1319 & _T_1393; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225372.4]
  assign _T_1395 = id_raddr2 == mem_waddr; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225373.4]
  assign _T_1396 = _T_1321 & _T_1395; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225374.4]
  assign _T_1399 = _T_1394 | _T_1396; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225377.4]
  assign _T_1397 = id_waddr == mem_waddr; // @[RocketCore.scala 733:72:freechips.rocketchip.system.DefaultRV32Config.fir@225375.4]
  assign _T_1398 = _T_1323 & _T_1397; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225376.4]
  assign _T_1400 = _T_1399 | _T_1398; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225378.4]
  assign data_hazard_mem = mem_ctrl_wxd & _T_1400; // @[RocketCore.scala 733:38:freechips.rocketchip.system.DefaultRV32Config.fir@225379.4]
  assign _T_1387 = mem_ctrl_csr != 3'h0; // @[RocketCore.scala 732:40:freechips.rocketchip.system.DefaultRV32Config.fir@225364.4]
  assign _T_1388 = mem_ctrl_mem & mem_reg_slow_bypass; // @[RocketCore.scala 732:66:freechips.rocketchip.system.DefaultRV32Config.fir@225365.4]
  assign _T_1389 = _T_1387 | _T_1388; // @[RocketCore.scala 732:50:freechips.rocketchip.system.DefaultRV32Config.fir@225366.4]
  assign _T_1391 = _T_1389 | mem_ctrl_div; // @[RocketCore.scala 732:100:freechips.rocketchip.system.DefaultRV32Config.fir@225368.4]
  assign mem_cannot_bypass = _T_1391 | mem_ctrl_fp; // @[RocketCore.scala 732:116:freechips.rocketchip.system.DefaultRV32Config.fir@225369.4]
  assign _T_1412 = data_hazard_mem & mem_cannot_bypass; // @[RocketCore.scala 735:57:freechips.rocketchip.system.DefaultRV32Config.fir@225392.4]
  assign _T_1402 = io_fpu_dec_ren1 & _T_1393; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225381.4]
  assign _T_1404 = io_fpu_dec_ren2 & _T_1395; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225383.4]
  assign _T_1409 = _T_1402 | _T_1404; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225388.4]
  assign _T_1405 = id_raddr3 == mem_waddr; // @[RocketCore.scala 734:78:freechips.rocketchip.system.DefaultRV32Config.fir@225384.4]
  assign _T_1406 = io_fpu_dec_ren3 & _T_1405; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225385.4]
  assign _T_1410 = _T_1409 | _T_1406; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225389.4]
  assign _T_1408 = io_fpu_dec_wen & _T_1397; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225387.4]
  assign _T_1411 = _T_1410 | _T_1408; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225390.4]
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_1411; // @[RocketCore.scala 734:41:freechips.rocketchip.system.DefaultRV32Config.fir@225391.4]
  assign _T_1413 = _T_1412 | fp_data_hazard_mem; // @[RocketCore.scala 735:78:freechips.rocketchip.system.DefaultRV32Config.fir@225393.4]
  assign id_mem_hazard = mem_reg_valid & _T_1413; // @[RocketCore.scala 735:37:freechips.rocketchip.system.DefaultRV32Config.fir@225394.4]
  assign _T_1483 = id_ex_hazard | id_mem_hazard; // @[RocketCore.scala 762:18:freechips.rocketchip.system.DefaultRV32Config.fir@225483.4]
  assign _T_1416 = id_raddr1 == wb_waddr; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225398.4]
  assign _T_1417 = _T_1319 & _T_1416; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225399.4]
  assign _T_1418 = id_raddr2 == wb_waddr; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225400.4]
  assign _T_1419 = _T_1321 & _T_1418; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225401.4]
  assign _T_1422 = _T_1417 | _T_1419; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225404.4]
  assign _T_1420 = id_waddr == wb_waddr; // @[RocketCore.scala 739:70:freechips.rocketchip.system.DefaultRV32Config.fir@225402.4]
  assign _T_1421 = _T_1323 & _T_1420; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225403.4]
  assign _T_1423 = _T_1422 | _T_1421; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225405.4]
  assign data_hazard_wb = wb_ctrl_wxd & _T_1423; // @[RocketCore.scala 739:36:freechips.rocketchip.system.DefaultRV32Config.fir@225406.4]
  assign _T_925 = ~io_dmem_resp_valid; // @[RocketCore.scala 483:39:freechips.rocketchip.system.DefaultRV32Config.fir@224733.4]
  assign wb_dcache_miss = wb_ctrl_mem & _T_925; // @[RocketCore.scala 483:36:freechips.rocketchip.system.DefaultRV32Config.fir@224734.4]
  assign wb_set_sboard = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 628:35:freechips.rocketchip.system.DefaultRV32Config.fir@225157.4]
  assign _T_1435 = data_hazard_wb & wb_set_sboard; // @[RocketCore.scala 741:54:freechips.rocketchip.system.DefaultRV32Config.fir@225419.4]
  assign _T_1425 = io_fpu_dec_ren1 & _T_1416; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225408.4]
  assign _T_1427 = io_fpu_dec_ren2 & _T_1418; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225410.4]
  assign _T_1432 = _T_1425 | _T_1427; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225415.4]
  assign _T_1428 = id_raddr3 == wb_waddr; // @[RocketCore.scala 740:76:freechips.rocketchip.system.DefaultRV32Config.fir@225411.4]
  assign _T_1429 = io_fpu_dec_ren3 & _T_1428; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225412.4]
  assign _T_1433 = _T_1432 | _T_1429; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225416.4]
  assign _T_1431 = io_fpu_dec_wen & _T_1420; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225414.4]
  assign _T_1434 = _T_1433 | _T_1431; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225417.4]
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_1434; // @[RocketCore.scala 740:39:freechips.rocketchip.system.DefaultRV32Config.fir@225418.4]
  assign _T_1436 = _T_1435 | fp_data_hazard_wb; // @[RocketCore.scala 741:71:freechips.rocketchip.system.DefaultRV32Config.fir@225420.4]
  assign id_wb_hazard = wb_reg_valid & _T_1436; // @[RocketCore.scala 741:35:freechips.rocketchip.system.DefaultRV32Config.fir@225421.4]
  assign _T_1484 = _T_1483 | id_wb_hazard; // @[RocketCore.scala 762:35:freechips.rocketchip.system.DefaultRV32Config.fir@225484.4]
  assign _T_1326 = {_T_1324[31:1], 1'h0}; // @[RocketCore.scala 970:40:freechips.rocketchip.system.DefaultRV32Config.fir@225291.4]
  assign _T_1332 = _T_1326 >> id_raddr1; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225300.4]
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 638:44:freechips.rocketchip.system.DefaultRV32Config.fir@225174.4]
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 639:42:freechips.rocketchip.system.DefaultRV32Config.fir@225175.4]
  assign dmem_resp_xpu = ~io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 635:23:freechips.rocketchip.system.DefaultRV32Config.fir@225170.4]
  assign _T_1271 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 654:26:freechips.rocketchip.system.DefaultRV32Config.fir@225188.4]
  assign _T_1270 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@225184.4]
  assign ll_wen = _T_1271 | _T_1270; // @[RocketCore.scala 654:44:freechips.rocketchip.system.DefaultRV32Config.fir@225189.4]
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 637:46:freechips.rocketchip.system.DefaultRV32Config.fir@225173.4]
  assign ll_waddr = _T_1271 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 654:44:freechips.rocketchip.system.DefaultRV32Config.fir@225189.4]
  assign _T_1334 = ll_waddr == id_raddr1; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225302.4]
  assign _T_1335 = ll_wen & _T_1334; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225303.4]
  assign _T_1336 = ~_T_1335; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225304.4]
  assign _T_1337 = _T_1332[0] & _T_1336; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225305.4]
  assign _T_1338 = _T_1319 & _T_1337; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225306.4]
  assign _T_1339 = _T_1326 >> id_raddr2; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225307.4]
  assign _T_1341 = ll_waddr == id_raddr2; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225309.4]
  assign _T_1342 = ll_wen & _T_1341; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225310.4]
  assign _T_1343 = ~_T_1342; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225311.4]
  assign _T_1344 = _T_1339[0] & _T_1343; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225312.4]
  assign _T_1345 = _T_1321 & _T_1344; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225313.4]
  assign _T_1353 = _T_1338 | _T_1345; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225321.4]
  assign _T_1346 = _T_1326 >> id_waddr; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225314.4]
  assign _T_1348 = ll_waddr == id_waddr; // @[RocketCore.scala 716:70:freechips.rocketchip.system.DefaultRV32Config.fir@225316.4]
  assign _T_1349 = ll_wen & _T_1348; // @[RocketCore.scala 716:58:freechips.rocketchip.system.DefaultRV32Config.fir@225317.4]
  assign _T_1350 = ~_T_1349; // @[RocketCore.scala 719:80:freechips.rocketchip.system.DefaultRV32Config.fir@225318.4]
  assign _T_1351 = _T_1346[0] & _T_1350; // @[RocketCore.scala 719:77:freechips.rocketchip.system.DefaultRV32Config.fir@225319.4]
  assign _T_1352 = _T_1323 & _T_1351; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225320.4]
  assign id_sboard_hazard = _T_1353 | _T_1352; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225322.4]
  assign _T_1485 = _T_1484 | id_sboard_hazard; // @[RocketCore.scala 762:51:freechips.rocketchip.system.DefaultRV32Config.fir@225485.4]
  assign _T_1486 = ex_reg_valid | mem_reg_valid; // @[RocketCore.scala 763:40:freechips.rocketchip.system.DefaultRV32Config.fir@225486.4]
  assign _T_1487 = _T_1486 | wb_reg_valid; // @[RocketCore.scala 763:57:freechips.rocketchip.system.DefaultRV32Config.fir@225487.4]
  assign _T_1488 = csr_io_singleStep & _T_1487; // @[RocketCore.scala 763:23:freechips.rocketchip.system.DefaultRV32Config.fir@225488.4]
  assign _T_1489 = _T_1485 | _T_1488; // @[RocketCore.scala 762:71:freechips.rocketchip.system.DefaultRV32Config.fir@225489.4]
  assign _T_1490 = id_csr_en & csr_io_decode_0_fp_csr; // @[RocketCore.scala 764:15:freechips.rocketchip.system.DefaultRV32Config.fir@225490.4]
  assign _T_1491 = ~io_fpu_fcsr_rdy; // @[RocketCore.scala 764:45:freechips.rocketchip.system.DefaultRV32Config.fir@225491.4]
  assign _T_1492 = _T_1490 & _T_1491; // @[RocketCore.scala 764:42:freechips.rocketchip.system.DefaultRV32Config.fir@225492.4]
  assign _T_1493 = _T_1489 | _T_1492; // @[RocketCore.scala 763:74:freechips.rocketchip.system.DefaultRV32Config.fir@225493.4]
  assign _T_1456 = _T_1437 >> id_raddr1; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225450.4]
  assign _T_1458 = io_fpu_dec_ren1 & _T_1456[0]; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225452.4]
  assign _T_1459 = _T_1437 >> id_raddr2; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225453.4]
  assign _T_1461 = io_fpu_dec_ren2 & _T_1459[0]; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225455.4]
  assign _T_1468 = _T_1458 | _T_1461; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225462.4]
  assign _T_1462 = _T_1437 >> id_raddr3; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225456.4]
  assign _T_1464 = io_fpu_dec_ren3 & _T_1462[0]; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225458.4]
  assign _T_1469 = _T_1468 | _T_1464; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225463.4]
  assign _T_1465 = _T_1437 >> id_waddr; // @[RocketCore.scala 966:35:freechips.rocketchip.system.DefaultRV32Config.fir@225459.4]
  assign _T_1467 = io_fpu_dec_wen & _T_1465[0]; // @[RocketCore.scala 952:27:freechips.rocketchip.system.DefaultRV32Config.fir@225461.4]
  assign id_stall_fpu = _T_1469 | _T_1467; // @[RocketCore.scala 952:50:freechips.rocketchip.system.DefaultRV32Config.fir@225464.4]
  assign _T_1494 = id_ctrl_fp & id_stall_fpu; // @[RocketCore.scala 765:16:freechips.rocketchip.system.DefaultRV32Config.fir@225494.4]
  assign _T_1495 = _T_1493 | _T_1494; // @[RocketCore.scala 764:62:freechips.rocketchip.system.DefaultRV32Config.fir@225495.4]
  assign _T_1477 = ~io_dmem_perf_grant; // @[RocketCore.scala 756:16:freechips.rocketchip.system.DefaultRV32Config.fir@225474.4]
  assign dcache_blocked = blocked & _T_1477; // @[RocketCore.scala 756:13:freechips.rocketchip.system.DefaultRV32Config.fir@225475.4]
  assign _T_1496 = id_ctrl_mem & dcache_blocked; // @[RocketCore.scala 766:17:freechips.rocketchip.system.DefaultRV32Config.fir@225496.4]
  assign _T_1497 = _T_1495 | _T_1496; // @[RocketCore.scala 765:32:freechips.rocketchip.system.DefaultRV32Config.fir@225497.4]
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 627:29:freechips.rocketchip.system.DefaultRV32Config.fir@225156.4]
  assign _T_1500 = ~wb_wxd; // @[RocketCore.scala 768:65:freechips.rocketchip.system.DefaultRV32Config.fir@225500.4]
  assign _T_1501 = div_io_resp_valid & _T_1500; // @[RocketCore.scala 768:62:freechips.rocketchip.system.DefaultRV32Config.fir@225501.4]
  assign _T_1502 = div_io_req_ready | _T_1501; // @[RocketCore.scala 768:40:freechips.rocketchip.system.DefaultRV32Config.fir@225502.4]
  assign _T_1503 = ~_T_1502; // @[RocketCore.scala 768:21:freechips.rocketchip.system.DefaultRV32Config.fir@225503.4]
  assign _T_1504 = _T_1503 | div_io_req_valid; // @[RocketCore.scala 768:75:freechips.rocketchip.system.DefaultRV32Config.fir@225504.4]
  assign _T_1505 = id_ctrl_div & _T_1504; // @[RocketCore.scala 768:17:freechips.rocketchip.system.DefaultRV32Config.fir@225505.4]
  assign _T_1506 = _T_1497 | _T_1505; // @[RocketCore.scala 767:34:freechips.rocketchip.system.DefaultRV32Config.fir@225506.4]
  assign _T_1509 = _T_1506 | id_do_fence; // @[RocketCore.scala 769:15:freechips.rocketchip.system.DefaultRV32Config.fir@225509.4]
  assign _T_1510 = _T_1509 | csr_io_csr_stall; // @[RocketCore.scala 770:17:freechips.rocketchip.system.DefaultRV32Config.fir@225510.4]
  assign ctrl_stalld = _T_1510 | id_reg_pause; // @[RocketCore.scala 771:22:freechips.rocketchip.system.DefaultRV32Config.fir@225511.4]
  assign _T_1515 = _T_1514 | ctrl_stalld; // @[RocketCore.scala 774:89:freechips.rocketchip.system.DefaultRV32Config.fir@225516.4]
  assign ctrl_killd = _T_1515 | csr_io_interrupt; // @[RocketCore.scala 774:104:freechips.rocketchip.system.DefaultRV32Config.fir@225517.4]
  assign _T_875 = ~ctrl_killd; // @[RocketCore.scala 415:19:freechips.rocketchip.system.DefaultRV32Config.fir@224614.4]
  assign _T_876 = ~take_pc_mem_wb; // @[RocketCore.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@224616.4]
  assign _T_877 = _T_876 & ibuf_io_inst_0_valid; // @[RocketCore.scala 416:29:freechips.rocketchip.system.DefaultRV32Config.fir@224617.4]
  assign _T_887 = id_fence_succ == 4'h0; // @[RocketCore.scala 426:42:freechips.rocketchip.system.DefaultRV32Config.fir@224636.6]
  assign _T_888 = id_ctrl_fence & _T_887; // @[RocketCore.scala 426:25:freechips.rocketchip.system.DefaultRV32Config.fir@224637.6]
  assign _GEN_1 = _T_888 | id_reg_pause; // @[RocketCore.scala 426:49:freechips.rocketchip.system.DefaultRV32Config.fir@224638.6]
  assign _GEN_2 = id_fence_next | _GEN_0; // @[RocketCore.scala 427:26:freechips.rocketchip.system.DefaultRV32Config.fir@224641.6]
  assign _T_889 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst}; // @[RocketCore.scala 433:22:freechips.rocketchip.system.DefaultRV32Config.fir@224649.8]
  assign _T_890 = |_T_889; // @[RocketCore.scala 433:29:freechips.rocketchip.system.DefaultRV32Config.fir@224650.8]
  assign _T_891 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 438:40:freechips.rocketchip.system.DefaultRV32Config.fir@224656.8]
  assign _T_892 = |_T_891; // @[RocketCore.scala 438:47:freechips.rocketchip.system.DefaultRV32Config.fir@224657.8]
  assign _T_893 = bpu_io_xcpt_if | _T_892; // @[RocketCore.scala 438:28:freechips.rocketchip.system.DefaultRV32Config.fir@224658.8]
  assign _GEN_12 = id_xcpt & _T_890; // @[RocketCore.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@224644.6]
  assign _T_894 = id_ctrl_fence_i | id_csr_flush; // @[RocketCore.scala 443:42:freechips.rocketchip.system.DefaultRV32Config.fir@224664.6]
  assign _T_897 = id_ctrl_mem_cmd == 5'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224670.6]
  assign _T_898 = _T_677 | _T_897; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224671.6]
  assign _T_901 = {_T_1320,_T_1318}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@224675.8]
  assign _T_902 = id_bypass_src_0_0 | id_bypass_src_0_1; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224678.6]
  assign _T_903 = _T_902 | id_bypass_src_0_2; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224679.6]
  assign do_bypass = _T_903 | id_bypass_src_0_3; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224680.6]
  assign _T_906 = ~do_bypass; // @[RocketCore.scala 460:26:freechips.rocketchip.system.DefaultRV32Config.fir@224686.6]
  assign _T_907 = id_ctrl_rxs1 & _T_906; // @[RocketCore.scala 460:23:freechips.rocketchip.system.DefaultRV32Config.fir@224687.6]
  assign _T_1272 = ~replay_wb_common; // @[RocketCore.scala 662:34:freechips.rocketchip.system.DefaultRV32Config.fir@225194.4]
  assign _T_1273 = wb_reg_valid & _T_1272; // @[RocketCore.scala 662:31:freechips.rocketchip.system.DefaultRV32Config.fir@225195.4]
  assign _T_1274 = ~wb_xcpt; // @[RocketCore.scala 662:48:freechips.rocketchip.system.DefaultRV32Config.fir@225196.4]
  assign wb_valid = _T_1273 & _T_1274; // @[RocketCore.scala 662:45:freechips.rocketchip.system.DefaultRV32Config.fir@225197.4]
  assign wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 663:25:freechips.rocketchip.system.DefaultRV32Config.fir@225198.4]
  assign rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 664:23:freechips.rocketchip.system.DefaultRV32Config.fir@225199.4]
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@225200.4]
  assign _T_1281 = rf_waddr != 5'h0; // @[RocketCore.scala 995:16:freechips.rocketchip.system.DefaultRV32Config.fir@225209.6]
  assign _T_1285 = rf_waddr == id_raddr1; // @[RocketCore.scala 998:20:freechips.rocketchip.system.DefaultRV32Config.fir@225215.8]
  assign _T_1275 = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 666:38:freechips.rocketchip.system.DefaultRV32Config.fir@225201.4]
  assign ll_wdata = div_io_resp_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225178.4 :freechips.rocketchip.system.DefaultRV32Config.fir@225180.4]
  assign _T_1277 = wb_ctrl_csr != 3'h0; // @[RocketCore.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@225203.4]
  assign _T_1279 = _T_1277 ? csr_io_rw_rdata : wb_reg_wdata; // @[RocketCore.scala 668:21:freechips.rocketchip.system.DefaultRV32Config.fir@225205.4]
  assign _T_1280 = ll_wen ? ll_wdata : _T_1279; // @[RocketCore.scala 667:21:freechips.rocketchip.system.DefaultRV32Config.fir@225206.4]
  assign rf_wdata = _T_1275 ? io_dmem_resp_bits_data : _T_1280; // @[RocketCore.scala 666:21:freechips.rocketchip.system.DefaultRV32Config.fir@225207.4]
  assign _GEN_226 = _T_1285 ? rf_wdata : _T_596; // @[RocketCore.scala 998:31:freechips.rocketchip.system.DefaultRV32Config.fir@225216.8]
  assign _GEN_233 = _T_1281 ? _GEN_226 : _T_596; // @[RocketCore.scala 995:29:freechips.rocketchip.system.DefaultRV32Config.fir@225210.6]
  assign id_rs_0 = rf_wen ? _GEN_233 : _T_596; // @[RocketCore.scala 671:17:freechips.rocketchip.system.DefaultRV32Config.fir@225208.4]
  assign _T_910 = id_bypass_src_1_0 | id_bypass_src_1_1; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224694.6]
  assign _T_911 = _T_910 | id_bypass_src_1_2; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224695.6]
  assign do_bypass_1 = _T_911 | id_bypass_src_1_3; // @[RocketCore.scala 456:48:freechips.rocketchip.system.DefaultRV32Config.fir@224696.6]
  assign _T_914 = ~do_bypass_1; // @[RocketCore.scala 460:26:freechips.rocketchip.system.DefaultRV32Config.fir@224702.6]
  assign _T_915 = id_ctrl_rxs2 & _T_914; // @[RocketCore.scala 460:23:freechips.rocketchip.system.DefaultRV32Config.fir@224703.6]
  assign _T_1286 = rf_waddr == id_raddr2; // @[RocketCore.scala 998:20:freechips.rocketchip.system.DefaultRV32Config.fir@225219.8]
  assign _GEN_227 = _T_1286 ? rf_wdata : _T_602; // @[RocketCore.scala 998:31:freechips.rocketchip.system.DefaultRV32Config.fir@225220.8]
  assign _GEN_234 = _T_1281 ? _GEN_227 : _T_602; // @[RocketCore.scala 995:29:freechips.rocketchip.system.DefaultRV32Config.fir@225210.6]
  assign id_rs_1 = rf_wen ? _GEN_234 : _T_602; // @[RocketCore.scala 671:17:freechips.rocketchip.system.DefaultRV32Config.fir@225208.4]
  assign inst = ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 466:21:freechips.rocketchip.system.DefaultRV32Config.fir@224712.8]
  assign _T_1414 = mem_reg_valid & data_hazard_mem; // @[RocketCore.scala 736:32:freechips.rocketchip.system.DefaultRV32Config.fir@225395.4]
  assign id_load_use = _T_1414 & mem_ctrl_mem; // @[RocketCore.scala 736:51:freechips.rocketchip.system.DefaultRV32Config.fir@225396.4]
  assign _T_922 = _T_875 | csr_io_interrupt; // @[RocketCore.scala 472:21:freechips.rocketchip.system.DefaultRV32Config.fir@224721.4]
  assign _T_923 = _T_922 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 472:41:freechips.rocketchip.system.DefaultRV32Config.fir@224722.4]
  assign _T_926 = ~io_dmem_req_ready; // @[RocketCore.scala 484:45:freechips.rocketchip.system.DefaultRV32Config.fir@224735.4]
  assign _T_927 = ex_ctrl_mem & _T_926; // @[RocketCore.scala 484:42:freechips.rocketchip.system.DefaultRV32Config.fir@224736.4]
  assign _T_928 = ~div_io_req_ready; // @[RocketCore.scala 485:45:freechips.rocketchip.system.DefaultRV32Config.fir@224737.4]
  assign _T_929 = ex_ctrl_div & _T_928; // @[RocketCore.scala 485:42:freechips.rocketchip.system.DefaultRV32Config.fir@224738.4]
  assign replay_ex_structural = _T_927 | _T_929; // @[RocketCore.scala 484:64:freechips.rocketchip.system.DefaultRV32Config.fir@224739.4]
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 486:43:freechips.rocketchip.system.DefaultRV32Config.fir@224740.4]
  assign _T_930 = replay_ex_structural | replay_ex_load_use; // @[RocketCore.scala 487:75:freechips.rocketchip.system.DefaultRV32Config.fir@224741.4]
  assign _T_931 = ex_reg_valid & _T_930; // @[RocketCore.scala 487:50:freechips.rocketchip.system.DefaultRV32Config.fir@224742.4]
  assign replay_ex = ex_reg_replay | _T_931; // @[RocketCore.scala 487:33:freechips.rocketchip.system.DefaultRV32Config.fir@224743.4]
  assign _T_932 = take_pc_mem_wb | replay_ex; // @[RocketCore.scala 488:35:freechips.rocketchip.system.DefaultRV32Config.fir@224744.4]
  assign _T_933 = ~ex_reg_valid; // @[RocketCore.scala 488:51:freechips.rocketchip.system.DefaultRV32Config.fir@224745.4]
  assign ctrl_killx = _T_932 | _T_933; // @[RocketCore.scala 488:48:freechips.rocketchip.system.DefaultRV32Config.fir@224746.4]
  assign _T_934 = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 490:40:freechips.rocketchip.system.DefaultRV32Config.fir@224747.4]
  assign _T_935 = ex_reg_mem_size < 2'h2; // @[RocketCore.scala 490:69:freechips.rocketchip.system.DefaultRV32Config.fir@224748.4]
  assign ex_slow_bypass = _T_934 | _T_935; // @[RocketCore.scala 490:50:freechips.rocketchip.system.DefaultRV32Config.fir@224749.4]
  assign _T_937 = ex_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 491:67:freechips.rocketchip.system.DefaultRV32Config.fir@224751.4]
  assign ex_sfence = ex_ctrl_mem & _T_937; // @[RocketCore.scala 491:48:freechips.rocketchip.system.DefaultRV32Config.fir@224752.4]
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 494:28:freechips.rocketchip.system.DefaultRV32Config.fir@224753.4]
  assign _T_948 = mem_reg_valid | mem_reg_replay; // @[RocketCore.scala 500:36:freechips.rocketchip.system.DefaultRV32Config.fir@224764.4]
  assign mem_pc_valid = _T_948 | mem_reg_xcpt_interrupt; // @[RocketCore.scala 500:54:freechips.rocketchip.system.DefaultRV32Config.fir@224765.4]
  assign _T_1092 = _T_700 & mem_npc[1]; // @[RocketCore.scala 509:56:freechips.rocketchip.system.DefaultRV32Config.fir@224912.4]
  assign _T_1093 = ~mem_reg_sfence; // @[RocketCore.scala 509:73:freechips.rocketchip.system.DefaultRV32Config.fir@224913.4]
  assign mem_npc_misaligned = _T_1092 & _T_1093; // @[RocketCore.scala 509:70:freechips.rocketchip.system.DefaultRV32Config.fir@224914.4]
  assign _T_1094 = ~mem_reg_xcpt; // @[RocketCore.scala 510:27:freechips.rocketchip.system.DefaultRV32Config.fir@224915.4]
  assign _T_1095 = mem_ctrl_jalr ^ mem_npc_misaligned; // @[RocketCore.scala 510:59:freechips.rocketchip.system.DefaultRV32Config.fir@224916.4]
  assign _T_1096 = _T_1094 & _T_1095; // @[RocketCore.scala 510:41:freechips.rocketchip.system.DefaultRV32Config.fir@224917.4]
  assign mem_int_wdata = _T_1096 ? $signed(mem_br_target) : $signed(mem_reg_wdata); // @[RocketCore.scala 510:119:freechips.rocketchip.system.DefaultRV32Config.fir@224920.4]
  assign _T_1099 = mem_ctrl_branch | mem_ctrl_jalr; // @[RocketCore.scala 511:33:freechips.rocketchip.system.DefaultRV32Config.fir@224921.4]
  assign mem_cfi = _T_1099 | mem_ctrl_jal; // @[RocketCore.scala 511:50:freechips.rocketchip.system.DefaultRV32Config.fir@224922.4]
  assign _T_1101 = _T_950 | mem_ctrl_jalr; // @[RocketCore.scala 512:57:freechips.rocketchip.system.DefaultRV32Config.fir@224924.4]
  assign mem_cfi_taken = _T_1101 | mem_ctrl_jal; // @[RocketCore.scala 512:74:freechips.rocketchip.system.DefaultRV32Config.fir@224925.4]
  assign _T_1106 = ~ctrl_killx; // @[RocketCore.scala 517:20:freechips.rocketchip.system.DefaultRV32Config.fir@224932.4]
  assign _T_1113 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 524:23:freechips.rocketchip.system.DefaultRV32Config.fir@224943.4]
  assign _T_1114 = ex_ctrl_mem_cmd == 5'h0; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@224953.8]
  assign _T_1115 = ex_ctrl_mem_cmd == 5'h6; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@224954.8]
  assign _T_1116 = _T_1114 | _T_1115; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@224955.8]
  assign _T_1118 = _T_1116 | _T_934; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@224957.8]
  assign _T_1119 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224958.8]
  assign _T_1120 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224959.8]
  assign _T_1121 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224960.8]
  assign _T_1122 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224961.8]
  assign _T_1123 = _T_1119 | _T_1120; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224962.8]
  assign _T_1124 = _T_1123 | _T_1121; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224963.8]
  assign _T_1125 = _T_1124 | _T_1122; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224964.8]
  assign _T_1126 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224965.8]
  assign _T_1127 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224966.8]
  assign _T_1128 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224967.8]
  assign _T_1129 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224968.8]
  assign _T_1130 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@224969.8]
  assign _T_1131 = _T_1126 | _T_1127; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224970.8]
  assign _T_1132 = _T_1131 | _T_1128; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224971.8]
  assign _T_1133 = _T_1132 | _T_1129; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224972.8]
  assign _T_1134 = _T_1133 | _T_1130; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@224973.8]
  assign _T_1135 = _T_1125 | _T_1134; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@224974.8]
  assign _T_1136 = _T_1118 | _T_1135; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@224975.8]
  assign _T_1137 = ex_ctrl_mem & _T_1136; // @[RocketCore.scala 531:33:freechips.rocketchip.system.DefaultRV32Config.fir@224976.8]
  assign _T_1138 = ex_ctrl_mem_cmd == 5'h1; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@224978.8]
  assign _T_1139 = ex_ctrl_mem_cmd == 5'h11; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@224979.8]
  assign _T_1140 = _T_1138 | _T_1139; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@224980.8]
  assign _T_1142 = _T_1140 | _T_934; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@224982.8]
  assign _T_1160 = _T_1142 | _T_1135; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@225000.8]
  assign _T_1161 = ex_ctrl_mem & _T_1160; // @[RocketCore.scala 532:34:freechips.rocketchip.system.DefaultRV32Config.fir@225001.8]
  assign _T_1162 = alu_io_out; // @[RocketCore.scala 544:25:freechips.rocketchip.system.DefaultRV32Config.fir@225013.8]
  assign _T_1164 = ex_ctrl_mem | ex_sfence; // @[RocketCore.scala 547:56:freechips.rocketchip.system.DefaultRV32Config.fir@225017.8]
  assign _T_1165 = ex_ctrl_rxs2 & _T_1164; // @[RocketCore.scala 547:24:freechips.rocketchip.system.DefaultRV32Config.fir@225018.8]
  assign _T_1167 = ex_reg_mem_size == 2'h0; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@225022.10]
  assign _T_1170 = {ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225025.10]
  assign _T_1171 = ex_reg_mem_size == 2'h1; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@225026.10]
  assign _T_1173 = {ex_rs_1[15:0],ex_rs_1[15:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225028.10]
  assign _T_1176 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 551:24:freechips.rocketchip.system.DefaultRV32Config.fir@225033.8]
  assign _GEN_77 = _T_1176 | ex_ctrl_fence_i; // @[RocketCore.scala 551:48:freechips.rocketchip.system.DefaultRV32Config.fir@225034.8]
  assign _GEN_78 = _T_1176 | ex_reg_flush_pipe; // @[RocketCore.scala 551:48:freechips.rocketchip.system.DefaultRV32Config.fir@225034.8]
  assign _T_1177 = mem_reg_load & bpu_io_xcpt_ld; // @[RocketCore.scala 558:38:freechips.rocketchip.system.DefaultRV32Config.fir@225039.4]
  assign _T_1178 = mem_reg_store & bpu_io_xcpt_st; // @[RocketCore.scala 558:75:freechips.rocketchip.system.DefaultRV32Config.fir@225040.4]
  assign mem_breakpoint = _T_1177 | _T_1178; // @[RocketCore.scala 558:57:freechips.rocketchip.system.DefaultRV32Config.fir@225041.4]
  assign _T_1179 = mem_reg_load & bpu_io_debug_ld; // @[RocketCore.scala 559:44:freechips.rocketchip.system.DefaultRV32Config.fir@225042.4]
  assign _T_1180 = mem_reg_store & bpu_io_debug_st; // @[RocketCore.scala 559:82:freechips.rocketchip.system.DefaultRV32Config.fir@225043.4]
  assign mem_debug_breakpoint = _T_1179 | _T_1180; // @[RocketCore.scala 559:64:freechips.rocketchip.system.DefaultRV32Config.fir@225044.4]
  assign mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225045.4]
  assign mem_ldst_cause = mem_debug_breakpoint ? 4'he : 4'h3; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225046.4]
  assign _T_1181 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 565:29:freechips.rocketchip.system.DefaultRV32Config.fir@225047.4]
  assign _T_1182 = mem_reg_valid & mem_npc_misaligned; // @[RocketCore.scala 566:20:freechips.rocketchip.system.DefaultRV32Config.fir@225048.4]
  assign _T_1183 = mem_reg_valid & mem_ldst_xcpt; // @[RocketCore.scala 567:20:freechips.rocketchip.system.DefaultRV32Config.fir@225049.4]
  assign _T_1184 = _T_1181 | _T_1182; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225050.4]
  assign mem_xcpt = _T_1184 | _T_1183; // @[RocketCore.scala 943:26:freechips.rocketchip.system.DefaultRV32Config.fir@225051.4]
  assign _T_1185 = _T_1182 ? 4'h0 : mem_ldst_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225052.4]
  assign dcache_kill_mem = _T_773 & io_dmem_replay_next; // @[RocketCore.scala 576:55:freechips.rocketchip.system.DefaultRV32Config.fir@225067.4]
  assign _T_1199 = mem_reg_valid & mem_ctrl_fp; // @[RocketCore.scala 577:36:freechips.rocketchip.system.DefaultRV32Config.fir@225068.4]
  assign fpu_kill_mem = _T_1199 & io_fpu_nack_mem; // @[RocketCore.scala 577:51:freechips.rocketchip.system.DefaultRV32Config.fir@225069.4]
  assign _T_1200 = dcache_kill_mem | mem_reg_replay; // @[RocketCore.scala 578:37:freechips.rocketchip.system.DefaultRV32Config.fir@225070.4]
  assign replay_mem = _T_1200 | fpu_kill_mem; // @[RocketCore.scala 578:55:freechips.rocketchip.system.DefaultRV32Config.fir@225071.4]
  assign _T_1201 = dcache_kill_mem | take_pc_wb; // @[RocketCore.scala 579:38:freechips.rocketchip.system.DefaultRV32Config.fir@225072.4]
  assign _T_1202 = _T_1201 | mem_reg_xcpt; // @[RocketCore.scala 579:52:freechips.rocketchip.system.DefaultRV32Config.fir@225073.4]
  assign _T_1203 = ~mem_reg_valid; // @[RocketCore.scala 579:71:freechips.rocketchip.system.DefaultRV32Config.fir@225074.4]
  assign killm_common = _T_1202 | _T_1203; // @[RocketCore.scala 579:68:freechips.rocketchip.system.DefaultRV32Config.fir@225075.4]
  assign _T_1207 = killm_common | mem_xcpt; // @[RocketCore.scala 581:33:freechips.rocketchip.system.DefaultRV32Config.fir@225081.4]
  assign ctrl_killm = _T_1207 | fpu_kill_mem; // @[RocketCore.scala 581:45:freechips.rocketchip.system.DefaultRV32Config.fir@225082.4]
  assign _T_1208 = ~ctrl_killm; // @[RocketCore.scala 584:19:freechips.rocketchip.system.DefaultRV32Config.fir@225083.4]
  assign _T_1209 = ~take_pc_wb; // @[RocketCore.scala 585:34:freechips.rocketchip.system.DefaultRV32Config.fir@225085.4]
  assign _T_1216 = _T_1094 & mem_ctrl_fp; // @[RocketCore.scala 592:25:freechips.rocketchip.system.DefaultRV32Config.fir@225098.6]
  assign _T_1217 = _T_1216 & mem_ctrl_wxd; // @[RocketCore.scala 592:40:freechips.rocketchip.system.DefaultRV32Config.fir@225099.6]
  assign _T_1242 = _T_1234 ? 3'h7 : 3'h5; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225136.4]
  assign _T_1243 = _T_1232 ? 4'hd : {{1'd0}, _T_1242}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225137.4]
  assign _T_1244 = _T_1230 ? 4'hf : _T_1243; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225138.4]
  assign _T_1245 = _T_1228 ? 4'h4 : _T_1244; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225139.4]
  assign _T_1246 = _T_1226 ? 4'h6 : _T_1245; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225140.4]
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_1246}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@225141.4]
  assign _T_1247 = wb_cause == 32'h6; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225142.4]
  assign _T_1249 = wb_cause == 32'h4; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225144.4]
  assign _T_1251 = wb_cause == 32'h7; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225146.4]
  assign _T_1253 = wb_cause == 32'h5; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225148.4]
  assign _T_1255 = wb_cause == 32'hf; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225150.4]
  assign _T_1257 = wb_cause == 32'hd; // @[RocketCore.scala 947:38:freechips.rocketchip.system.DefaultRV32Config.fir@225152.4]
  assign _T_1289 = &wb_reg_raw_inst[1:0]; // @[RocketCore.scala 679:73:freechips.rocketchip.system.DefaultRV32Config.fir@225232.4]
  assign _T_1291 = _T_1289 ? wb_reg_inst[31:16] : 16'h0; // @[RocketCore.scala 679:50:freechips.rocketchip.system.DefaultRV32Config.fir@225234.4]
  assign _T_1294 = wb_cause == 32'h2; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225244.4]
  assign _T_1295 = wb_cause == 32'h3; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225245.4]
  assign _T_1300 = wb_cause == 32'h1; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225250.4]
  assign _T_1303 = wb_cause == 32'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@225253.4]
  assign _T_1304 = _T_1294 | _T_1295; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225254.4]
  assign _T_1305 = _T_1304 | _T_1249; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225255.4]
  assign _T_1306 = _T_1305 | _T_1247; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225256.4]
  assign _T_1307 = _T_1306 | _T_1253; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225257.4]
  assign _T_1308 = _T_1307 | _T_1251; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225258.4]
  assign _T_1309 = _T_1308 | _T_1300; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225259.4]
  assign _T_1310 = _T_1309 | _T_1257; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225260.4]
  assign _T_1311 = _T_1310 | _T_1255; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225261.4]
  assign _T_1312 = _T_1311 | _T_1303; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@225262.4]
  assign tval_valid = wb_xcpt & _T_1312; // @[RocketCore.scala 686:28:freechips.rocketchip.system.DefaultRV32Config.fir@225263.4]
  assign _T_1315 = wb_reg_valid ? 3'h0 : 3'h4; // @[CSR.scala 131:15:freechips.rocketchip.system.DefaultRV32Config.fir@225275.4]
  assign _T_1316 = ~_T_1315; // @[CSR.scala 131:11:freechips.rocketchip.system.DefaultRV32Config.fir@225276.4]
  assign _T_1327 = 32'h1 << ll_waddr; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225292.4]
  assign _T_1328 = ll_wen ? _T_1327 : 32'h0; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225293.4]
  assign _T_1329 = ~_T_1328; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225294.4]
  assign _T_1330 = _T_1326 & _T_1329; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225295.4]
  assign _T_1354 = wb_set_sboard & wb_wen; // @[RocketCore.scala 720:28:freechips.rocketchip.system.DefaultRV32Config.fir@225323.4]
  assign _T_1355 = 32'h1 << wb_waddr; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225324.4]
  assign _T_1356 = _T_1354 ? _T_1355 : 32'h0; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225325.4]
  assign _T_1357 = _T_1330 | _T_1356; // @[RocketCore.scala 964:60:freechips.rocketchip.system.DefaultRV32Config.fir@225326.4]
  assign _T_1358 = ll_wen | _T_1354; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225327.4]
  assign _T_1438 = wb_dcache_miss & wb_ctrl_wfd; // @[RocketCore.scala 745:35:freechips.rocketchip.system.DefaultRV32Config.fir@225423.4]
  assign _T_1439 = _T_1438 | io_fpu_sboard_set; // @[RocketCore.scala 745:50:freechips.rocketchip.system.DefaultRV32Config.fir@225424.4]
  assign _T_1440 = _T_1439 & wb_valid; // @[RocketCore.scala 745:72:freechips.rocketchip.system.DefaultRV32Config.fir@225425.4]
  assign _T_1442 = _T_1440 ? _T_1355 : 32'h0; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225427.4]
  assign _T_1443 = _T_1437 | _T_1442; // @[RocketCore.scala 964:60:freechips.rocketchip.system.DefaultRV32Config.fir@225428.4]
  assign _T_1445 = dmem_resp_replay & io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 746:38:freechips.rocketchip.system.DefaultRV32Config.fir@225433.4]
  assign _T_1446 = 32'h1 << dmem_resp_waddr; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225434.4]
  assign _T_1447 = _T_1445 ? _T_1446 : 32'h0; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225435.4]
  assign _T_1448 = ~_T_1447; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225436.4]
  assign _T_1449 = _T_1443 & _T_1448; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225437.4]
  assign _T_1450 = _T_1440 | _T_1445; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225438.4]
  assign _T_1451 = 32'h1 << io_fpu_sboard_clra; // @[RocketCore.scala 973:62:freechips.rocketchip.system.DefaultRV32Config.fir@225442.4]
  assign _T_1452 = io_fpu_sboard_clr ? _T_1451 : 32'h0; // @[RocketCore.scala 973:49:freechips.rocketchip.system.DefaultRV32Config.fir@225443.4]
  assign _T_1453 = ~_T_1452; // @[RocketCore.scala 965:64:freechips.rocketchip.system.DefaultRV32Config.fir@225444.4]
  assign _T_1454 = _T_1449 & _T_1453; // @[RocketCore.scala 965:62:freechips.rocketchip.system.DefaultRV32Config.fir@225445.4]
  assign _T_1455 = _T_1450 | io_fpu_sboard_clr; // @[RocketCore.scala 976:17:freechips.rocketchip.system.DefaultRV32Config.fir@225446.4]
  assign _T_1473 = _T_926 & _T_1477; // @[RocketCore.scala 755:60:freechips.rocketchip.system.DefaultRV32Config.fir@225469.4]
  assign _T_1474 = blocked | io_dmem_req_valid; // @[RocketCore.scala 755:95:freechips.rocketchip.system.DefaultRV32Config.fir@225470.4]
  assign _T_1475 = _T_1474 | io_dmem_s2_nack; // @[RocketCore.scala 755:116:freechips.rocketchip.system.DefaultRV32Config.fir@225471.4]
  assign _T_1518 = wb_xcpt | csr_io_eret; // @[RocketCore.scala 779:17:freechips.rocketchip.system.DefaultRV32Config.fir@225522.4]
  assign _T_1519 = replay_wb_common ? wb_reg_pc : mem_npc; // @[RocketCore.scala 780:8:freechips.rocketchip.system.DefaultRV32Config.fir@225523.4]
  assign _T_1521 = wb_reg_valid & wb_ctrl_fence_i; // @[RocketCore.scala 782:40:freechips.rocketchip.system.DefaultRV32Config.fir@225526.4]
  assign _T_1522 = ~io_dmem_s2_nack; // @[RocketCore.scala 782:62:freechips.rocketchip.system.DefaultRV32Config.fir@225527.4]
  assign _T_1524 = ex_pc_valid | mem_pc_valid; // @[RocketCore.scala 784:43:freechips.rocketchip.system.DefaultRV32Config.fir@225530.4]
  assign _T_1532 = mem_reg_valid & _T_1209; // @[RocketCore.scala 796:45:freechips.rocketchip.system.DefaultRV32Config.fir@225547.4]
  assign _T_1533 = _T_1532 & mem_wrong_npc; // @[RocketCore.scala 796:60:freechips.rocketchip.system.DefaultRV32Config.fir@225548.4]
  assign _T_1534 = ~mem_cfi; // @[RocketCore.scala 796:81:freechips.rocketchip.system.DefaultRV32Config.fir@225549.4]
  assign _T_1535 = _T_1534 | mem_cfi_taken; // @[RocketCore.scala 796:90:freechips.rocketchip.system.DefaultRV32Config.fir@225550.4]
  assign _T_1537 = mem_ctrl_jal | mem_ctrl_jalr; // @[RocketCore.scala 799:23:freechips.rocketchip.system.DefaultRV32Config.fir@225554.4]
  assign _T_1539 = _T_1537 & mem_waddr[0]; // @[RocketCore.scala 799:41:freechips.rocketchip.system.DefaultRV32Config.fir@225556.4]
  assign _T_1542 = mem_reg_inst[19:15] & 5'h1b; // @[RocketCore.scala 800:62:freechips.rocketchip.system.DefaultRV32Config.fir@225559.4]
  assign _T_1543 = 5'h1 == _T_1542; // @[RocketCore.scala 800:62:freechips.rocketchip.system.DefaultRV32Config.fir@225560.4]
  assign _T_1544 = mem_ctrl_jalr & _T_1543; // @[RocketCore.scala 800:23:freechips.rocketchip.system.DefaultRV32Config.fir@225561.4]
  assign _T_1547 = _T_1544 ? 2'h3 : {{1'd0}, _T_1537}; // @[RocketCore.scala 800:8:freechips.rocketchip.system.DefaultRV32Config.fir@225564.4]
  assign _T_1549 = mem_reg_rvc ? 2'h0 : 2'h2; // @[RocketCore.scala 804:74:freechips.rocketchip.system.DefaultRV32Config.fir@225568.4]
  assign _GEN_248 = {{30'd0}, _T_1549}; // @[RocketCore.scala 804:69:freechips.rocketchip.system.DefaultRV32Config.fir@225569.4]
  assign _T_1552 = ~io_imem_btb_update_bits_br_pc; // @[RocketCore.scala 805:35:freechips.rocketchip.system.DefaultRV32Config.fir@225572.4]
  assign _T_1553 = _T_1552 | 32'h3; // @[RocketCore.scala 805:66:freechips.rocketchip.system.DefaultRV32Config.fir@225573.4]
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225601.4]
  assign _T_1565 = killm_common | mem_ldst_xcpt; // @[RocketCore.scala 837:35:freechips.rocketchip.system.DefaultRV32Config.fir@225613.4]
  assign _T_1586 = csr_io_time[4:0] == 5'h0; // @[RocketCore.scala 850:62:freechips.rocketchip.system.DefaultRV32Config.fir@225654.4]
  assign _T_1587 = _T_1586 | io_dmem_perf_release; // @[RocketCore.scala 850:68:freechips.rocketchip.system.DefaultRV32Config.fir@225655.4]
  assign unpause = _T_1587 | take_pc_mem_wb; // @[RocketCore.scala 850:92:freechips.rocketchip.system.DefaultRV32Config.fir@225656.4]
  assign coreMonitorBundle_timer = csr_io_time; // @[RocketCore.scala 877:41:freechips.rocketchip.system.DefaultRV32Config.fir@225673.4]
  assign _T_1593 = ~csr_io_trace_0_exception; // @[RocketCore.scala 878:55:freechips.rocketchip.system.DefaultRV32Config.fir@225675.4]
  assign coreMonitorBundle_valid = csr_io_trace_0_valid & _T_1593; // @[RocketCore.scala 878:52:freechips.rocketchip.system.DefaultRV32Config.fir@225676.4]
  assign coreMonitorBundle_pc = csr_io_trace_0_iaddr; // @[RocketCore.scala 879:48:freechips.rocketchip.system.DefaultRV32Config.fir@225678.4]
  assign _T_1596 = ~wb_set_sboard; // @[RocketCore.scala 880:40:freechips.rocketchip.system.DefaultRV32Config.fir@225680.4]
  assign coreMonitorBundle_wrenx = wb_wen & _T_1596; // @[RocketCore.scala 880:37:freechips.rocketchip.system.DefaultRV32Config.fir@225681.4]
  assign _T_1604 = wb_ctrl_wxd | wb_ctrl_wfd; // @[RocketCore.scala 923:26:freechips.rocketchip.system.DefaultRV32Config.fir@225704.6]
  assign _T_1605 = _T_1604 ? wb_waddr : 5'h0; // @[RocketCore.scala 923:13:freechips.rocketchip.system.DefaultRV32Config.fir@225705.6]
  assign _T_1606 = coreMonitorBundle_wrenx ? rf_wdata : 32'h0; // @[RocketCore.scala 924:13:freechips.rocketchip.system.DefaultRV32Config.fir@225706.6]
  assign _T_1607 = wb_ctrl_rxs1 | wb_ctrl_rfs1; // @[RocketCore.scala 926:27:freechips.rocketchip.system.DefaultRV32Config.fir@225707.6]
  assign _T_1608 = _T_1607 ? wb_reg_inst[19:15] : 5'h0; // @[RocketCore.scala 926:13:freechips.rocketchip.system.DefaultRV32Config.fir@225708.6]
  assign _T_1610 = _T_1607 ? coreMonitorBundle_rd0val : 32'h0; // @[RocketCore.scala 927:13:freechips.rocketchip.system.DefaultRV32Config.fir@225710.6]
  assign _T_1611 = wb_ctrl_rxs2 | wb_ctrl_rfs2; // @[RocketCore.scala 928:27:freechips.rocketchip.system.DefaultRV32Config.fir@225711.6]
  assign _T_1612 = _T_1611 ? wb_reg_inst[24:20] : 5'h0; // @[RocketCore.scala 928:13:freechips.rocketchip.system.DefaultRV32Config.fir@225712.6]
  assign _T_1614 = _T_1611 ? coreMonitorBundle_rd1val : 32'h0; // @[RocketCore.scala 929:13:freechips.rocketchip.system.DefaultRV32Config.fir@225714.6]
  assign _T_1616 = ~reset; // @[RocketCore.scala 920:13:freechips.rocketchip.system.DefaultRV32Config.fir@225716.6]
  assign coreMonitorBundle_inst = csr_io_trace_0_insn; // @[RocketCore.scala 872:31:freechips.rocketchip.system.DefaultRV32Config.fir@225668.4 RocketCore.scala 888:26:freechips.rocketchip.system.DefaultRV32Config.fir@225700.4]
  assign io_imem_might_request = imem_might_request_reg; // @[RocketCore.scala 783:25:freechips.rocketchip.system.DefaultRV32Config.fir@225534.4]
  assign io_imem_req_valid = take_pc_wb | take_pc_mem; // @[RocketCore.scala 776:21:freechips.rocketchip.system.DefaultRV32Config.fir@225519.4]
  assign io_imem_req_bits_pc = _T_1518 ? csr_io_evec : _T_1519; // @[RocketCore.scala 778:23:freechips.rocketchip.system.DefaultRV32Config.fir@225525.4]
  assign io_imem_req_bits_speculative = ~take_pc_wb; // @[RocketCore.scala 777:32:freechips.rocketchip.system.DefaultRV32Config.fir@225521.4]
  assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence; // @[RocketCore.scala 787:24:freechips.rocketchip.system.DefaultRV32Config.fir@225536.4]
  assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0]; // @[RocketCore.scala 788:27:freechips.rocketchip.system.DefaultRV32Config.fir@225538.4]
  assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1]; // @[RocketCore.scala 789:27:freechips.rocketchip.system.DefaultRV32Config.fir@225540.4]
  assign io_imem_sfence_bits_addr = wb_reg_wdata; // @[RocketCore.scala 790:28:freechips.rocketchip.system.DefaultRV32Config.fir@225541.4]
  assign io_imem_resp_ready = ibuf_io_imem_ready; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign io_imem_btb_update_valid = _T_1533 & _T_1535; // @[RocketCore.scala 796:28:freechips.rocketchip.system.DefaultRV32Config.fir@225552.4]
  assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry; // @[RocketCore.scala 806:38:freechips.rocketchip.system.DefaultRV32Config.fir@225576.4]
  assign io_imem_btb_update_bits_pc = ~_T_1553; // @[RocketCore.scala 805:30:freechips.rocketchip.system.DefaultRV32Config.fir@225575.4]
  assign io_imem_btb_update_bits_isValid = _T_1099 | mem_ctrl_jal; // @[RocketCore.scala 797:35:freechips.rocketchip.system.DefaultRV32Config.fir@225553.4]
  assign io_imem_btb_update_bits_br_pc = mem_reg_pc + _GEN_248; // @[RocketCore.scala 804:33:freechips.rocketchip.system.DefaultRV32Config.fir@225571.4]
  assign io_imem_btb_update_bits_cfiType = _T_1539 ? 2'h2 : _T_1547; // @[RocketCore.scala 798:35:freechips.rocketchip.system.DefaultRV32Config.fir@225566.4]
  assign io_imem_bht_update_valid = mem_reg_valid & _T_1209; // @[RocketCore.scala 808:28:freechips.rocketchip.system.DefaultRV32Config.fir@225579.4]
  assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history; // @[RocketCore.scala 813:38:freechips.rocketchip.system.DefaultRV32Config.fir@225584.4]
  assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc; // @[RocketCore.scala 809:30:freechips.rocketchip.system.DefaultRV32Config.fir@225580.4]
  assign io_imem_bht_update_bits_branch = mem_ctrl_branch; // @[RocketCore.scala 812:34:freechips.rocketchip.system.DefaultRV32Config.fir@225583.4]
  assign io_imem_bht_update_bits_taken = mem_br_taken; // @[RocketCore.scala 810:33:freechips.rocketchip.system.DefaultRV32Config.fir@225581.4]
  assign io_imem_bht_update_bits_mispredict = ex_pc_valid ? _T_1085 : _T_1088; // @[RocketCore.scala 811:38:freechips.rocketchip.system.DefaultRV32Config.fir@225582.4]
  assign io_imem_flush_icache = _T_1521 & _T_1522; // @[RocketCore.scala 782:24:freechips.rocketchip.system.DefaultRV32Config.fir@225529.4]
  assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 826:25:freechips.rocketchip.system.DefaultRV32Config.fir@225600.4]
  assign io_dmem_req_bits_addr = alu_io_adder_out; // @[RocketCore.scala 834:25:freechips.rocketchip.system.DefaultRV32Config.fir@225609.4]
  assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag}; // @[RocketCore.scala 829:25:freechips.rocketchip.system.DefaultRV32Config.fir@225602.4]
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd; // @[RocketCore.scala 830:25:freechips.rocketchip.system.DefaultRV32Config.fir@225603.4]
  assign io_dmem_req_bits_size = ex_reg_mem_size; // @[RocketCore.scala 831:25:freechips.rocketchip.system.DefaultRV32Config.fir@225604.4]
  assign io_dmem_req_bits_signed = ~ex_reg_inst[14]; // @[RocketCore.scala 832:27:freechips.rocketchip.system.DefaultRV32Config.fir@225607.4]
  assign io_dmem_req_bits_dprv = csr_io_status_dprv; // @[RocketCore.scala 835:25:freechips.rocketchip.system.DefaultRV32Config.fir@225610.4]
  assign io_dmem_s1_kill = _T_1565 | fpu_kill_mem; // @[RocketCore.scala 837:19:freechips.rocketchip.system.DefaultRV32Config.fir@225615.4]
  assign io_dmem_s1_data_data = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2; // @[RocketCore.scala 836:24:freechips.rocketchip.system.DefaultRV32Config.fir@225612.4]
  assign io_ptw_ptbr_mode = csr_io_ptbr_mode; // @[RocketCore.scala 691:15:freechips.rocketchip.system.DefaultRV32Config.fir@225266.4]
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn; // @[RocketCore.scala 691:15:freechips.rocketchip.system.DefaultRV32Config.fir@225266.4]
  assign io_ptw_sfence_valid = io_imem_sfence_valid; // @[RocketCore.scala 792:17:freechips.rocketchip.system.DefaultRV32Config.fir@225543.4]
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1; // @[RocketCore.scala 792:17:freechips.rocketchip.system.DefaultRV32Config.fir@225543.4]
  assign io_ptw_status_debug = csr_io_status_debug; // @[RocketCore.scala 693:17:freechips.rocketchip.system.DefaultRV32Config.fir@225271.4]
  assign io_ptw_status_dprv = csr_io_status_dprv; // @[RocketCore.scala 693:17:freechips.rocketchip.system.DefaultRV32Config.fir@225271.4]
  assign io_ptw_status_prv = csr_io_status_prv; // @[RocketCore.scala 693:17:freechips.rocketchip.system.DefaultRV32Config.fir@225271.4]
  assign io_ptw_status_mxr = csr_io_status_mxr; // @[RocketCore.scala 693:17:freechips.rocketchip.system.DefaultRV32Config.fir@225271.4]
  assign io_ptw_status_sum = csr_io_status_sum; // @[RocketCore.scala 693:17:freechips.rocketchip.system.DefaultRV32Config.fir@225271.4]
  assign io_ptw_pmp_0_cfg_l = csr_io_pmp_0_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_cfg_a = csr_io_pmp_0_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_cfg_x = csr_io_pmp_0_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_cfg_w = csr_io_pmp_0_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_cfg_r = csr_io_pmp_0_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_addr = csr_io_pmp_0_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_0_mask = csr_io_pmp_0_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_cfg_l = csr_io_pmp_1_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_cfg_a = csr_io_pmp_1_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_cfg_x = csr_io_pmp_1_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_cfg_w = csr_io_pmp_1_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_cfg_r = csr_io_pmp_1_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_addr = csr_io_pmp_1_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_1_mask = csr_io_pmp_1_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_cfg_l = csr_io_pmp_2_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_cfg_a = csr_io_pmp_2_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_cfg_x = csr_io_pmp_2_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_cfg_w = csr_io_pmp_2_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_cfg_r = csr_io_pmp_2_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_addr = csr_io_pmp_2_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_2_mask = csr_io_pmp_2_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_cfg_l = csr_io_pmp_3_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_cfg_a = csr_io_pmp_3_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_cfg_x = csr_io_pmp_3_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_cfg_w = csr_io_pmp_3_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_cfg_r = csr_io_pmp_3_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_addr = csr_io_pmp_3_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_3_mask = csr_io_pmp_3_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_cfg_l = csr_io_pmp_4_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_cfg_a = csr_io_pmp_4_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_cfg_x = csr_io_pmp_4_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_cfg_w = csr_io_pmp_4_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_cfg_r = csr_io_pmp_4_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_addr = csr_io_pmp_4_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_4_mask = csr_io_pmp_4_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_cfg_l = csr_io_pmp_5_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_cfg_a = csr_io_pmp_5_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_cfg_x = csr_io_pmp_5_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_cfg_w = csr_io_pmp_5_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_cfg_r = csr_io_pmp_5_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_addr = csr_io_pmp_5_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_5_mask = csr_io_pmp_5_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_cfg_l = csr_io_pmp_6_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_cfg_a = csr_io_pmp_6_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_cfg_x = csr_io_pmp_6_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_cfg_w = csr_io_pmp_6_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_cfg_r = csr_io_pmp_6_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_addr = csr_io_pmp_6_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_6_mask = csr_io_pmp_6_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_cfg_l = csr_io_pmp_7_cfg_l; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_cfg_a = csr_io_pmp_7_cfg_a; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_cfg_x = csr_io_pmp_7_cfg_x; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_cfg_w = csr_io_pmp_7_cfg_w; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_cfg_r = csr_io_pmp_7_cfg_r; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_addr = csr_io_pmp_7_addr; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_pmp_7_mask = csr_io_pmp_7_mask; // @[RocketCore.scala 694:14:freechips.rocketchip.system.DefaultRV32Config.fir@225272.4]
  assign io_ptw_customCSRs_csrs_0_value = csr_io_customCSRs_0_value; // @[RocketCore.scala 692:79:freechips.rocketchip.system.DefaultRV32Config.fir@225267.4]
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 818:15:freechips.rocketchip.system.DefaultRV32Config.fir@225590.4]
  assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? _T_790 : _T_791; // @[RocketCore.scala 819:23:freechips.rocketchip.system.DefaultRV32Config.fir@225591.4]
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm; // @[RocketCore.scala 682:18:freechips.rocketchip.system.DefaultRV32Config.fir@225240.4]
  assign io_fpu_dmem_resp_val = dmem_resp_valid & io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 820:24:freechips.rocketchip.system.DefaultRV32Config.fir@225593.4]
  assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 823:24:freechips.rocketchip.system.DefaultRV32Config.fir@225596.4]
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass; // @[RocketCore.scala 821:25:freechips.rocketchip.system.DefaultRV32Config.fir@225594.4]
  assign io_fpu_valid = _T_875 & id_ctrl_fp; // @[RocketCore.scala 815:16:freechips.rocketchip.system.DefaultRV32Config.fir@225587.4]
  assign io_fpu_killx = _T_932 | _T_933; // @[RocketCore.scala 816:16:freechips.rocketchip.system.DefaultRV32Config.fir@225588.4]
  assign io_fpu_killm = _T_1202 | _T_1203; // @[RocketCore.scala 817:16:freechips.rocketchip.system.DefaultRV32Config.fir@225589.4]
  assign ibuf_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223618.4]
  assign ibuf_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223619.4]
  assign ibuf_io_imem_valid = io_imem_resp_valid; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_btb_entry = io_imem_resp_bits_btb_entry; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_btb_bht_history = io_imem_resp_bits_btb_bht_history; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay; // @[RocketCore.scala 252:16:freechips.rocketchip.system.DefaultRV32Config.fir@223620.4]
  assign ibuf_io_kill = take_pc_wb | take_pc_mem; // @[RocketCore.scala 253:16:freechips.rocketchip.system.DefaultRV32Config.fir@223621.4]
  assign ibuf_io_inst_0_ready = ~ctrl_stalld; // @[RocketCore.scala 794:25:freechips.rocketchip.system.DefaultRV32Config.fir@225545.4]
  assign csr_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224336.4]
  assign csr_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224337.4]
  assign csr_io_ungated_clock = clock; // @[RocketCore.scala 674:24:freechips.rocketchip.system.DefaultRV32Config.fir@225225.4]
  assign csr_io_interrupts_debug = io_interrupts_debug; // @[RocketCore.scala 680:21:freechips.rocketchip.system.DefaultRV32Config.fir@225238.4]
  assign csr_io_interrupts_mtip = io_interrupts_mtip; // @[RocketCore.scala 680:21:freechips.rocketchip.system.DefaultRV32Config.fir@225238.4]
  assign csr_io_interrupts_msip = io_interrupts_msip; // @[RocketCore.scala 680:21:freechips.rocketchip.system.DefaultRV32Config.fir@225238.4]
  assign csr_io_interrupts_meip = io_interrupts_meip; // @[RocketCore.scala 680:21:freechips.rocketchip.system.DefaultRV32Config.fir@225238.4]
  assign csr_io_interrupts_seip = io_interrupts_seip; // @[RocketCore.scala 680:21:freechips.rocketchip.system.DefaultRV32Config.fir@225238.4]
  assign csr_io_rw_addr = wb_reg_inst[31:20]; // @[RocketCore.scala 695:18:freechips.rocketchip.system.DefaultRV32Config.fir@225274.4]
  assign csr_io_rw_cmd = wb_ctrl_csr & _T_1316; // @[RocketCore.scala 696:17:freechips.rocketchip.system.DefaultRV32Config.fir@225278.4]
  assign csr_io_rw_wdata = wb_reg_wdata; // @[RocketCore.scala 697:19:freechips.rocketchip.system.DefaultRV32Config.fir@225279.4]
  assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 675:24:freechips.rocketchip.system.DefaultRV32Config.fir@225227.4]
  assign csr_io_exception = _T_1241 | _T_1236; // @[RocketCore.scala 676:20:freechips.rocketchip.system.DefaultRV32Config.fir@225228.4]
  assign csr_io_retire = _T_1273 & _T_1274; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@225230.4]
  assign csr_io_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_1246}; // @[RocketCore.scala 677:16:freechips.rocketchip.system.DefaultRV32Config.fir@225229.4]
  assign csr_io_pc = wb_reg_pc; // @[RocketCore.scala 685:13:freechips.rocketchip.system.DefaultRV32Config.fir@225243.4]
  assign csr_io_tval = tval_valid ? wb_reg_wdata : 32'h0; // @[RocketCore.scala 690:15:freechips.rocketchip.system.DefaultRV32Config.fir@225265.4]
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid; // @[RocketCore.scala 683:21:freechips.rocketchip.system.DefaultRV32Config.fir@225241.4]
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits; // @[RocketCore.scala 683:21:freechips.rocketchip.system.DefaultRV32Config.fir@225241.4]
  assign csr_io_inst_0 = {_T_1291,wb_reg_raw_inst[15:0]}; // @[RocketCore.scala 679:18:freechips.rocketchip.system.DefaultRV32Config.fir@225237.4]
  assign bpu_io_status_debug = csr_io_status_debug; // @[RocketCore.scala 318:17:freechips.rocketchip.system.DefaultRV32Config.fir@224442.4]
  assign bpu_io_status_prv = csr_io_status_prv; // @[RocketCore.scala 318:17:freechips.rocketchip.system.DefaultRV32Config.fir@224442.4]
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_bp_0_address = csr_io_bp_0_address; // @[RocketCore.scala 319:13:freechips.rocketchip.system.DefaultRV32Config.fir@224443.4]
  assign bpu_io_pc = ibuf_io_pc; // @[RocketCore.scala 320:13:freechips.rocketchip.system.DefaultRV32Config.fir@224444.4]
  assign bpu_io_ea = mem_reg_wdata; // @[RocketCore.scala 321:13:freechips.rocketchip.system.DefaultRV32Config.fir@224445.4]
  assign alu_io_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 379:13:freechips.rocketchip.system.DefaultRV32Config.fir@224598.4]
  assign alu_io_in2 = _T_871 ? $signed({{28{_T_866[3]}},_T_866}) : $signed(_T_870); // @[RocketCore.scala 380:14:freechips.rocketchip.system.DefaultRV32Config.fir@224600.4]
  assign alu_io_in1 = _T_864 ? $signed(ex_reg_pc) : $signed(_T_863); // @[RocketCore.scala 381:14:freechips.rocketchip.system.DefaultRV32Config.fir@224602.4]
  assign div_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224605.4]
  assign div_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224606.4]
  assign div_io_req_valid = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 402:20:freechips.rocketchip.system.DefaultRV32Config.fir@224608.4]
  assign div_io_req_bits_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 404:22:freechips.rocketchip.system.DefaultRV32Config.fir@224610.4]
  assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? _T_790 : _T_791; // @[RocketCore.scala 405:23:freechips.rocketchip.system.DefaultRV32Config.fir@224611.4]
  assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? _T_797 : _T_798; // @[RocketCore.scala 406:23:freechips.rocketchip.system.DefaultRV32Config.fir@224612.4]
  assign div_io_req_bits_tag = ex_reg_inst[11:7]; // @[RocketCore.scala 407:23:freechips.rocketchip.system.DefaultRV32Config.fir@224613.4]
  assign div_io_kill = killm_common & _T_1205; // @[RocketCore.scala 580:15:freechips.rocketchip.system.DefaultRV32Config.fir@225080.4]
  assign div_io_resp_ready = _T_1271 ? 1'h0 : _T_1500; // @[RocketCore.scala 641:21:freechips.rocketchip.system.DefaultRV32Config.fir@225177.4 RocketCore.scala 655:23:freechips.rocketchip.system.DefaultRV32Config.fir@225190.6]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_590[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  id_reg_pause = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  imem_might_request_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ex_ctrl_fp = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ex_ctrl_branch = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  ex_ctrl_jal = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ex_ctrl_jalr = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ex_ctrl_rxs2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ex_ctrl_rxs1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ex_ctrl_sel_alu2 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  ex_ctrl_sel_alu1 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  ex_ctrl_sel_imm = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  ex_ctrl_alu_fn = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  ex_ctrl_mem = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  ex_ctrl_mem_cmd = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  ex_ctrl_rfs1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  ex_ctrl_rfs2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ex_ctrl_wfd = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ex_ctrl_div = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  ex_ctrl_wxd = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  ex_ctrl_csr = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  ex_ctrl_fence_i = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_ctrl_fp = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_branch = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_jal = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_jalr = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_rxs2 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_rxs1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_mem = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mem_ctrl_rfs1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  mem_ctrl_rfs2 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  mem_ctrl_wfd = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  mem_ctrl_wxd = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  mem_ctrl_csr = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  mem_ctrl_fence_i = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  wb_ctrl_rxs2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  wb_ctrl_rxs1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  wb_ctrl_mem = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  wb_ctrl_rfs1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  wb_ctrl_rfs2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  wb_ctrl_wfd = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  wb_ctrl_div = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  wb_ctrl_wxd = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  wb_ctrl_csr = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  wb_ctrl_fence_i = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  ex_reg_xcpt_interrupt = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ex_reg_valid = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ex_reg_rvc = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ex_reg_btb_resp_entry = _RAND_51[4:0];
  _RAND_52 = {1{`RANDOM}};
  ex_reg_btb_resp_bht_history = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  ex_reg_xcpt = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ex_reg_flush_pipe = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ex_reg_load_use = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  ex_reg_cause = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  ex_reg_replay = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  ex_reg_pc = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  ex_reg_mem_size = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  ex_reg_inst = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  ex_reg_raw_inst = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  mem_reg_xcpt_interrupt = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  mem_reg_valid = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  mem_reg_rvc = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  mem_reg_btb_resp_entry = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  mem_reg_btb_resp_bht_history = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  mem_reg_xcpt = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  mem_reg_replay = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  mem_reg_flush_pipe = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  mem_reg_cause = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  mem_reg_slow_bypass = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  mem_reg_load = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  mem_reg_store = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  mem_reg_sfence = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  mem_reg_pc = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  mem_reg_inst = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  mem_reg_mem_size = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  mem_reg_raw_inst = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  mem_reg_wdata = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  mem_reg_rs2 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  mem_br_taken = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  wb_reg_valid = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  wb_reg_xcpt = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  wb_reg_replay = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  wb_reg_flush_pipe = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  wb_reg_cause = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  wb_reg_sfence = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  wb_reg_pc = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  wb_reg_mem_size = _RAND_89[1:0];
  _RAND_90 = {1{`RANDOM}};
  wb_reg_inst = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  wb_reg_raw_inst = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  wb_reg_wdata = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  id_reg_fence = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  ex_reg_rs_bypass_0 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  ex_reg_rs_bypass_1 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  ex_reg_rs_lsb_0 = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  ex_reg_rs_lsb_1 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  ex_reg_rs_msb_0 = _RAND_98[29:0];
  _RAND_99 = {1{`RANDOM}};
  ex_reg_rs_msb_1 = _RAND_99[29:0];
  _RAND_100 = {1{`RANDOM}};
  _T_1324 = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  _T_1437 = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  blocked = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  _T_1205 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  _T_1599 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  coreMonitorBundle_rd0val = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  _T_1602 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  coreMonitorBundle_rd1val = _RAND_107[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_590__T_1284_en & _T_590__T_1284_mask) begin
      _T_590[_T_590__T_1284_addr] <= _T_590__T_1284_data; // @[RocketCore.scala 983:15:freechips.rocketchip.system.DefaultRV32Config.fir@224246.4]
    end
    if (unpause) begin
      id_reg_pause <= 1'h0;
    end else if (_T_875) begin
      id_reg_pause <= _GEN_1;
    end
    imem_might_request_reg <= _T_1524 | io_ptw_customCSRs_csrs_0_value[1];
    if (_T_875) begin
      ex_ctrl_fp <= id_ctrl_fp;
    end
    if (_T_875) begin
      ex_ctrl_branch <= id_ctrl_branch;
    end
    if (_T_875) begin
      ex_ctrl_jal <= id_ctrl_jal;
    end
    if (_T_875) begin
      ex_ctrl_jalr <= id_ctrl_jalr;
    end
    if (_T_875) begin
      ex_ctrl_rxs2 <= id_ctrl_rxs2;
    end
    if (_T_875) begin
      ex_ctrl_rxs1 <= id_ctrl_rxs1;
    end
    if (_T_875) begin
      if (id_xcpt) begin
        if (_T_893) begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end else if (_T_890) begin
          ex_ctrl_sel_alu2 <= 2'h1;
        end else begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
      end
    end
    if (_T_875) begin
      if (id_xcpt) begin
        if (_T_893) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else if (_T_890) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          ex_ctrl_sel_alu1 <= 2'h1;
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
      end
    end
    if (_T_875) begin
      ex_ctrl_sel_imm <= id_ctrl_sel_imm;
    end
    if (_T_875) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_alu_fn;
      end
    end
    if (_T_875) begin
      ex_ctrl_mem <= id_ctrl_mem;
    end
    if (_T_875) begin
      ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
    end
    if (_T_875) begin
      ex_ctrl_rfs1 <= id_ctrl_rfs1;
    end
    if (_T_875) begin
      ex_ctrl_rfs2 <= id_ctrl_rfs2;
    end
    if (_T_875) begin
      ex_ctrl_wfd <= id_ctrl_wfd;
    end
    if (_T_875) begin
      ex_ctrl_div <= id_ctrl_div;
    end
    if (_T_875) begin
      ex_ctrl_wxd <= id_ctrl_wxd;
    end
    if (_T_875) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h2;
      end else begin
        ex_ctrl_csr <= id_ctrl_csr;
      end
    end
    if (_T_875) begin
      ex_ctrl_fence_i <= id_ctrl_fence_i;
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fp <= ex_ctrl_fp;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_branch <= ex_ctrl_branch;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jal <= ex_ctrl_jal;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jalr <= ex_ctrl_jalr;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rxs2 <= ex_ctrl_rxs2;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rxs1 <= ex_ctrl_rxs1;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_mem <= ex_ctrl_mem;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rfs1 <= ex_ctrl_rfs1;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rfs2 <= ex_ctrl_rfs2;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wfd <= ex_ctrl_wfd;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_div <= ex_ctrl_div;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wxd <= ex_ctrl_wxd;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_csr <= ex_ctrl_csr;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fence_i <= _GEN_77;
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rxs2 <= mem_ctrl_rxs2;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rxs1 <= mem_ctrl_rxs1;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rfs1 <= mem_ctrl_rfs1;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rfs2 <= mem_ctrl_rfs2;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_877 & csr_io_interrupt;
    ex_reg_valid <= ~ctrl_killd;
    if (_T_875) begin
      ex_reg_rvc <= _GEN_12;
    end
    if (_T_923) begin
      ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry;
    end
    if (_T_923) begin
      ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history;
    end
    ex_reg_xcpt <= _T_875 & id_xcpt;
    if (_T_875) begin
      ex_reg_flush_pipe <= _T_894;
    end
    if (_T_875) begin
      ex_reg_load_use <= id_load_use;
    end
    if (_T_923) begin
      if (csr_io_interrupt) begin
        ex_reg_cause <= csr_io_interrupt_cause;
      end else begin
        ex_reg_cause <= {{28'd0}, _T_758};
      end
    end
    ex_reg_replay <= _T_877 & ibuf_io_inst_0_bits_replay;
    if (_T_923) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_875) begin
      if (_T_898) begin
        ex_reg_mem_size <= _T_901;
      end else begin
        ex_reg_mem_size <= ibuf_io_inst_0_bits_inst_bits[13:12];
      end
    end
    if (_T_923) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    if (_T_923) begin
      ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw;
    end
    mem_reg_xcpt_interrupt <= _T_876 & ex_reg_xcpt_interrupt;
    mem_reg_valid <= ~ctrl_killx;
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_rvc <= ex_reg_rvc;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history;
      end
    end
    mem_reg_xcpt <= _T_1106 & ex_xcpt;
    mem_reg_replay <= _T_876 & replay_ex;
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_flush_pipe <= _GEN_78;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_cause <= ex_reg_cause;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_slow_bypass <= ex_slow_bypass;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_load <= _T_1137;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_store <= _T_1161;
      end
    end
    if (_T_1113) begin
      mem_reg_sfence <= 1'h0;
    end else if (ex_pc_valid) begin
      mem_reg_sfence <= ex_sfence;
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_pc <= ex_reg_pc;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_inst <= ex_reg_inst;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_mem_size <= ex_reg_mem_size;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_raw_inst <= ex_reg_raw_inst;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_reg_wdata <= _T_1162;
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        if (_T_1165) begin
          if (_T_1167) begin
            mem_reg_rs2 <= _T_1170;
          end else if (_T_1171) begin
            mem_reg_rs2 <= _T_1173;
          end else if (ex_reg_rs_bypass_1) begin
            if (_T_796) begin
              mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
            end else if (_T_794) begin
              mem_reg_rs2 <= wb_reg_wdata;
            end else if (_T_792) begin
              mem_reg_rs2 <= mem_reg_wdata;
            end else begin
              mem_reg_rs2 <= 32'h0;
            end
          end else begin
            mem_reg_rs2 <= _T_798;
          end
        end
      end
    end
    if (!(_T_1113)) begin
      if (ex_pc_valid) begin
        mem_br_taken <= alu_io_cmp_out;
      end
    end
    wb_reg_valid <= ~ctrl_killm;
    wb_reg_xcpt <= mem_xcpt & _T_1209;
    wb_reg_replay <= replay_mem & _T_1209;
    wb_reg_flush_pipe <= _T_1208 & mem_reg_flush_pipe;
    if (mem_pc_valid) begin
      if (_T_1181) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, _T_1185};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_sfence <= mem_reg_sfence;
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_mem_size <= mem_reg_mem_size;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      wb_reg_raw_inst <= mem_reg_raw_inst;
    end
    if (mem_pc_valid) begin
      if (_T_1217) begin
        wb_reg_wdata <= io_fpu_toint_data;
      end else begin
        wb_reg_wdata <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else if (_T_875) begin
      id_reg_fence <= _GEN_2;
    end else if (_T_732) begin
      id_reg_fence <= 1'h0;
    end
    if (_T_875) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= do_bypass;
      end
    end
    if (_T_875) begin
      ex_reg_rs_bypass_1 <= do_bypass_1;
    end
    if (_T_875) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= inst[1:0];
      end else if (_T_907) begin
        ex_reg_rs_lsb_0 <= id_rs_0[1:0];
      end else if (id_bypass_src_0_0) begin
        ex_reg_rs_lsb_0 <= 2'h0;
      end else if (id_bypass_src_0_1) begin
        ex_reg_rs_lsb_0 <= 2'h1;
      end else if (id_bypass_src_0_2) begin
        ex_reg_rs_lsb_0 <= 2'h2;
      end else begin
        ex_reg_rs_lsb_0 <= 2'h3;
      end
    end
    if (_T_875) begin
      if (_T_915) begin
        ex_reg_rs_lsb_1 <= id_rs_1[1:0];
      end else if (id_bypass_src_1_0) begin
        ex_reg_rs_lsb_1 <= 2'h0;
      end else if (id_bypass_src_1_1) begin
        ex_reg_rs_lsb_1 <= 2'h1;
      end else if (id_bypass_src_1_2) begin
        ex_reg_rs_lsb_1 <= 2'h2;
      end else begin
        ex_reg_rs_lsb_1 <= 2'h3;
      end
    end
    if (_T_875) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= inst[31:2];
      end else if (_T_907) begin
        ex_reg_rs_msb_0 <= id_rs_0[31:2];
      end
    end
    if (_T_875) begin
      if (_T_915) begin
        ex_reg_rs_msb_1 <= id_rs_1[31:2];
      end
    end
    if (reset) begin
      _T_1324 <= 32'h0;
    end else if (_T_1358) begin
      _T_1324 <= _T_1357;
    end else if (ll_wen) begin
      _T_1324 <= _T_1330;
    end
    if (reset) begin
      _T_1437 <= 32'h0;
    end else if (_T_1455) begin
      _T_1437 <= _T_1454;
    end else if (_T_1450) begin
      _T_1437 <= _T_1449;
    end else if (_T_1440) begin
      _T_1437 <= _T_1443;
    end
    blocked <= _T_1473 & _T_1475;
    _T_1205 <= div_io_req_ready & div_io_req_valid;
    if (ex_reg_rs_bypass_0) begin
      if (_T_789) begin
        _T_1599 <= io_dmem_resp_bits_data_word_bypass;
      end else if (_T_787) begin
        _T_1599 <= wb_reg_wdata;
      end else if (_T_785) begin
        _T_1599 <= mem_reg_wdata;
      end else begin
        _T_1599 <= 32'h0;
      end
    end else begin
      _T_1599 <= _T_791;
    end
    coreMonitorBundle_rd0val <= _T_1599;
    if (ex_reg_rs_bypass_1) begin
      if (_T_796) begin
        _T_1602 <= io_dmem_resp_bits_data_word_bypass;
      end else if (_T_794) begin
        _T_1602 <= wb_reg_wdata;
      end else if (_T_792) begin
        _T_1602 <= mem_reg_wdata;
      end else begin
        _T_1602 <= 32'h0;
      end
    end else begin
      _T_1602 <= _T_798;
    end
    coreMonitorBundle_rd1val <= _T_1602;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (csr_io_trace_0_valid & _T_1616) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%x] W[r%d=%x][%d] R[r%d=%x] R[r%d=%x] inst=[%x] DASM(%x)\n",1'h0,coreMonitorBundle_timer,coreMonitorBundle_valid,coreMonitorBundle_pc,_T_1605,_T_1606,coreMonitorBundle_wrenx,_T_1608,_T_1610,_T_1612,_T_1614,coreMonitorBundle_inst,coreMonitorBundle_inst); // @[RocketCore.scala 920:13:freechips.rocketchip.system.DefaultRV32Config.fir@225718.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
