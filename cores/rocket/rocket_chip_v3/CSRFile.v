module CSRFile( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215271.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215272.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215273.4]
  input         io_ungated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_interrupts_seip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [11:0] io_rw_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [2:0]  io_rw_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_rw_rdata, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [31:0] io_rw_wdata, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [11:0] io_decode_0_csr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_fp_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_fp_csr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_read_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_write_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_write_flush, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_decode_0_system_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_csr_stall, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_eret, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_singleStep, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_cease, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_wfi, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_status_isa, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_sd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [26:0] io_status_zero2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_sxl, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_uxl, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_sd_rv32, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [7:0]  io_status_zero1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_tsr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_tw, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_tvm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_mprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_xs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_fs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_mpp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_status_vs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_spp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_mpie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_hpie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_spie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_upie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_mie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_hie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_sie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_status_uie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [21:0] io_ptbr_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_evec, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_exception, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_retire, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [31:0] io_cause, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [31:0] io_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [31:0] io_tval, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_time, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input         io_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_interrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_interrupt_cause, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_action, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_bp_0_control_tmatch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_m, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_s, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_bp_0_control_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_bp_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [1:0]  io_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [29:0] io_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  input  [31:0] io_inst_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_trace_0_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_trace_0_iaddr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_trace_0_insn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output        io_trace_0_exception, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
  output [31:0] io_customCSRs_0_value // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215274.4]
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
  reg [63:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [63:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] reg_mstatus_prv; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_tsr; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_tw; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_tvm; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_mxr; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_sum; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_mprv; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_spp; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_mpie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_spie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_mie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  reg  reg_mstatus_sie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@215317.4]
  wire  system_insn; // @[CSR.scala 588:31:freechips.rocketchip.system.DefaultRV32Config.fir@216359.4]
  wire [31:0] _T_798; // @[CSR.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@216360.4]
  wire [31:0] _T_805; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216367.4]
  wire  _T_806; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216368.4]
  wire [31:0] _T_807; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216369.4]
  wire  _T_808; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216370.4]
  wire  _T_810; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@216372.4]
  wire  insn_ret; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216387.4]
  wire  _T_1780; // @[CSR.scala 738:36:freechips.rocketchip.system.DefaultRV32Config.fir@217441.6]
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  wire [1:0] _GEN_93; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@217458.8]
  wire [1:0] _GEN_102; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  wire [31:0] _T_799; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216361.4]
  wire  _T_800; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216362.4]
  wire  insn_call; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216383.4]
  wire  _T_803; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216365.4]
  wire  insn_break; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216385.4]
  wire  _T_1420; // @[CSR.scala 672:29:freechips.rocketchip.system.DefaultRV32Config.fir@217019.4]
  wire  exception; // @[CSR.scala 672:43:freechips.rocketchip.system.DefaultRV32Config.fir@217020.4]
  reg  reg_singleStepped; // @[CSR.scala 363:30:freechips.rocketchip.system.DefaultRV32Config.fir@215404.4]
  wire [3:0] _GEN_494; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@216941.4]
  wire [3:0] _T_1366; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@216942.4]
  wire [31:0] _T_1367; // @[CSR.scala 637:14:freechips.rocketchip.system.DefaultRV32Config.fir@216943.4]
  wire [31:0] cause; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@216944.4]
  wire [7:0] cause_lsbs; // @[CSR.scala 638:25:freechips.rocketchip.system.DefaultRV32Config.fir@216945.4]
  wire  _T_1369; // @[CSR.scala 639:53:freechips.rocketchip.system.DefaultRV32Config.fir@216947.4]
  wire  causeIsDebugInt; // @[CSR.scala 639:39:freechips.rocketchip.system.DefaultRV32Config.fir@216948.4]
  wire  _T_1381; // @[CSR.scala 642:60:freechips.rocketchip.system.DefaultRV32Config.fir@216962.4]
  wire  _T_1371; // @[CSR.scala 640:29:freechips.rocketchip.system.DefaultRV32Config.fir@216950.4]
  wire  causeIsDebugTrigger; // @[CSR.scala 640:44:freechips.rocketchip.system.DefaultRV32Config.fir@216952.4]
  wire  _T_1382; // @[CSR.scala 642:79:freechips.rocketchip.system.DefaultRV32Config.fir@216963.4]
  wire  _T_1375; // @[CSR.scala 641:42:freechips.rocketchip.system.DefaultRV32Config.fir@216955.4]
  reg  reg_dcsr_ebreakm; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  reg  reg_dcsr_ebreaks; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  reg  reg_dcsr_ebreaku; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  wire [3:0] _T_1378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216958.4]
  wire [3:0] _T_1379; // @[CSR.scala 641:134:freechips.rocketchip.system.DefaultRV32Config.fir@216959.4]
  wire  causeIsDebugBreak; // @[CSR.scala 641:56:freechips.rocketchip.system.DefaultRV32Config.fir@216961.4]
  wire  _T_1383; // @[CSR.scala 642:102:freechips.rocketchip.system.DefaultRV32Config.fir@216964.4]
  reg  reg_debug; // @[CSR.scala 360:22:freechips.rocketchip.system.DefaultRV32Config.fir@215401.4]
  wire  trapToDebug; // @[CSR.scala 642:123:freechips.rocketchip.system.DefaultRV32Config.fir@216965.4]
  wire  _T_1455; // @[CSR.scala 689:13:freechips.rocketchip.system.DefaultRV32Config.fir@217085.8]
  wire [1:0] _GEN_42; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@217086.8]
  wire  _T_1386; // @[CSR.scala 644:59:freechips.rocketchip.system.DefaultRV32Config.fir@216969.4]
  reg [31:0] reg_mideleg; // @[CSR.scala 371:18:freechips.rocketchip.system.DefaultRV32Config.fir@215409.4]
  wire [31:0] read_mideleg; // @[CSR.scala 372:36:freechips.rocketchip.system.DefaultRV32Config.fir@215410.4]
  wire [31:0] _T_1389; // @[CSR.scala 644:102:freechips.rocketchip.system.DefaultRV32Config.fir@216972.4]
  reg [31:0] reg_medeleg; // @[CSR.scala 375:18:freechips.rocketchip.system.DefaultRV32Config.fir@215412.4]
  wire [31:0] read_medeleg; // @[CSR.scala 376:36:freechips.rocketchip.system.DefaultRV32Config.fir@215413.4]
  wire [31:0] _T_1391; // @[CSR.scala 644:128:freechips.rocketchip.system.DefaultRV32Config.fir@216974.4]
  wire  _T_1393; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@216976.4]
  wire  delegate; // @[CSR.scala 644:68:freechips.rocketchip.system.DefaultRV32Config.fir@216977.4]
  wire [1:0] _GEN_50; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire [1:0] _GEN_61; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire [1:0] _GEN_79; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire [1:0] new_prv; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  wire  _T_1; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@215321.4]
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  reg  reg_dcsr_step; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@215345.4]
  reg [31:0] reg_dpc; // @[CSR.scala 361:20:freechips.rocketchip.system.DefaultRV32Config.fir@215402.4]
  reg [31:0] reg_dscratch; // @[CSR.scala 362:25:freechips.rocketchip.system.DefaultRV32Config.fir@215403.4]
  reg  reg_bp_0_control_dmode; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_action; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_m; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_s; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_u; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_x; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_w; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_bp_0_control_r; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg [31:0] reg_bp_0_address; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@215406.4]
  reg  reg_pmp_0_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_0_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_0_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_0_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_0_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_0_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_1_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_1_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_1_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_1_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_1_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_1_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_2_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_2_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_2_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_2_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_2_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_2_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_3_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_3_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_3_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_3_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_3_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_3_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_4_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_4_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_4_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_4_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_4_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_4_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_5_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_5_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_5_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_5_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_5_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_5_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_6_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_6_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_6_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_6_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_6_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_6_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_7_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [1:0] reg_pmp_7_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_7_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_7_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg  reg_pmp_7_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [29:0] reg_pmp_7_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@215407.4]
  reg [31:0] reg_mie; // @[CSR.scala 369:20:freechips.rocketchip.system.DefaultRV32Config.fir@215408.4]
  reg  reg_mip_seip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@215415.4]
  reg  reg_mip_stip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@215415.4]
  reg  reg_mip_ssip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@215415.4]
  reg [31:0] reg_mepc; // @[CSR.scala 379:21:freechips.rocketchip.system.DefaultRV32Config.fir@215416.4]
  reg [31:0] reg_mcause; // @[CSR.scala 380:27:freechips.rocketchip.system.DefaultRV32Config.fir@215417.4]
  reg [31:0] reg_mtval; // @[CSR.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@215418.4]
  reg [31:0] reg_mscratch; // @[CSR.scala 382:25:freechips.rocketchip.system.DefaultRV32Config.fir@215419.4]
  reg [31:0] reg_mtvec; // @[CSR.scala 385:27:freechips.rocketchip.system.DefaultRV32Config.fir@215420.4]
  reg [31:0] reg_mcounteren; // @[CSR.scala 391:18:freechips.rocketchip.system.DefaultRV32Config.fir@215421.4]
  wire [31:0] read_mcounteren; // @[CSR.scala 392:30:freechips.rocketchip.system.DefaultRV32Config.fir@215422.4]
  reg [31:0] reg_scounteren; // @[CSR.scala 395:18:freechips.rocketchip.system.DefaultRV32Config.fir@215424.4]
  wire [31:0] read_scounteren; // @[CSR.scala 396:36:freechips.rocketchip.system.DefaultRV32Config.fir@215425.4]
  reg [31:0] reg_sepc; // @[CSR.scala 399:21:freechips.rocketchip.system.DefaultRV32Config.fir@215427.4]
  reg [31:0] reg_scause; // @[CSR.scala 400:23:freechips.rocketchip.system.DefaultRV32Config.fir@215428.4]
  reg [31:0] reg_stval; // @[CSR.scala 401:22:freechips.rocketchip.system.DefaultRV32Config.fir@215429.4]
  reg [31:0] reg_sscratch; // @[CSR.scala 402:25:freechips.rocketchip.system.DefaultRV32Config.fir@215430.4]
  reg [31:0] reg_stvec; // @[CSR.scala 403:22:freechips.rocketchip.system.DefaultRV32Config.fir@215431.4]
  reg  reg_satp_mode; // @[CSR.scala 404:21:freechips.rocketchip.system.DefaultRV32Config.fir@215432.4]
  reg [21:0] reg_satp_ppn; // @[CSR.scala 404:21:freechips.rocketchip.system.DefaultRV32Config.fir@215432.4]
  reg  reg_wfi; // @[CSR.scala 405:50:freechips.rocketchip.system.DefaultRV32Config.fir@215433.4]
  reg [4:0] reg_fflags; // @[CSR.scala 407:23:freechips.rocketchip.system.DefaultRV32Config.fir@215434.4]
  reg [2:0] reg_frm; // @[CSR.scala 408:20:freechips.rocketchip.system.DefaultRV32Config.fir@215435.4]
  reg [5:0] _T_39; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@215436.4]
  wire [5:0] _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  wire [6:0] _T_40; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  reg [57:0] _T_41; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@215439.4]
  wire [57:0] _T_44; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@215443.6]
  wire [63:0] _T_45; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  wire  _T_46; // @[CSR.scala 415:103:freechips.rocketchip.system.DefaultRV32Config.fir@215447.4]
  reg [5:0] _T_47; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@215448.4]
  wire [5:0] _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215449.4]
  wire [6:0] _T_48; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215449.4]
  reg [57:0] _T_49; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@215451.4]
  wire [57:0] _T_52; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@215455.6]
  wire [63:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215458.4]
  wire  mip_seip; // @[CSR.scala 426:57:freechips.rocketchip.system.DefaultRV32Config.fir@215465.4]
  wire [7:0] _T_61; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@215474.4]
  wire [15:0] _T_69; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@215482.4]
  wire [15:0] read_mip; // @[CSR.scala 428:29:freechips.rocketchip.system.DefaultRV32Config.fir@215483.4]
  wire [31:0] _GEN_497; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@215484.4]
  wire [31:0] pending_interrupts; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@215484.4]
  wire [14:0] d_interrupts; // @[CSR.scala 432:42:freechips.rocketchip.system.DefaultRV32Config.fir@215486.4]
  wire  _T_72; // @[CSR.scala 433:51:freechips.rocketchip.system.DefaultRV32Config.fir@215488.4]
  wire [31:0] _T_73; // @[CSR.scala 433:73:freechips.rocketchip.system.DefaultRV32Config.fir@215489.4]
  wire [31:0] _T_74; // @[CSR.scala 433:93:freechips.rocketchip.system.DefaultRV32Config.fir@215490.4]
  wire [31:0] _T_75; // @[CSR.scala 433:71:freechips.rocketchip.system.DefaultRV32Config.fir@215491.4]
  wire [31:0] m_interrupts; // @[CSR.scala 433:25:freechips.rocketchip.system.DefaultRV32Config.fir@215492.4]
  wire  _T_76; // @[CSR.scala 434:42:freechips.rocketchip.system.DefaultRV32Config.fir@215493.4]
  wire  _T_77; // @[CSR.scala 434:70:freechips.rocketchip.system.DefaultRV32Config.fir@215494.4]
  wire  _T_78; // @[CSR.scala 434:80:freechips.rocketchip.system.DefaultRV32Config.fir@215495.4]
  wire  _T_79; // @[CSR.scala 434:50:freechips.rocketchip.system.DefaultRV32Config.fir@215496.4]
  wire [31:0] _T_80; // @[CSR.scala 434:120:freechips.rocketchip.system.DefaultRV32Config.fir@215497.4]
  wire [31:0] s_interrupts; // @[CSR.scala 434:25:freechips.rocketchip.system.DefaultRV32Config.fir@215498.4]
  wire  _T_119; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215537.4]
  wire  _T_120; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215538.4]
  wire  _T_121; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215539.4]
  wire  _T_122; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215540.4]
  wire  _T_123; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215541.4]
  wire  _T_124; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215542.4]
  wire  _T_125; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215543.4]
  wire  _T_126; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215544.4]
  wire  _T_127; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215545.4]
  wire  _T_128; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215546.4]
  wire  _T_129; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215547.4]
  wire  _T_130; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215548.4]
  wire  _T_131; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215549.4]
  wire  _T_132; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215550.4]
  wire  _T_133; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215551.4]
  wire  _T_134; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215552.4]
  wire  _T_135; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215553.4]
  wire  _T_136; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215554.4]
  wire  _T_137; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215555.4]
  wire  _T_138; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215556.4]
  wire  _T_139; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215557.4]
  wire  _T_140; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215558.4]
  wire  _T_141; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215559.4]
  wire  _T_142; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  wire  _T_143; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215561.4]
  wire  _T_144; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215562.4]
  wire  _T_145; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215563.4]
  wire  _T_146; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215564.4]
  wire  _T_147; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215565.4]
  wire  _T_148; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215566.4]
  wire  _T_149; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215567.4]
  wire  _T_150; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215568.4]
  wire  _T_151; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215569.4]
  wire  _T_152; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215570.4]
  wire  _T_153; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215571.4]
  wire  _T_154; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215572.4]
  wire  anyInterrupt; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215573.4]
  wire [2:0] _T_193; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215612.4]
  wire [3:0] _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215613.4]
  wire [3:0] _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215614.4]
  wire [3:0] _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215615.4]
  wire [3:0] _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215616.4]
  wire [3:0] _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215617.4]
  wire [3:0] _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215618.4]
  wire [3:0] _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215619.4]
  wire [3:0] _T_201; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215620.4]
  wire [3:0] _T_202; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215621.4]
  wire [3:0] _T_203; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215622.4]
  wire [3:0] _T_204; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215623.4]
  wire [3:0] _T_205; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215624.4]
  wire [3:0] _T_206; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215625.4]
  wire [3:0] _T_207; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215626.4]
  wire [3:0] _T_208; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215627.4]
  wire [3:0] _T_209; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215628.4]
  wire [3:0] _T_210; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215629.4]
  wire [3:0] _T_211; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215630.4]
  wire [3:0] _T_212; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215631.4]
  wire [3:0] _T_213; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215632.4]
  wire [3:0] _T_214; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215633.4]
  wire [3:0] _T_215; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215634.4]
  wire [3:0] _T_216; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215635.4]
  wire [3:0] _T_217; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215636.4]
  wire [3:0] _T_218; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215637.4]
  wire [3:0] _T_219; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215638.4]
  wire [3:0] _T_220; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215639.4]
  wire [3:0] _T_221; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215640.4]
  wire [3:0] _T_222; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215641.4]
  wire [3:0] _T_223; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215642.4]
  wire [3:0] _T_224; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215643.4]
  wire [3:0] _T_225; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215644.4]
  wire [3:0] _T_226; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215645.4]
  wire [3:0] _T_227; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215646.4]
  wire [3:0] _T_228; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215647.4]
  wire [3:0] whichInterrupt; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215648.4]
  wire [31:0] _GEN_498; // @[CSR.scala 437:43:freechips.rocketchip.system.DefaultRV32Config.fir@215649.4]
  wire  _T_230; // @[CSR.scala 438:36:freechips.rocketchip.system.DefaultRV32Config.fir@215651.4]
  wire  _T_231; // @[CSR.scala 438:33:freechips.rocketchip.system.DefaultRV32Config.fir@215652.4]
  wire  _T_232; // @[CSR.scala 438:51:freechips.rocketchip.system.DefaultRV32Config.fir@215653.4]
  wire  _T_233; // @[CSR.scala 438:88:freechips.rocketchip.system.DefaultRV32Config.fir@215654.4]
  wire  _T_234; // @[CSR.scala 438:76:freechips.rocketchip.system.DefaultRV32Config.fir@215655.4]
  wire [30:0] _T_238; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215669.4]
  wire [30:0] _T_241; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215672.4]
  wire [30:0] _T_242; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215673.4]
  wire [30:0] _T_243; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215674.4]
  wire [32:0] _T_244; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215675.4]
  wire [30:0] _T_247; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215686.4]
  wire [30:0] _T_250; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215689.4]
  wire [30:0] _T_251; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215690.4]
  wire [30:0] _T_252; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215691.4]
  wire [32:0] _T_253; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215692.4]
  wire [30:0] _T_256; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215703.4]
  wire [30:0] _T_259; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215706.4]
  wire [30:0] _T_260; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215707.4]
  wire [30:0] _T_261; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215708.4]
  wire [32:0] _T_262; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  wire [30:0] _T_265; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215720.4]
  wire [30:0] _T_268; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215723.4]
  wire [30:0] _T_269; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215724.4]
  wire [30:0] _T_270; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215725.4]
  wire [32:0] _T_271; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215726.4]
  wire [30:0] _T_274; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215737.4]
  wire [30:0] _T_277; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215740.4]
  wire [30:0] _T_278; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215741.4]
  wire [30:0] _T_279; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215742.4]
  wire [32:0] _T_280; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215743.4]
  wire [30:0] _T_283; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215754.4]
  wire [30:0] _T_286; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215757.4]
  wire [30:0] _T_287; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215758.4]
  wire [30:0] _T_288; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215759.4]
  wire [32:0] _T_289; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215760.4]
  wire [30:0] _T_292; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215771.4]
  wire [30:0] _T_295; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215774.4]
  wire [30:0] _T_296; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215775.4]
  wire [30:0] _T_297; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215776.4]
  wire [32:0] _T_298; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215777.4]
  wire [30:0] _T_301; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215788.4]
  wire [30:0] _T_304; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215791.4]
  wire [30:0] _T_305; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215792.4]
  wire [30:0] _T_306; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215793.4]
  wire [32:0] _T_307; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215794.4]
  reg [31:0] reg_misa; // @[CSR.scala 456:21:freechips.rocketchip.system.DefaultRV32Config.fir@215804.4]
  wire [6:0] _T_313; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215810.4]
  wire [18:0] _T_321; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215818.4]
  wire [16:0] _T_328; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215825.4]
  wire [102:0] _T_337; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215834.4]
  wire [31:0] read_mstatus; // @[CSR.scala 457:40:freechips.rocketchip.system.DefaultRV32Config.fir@215835.4]
  wire [6:0] _T_339; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@215837.4]
  wire [31:0] _T_341; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@215839.4]
  wire [31:0] _T_342; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@215840.4]
  wire [31:0] read_mtvec; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@215841.4]
  wire [6:0] _T_344; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@215843.4]
  wire [31:0] _T_346; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@215845.4]
  wire [31:0] _T_347; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@215846.4]
  wire [31:0] read_stvec; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@215847.4]
  wire [6:0] _T_353; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@215853.4]
  wire [31:0] _T_361; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@215861.4]
  wire [31:0] _T_362; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@215862.4]
  wire [1:0] _T_364; // @[CSR.scala 1092:36:freechips.rocketchip.system.DefaultRV32Config.fir@215864.4]
  wire [31:0] _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215865.4]
  wire [31:0] _T_365; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215865.4]
  wire [31:0] _T_366; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@215866.4]
  wire [11:0] _T_372; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@215872.4]
  wire [31:0] _T_379; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@215879.4]
  wire [31:0] _T_380; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@215880.4]
  wire [31:0] _T_383; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215883.4]
  wire [31:0] _T_384; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@215884.4]
  wire [7:0] read_fcsr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215885.4]
  wire [31:0] _T_447; // @[CSR.scala 533:28:freechips.rocketchip.system.DefaultRV32Config.fir@215949.4]
  wire [31:0] _T_448; // @[CSR.scala 534:29:freechips.rocketchip.system.DefaultRV32Config.fir@215950.4]
  wire [6:0] _T_456; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216003.4]
  wire [18:0] _T_464; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216011.4]
  wire [16:0] _T_471; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216018.4]
  wire [102:0] _T_480; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216027.4]
  wire [31:0] _T_483; // @[CSR.scala 554:43:freechips.rocketchip.system.DefaultRV32Config.fir@216030.4]
  wire [31:0] _T_484; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@216031.4]
  wire [31:0] _T_487; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@216034.4]
  wire [31:0] _T_488; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@216035.4]
  wire [7:0] _T_494; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216050.4]
  wire [7:0] _T_504; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216060.4]
  wire [15:0] _T_510; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216066.4]
  wire [31:0] _T_512; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216068.4]
  wire [7:0] _T_517; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216073.4]
  wire [7:0] _T_527; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216083.4]
  wire [15:0] _T_533; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216089.4]
  wire [31:0] _T_535; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216091.4]
  reg [31:0] reg_custom_0; // @[CSR.scala 577:43:freechips.rocketchip.system.DefaultRV32Config.fir@216138.4]
  wire  _T_583; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216143.4]
  wire  _T_584; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216144.4]
  wire  _T_585; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216145.4]
  wire  _T_586; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216146.4]
  wire  _T_587; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216147.4]
  wire  _T_588; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216148.4]
  wire  _T_589; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216149.4]
  wire  _T_590; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216150.4]
  wire  _T_591; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216151.4]
  wire  _T_592; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216152.4]
  wire  _T_593; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216153.4]
  wire  _T_595; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216155.4]
  wire  _T_596; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216156.4]
  wire  _T_597; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216157.4]
  wire  _T_598; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216158.4]
  wire  _T_599; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216159.4]
  wire  _T_600; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216160.4]
  wire  _T_601; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216161.4]
  wire  _T_602; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216162.4]
  wire  _T_748; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216308.4]
  wire  _T_749; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216309.4]
  wire  _T_750; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216310.4]
  wire  _T_751; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216311.4]
  wire  _T_752; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216312.4]
  wire  _T_753; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216313.4]
  wire  _T_754; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216314.4]
  wire  _T_755; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216315.4]
  wire  _T_756; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216316.4]
  wire  _T_757; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216317.4]
  wire  _T_758; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216318.4]
  wire  _T_759; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216319.4]
  wire  _T_760; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216320.4]
  wire  _T_761; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216321.4]
  wire  _T_762; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216322.4]
  wire  _T_763; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216323.4]
  wire  _T_764; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216324.4]
  wire  _T_765; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216325.4]
  wire  _T_766; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216326.4]
  wire  _T_767; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216327.4]
  wire  _T_768; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216328.4]
  wire  _T_771; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216331.4]
  wire  _T_772; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216332.4]
  wire  _T_773; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216333.4]
  wire  _T_774; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216334.4]
  wire  _T_775; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216335.4]
  wire  _T_776; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216336.4]
  wire  _T_777; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216337.4]
  wire  _T_778; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216338.4]
  wire  _T_787; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216347.4]
  wire  _T_788; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216348.4]
  wire  _T_790; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216350.4]
  wire [31:0] _T_792; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@216352.4]
  wire [31:0] _T_793; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@216353.4]
  wire  _T_795; // @[CSR.scala 1070:59:freechips.rocketchip.system.DefaultRV32Config.fir@216355.4]
  wire [31:0] _T_796; // @[CSR.scala 1070:49:freechips.rocketchip.system.DefaultRV32Config.fir@216356.4]
  wire [31:0] _T_797; // @[CSR.scala 1070:45:freechips.rocketchip.system.DefaultRV32Config.fir@216357.4]
  wire [31:0] wdata; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@216358.4]
  wire [31:0] _T_811; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216373.4]
  wire  _T_812; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216374.4]
  wire [31:0] _T_814; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216376.4]
  wire  _T_815; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216377.4]
  wire  insn_cease; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216389.4]
  wire  insn_wfi; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216391.4]
  wire [31:0] _T_826; // @[CSR.scala 607:30:freechips.rocketchip.system.DefaultRV32Config.fir@216394.4]
  wire [31:0] _T_833; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216401.4]
  wire  _T_834; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216402.4]
  wire [31:0] _T_835; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216403.4]
  wire  _T_836; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216404.4]
  wire  _T_838; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@216406.4]
  wire [31:0] _T_842; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216410.4]
  wire  _T_843; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216411.4]
  wire [31:0] _T_845; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216413.4]
  wire  _T_846; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216414.4]
  wire  _T_854; // @[CSR.scala 609:63:freechips.rocketchip.system.DefaultRV32Config.fir@216422.4]
  wire  _T_856; // @[CSR.scala 609:74:freechips.rocketchip.system.DefaultRV32Config.fir@216424.4]
  wire  _T_857; // @[CSR.scala 609:71:freechips.rocketchip.system.DefaultRV32Config.fir@216425.4]
  wire  _T_860; // @[CSR.scala 610:73:freechips.rocketchip.system.DefaultRV32Config.fir@216428.4]
  wire  _T_861; // @[CSR.scala 610:70:freechips.rocketchip.system.DefaultRV32Config.fir@216429.4]
  wire  _T_864; // @[CSR.scala 611:75:freechips.rocketchip.system.DefaultRV32Config.fir@216432.4]
  wire  _T_865; // @[CSR.scala 611:72:freechips.rocketchip.system.DefaultRV32Config.fir@216433.4]
  wire [31:0] _T_868; // @[CSR.scala 613:68:freechips.rocketchip.system.DefaultRV32Config.fir@216436.4]
  wire  _T_870; // @[CSR.scala 613:50:freechips.rocketchip.system.DefaultRV32Config.fir@216438.4]
  wire  _T_871; // @[CSR.scala 614:44:freechips.rocketchip.system.DefaultRV32Config.fir@216439.4]
  wire [31:0] _T_873; // @[CSR.scala 614:71:freechips.rocketchip.system.DefaultRV32Config.fir@216441.4]
  wire  _T_875; // @[CSR.scala 614:53:freechips.rocketchip.system.DefaultRV32Config.fir@216443.4]
  wire  _T_876; // @[CSR.scala 613:84:freechips.rocketchip.system.DefaultRV32Config.fir@216444.4]
  wire  _T_877; // @[CSR.scala 615:39:freechips.rocketchip.system.DefaultRV32Config.fir@216445.4]
  wire  _T_879; // @[CSR.scala 615:48:freechips.rocketchip.system.DefaultRV32Config.fir@216447.4]
  wire [11:0] _T_885; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216455.4]
  wire  _T_894; // @[CSR.scala 619:44:freechips.rocketchip.system.DefaultRV32Config.fir@216466.4]
  wire  _T_895; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216467.4]
  wire  _T_896; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216468.4]
  wire  _T_897; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216469.4]
  wire  _T_898; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216470.4]
  wire  _T_899; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216471.4]
  wire  _T_900; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216472.4]
  wire  _T_901; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216473.4]
  wire  _T_902; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216474.4]
  wire  _T_903; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216475.4]
  wire  _T_904; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216476.4]
  wire  _T_905; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216477.4]
  wire  _T_906; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216478.4]
  wire  _T_907; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216479.4]
  wire  _T_908; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216480.4]
  wire  _T_909; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216481.4]
  wire  _T_910; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216482.4]
  wire  _T_911; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216483.4]
  wire  _T_912; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216484.4]
  wire  _T_913; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216485.4]
  wire  _T_914; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216486.4]
  wire  _T_915; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216487.4]
  wire  _T_916; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216488.4]
  wire  _T_917; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216489.4]
  wire  _T_918; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216490.4]
  wire  _T_919; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216491.4]
  wire  _T_920; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216492.4]
  wire  _T_921; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216493.4]
  wire  _T_922; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216494.4]
  wire  _T_923; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216495.4]
  wire  _T_924; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216496.4]
  wire  _T_925; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216497.4]
  wire  _T_926; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216498.4]
  wire  _T_927; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216499.4]
  wire  _T_928; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216500.4]
  wire  _T_929; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216501.4]
  wire  _T_930; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216502.4]
  wire  _T_931; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216503.4]
  wire  _T_932; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216504.4]
  wire  _T_933; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216505.4]
  wire  _T_934; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216506.4]
  wire  _T_935; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216507.4]
  wire  _T_936; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216508.4]
  wire  _T_937; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216509.4]
  wire  _T_938; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216510.4]
  wire  _T_939; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216511.4]
  wire  _T_940; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216512.4]
  wire  _T_941; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216513.4]
  wire  _T_942; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216514.4]
  wire  _T_943; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216515.4]
  wire  _T_944; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216516.4]
  wire  _T_945; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216517.4]
  wire  _T_946; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216518.4]
  wire  _T_947; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216519.4]
  wire  _T_948; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216520.4]
  wire  _T_949; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216521.4]
  wire  _T_950; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216522.4]
  wire  _T_951; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216523.4]
  wire  _T_952; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216524.4]
  wire  _T_953; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216525.4]
  wire  _T_954; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216526.4]
  wire  _T_955; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216527.4]
  wire  _T_956; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216528.4]
  wire  _T_957; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216529.4]
  wire  _T_958; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216530.4]
  wire  _T_959; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216531.4]
  wire  _T_960; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216532.4]
  wire  _T_961; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216533.4]
  wire  _T_962; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216534.4]
  wire  _T_963; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216535.4]
  wire  _T_964; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216536.4]
  wire  _T_965; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216537.4]
  wire  _T_966; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216538.4]
  wire  _T_967; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216539.4]
  wire  _T_968; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216540.4]
  wire  _T_969; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216541.4]
  wire  _T_970; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216542.4]
  wire  _T_971; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216543.4]
  wire  _T_972; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216544.4]
  wire  _T_973; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216545.4]
  wire  _T_974; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216546.4]
  wire  _T_975; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216547.4]
  wire  _T_976; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216548.4]
  wire  _T_977; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216549.4]
  wire  _T_978; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216550.4]
  wire  _T_979; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216551.4]
  wire  _T_980; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216552.4]
  wire  _T_981; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216553.4]
  wire  _T_982; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216554.4]
  wire  _T_983; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216555.4]
  wire  _T_984; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216556.4]
  wire  _T_985; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216557.4]
  wire  _T_986; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216558.4]
  wire  _T_987; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216559.4]
  wire  _T_988; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216560.4]
  wire  _T_989; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216561.4]
  wire  _T_990; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216562.4]
  wire  _T_991; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216563.4]
  wire  _T_992; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216564.4]
  wire  _T_993; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216565.4]
  wire  _T_994; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216566.4]
  wire  _T_995; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216567.4]
  wire  _T_996; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216568.4]
  wire  _T_997; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216569.4]
  wire  _T_998; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216570.4]
  wire  _T_999; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216571.4]
  wire  _T_1000; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216572.4]
  wire  _T_1001; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216573.4]
  wire  _T_1002; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216574.4]
  wire  _T_1003; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216575.4]
  wire  _T_1004; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216576.4]
  wire  _T_1005; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216577.4]
  wire  _T_1006; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216578.4]
  wire  _T_1007; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216579.4]
  wire  _T_1008; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216580.4]
  wire  _T_1009; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216581.4]
  wire  _T_1010; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216582.4]
  wire  _T_1011; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216583.4]
  wire  _T_1012; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216584.4]
  wire  _T_1013; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216585.4]
  wire  _T_1014; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216586.4]
  wire  _T_1015; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216587.4]
  wire  _T_1016; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216588.4]
  wire  _T_1017; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216589.4]
  wire  _T_1018; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216590.4]
  wire  _T_1019; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216591.4]
  wire  _T_1020; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216592.4]
  wire  _T_1021; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216593.4]
  wire  _T_1022; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216594.4]
  wire  _T_1023; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216595.4]
  wire  _T_1024; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216596.4]
  wire  _T_1025; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216597.4]
  wire  _T_1026; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216598.4]
  wire  _T_1027; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216599.4]
  wire  _T_1028; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216600.4]
  wire  _T_1029; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216601.4]
  wire  _T_1030; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216602.4]
  wire  _T_1031; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216603.4]
  wire  _T_1032; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216604.4]
  wire  _T_1033; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216605.4]
  wire  _T_1034; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216606.4]
  wire  _T_1035; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216607.4]
  wire  _T_1036; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216608.4]
  wire  _T_1037; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216609.4]
  wire  _T_1038; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216610.4]
  wire  _T_1039; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216611.4]
  wire  _T_1040; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216612.4]
  wire  _T_1041; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216613.4]
  wire  _T_1042; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216614.4]
  wire  _T_1043; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216615.4]
  wire  _T_1044; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216616.4]
  wire  _T_1045; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216617.4]
  wire  _T_1046; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216618.4]
  wire  _T_1047; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216619.4]
  wire  _T_1048; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216620.4]
  wire  _T_1049; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216621.4]
  wire  _T_1050; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216622.4]
  wire  _T_1051; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216623.4]
  wire  _T_1052; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216624.4]
  wire  _T_1053; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216625.4]
  wire  _T_1054; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216626.4]
  wire  _T_1055; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216627.4]
  wire  _T_1056; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216628.4]
  wire  _T_1057; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216629.4]
  wire  _T_1058; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216630.4]
  wire  _T_1059; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216631.4]
  wire  _T_1060; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216632.4]
  wire  _T_1061; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216633.4]
  wire  _T_1062; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216634.4]
  wire  _T_1063; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216635.4]
  wire  _T_1064; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216636.4]
  wire  _T_1065; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216637.4]
  wire  _T_1066; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216638.4]
  wire  _T_1067; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216639.4]
  wire  _T_1068; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216640.4]
  wire  _T_1069; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216641.4]
  wire  _T_1070; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216642.4]
  wire  _T_1071; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216643.4]
  wire  _T_1072; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216644.4]
  wire  _T_1073; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216645.4]
  wire  _T_1074; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216646.4]
  wire  _T_1075; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216647.4]
  wire  _T_1076; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216648.4]
  wire  _T_1077; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216649.4]
  wire  _T_1078; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216650.4]
  wire  _T_1079; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216651.4]
  wire  _T_1080; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216652.4]
  wire  _T_1081; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216653.4]
  wire  _T_1082; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216654.4]
  wire  _T_1083; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216655.4]
  wire  _T_1084; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216656.4]
  wire  _T_1085; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216657.4]
  wire  _T_1086; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216658.4]
  wire  _T_1087; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216659.4]
  wire  _T_1088; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216660.4]
  wire  _T_1089; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216661.4]
  wire  _T_1090; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216662.4]
  wire  _T_1091; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216663.4]
  wire  _T_1092; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216664.4]
  wire  _T_1093; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216665.4]
  wire  _T_1094; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216666.4]
  wire  _T_1095; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216667.4]
  wire  _T_1096; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216668.4]
  wire  _T_1097; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216669.4]
  wire  _T_1098; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216670.4]
  wire  _T_1099; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216671.4]
  wire  _T_1100; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216672.4]
  wire  _T_1101; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216673.4]
  wire  _T_1102; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216674.4]
  wire  _T_1103; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216675.4]
  wire  _T_1104; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216676.4]
  wire  _T_1105; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216677.4]
  wire  _T_1106; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216678.4]
  wire  _T_1107; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216679.4]
  wire  _T_1108; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216680.4]
  wire  _T_1109; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216681.4]
  wire  _T_1110; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216682.4]
  wire  _T_1111; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216683.4]
  wire  _T_1112; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216684.4]
  wire  _T_1113; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216685.4]
  wire  _T_1114; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216686.4]
  wire  _T_1115; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216687.4]
  wire  _T_1116; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216688.4]
  wire  _T_1117; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216689.4]
  wire  _T_1118; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216690.4]
  wire  _T_1119; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216691.4]
  wire  _T_1120; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216692.4]
  wire  _T_1121; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216693.4]
  wire  _T_1122; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216694.4]
  wire  _T_1123; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216695.4]
  wire  _T_1124; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216696.4]
  wire  _T_1125; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216697.4]
  wire  _T_1126; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216698.4]
  wire  _T_1127; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216699.4]
  wire  _T_1128; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216700.4]
  wire  _T_1129; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216701.4]
  wire  _T_1130; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216702.4]
  wire  _T_1131; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216703.4]
  wire  _T_1132; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216704.4]
  wire  _T_1133; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216705.4]
  wire  _T_1134; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216706.4]
  wire  _T_1135; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216707.4]
  wire  _T_1136; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216708.4]
  wire  _T_1137; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216709.4]
  wire  _T_1138; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216710.4]
  wire  _T_1139; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216711.4]
  wire  _T_1140; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216712.4]
  wire  _T_1141; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216713.4]
  wire  _T_1142; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216714.4]
  wire  _T_1143; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216715.4]
  wire  _T_1144; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216716.4]
  wire  _T_1145; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216717.4]
  wire  _T_1146; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216718.4]
  wire  _T_1147; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216719.4]
  wire  _T_1148; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216720.4]
  wire  _T_1149; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216721.4]
  wire  _T_1150; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216722.4]
  wire  _T_1151; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216723.4]
  wire  _T_1152; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216724.4]
  wire  _T_1153; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216725.4]
  wire  _T_1154; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216726.4]
  wire  _T_1155; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216727.4]
  wire  _T_1156; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216728.4]
  wire  _T_1157; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216729.4]
  wire  _T_1158; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216730.4]
  wire  _T_1159; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216731.4]
  wire  _T_1160; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216732.4]
  wire  _T_1161; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216733.4]
  wire  _T_1162; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216734.4]
  wire  _T_1163; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216735.4]
  wire  _T_1164; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216736.4]
  wire  _T_1165; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216737.4]
  wire  _T_1166; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216738.4]
  wire  _T_1167; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216739.4]
  wire  _T_1168; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216740.4]
  wire  _T_1169; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216741.4]
  wire  _T_1170; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216742.4]
  wire  _T_1171; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216743.4]
  wire  _T_1172; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216744.4]
  wire  _T_1173; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216745.4]
  wire  _T_1174; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216746.4]
  wire  _T_1175; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216747.4]
  wire  _T_1176; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216748.4]
  wire  _T_1177; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216749.4]
  wire  _T_1178; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216750.4]
  wire  _T_1179; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216751.4]
  wire  _T_1180; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216752.4]
  wire  _T_1181; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216753.4]
  wire  _T_1182; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216754.4]
  wire  _T_1183; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216755.4]
  wire  _T_1184; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216756.4]
  wire  _T_1185; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216757.4]
  wire  _T_1186; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216758.4]
  wire  _T_1187; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216759.4]
  wire  _T_1188; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216760.4]
  wire  _T_1189; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216761.4]
  wire  _T_1190; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216762.4]
  wire  _T_1191; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216763.4]
  wire  _T_1192; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216764.4]
  wire  _T_1193; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216765.4]
  wire  _T_1194; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216766.4]
  wire  _T_1195; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216767.4]
  wire  _T_1196; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216768.4]
  wire  _T_1197; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216769.4]
  wire  _T_1198; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216770.4]
  wire  _T_1199; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216771.4]
  wire  _T_1200; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216772.4]
  wire  _T_1201; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216773.4]
  wire  _T_1202; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216774.4]
  wire  _T_1203; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216775.4]
  wire  _T_1204; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216776.4]
  wire  _T_1205; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216777.4]
  wire  _T_1206; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216778.4]
  wire  _T_1207; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216779.4]
  wire  _T_1208; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216780.4]
  wire  _T_1209; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216781.4]
  wire  _T_1210; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216782.4]
  wire  _T_1211; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216783.4]
  wire  _T_1212; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216784.4]
  wire  _T_1213; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216785.4]
  wire  _T_1214; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216786.4]
  wire  _T_1215; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216787.4]
  wire  _T_1216; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216788.4]
  wire  _T_1217; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216789.4]
  wire  _T_1218; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216790.4]
  wire  _T_1219; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216791.4]
  wire  _T_1220; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216792.4]
  wire  _T_1221; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216793.4]
  wire  _T_1222; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216794.4]
  wire  _T_1223; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216795.4]
  wire  _T_1224; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216796.4]
  wire  _T_1225; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216797.4]
  wire  _T_1226; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216798.4]
  wire  _T_1227; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216799.4]
  wire  _T_1228; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216800.4]
  wire  _T_1229; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216801.4]
  wire  _T_1230; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216802.4]
  wire  _T_1231; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216803.4]
  wire  _T_1232; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216804.4]
  wire  _T_1233; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216805.4]
  wire  _T_1234; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216806.4]
  wire  _T_1235; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216807.4]
  wire  _T_1236; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216808.4]
  wire  _T_1237; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216809.4]
  wire  _T_1238; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216810.4]
  wire  _T_1239; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216811.4]
  wire  _T_1240; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216812.4]
  wire  _T_1241; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216813.4]
  wire  _T_1242; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216814.4]
  wire  _T_1243; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216815.4]
  wire  _T_1244; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216816.4]
  wire  _T_1245; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216817.4]
  wire  _T_1246; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216818.4]
  wire  _T_1247; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216819.4]
  wire  _T_1248; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216820.4]
  wire  _T_1249; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216821.4]
  wire  _T_1250; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216822.4]
  wire  _T_1251; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216823.4]
  wire  _T_1252; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216824.4]
  wire  _T_1253; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216825.4]
  wire  _T_1254; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216826.4]
  wire  _T_1255; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216827.4]
  wire  _T_1256; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216828.4]
  wire  _T_1257; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216829.4]
  wire  _T_1258; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216830.4]
  wire  _T_1259; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216831.4]
  wire  _T_1260; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216832.4]
  wire  _T_1261; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216833.4]
  wire  _T_1262; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216834.4]
  wire  _T_1263; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216835.4]
  wire  _T_1264; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216836.4]
  wire  _T_1265; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216837.4]
  wire  _T_1266; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216838.4]
  wire  _T_1267; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216839.4]
  wire  _T_1268; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216840.4]
  wire  _T_1269; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216841.4]
  wire  _T_1270; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216842.4]
  wire  _T_1271; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216843.4]
  wire  _T_1272; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216844.4]
  wire  _T_1273; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216845.4]
  wire  _T_1274; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216846.4]
  wire  _T_1275; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216847.4]
  wire  _T_1276; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216848.4]
  wire  _T_1277; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216849.4]
  wire  _T_1278; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216850.4]
  wire  _T_1279; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216851.4]
  wire  _T_1280; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216852.4]
  wire  _T_1281; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216853.4]
  wire  _T_1282; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216854.4]
  wire  _T_1283; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216855.4]
  wire  _T_1284; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216856.4]
  wire  _T_1285; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216857.4]
  wire  _T_1286; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216858.4]
  wire  _T_1287; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216859.4]
  wire  _T_1288; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216860.4]
  wire  _T_1289; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216861.4]
  wire  _T_1290; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216862.4]
  wire  _T_1291; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216863.4]
  wire  _T_1292; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216864.4]
  wire  _T_1293; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216865.4]
  wire  _T_1294; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216866.4]
  wire  _T_1295; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216867.4]
  wire  _T_1296; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216868.4]
  wire  _T_1297; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216869.4]
  wire  _T_1298; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216870.4]
  wire  _T_1299; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216871.4]
  wire  _T_1300; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216872.4]
  wire  _T_1301; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216873.4]
  wire  _T_1302; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216874.4]
  wire  _T_1303; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216875.4]
  wire  _T_1304; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216876.4]
  wire  _T_1305; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216877.4]
  wire  _T_1306; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216878.4]
  wire  _T_1307; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216879.4]
  wire  _T_1308; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216880.4]
  wire  _T_1309; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216881.4]
  wire  _T_1310; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216882.4]
  wire  _T_1311; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216883.4]
  wire  _T_1312; // @[CSR.scala 620:7:freechips.rocketchip.system.DefaultRV32Config.fir@216884.4]
  wire  _T_1313; // @[CSR.scala 619:62:freechips.rocketchip.system.DefaultRV32Config.fir@216885.4]
  wire  _T_1315; // @[CSR.scala 621:35:freechips.rocketchip.system.DefaultRV32Config.fir@216887.4]
  wire  _T_1316; // @[CSR.scala 621:32:freechips.rocketchip.system.DefaultRV32Config.fir@216888.4]
  wire  _T_1317; // @[CSR.scala 620:32:freechips.rocketchip.system.DefaultRV32Config.fir@216889.4]
  wire  _T_1318; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@216890.4]
  wire  _T_1319; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@216891.4]
  wire  _T_1320; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@216892.4]
  wire  _T_1321; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@216893.4]
  wire  _T_1322; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@216894.4]
  wire  _T_1323; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@216895.4]
  wire  _T_1324; // @[CSR.scala 622:66:freechips.rocketchip.system.DefaultRV32Config.fir@216896.4]
  wire  _T_1325; // @[CSR.scala 622:133:freechips.rocketchip.system.DefaultRV32Config.fir@216897.4]
  wire  _T_1326; // @[CSR.scala 622:130:freechips.rocketchip.system.DefaultRV32Config.fir@216898.4]
  wire  _T_1327; // @[CSR.scala 621:53:freechips.rocketchip.system.DefaultRV32Config.fir@216899.4]
  wire [11:0] _T_1328; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216900.4]
  wire  _T_1329; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216901.4]
  wire  _T_1333; // @[CSR.scala 623:42:freechips.rocketchip.system.DefaultRV32Config.fir@216905.4]
  wire  _T_1334; // @[CSR.scala 622:148:freechips.rocketchip.system.DefaultRV32Config.fir@216906.4]
  wire  _T_1337; // @[CSR.scala 625:21:freechips.rocketchip.system.DefaultRV32Config.fir@216909.4]
  wire  _T_1341; // @[CSR.scala 627:40:freechips.rocketchip.system.DefaultRV32Config.fir@216915.4]
  wire  _T_1342; // @[CSR.scala 627:71:freechips.rocketchip.system.DefaultRV32Config.fir@216916.4]
  wire  _T_1343; // @[CSR.scala 627:57:freechips.rocketchip.system.DefaultRV32Config.fir@216917.4]
  wire  _T_1344; // @[CSR.scala 627:99:freechips.rocketchip.system.DefaultRV32Config.fir@216918.4]
  wire  _T_1345; // @[CSR.scala 627:130:freechips.rocketchip.system.DefaultRV32Config.fir@216919.4]
  wire  _T_1346; // @[CSR.scala 627:116:freechips.rocketchip.system.DefaultRV32Config.fir@216920.4]
  wire  _T_1347; // @[CSR.scala 627:85:freechips.rocketchip.system.DefaultRV32Config.fir@216921.4]
  wire  _T_1351; // @[CSR.scala 629:17:freechips.rocketchip.system.DefaultRV32Config.fir@216926.4]
  wire  _T_1352; // @[CSR.scala 629:14:freechips.rocketchip.system.DefaultRV32Config.fir@216927.4]
  wire  _T_1353; // @[CSR.scala 628:64:freechips.rocketchip.system.DefaultRV32Config.fir@216928.4]
  wire  _T_1354; // @[CSR.scala 630:17:freechips.rocketchip.system.DefaultRV32Config.fir@216929.4]
  wire  _T_1355; // @[CSR.scala 630:14:freechips.rocketchip.system.DefaultRV32Config.fir@216930.4]
  wire  _T_1356; // @[CSR.scala 629:28:freechips.rocketchip.system.DefaultRV32Config.fir@216931.4]
  wire  _T_1358; // @[CSR.scala 631:14:freechips.rocketchip.system.DefaultRV32Config.fir@216933.4]
  wire  _T_1360; // @[CSR.scala 631:32:freechips.rocketchip.system.DefaultRV32Config.fir@216935.4]
  wire  _T_1361; // @[CSR.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@216936.4]
  wire  _T_1363; // @[CSR.scala 632:17:freechips.rocketchip.system.DefaultRV32Config.fir@216938.4]
  wire [11:0] _T_1385; // @[CSR.scala 643:37:freechips.rocketchip.system.DefaultRV32Config.fir@216967.4]
  wire [11:0] debugTVec; // @[CSR.scala 643:22:freechips.rocketchip.system.DefaultRV32Config.fir@216968.4]
  wire [31:0] _T_1394; // @[CSR.scala 651:19:freechips.rocketchip.system.DefaultRV32Config.fir@216978.4]
  wire [6:0] _T_1396; // @[CSR.scala 652:59:freechips.rocketchip.system.DefaultRV32Config.fir@216980.4]
  wire [31:0] _T_1398; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  wire  _T_1401; // @[CSR.scala 654:28:freechips.rocketchip.system.DefaultRV32Config.fir@216985.4]
  wire  _T_1403; // @[CSR.scala 654:94:freechips.rocketchip.system.DefaultRV32Config.fir@216987.4]
  wire  _T_1404; // @[CSR.scala 654:55:freechips.rocketchip.system.DefaultRV32Config.fir@216988.4]
  wire [31:0] _T_1406; // @[CSR.scala 655:56:freechips.rocketchip.system.DefaultRV32Config.fir@216990.4]
  wire [31:0] notDebugTVec; // @[CSR.scala 655:8:freechips.rocketchip.system.DefaultRV32Config.fir@216991.4]
  wire [31:0] tvec; // @[CSR.scala 657:17:freechips.rocketchip.system.DefaultRV32Config.fir@216992.4]
  wire  _T_1411; // @[CSR.scala 663:32:freechips.rocketchip.system.DefaultRV32Config.fir@217002.4]
  wire  _T_1412; // @[CSR.scala 663:53:freechips.rocketchip.system.DefaultRV32Config.fir@217003.4]
  wire  _T_1413; // @[CSR.scala 663:37:freechips.rocketchip.system.DefaultRV32Config.fir@217004.4]
  wire  _T_1414; // @[CSR.scala 663:74:freechips.rocketchip.system.DefaultRV32Config.fir@217005.4]
  wire  _T_1417; // @[CSR.scala 668:53:freechips.rocketchip.system.DefaultRV32Config.fir@217013.4]
  reg [1:0] _T_1419; // @[CSR.scala 668:24:freechips.rocketchip.system.DefaultRV32Config.fir@217015.4]
  wire [1:0] _T_1421; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217021.4]
  wire [1:0] _T_1423; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217023.4]
  wire [2:0] _T_1425; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217025.4]
  wire  _T_1427; // @[CSR.scala 673:79:freechips.rocketchip.system.DefaultRV32Config.fir@217027.4]
  wire  _T_1429; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217029.4]
  wire  _T_1430; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217030.4]
  wire  _T_1432; // @[CSR.scala 675:18:freechips.rocketchip.system.DefaultRV32Config.fir@217036.4]
  wire  _T_1434; // @[CSR.scala 675:36:freechips.rocketchip.system.DefaultRV32Config.fir@217038.4]
  wire  _GEN_34; // @[CSR.scala 675:51:freechips.rocketchip.system.DefaultRV32Config.fir@217039.4]
  wire  _T_1435; // @[CSR.scala 676:28:freechips.rocketchip.system.DefaultRV32Config.fir@217042.4]
  wire  _T_1436; // @[CSR.scala 676:32:freechips.rocketchip.system.DefaultRV32Config.fir@217043.4]
  wire  _T_1437; // @[CSR.scala 676:55:freechips.rocketchip.system.DefaultRV32Config.fir@217044.4]
  wire  _T_1439; // @[CSR.scala 678:22:freechips.rocketchip.system.DefaultRV32Config.fir@217049.4]
  wire  _GEN_36; // @[CSR.scala 678:36:freechips.rocketchip.system.DefaultRV32Config.fir@217050.4]
  wire  _T_1447; // @[CSR.scala 681:10:freechips.rocketchip.system.DefaultRV32Config.fir@217067.4]
  wire  _T_1448; // @[CSR.scala 681:42:freechips.rocketchip.system.DefaultRV32Config.fir@217068.4]
  wire  _T_1449; // @[CSR.scala 681:29:freechips.rocketchip.system.DefaultRV32Config.fir@217069.4]
  wire  _T_1451; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  wire  _T_1452; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  wire [31:0] _T_1453; // @[CSR.scala 1091:28:freechips.rocketchip.system.DefaultRV32Config.fir@217077.4]
  wire [31:0] _T_1454; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@217078.4]
  wire [31:0] epc; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@217079.4]
  wire [1:0] _T_1456; // @[CSR.scala 692:86:freechips.rocketchip.system.DefaultRV32Config.fir@217089.10]
  wire [1:0] _T_1457; // @[CSR.scala 692:56:freechips.rocketchip.system.DefaultRV32Config.fir@217090.10]
  wire  _GEN_38; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@217086.8]
  wire  _GEN_47; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire [1:0] _GEN_48; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire  _GEN_54; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire [1:0] _GEN_55; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire  _GEN_56; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  wire  _GEN_66; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire [1:0] _GEN_67; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire  _GEN_72; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire [1:0] _GEN_73; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire  _GEN_74; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  wire  _GEN_84; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire [1:0] _GEN_85; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire  _GEN_90; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire [1:0] _GEN_91; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire  _GEN_92; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  wire [31:0] _GEN_95; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@217458.8]
  wire  _GEN_100; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  wire [1:0] _GEN_101; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  wire [31:0] _GEN_103; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  wire [1:0] _GEN_110; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  reg  _T_1802; // @[Reg.scala 27:20:freechips.rocketchip.system.DefaultRV32Config.fir@217486.4]
  wire  _GEN_117; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@217487.4]
  wire [31:0] _T_1804; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217505.4]
  wire [31:0] _T_1805; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217506.4]
  wire [31:0] _T_1806; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217507.4]
  wire [31:0] _T_1807; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217508.4]
  wire [31:0] _T_1808; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217509.4]
  wire [15:0] _T_1809; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217510.4]
  wire [31:0] _T_1810; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217511.4]
  wire [31:0] _T_1811; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217512.4]
  wire [31:0] _T_1812; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217513.4]
  wire [31:0] _T_1813; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217514.4]
  wire [31:0] _T_1814; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217515.4]
  wire [31:0] _T_1816; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217517.4]
  wire [31:0] _T_1817; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217518.4]
  wire [31:0] _T_1818; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217519.4]
  wire [4:0] _T_1819; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217520.4]
  wire [2:0] _T_1820; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217521.4]
  wire [7:0] _T_1821; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217522.4]
  wire [63:0] _T_1822; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217523.4]
  wire [63:0] _T_1823; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217524.4]
  wire [31:0] _T_1969; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217670.4]
  wire [63:0] _T_1970; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217671.4]
  wire [63:0] _T_1971; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217672.4]
  wire [31:0] _T_1972; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217673.4]
  wire [31:0] _T_1973; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217674.4]
  wire [31:0] _T_1974; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217675.4]
  wire [31:0] _T_1975; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217676.4]
  wire [31:0] _T_1976; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217677.4]
  wire [31:0] _T_1977; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217678.4]
  wire [31:0] _T_1978; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217679.4]
  wire [31:0] _T_1979; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217680.4]
  wire [31:0] _T_1980; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217681.4]
  wire [31:0] _T_1981; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217682.4]
  wire [31:0] _T_1982; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217683.4]
  wire [31:0] _T_1983; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217684.4]
  wire [31:0] _T_1984; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217685.4]
  wire [31:0] _T_1985; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217686.4]
  wire [31:0] _T_1986; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217687.4]
  wire [31:0] _T_1987; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217688.4]
  wire [31:0] _T_1988; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217689.4]
  wire [31:0] _T_1989; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217690.4]
  wire [29:0] _T_1992; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217693.4]
  wire [29:0] _T_1993; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217694.4]
  wire [29:0] _T_1994; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217695.4]
  wire [29:0] _T_1995; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217696.4]
  wire [29:0] _T_1996; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217697.4]
  wire [29:0] _T_1997; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217698.4]
  wire [29:0] _T_1998; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217699.4]
  wire [29:0] _T_1999; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217700.4]
  wire [31:0] _T_2008; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217709.4]
  wire [31:0] _T_2009; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217710.4]
  wire [31:0] _T_2011; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217712.4]
  wire [31:0] _T_2013; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217714.4]
  wire [31:0] _T_2014; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217715.4]
  wire [31:0] _T_2015; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217716.4]
  wire [31:0] _T_2016; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217717.4]
  wire [31:0] _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217718.4]
  wire [31:0] _T_2017; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217718.4]
  wire [31:0] _T_2018; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217719.4]
  wire [31:0] _T_2019; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217720.4]
  wire [31:0] _T_2020; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217721.4]
  wire [31:0] _T_2021; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217722.4]
  wire [31:0] _T_2022; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217723.4]
  wire [31:0] _T_2024; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217725.4]
  wire [31:0] _T_2025; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217726.4]
  wire [31:0] _T_2026; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217727.4]
  wire [31:0] _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217728.4]
  wire [31:0] _T_2027; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217728.4]
  wire [31:0] _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217729.4]
  wire [31:0] _T_2028; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217729.4]
  wire [31:0] _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217730.4]
  wire [31:0] _T_2029; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217730.4]
  wire [63:0] _GEN_510; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  wire [63:0] _T_2030; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  wire [63:0] _T_2031; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217732.4]
  wire [63:0] _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217878.4]
  wire [63:0] _T_2177; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217878.4]
  wire [63:0] _T_2178; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217879.4]
  wire [63:0] _T_2179; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217880.4]
  wire [63:0] _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217881.4]
  wire [63:0] _T_2180; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217881.4]
  wire [63:0] _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217882.4]
  wire [63:0] _T_2181; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217882.4]
  wire [63:0] _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217883.4]
  wire [63:0] _T_2182; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217883.4]
  wire [63:0] _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217884.4]
  wire [63:0] _T_2183; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217884.4]
  wire [63:0] _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217885.4]
  wire [63:0] _T_2184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217885.4]
  wire [63:0] _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217886.4]
  wire [63:0] _T_2185; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217886.4]
  wire [63:0] _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217887.4]
  wire [63:0] _T_2186; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217887.4]
  wire [63:0] _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217888.4]
  wire [63:0] _T_2187; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217888.4]
  wire [63:0] _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217889.4]
  wire [63:0] _T_2188; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217889.4]
  wire [63:0] _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217890.4]
  wire [63:0] _T_2189; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217890.4]
  wire [63:0] _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217891.4]
  wire [63:0] _T_2190; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217891.4]
  wire [63:0] _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217892.4]
  wire [63:0] _T_2191; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217892.4]
  wire [63:0] _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217893.4]
  wire [63:0] _T_2192; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217893.4]
  wire [63:0] _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217894.4]
  wire [63:0] _T_2193; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217894.4]
  wire [63:0] _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217895.4]
  wire [63:0] _T_2194; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217895.4]
  wire [63:0] _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217896.4]
  wire [63:0] _T_2195; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217896.4]
  wire [63:0] _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217897.4]
  wire [63:0] _T_2196; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217897.4]
  wire [63:0] _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217898.4]
  wire [63:0] _T_2197; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217898.4]
  wire [63:0] _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217901.4]
  wire [63:0] _T_2200; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217901.4]
  wire [63:0] _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217902.4]
  wire [63:0] _T_2201; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217902.4]
  wire [63:0] _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217903.4]
  wire [63:0] _T_2202; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217903.4]
  wire [63:0] _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217904.4]
  wire [63:0] _T_2203; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217904.4]
  wire [63:0] _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217905.4]
  wire [63:0] _T_2204; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217905.4]
  wire [63:0] _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217906.4]
  wire [63:0] _T_2205; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217906.4]
  wire [63:0] _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217907.4]
  wire [63:0] _T_2206; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217907.4]
  wire [63:0] _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217908.4]
  wire [63:0] _T_2207; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217908.4]
  wire [63:0] _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217917.4]
  wire [63:0] _T_2216; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217917.4]
  wire [63:0] _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217918.4]
  wire [63:0] _T_2217; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217918.4]
  wire [63:0] _GEN_540; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217920.4]
  wire [63:0] _T_2219; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217920.4]
  wire  _T_2223; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217927.6]
  wire  _T_2224; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217928.6]
  wire  _T_2225; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217929.6]
  wire [4:0] _T_4729; // @[CSR.scala 797:30:freechips.rocketchip.system.DefaultRV32Config.fir@221276.6]
  wire [4:0] _GEN_118; // @[CSR.scala 796:30:freechips.rocketchip.system.DefaultRV32Config.fir@221275.4]
  wire  _T_4733; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221283.4]
  wire  csr_wen; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221284.4]
  wire [102:0] _T_4747; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@221302.8 :freechips.rocketchip.system.DefaultRV32Config.fir@221304.8]
  wire  _T_4779; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@221370.8]
  wire  _T_4781; // @[CSR.scala 1095:73:freechips.rocketchip.system.DefaultRV32Config.fir@221381.8]
  wire [1:0] _GEN_124; // @[CSR.scala 811:39:freechips.rocketchip.system.DefaultRV32Config.fir@221299.6]
  wire [31:0] _T_4790; // @[CSR.scala 843:25:freechips.rocketchip.system.DefaultRV32Config.fir@221395.10]
  wire  _T_4791; // @[CSR.scala 843:35:freechips.rocketchip.system.DefaultRV32Config.fir@221396.10]
  wire [3:0] _T_4792; // @[CSR.scala 843:38:freechips.rocketchip.system.DefaultRV32Config.fir@221397.10]
  wire [31:0] _GEN_541; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@221398.10]
  wire [31:0] _T_4793; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@221398.10]
  wire [31:0] _T_4794; // @[CSR.scala 843:23:freechips.rocketchip.system.DefaultRV32Config.fir@221399.10]
  wire [31:0] _T_4795; // @[CSR.scala 843:55:freechips.rocketchip.system.DefaultRV32Config.fir@221400.10]
  wire [31:0] _T_4797; // @[CSR.scala 843:73:freechips.rocketchip.system.DefaultRV32Config.fir@221402.10]
  wire [31:0] _T_4798; // @[CSR.scala 843:62:freechips.rocketchip.system.DefaultRV32Config.fir@221403.10]
  wire [15:0] _T_4813; // @[CSR.scala 851:59:freechips.rocketchip.system.DefaultRV32Config.fir@221422.8]
  wire [15:0] _T_4815; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@221424.8]
  wire [31:0] _GEN_542; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221425.8]
  wire [31:0] _T_4816; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221425.8]
  wire [31:0] _T_4821; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@221430.8]
  wire [31:0] _T_4840; // @[CSR.scala 858:59:freechips.rocketchip.system.DefaultRV32Config.fir@221473.8]
  wire [31:0] _T_4842; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@221478.8]
  wire [31:0] _T_4843; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@221479.8]
  wire [31:0] _T_4844; // @[CSR.scala 863:62:freechips.rocketchip.system.DefaultRV32Config.fir@221489.8]
  wire [63:0] _T_4847; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221498.8]
  wire [63:0] _GEN_145; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@221496.6]
  wire [63:0] _T_4851; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221506.8]
  wire [63:0] _GEN_147; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@221503.6]
  wire [63:0] _T_4854; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221513.8]
  wire [63:0] _GEN_149; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@221511.6]
  wire [63:0] _T_4858; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221521.8]
  wire [63:0] _GEN_151; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@221518.6]
  wire [31:0] _GEN_154; // @[CSR.scala 876:40:freechips.rocketchip.system.DefaultRV32Config.fir@221526.6]
  wire [31:0] _GEN_156; // @[CSR.scala 877:40:freechips.rocketchip.system.DefaultRV32Config.fir@221530.6]
  wire [31:0] _GEN_158; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@221534.6]
  wire [31:0] _GEN_159; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@221534.6]
  wire  _T_4877; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@221578.8]
  wire [1:0] _GEN_169; // @[CSR.scala 897:41:freechips.rocketchip.system.DefaultRV32Config.fir@221591.6]
  wire [31:0] _T_4918; // @[CSR.scala 911:54:freechips.rocketchip.system.DefaultRV32Config.fir@221671.8]
  wire [31:0] _T_4919; // @[CSR.scala 911:52:freechips.rocketchip.system.DefaultRV32Config.fir@221672.8]
  wire [31:0] _T_4920; // @[CSR.scala 911:78:freechips.rocketchip.system.DefaultRV32Config.fir@221673.8]
  wire [31:0] _T_4921; // @[CSR.scala 911:69:freechips.rocketchip.system.DefaultRV32Config.fir@221674.8]
  wire  _T_4945; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@221726.8]
  wire  _T_4947; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221728.8]
  wire [31:0] _T_4951; // @[CSR.scala 925:64:freechips.rocketchip.system.DefaultRV32Config.fir@221738.8]
  wire [31:0] _T_4953; // @[CSR.scala 925:81:freechips.rocketchip.system.DefaultRV32Config.fir@221740.8]
  wire [31:0] _T_4957; // @[CSR.scala 929:64:freechips.rocketchip.system.DefaultRV32Config.fir@221756.8]
  wire  _T_4960; // @[CSR.scala 942:37:freechips.rocketchip.system.DefaultRV32Config.fir@221779.6]
  wire  _T_4961; // @[CSR.scala 942:55:freechips.rocketchip.system.DefaultRV32Config.fir@221780.6]
  wire [31:0] _T_4995; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@221838.10]
  wire [31:0] _T_4996; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221839.10]
  wire [31:0] _T_5001; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@221844.10]
  wire  _T_5019; // @[CSR.scala 952:38:freechips.rocketchip.system.DefaultRV32Config.fir@221880.10]
  wire  _GEN_191; // @[CSR.scala 954:51:freechips.rocketchip.system.DefaultRV32Config.fir@221887.10]
  wire  _T_5103; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222026.6]
  wire  _T_5104; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222027.6]
  wire  _T_5114; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222048.8]
  wire  _T_5116; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222052.6]
  wire  _T_5118; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222054.6]
  wire  _T_5119; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222055.6]
  wire  _T_5120; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222056.6]
  wire  _T_5121; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222057.6]
  wire  _T_5122; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222058.6]
  wire [31:0] _GEN_262; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222059.6]
  wire  _T_5123; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222062.6]
  wire  _T_5124; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222063.6]
  wire  _T_5134; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222084.8]
  wire  _T_5136; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222088.6]
  wire  _T_5138; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222090.6]
  wire  _T_5139; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222091.6]
  wire  _T_5140; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222092.6]
  wire  _T_5141; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222093.6]
  wire  _T_5142; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222094.6]
  wire [31:0] _GEN_269; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222095.6]
  wire  _T_5143; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222098.6]
  wire  _T_5144; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222099.6]
  wire  _T_5154; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222120.8]
  wire  _T_5156; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222124.6]
  wire  _T_5158; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222126.6]
  wire  _T_5159; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222127.6]
  wire  _T_5160; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222128.6]
  wire  _T_5161; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222129.6]
  wire  _T_5162; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222130.6]
  wire [31:0] _GEN_276; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222131.6]
  wire  _T_5163; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222134.6]
  wire  _T_5164; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222135.6]
  wire  _T_5174; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222156.8]
  wire  _T_5176; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222160.6]
  wire  _T_5178; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222162.6]
  wire  _T_5179; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222163.6]
  wire  _T_5180; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222164.6]
  wire  _T_5181; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222165.6]
  wire  _T_5182; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222166.6]
  wire [31:0] _GEN_283; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222167.6]
  wire  _T_5183; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222170.6]
  wire  _T_5184; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222171.6]
  wire  _T_5196; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222196.6]
  wire  _T_5198; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222198.6]
  wire  _T_5199; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222199.6]
  wire  _T_5200; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222200.6]
  wire  _T_5201; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222201.6]
  wire  _T_5202; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222202.6]
  wire [31:0] _GEN_290; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222203.6]
  wire  _T_5203; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222206.6]
  wire  _T_5204; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222207.6]
  wire  _T_5216; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222232.6]
  wire  _T_5218; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222234.6]
  wire  _T_5219; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222235.6]
  wire  _T_5220; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222236.6]
  wire  _T_5221; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222237.6]
  wire  _T_5222; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222238.6]
  wire [31:0] _GEN_297; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222239.6]
  wire  _T_5223; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222242.6]
  wire  _T_5224; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222243.6]
  wire  _T_5236; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222268.6]
  wire  _T_5238; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222270.6]
  wire  _T_5239; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222271.6]
  wire  _T_5240; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222272.6]
  wire  _T_5241; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222273.6]
  wire  _T_5242; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222274.6]
  wire [31:0] _GEN_304; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222275.6]
  wire  _T_5243; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222278.6]
  wire  _T_5244; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222279.6]
  wire  _T_5260; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222308.6]
  wire  _T_5261; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222309.6]
  wire  _T_5262; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222310.6]
  wire [31:0] _GEN_311; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222311.6]
  wire [31:0] _T_5263; // @[CSR.scala 978:23:freechips.rocketchip.system.DefaultRV32Config.fir@222315.8]
  wire [31:0] _T_5265; // @[CSR.scala 978:38:freechips.rocketchip.system.DefaultRV32Config.fir@222317.8]
  wire [31:0] _T_5266; // @[CSR.scala 978:31:freechips.rocketchip.system.DefaultRV32Config.fir@222318.8]
  wire [1:0] _GEN_324; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [63:0] _GEN_344; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [63:0] _GEN_346; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_349; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_350; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_408; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_415; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_422; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_429; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_436; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_443; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_450; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire [31:0] _GEN_457; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  wire  _T_5292; // @[CSR.scala 1049:26:freechips.rocketchip.system.DefaultRV32Config.fir@222447.4]
  assign system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 588:31:freechips.rocketchip.system.DefaultRV32Config.fir@216359.4]
  assign _T_798 = {io_rw_addr, 20'h0}; // @[CSR.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@216360.4]
  assign _T_805 = _T_798 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216367.4]
  assign _T_806 = _T_805 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216368.4]
  assign _T_807 = _T_798 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216369.4]
  assign _T_808 = _T_807 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216370.4]
  assign _T_810 = _T_806 | _T_808; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@216372.4]
  assign insn_ret = system_insn & _T_810; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216387.4]
  assign _T_1780 = ~io_rw_addr[9]; // @[CSR.scala 738:36:freechips.rocketchip.system.DefaultRV32Config.fir@217441.6]
  assign _GEN_93 = io_rw_addr[10] ? reg_dcsr_prv : reg_mstatus_mpp; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@217458.8]
  assign _GEN_102 = _T_1780 ? {{1'd0}, reg_mstatus_spp} : _GEN_93; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  assign _T_799 = _T_798 & 32'h10100000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216361.4]
  assign _T_800 = _T_799 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216362.4]
  assign insn_call = system_insn & _T_800; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216383.4]
  assign _T_803 = _T_799 == 32'h100000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216365.4]
  assign insn_break = system_insn & _T_803; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216385.4]
  assign _T_1420 = insn_call | insn_break; // @[CSR.scala 672:29:freechips.rocketchip.system.DefaultRV32Config.fir@217019.4]
  assign exception = _T_1420 | io_exception; // @[CSR.scala 672:43:freechips.rocketchip.system.DefaultRV32Config.fir@217020.4]
  assign _GEN_494 = {{2'd0}, reg_mstatus_prv}; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@216941.4]
  assign _T_1366 = _GEN_494 + 4'h8; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@216942.4]
  assign _T_1367 = insn_break ? 32'h3 : io_cause; // @[CSR.scala 637:14:freechips.rocketchip.system.DefaultRV32Config.fir@216943.4]
  assign cause = insn_call ? {{28'd0}, _T_1366} : _T_1367; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@216944.4]
  assign cause_lsbs = cause[7:0]; // @[CSR.scala 638:25:freechips.rocketchip.system.DefaultRV32Config.fir@216945.4]
  assign _T_1369 = cause_lsbs == 8'he; // @[CSR.scala 639:53:freechips.rocketchip.system.DefaultRV32Config.fir@216947.4]
  assign causeIsDebugInt = cause[31] & _T_1369; // @[CSR.scala 639:39:freechips.rocketchip.system.DefaultRV32Config.fir@216948.4]
  assign _T_1381 = reg_singleStepped | causeIsDebugInt; // @[CSR.scala 642:60:freechips.rocketchip.system.DefaultRV32Config.fir@216962.4]
  assign _T_1371 = ~cause[31]; // @[CSR.scala 640:29:freechips.rocketchip.system.DefaultRV32Config.fir@216950.4]
  assign causeIsDebugTrigger = _T_1371 & _T_1369; // @[CSR.scala 640:44:freechips.rocketchip.system.DefaultRV32Config.fir@216952.4]
  assign _T_1382 = _T_1381 | causeIsDebugTrigger; // @[CSR.scala 642:79:freechips.rocketchip.system.DefaultRV32Config.fir@216963.4]
  assign _T_1375 = _T_1371 & insn_break; // @[CSR.scala 641:42:freechips.rocketchip.system.DefaultRV32Config.fir@216955.4]
  assign _T_1378 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216958.4]
  assign _T_1379 = _T_1378 >> reg_mstatus_prv; // @[CSR.scala 641:134:freechips.rocketchip.system.DefaultRV32Config.fir@216959.4]
  assign causeIsDebugBreak = _T_1375 & _T_1379[0]; // @[CSR.scala 641:56:freechips.rocketchip.system.DefaultRV32Config.fir@216961.4]
  assign _T_1383 = _T_1382 | causeIsDebugBreak; // @[CSR.scala 642:102:freechips.rocketchip.system.DefaultRV32Config.fir@216964.4]
  assign trapToDebug = _T_1383 | reg_debug; // @[CSR.scala 642:123:freechips.rocketchip.system.DefaultRV32Config.fir@216965.4]
  assign _T_1455 = ~reg_debug; // @[CSR.scala 689:13:freechips.rocketchip.system.DefaultRV32Config.fir@217085.8]
  assign _GEN_42 = _T_1455 ? 2'h3 : reg_mstatus_prv; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@217086.8]
  assign _T_1386 = reg_mstatus_prv <= 2'h1; // @[CSR.scala 644:59:freechips.rocketchip.system.DefaultRV32Config.fir@216969.4]
  assign read_mideleg = reg_mideleg & 32'h222; // @[CSR.scala 372:36:freechips.rocketchip.system.DefaultRV32Config.fir@215410.4]
  assign _T_1389 = read_mideleg >> cause_lsbs; // @[CSR.scala 644:102:freechips.rocketchip.system.DefaultRV32Config.fir@216972.4]
  assign read_medeleg = reg_medeleg & 32'hb15d; // @[CSR.scala 376:36:freechips.rocketchip.system.DefaultRV32Config.fir@215413.4]
  assign _T_1391 = read_medeleg >> cause_lsbs; // @[CSR.scala 644:128:freechips.rocketchip.system.DefaultRV32Config.fir@216974.4]
  assign _T_1393 = cause[31] ? _T_1389[0] : _T_1391[0]; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@216976.4]
  assign delegate = _T_1386 & _T_1393; // @[CSR.scala 644:68:freechips.rocketchip.system.DefaultRV32Config.fir@216977.4]
  assign _GEN_50 = delegate ? 2'h1 : 2'h3; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_61 = trapToDebug ? _GEN_42 : _GEN_50; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_79 = exception ? _GEN_61 : reg_mstatus_prv; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign new_prv = insn_ret ? _GEN_102 : _GEN_79; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  assign _T_1 = new_prv == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@215321.4]
  assign read_mcounteren = reg_mcounteren & 32'h7; // @[CSR.scala 392:30:freechips.rocketchip.system.DefaultRV32Config.fir@215422.4]
  assign read_scounteren = reg_scounteren & 32'h7; // @[CSR.scala 396:36:freechips.rocketchip.system.DefaultRV32Config.fir@215425.4]
  assign _GEN_495 = {{5'd0}, io_retire}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  assign _T_40 = _T_39 + _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215437.4]
  assign _T_44 = _T_41 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@215443.6]
  assign _T_45 = {_T_41,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215446.4]
  assign _T_46 = ~io_csr_stall; // @[CSR.scala 415:103:freechips.rocketchip.system.DefaultRV32Config.fir@215447.4]
  assign _GEN_496 = {{5'd0}, _T_46}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215449.4]
  assign _T_48 = _T_47 + _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@215449.4]
  assign _T_52 = _T_49 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@215455.6]
  assign _T_53 = {_T_49,_T_47}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215458.4]
  assign mip_seip = reg_mip_seip | io_interrupts_seip; // @[CSR.scala 426:57:freechips.rocketchip.system.DefaultRV32Config.fir@215465.4]
  assign _T_61 = {io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@215474.4]
  assign _T_69 = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,_T_61}; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@215482.4]
  assign read_mip = _T_69 & 16'haaa; // @[CSR.scala 428:29:freechips.rocketchip.system.DefaultRV32Config.fir@215483.4]
  assign _GEN_497 = {{16'd0}, read_mip}; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@215484.4]
  assign pending_interrupts = _GEN_497 & reg_mie; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@215484.4]
  assign d_interrupts = {io_interrupts_debug, 14'h0}; // @[CSR.scala 432:42:freechips.rocketchip.system.DefaultRV32Config.fir@215486.4]
  assign _T_72 = _T_1386 | reg_mstatus_mie; // @[CSR.scala 433:51:freechips.rocketchip.system.DefaultRV32Config.fir@215488.4]
  assign _T_73 = ~pending_interrupts; // @[CSR.scala 433:73:freechips.rocketchip.system.DefaultRV32Config.fir@215489.4]
  assign _T_74 = _T_73 | read_mideleg; // @[CSR.scala 433:93:freechips.rocketchip.system.DefaultRV32Config.fir@215490.4]
  assign _T_75 = ~_T_74; // @[CSR.scala 433:71:freechips.rocketchip.system.DefaultRV32Config.fir@215491.4]
  assign m_interrupts = _T_72 ? _T_75 : 32'h0; // @[CSR.scala 433:25:freechips.rocketchip.system.DefaultRV32Config.fir@215492.4]
  assign _T_76 = reg_mstatus_prv < 2'h1; // @[CSR.scala 434:42:freechips.rocketchip.system.DefaultRV32Config.fir@215493.4]
  assign _T_77 = reg_mstatus_prv == 2'h1; // @[CSR.scala 434:70:freechips.rocketchip.system.DefaultRV32Config.fir@215494.4]
  assign _T_78 = _T_77 & reg_mstatus_sie; // @[CSR.scala 434:80:freechips.rocketchip.system.DefaultRV32Config.fir@215495.4]
  assign _T_79 = _T_76 | _T_78; // @[CSR.scala 434:50:freechips.rocketchip.system.DefaultRV32Config.fir@215496.4]
  assign _T_80 = pending_interrupts & read_mideleg; // @[CSR.scala 434:120:freechips.rocketchip.system.DefaultRV32Config.fir@215497.4]
  assign s_interrupts = _T_79 ? _T_80 : 32'h0; // @[CSR.scala 434:25:freechips.rocketchip.system.DefaultRV32Config.fir@215498.4]
  assign _T_119 = d_interrupts[14] | d_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215537.4]
  assign _T_120 = _T_119 | d_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215538.4]
  assign _T_121 = _T_120 | d_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215539.4]
  assign _T_122 = _T_121 | d_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215540.4]
  assign _T_123 = _T_122 | d_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215541.4]
  assign _T_124 = _T_123 | d_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215542.4]
  assign _T_125 = _T_124 | d_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215543.4]
  assign _T_126 = _T_125 | d_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215544.4]
  assign _T_127 = _T_126 | d_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215545.4]
  assign _T_128 = _T_127 | d_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215546.4]
  assign _T_129 = _T_128 | d_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215547.4]
  assign _T_130 = _T_129 | m_interrupts[15]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215548.4]
  assign _T_131 = _T_130 | m_interrupts[14]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215549.4]
  assign _T_132 = _T_131 | m_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215550.4]
  assign _T_133 = _T_132 | m_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215551.4]
  assign _T_134 = _T_133 | m_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215552.4]
  assign _T_135 = _T_134 | m_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215553.4]
  assign _T_136 = _T_135 | m_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215554.4]
  assign _T_137 = _T_136 | m_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215555.4]
  assign _T_138 = _T_137 | m_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215556.4]
  assign _T_139 = _T_138 | m_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215557.4]
  assign _T_140 = _T_139 | m_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215558.4]
  assign _T_141 = _T_140 | m_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215559.4]
  assign _T_142 = _T_141 | m_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  assign _T_143 = _T_142 | s_interrupts[15]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215561.4]
  assign _T_144 = _T_143 | s_interrupts[14]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215562.4]
  assign _T_145 = _T_144 | s_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215563.4]
  assign _T_146 = _T_145 | s_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215564.4]
  assign _T_147 = _T_146 | s_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215565.4]
  assign _T_148 = _T_147 | s_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215566.4]
  assign _T_149 = _T_148 | s_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215567.4]
  assign _T_150 = _T_149 | s_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215568.4]
  assign _T_151 = _T_150 | s_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215569.4]
  assign _T_152 = _T_151 | s_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215570.4]
  assign _T_153 = _T_152 | s_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215571.4]
  assign _T_154 = _T_153 | s_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215572.4]
  assign anyInterrupt = _T_154 | s_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@215573.4]
  assign _T_193 = s_interrupts[0] ? 3'h0 : 3'h4; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215612.4]
  assign _T_194 = s_interrupts[8] ? 4'h8 : {{1'd0}, _T_193}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215613.4]
  assign _T_195 = s_interrupts[5] ? 4'h5 : _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215614.4]
  assign _T_196 = s_interrupts[1] ? 4'h1 : _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215615.4]
  assign _T_197 = s_interrupts[9] ? 4'h9 : _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215616.4]
  assign _T_198 = s_interrupts[7] ? 4'h7 : _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215617.4]
  assign _T_199 = s_interrupts[3] ? 4'h3 : _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215618.4]
  assign _T_200 = s_interrupts[11] ? 4'hb : _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215619.4]
  assign _T_201 = s_interrupts[12] ? 4'hc : _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215620.4]
  assign _T_202 = s_interrupts[13] ? 4'hd : _T_201; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215621.4]
  assign _T_203 = s_interrupts[14] ? 4'he : _T_202; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215622.4]
  assign _T_204 = s_interrupts[15] ? 4'hf : _T_203; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215623.4]
  assign _T_205 = m_interrupts[4] ? 4'h4 : _T_204; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215624.4]
  assign _T_206 = m_interrupts[0] ? 4'h0 : _T_205; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215625.4]
  assign _T_207 = m_interrupts[8] ? 4'h8 : _T_206; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215626.4]
  assign _T_208 = m_interrupts[5] ? 4'h5 : _T_207; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215627.4]
  assign _T_209 = m_interrupts[1] ? 4'h1 : _T_208; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215628.4]
  assign _T_210 = m_interrupts[9] ? 4'h9 : _T_209; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215629.4]
  assign _T_211 = m_interrupts[7] ? 4'h7 : _T_210; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215630.4]
  assign _T_212 = m_interrupts[3] ? 4'h3 : _T_211; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215631.4]
  assign _T_213 = m_interrupts[11] ? 4'hb : _T_212; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215632.4]
  assign _T_214 = m_interrupts[12] ? 4'hc : _T_213; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215633.4]
  assign _T_215 = m_interrupts[13] ? 4'hd : _T_214; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215634.4]
  assign _T_216 = m_interrupts[14] ? 4'he : _T_215; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215635.4]
  assign _T_217 = m_interrupts[15] ? 4'hf : _T_216; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215636.4]
  assign _T_218 = d_interrupts[4] ? 4'h4 : _T_217; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215637.4]
  assign _T_219 = d_interrupts[0] ? 4'h0 : _T_218; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215638.4]
  assign _T_220 = d_interrupts[8] ? 4'h8 : _T_219; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215639.4]
  assign _T_221 = d_interrupts[5] ? 4'h5 : _T_220; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215640.4]
  assign _T_222 = d_interrupts[1] ? 4'h1 : _T_221; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215641.4]
  assign _T_223 = d_interrupts[9] ? 4'h9 : _T_222; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215642.4]
  assign _T_224 = d_interrupts[7] ? 4'h7 : _T_223; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215643.4]
  assign _T_225 = d_interrupts[3] ? 4'h3 : _T_224; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215644.4]
  assign _T_226 = d_interrupts[11] ? 4'hb : _T_225; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215645.4]
  assign _T_227 = d_interrupts[12] ? 4'hc : _T_226; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215646.4]
  assign _T_228 = d_interrupts[13] ? 4'hd : _T_227; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215647.4]
  assign whichInterrupt = d_interrupts[14] ? 4'he : _T_228; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@215648.4]
  assign _GEN_498 = {{28'd0}, whichInterrupt}; // @[CSR.scala 437:43:freechips.rocketchip.system.DefaultRV32Config.fir@215649.4]
  assign _T_230 = ~io_singleStep; // @[CSR.scala 438:36:freechips.rocketchip.system.DefaultRV32Config.fir@215651.4]
  assign _T_231 = anyInterrupt & _T_230; // @[CSR.scala 438:33:freechips.rocketchip.system.DefaultRV32Config.fir@215652.4]
  assign _T_232 = _T_231 | reg_singleStepped; // @[CSR.scala 438:51:freechips.rocketchip.system.DefaultRV32Config.fir@215653.4]
  assign _T_233 = reg_debug | io_status_cease; // @[CSR.scala 438:88:freechips.rocketchip.system.DefaultRV32Config.fir@215654.4]
  assign _T_234 = ~_T_233; // @[CSR.scala 438:76:freechips.rocketchip.system.DefaultRV32Config.fir@215655.4]
  assign _T_238 = {reg_pmp_0_addr,reg_pmp_0_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215669.4]
  assign _T_241 = _T_238 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215672.4]
  assign _T_242 = ~_T_241; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215673.4]
  assign _T_243 = _T_238 & _T_242; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215674.4]
  assign _T_244 = {_T_243,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215675.4]
  assign _T_247 = {reg_pmp_1_addr,reg_pmp_1_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215686.4]
  assign _T_250 = _T_247 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215689.4]
  assign _T_251 = ~_T_250; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215690.4]
  assign _T_252 = _T_247 & _T_251; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215691.4]
  assign _T_253 = {_T_252,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215692.4]
  assign _T_256 = {reg_pmp_2_addr,reg_pmp_2_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215703.4]
  assign _T_259 = _T_256 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215706.4]
  assign _T_260 = ~_T_259; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215707.4]
  assign _T_261 = _T_256 & _T_260; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215708.4]
  assign _T_262 = {_T_261,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  assign _T_265 = {reg_pmp_3_addr,reg_pmp_3_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215720.4]
  assign _T_268 = _T_265 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215723.4]
  assign _T_269 = ~_T_268; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215724.4]
  assign _T_270 = _T_265 & _T_269; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215725.4]
  assign _T_271 = {_T_270,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215726.4]
  assign _T_274 = {reg_pmp_4_addr,reg_pmp_4_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215737.4]
  assign _T_277 = _T_274 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215740.4]
  assign _T_278 = ~_T_277; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215741.4]
  assign _T_279 = _T_274 & _T_278; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215742.4]
  assign _T_280 = {_T_279,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215743.4]
  assign _T_283 = {reg_pmp_5_addr,reg_pmp_5_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215754.4]
  assign _T_286 = _T_283 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215757.4]
  assign _T_287 = ~_T_286; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215758.4]
  assign _T_288 = _T_283 & _T_287; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215759.4]
  assign _T_289 = {_T_288,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215760.4]
  assign _T_292 = {reg_pmp_6_addr,reg_pmp_6_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215771.4]
  assign _T_295 = _T_292 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215774.4]
  assign _T_296 = ~_T_295; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215775.4]
  assign _T_297 = _T_292 & _T_296; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215776.4]
  assign _T_298 = {_T_297,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215777.4]
  assign _T_301 = {reg_pmp_7_addr,reg_pmp_7_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215788.4]
  assign _T_304 = _T_301 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@215791.4]
  assign _T_305 = ~_T_304; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@215792.4]
  assign _T_306 = _T_301 & _T_305; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@215793.4]
  assign _T_307 = {_T_306,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215794.4]
  assign _T_313 = {io_status_hpie,io_status_spie,io_status_upie,io_status_mie,io_status_hie,io_status_sie,io_status_uie}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215810.4]
  assign _T_321 = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp,io_status_vs,io_status_spp,io_status_mpie,_T_313}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215818.4]
  assign _T_328 = {io_status_sxl,io_status_uxl,io_status_sd_rv32,io_status_zero1,io_status_tsr,io_status_tw,io_status_tvm,io_status_mxr}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215825.4]
  assign _T_337 = {io_status_debug,io_status_cease,io_status_wfi,io_status_isa,io_status_dprv,io_status_prv,io_status_sd,io_status_zero2,_T_328,_T_321}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@215834.4]
  assign read_mstatus = _T_337[31:0]; // @[CSR.scala 457:40:freechips.rocketchip.system.DefaultRV32Config.fir@215835.4]
  assign _T_339 = reg_mtvec[0] ? 7'h7e : 7'h2; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@215837.4]
  assign _T_341 = {{25'd0}, _T_339}; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@215839.4]
  assign _T_342 = ~_T_341; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@215840.4]
  assign read_mtvec = reg_mtvec & _T_342; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@215841.4]
  assign _T_344 = reg_stvec[0] ? 7'h7e : 7'h2; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@215843.4]
  assign _T_346 = {{25'd0}, _T_344}; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@215845.4]
  assign _T_347 = ~_T_346; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@215846.4]
  assign read_stvec = reg_stvec & _T_347; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@215847.4]
  assign _T_353 = {reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,reg_bp_0_control_w,reg_bp_0_control_r}; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@215853.4]
  assign _T_361 = {4'h2,reg_bp_0_control_dmode,14'h400,reg_bp_0_control_action,1'h0,2'h0,reg_bp_0_control_tmatch,_T_353}; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@215861.4]
  assign _T_362 = ~reg_mepc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@215862.4]
  assign _T_364 = reg_misa[2] ? 2'h1 : 2'h3; // @[CSR.scala 1092:36:freechips.rocketchip.system.DefaultRV32Config.fir@215864.4]
  assign _GEN_499 = {{30'd0}, _T_364}; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215865.4]
  assign _T_365 = _T_362 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215865.4]
  assign _T_366 = ~_T_365; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@215866.4]
  assign _T_372 = {2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@215872.4]
  assign _T_379 = {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,_T_372}; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@215879.4]
  assign _T_380 = ~reg_dpc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@215880.4]
  assign _T_383 = _T_380 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@215883.4]
  assign _T_384 = ~_T_383; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@215884.4]
  assign read_fcsr = {reg_frm,reg_fflags}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215885.4]
  assign _T_447 = reg_mie & read_mideleg; // @[CSR.scala 533:28:freechips.rocketchip.system.DefaultRV32Config.fir@215949.4]
  assign _T_448 = _GEN_497 & read_mideleg; // @[CSR.scala 534:29:freechips.rocketchip.system.DefaultRV32Config.fir@215950.4]
  assign _T_456 = {1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216003.4]
  assign _T_464 = {io_status_sum,1'h0,io_status_xs,io_status_fs,2'h0,io_status_vs,io_status_spp,1'h0,_T_456}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216011.4]
  assign _T_471 = {2'h0,io_status_uxl,io_status_sd_rv32,8'h0,2'h0,1'h0,io_status_mxr}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216018.4]
  assign _T_480 = {35'h0,4'h0,io_status_sd,27'h0,_T_471,_T_464}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@216027.4]
  assign _T_483 = {reg_satp_mode,9'h0,reg_satp_ppn}; // @[CSR.scala 554:43:freechips.rocketchip.system.DefaultRV32Config.fir@216030.4]
  assign _T_484 = ~reg_sepc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@216031.4]
  assign _T_487 = _T_484 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@216034.4]
  assign _T_488 = ~_T_487; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@216035.4]
  assign _T_494 = {reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216050.4]
  assign _T_504 = {reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216060.4]
  assign _T_510 = {reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,_T_494}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216066.4]
  assign _T_512 = {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,_T_504,_T_510}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216068.4]
  assign _T_517 = {reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216073.4]
  assign _T_527 = {reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@216083.4]
  assign _T_533 = {reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,_T_517}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216089.4]
  assign _T_535 = {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,_T_527,_T_533}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216091.4]
  assign _T_583 = io_rw_addr == 12'h7a1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216143.4]
  assign _T_584 = io_rw_addr == 12'h7a2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216144.4]
  assign _T_585 = io_rw_addr == 12'h301; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216145.4]
  assign _T_586 = io_rw_addr == 12'h300; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216146.4]
  assign _T_587 = io_rw_addr == 12'h305; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216147.4]
  assign _T_588 = io_rw_addr == 12'h344; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216148.4]
  assign _T_589 = io_rw_addr == 12'h304; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216149.4]
  assign _T_590 = io_rw_addr == 12'h340; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216150.4]
  assign _T_591 = io_rw_addr == 12'h341; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216151.4]
  assign _T_592 = io_rw_addr == 12'h343; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216152.4]
  assign _T_593 = io_rw_addr == 12'h342; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216153.4]
  assign _T_595 = io_rw_addr == 12'h7b0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216155.4]
  assign _T_596 = io_rw_addr == 12'h7b1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216156.4]
  assign _T_597 = io_rw_addr == 12'h7b2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216157.4]
  assign _T_598 = io_rw_addr == 12'h1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216158.4]
  assign _T_599 = io_rw_addr == 12'h2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216159.4]
  assign _T_600 = io_rw_addr == 12'h3; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216160.4]
  assign _T_601 = io_rw_addr == 12'hb00; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216161.4]
  assign _T_602 = io_rw_addr == 12'hb02; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216162.4]
  assign _T_748 = io_rw_addr == 12'h306; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216308.4]
  assign _T_749 = io_rw_addr == 12'hc00; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216309.4]
  assign _T_750 = io_rw_addr == 12'hc02; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216310.4]
  assign _T_751 = io_rw_addr == 12'hb80; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216311.4]
  assign _T_752 = io_rw_addr == 12'hb82; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216312.4]
  assign _T_753 = io_rw_addr == 12'hc80; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216313.4]
  assign _T_754 = io_rw_addr == 12'hc82; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216314.4]
  assign _T_755 = io_rw_addr == 12'h100; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216315.4]
  assign _T_756 = io_rw_addr == 12'h144; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216316.4]
  assign _T_757 = io_rw_addr == 12'h104; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216317.4]
  assign _T_758 = io_rw_addr == 12'h140; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216318.4]
  assign _T_759 = io_rw_addr == 12'h142; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216319.4]
  assign _T_760 = io_rw_addr == 12'h143; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216320.4]
  assign _T_761 = io_rw_addr == 12'h180; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216321.4]
  assign _T_762 = io_rw_addr == 12'h141; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216322.4]
  assign _T_763 = io_rw_addr == 12'h105; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216323.4]
  assign _T_764 = io_rw_addr == 12'h106; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216324.4]
  assign _T_765 = io_rw_addr == 12'h303; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216325.4]
  assign _T_766 = io_rw_addr == 12'h302; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216326.4]
  assign _T_767 = io_rw_addr == 12'h3a0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216327.4]
  assign _T_768 = io_rw_addr == 12'h3a1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216328.4]
  assign _T_771 = io_rw_addr == 12'h3b0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216331.4]
  assign _T_772 = io_rw_addr == 12'h3b1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216332.4]
  assign _T_773 = io_rw_addr == 12'h3b2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216333.4]
  assign _T_774 = io_rw_addr == 12'h3b3; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216334.4]
  assign _T_775 = io_rw_addr == 12'h3b4; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216335.4]
  assign _T_776 = io_rw_addr == 12'h3b5; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216336.4]
  assign _T_777 = io_rw_addr == 12'h3b6; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216337.4]
  assign _T_778 = io_rw_addr == 12'h3b7; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216338.4]
  assign _T_787 = io_rw_addr == 12'h7c1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216347.4]
  assign _T_788 = io_rw_addr == 12'hf12; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216348.4]
  assign _T_790 = io_rw_addr == 12'hf13; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@216350.4]
  assign _T_792 = io_rw_cmd[1] ? io_rw_rdata : 32'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@216352.4]
  assign _T_793 = _T_792 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@216353.4]
  assign _T_795 = &io_rw_cmd[1:0]; // @[CSR.scala 1070:59:freechips.rocketchip.system.DefaultRV32Config.fir@216355.4]
  assign _T_796 = _T_795 ? io_rw_wdata : 32'h0; // @[CSR.scala 1070:49:freechips.rocketchip.system.DefaultRV32Config.fir@216356.4]
  assign _T_797 = ~_T_796; // @[CSR.scala 1070:45:freechips.rocketchip.system.DefaultRV32Config.fir@216357.4]
  assign wdata = _T_793 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@216358.4]
  assign _T_811 = _T_798 & 32'h20200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216373.4]
  assign _T_812 = _T_811 == 32'h20000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216374.4]
  assign _T_814 = _T_798 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216376.4]
  assign _T_815 = _T_814 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216377.4]
  assign insn_cease = system_insn & _T_812; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216389.4]
  assign insn_wfi = system_insn & _T_815; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@216391.4]
  assign _T_826 = {io_decode_0_csr, 20'h0}; // @[CSR.scala 607:30:freechips.rocketchip.system.DefaultRV32Config.fir@216394.4]
  assign _T_833 = _T_826 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216401.4]
  assign _T_834 = _T_833 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216402.4]
  assign _T_835 = _T_826 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216403.4]
  assign _T_836 = _T_835 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216404.4]
  assign _T_838 = _T_834 | _T_836; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@216406.4]
  assign _T_842 = _T_826 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216410.4]
  assign _T_843 = _T_842 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216411.4]
  assign _T_845 = _T_826 & 32'h42000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216413.4]
  assign _T_846 = _T_845 == 32'h2000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216414.4]
  assign _T_854 = reg_mstatus_prv > 2'h1; // @[CSR.scala 609:63:freechips.rocketchip.system.DefaultRV32Config.fir@216422.4]
  assign _T_856 = ~reg_mstatus_tw; // @[CSR.scala 609:74:freechips.rocketchip.system.DefaultRV32Config.fir@216424.4]
  assign _T_857 = _T_854 | _T_856; // @[CSR.scala 609:71:freechips.rocketchip.system.DefaultRV32Config.fir@216425.4]
  assign _T_860 = ~reg_mstatus_tvm; // @[CSR.scala 610:73:freechips.rocketchip.system.DefaultRV32Config.fir@216428.4]
  assign _T_861 = _T_854 | _T_860; // @[CSR.scala 610:70:freechips.rocketchip.system.DefaultRV32Config.fir@216429.4]
  assign _T_864 = ~reg_mstatus_tsr; // @[CSR.scala 611:75:freechips.rocketchip.system.DefaultRV32Config.fir@216432.4]
  assign _T_865 = _T_854 | _T_864; // @[CSR.scala 611:72:freechips.rocketchip.system.DefaultRV32Config.fir@216433.4]
  assign _T_868 = read_mcounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 613:68:freechips.rocketchip.system.DefaultRV32Config.fir@216436.4]
  assign _T_870 = _T_854 | _T_868[0]; // @[CSR.scala 613:50:freechips.rocketchip.system.DefaultRV32Config.fir@216438.4]
  assign _T_871 = reg_mstatus_prv >= 2'h1; // @[CSR.scala 614:44:freechips.rocketchip.system.DefaultRV32Config.fir@216439.4]
  assign _T_873 = read_scounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 614:71:freechips.rocketchip.system.DefaultRV32Config.fir@216441.4]
  assign _T_875 = _T_871 | _T_873[0]; // @[CSR.scala 614:53:freechips.rocketchip.system.DefaultRV32Config.fir@216443.4]
  assign _T_876 = _T_870 & _T_875; // @[CSR.scala 613:84:freechips.rocketchip.system.DefaultRV32Config.fir@216444.4]
  assign _T_877 = io_status_fs == 2'h0; // @[CSR.scala 615:39:freechips.rocketchip.system.DefaultRV32Config.fir@216445.4]
  assign _T_879 = ~reg_misa[5]; // @[CSR.scala 615:48:freechips.rocketchip.system.DefaultRV32Config.fir@216447.4]
  assign _T_885 = io_decode_0_csr & 12'h900; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216455.4]
  assign _T_894 = reg_mstatus_prv < io_decode_0_csr[9:8]; // @[CSR.scala 619:44:freechips.rocketchip.system.DefaultRV32Config.fir@216466.4]
  assign _T_895 = io_decode_0_csr == 12'h7a0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216467.4]
  assign _T_896 = io_decode_0_csr == 12'h7a1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216468.4]
  assign _T_897 = io_decode_0_csr == 12'h7a2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216469.4]
  assign _T_898 = io_decode_0_csr == 12'h301; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216470.4]
  assign _T_899 = io_decode_0_csr == 12'h300; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216471.4]
  assign _T_900 = io_decode_0_csr == 12'h305; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216472.4]
  assign _T_901 = io_decode_0_csr == 12'h344; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216473.4]
  assign _T_902 = io_decode_0_csr == 12'h304; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216474.4]
  assign _T_903 = io_decode_0_csr == 12'h340; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216475.4]
  assign _T_904 = io_decode_0_csr == 12'h341; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216476.4]
  assign _T_905 = io_decode_0_csr == 12'h343; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216477.4]
  assign _T_906 = io_decode_0_csr == 12'h342; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216478.4]
  assign _T_907 = io_decode_0_csr == 12'hf14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216479.4]
  assign _T_908 = io_decode_0_csr == 12'h7b0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216480.4]
  assign _T_909 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216481.4]
  assign _T_910 = io_decode_0_csr == 12'h7b2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216482.4]
  assign _T_911 = io_decode_0_csr == 12'h1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216483.4]
  assign _T_912 = io_decode_0_csr == 12'h2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216484.4]
  assign _T_913 = io_decode_0_csr == 12'h3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216485.4]
  assign _T_914 = io_decode_0_csr == 12'hb00; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216486.4]
  assign _T_915 = io_decode_0_csr == 12'hb02; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216487.4]
  assign _T_916 = io_decode_0_csr == 12'h323; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216488.4]
  assign _T_917 = io_decode_0_csr == 12'hb03; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216489.4]
  assign _T_918 = io_decode_0_csr == 12'hc03; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216490.4]
  assign _T_919 = io_decode_0_csr == 12'hb83; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216491.4]
  assign _T_920 = io_decode_0_csr == 12'hc83; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216492.4]
  assign _T_921 = io_decode_0_csr == 12'h324; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216493.4]
  assign _T_922 = io_decode_0_csr == 12'hb04; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216494.4]
  assign _T_923 = io_decode_0_csr == 12'hc04; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216495.4]
  assign _T_924 = io_decode_0_csr == 12'hb84; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216496.4]
  assign _T_925 = io_decode_0_csr == 12'hc84; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216497.4]
  assign _T_926 = io_decode_0_csr == 12'h325; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216498.4]
  assign _T_927 = io_decode_0_csr == 12'hb05; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216499.4]
  assign _T_928 = io_decode_0_csr == 12'hc05; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216500.4]
  assign _T_929 = io_decode_0_csr == 12'hb85; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216501.4]
  assign _T_930 = io_decode_0_csr == 12'hc85; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216502.4]
  assign _T_931 = io_decode_0_csr == 12'h326; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216503.4]
  assign _T_932 = io_decode_0_csr == 12'hb06; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216504.4]
  assign _T_933 = io_decode_0_csr == 12'hc06; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216505.4]
  assign _T_934 = io_decode_0_csr == 12'hb86; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216506.4]
  assign _T_935 = io_decode_0_csr == 12'hc86; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216507.4]
  assign _T_936 = io_decode_0_csr == 12'h327; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216508.4]
  assign _T_937 = io_decode_0_csr == 12'hb07; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216509.4]
  assign _T_938 = io_decode_0_csr == 12'hc07; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216510.4]
  assign _T_939 = io_decode_0_csr == 12'hb87; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216511.4]
  assign _T_940 = io_decode_0_csr == 12'hc87; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216512.4]
  assign _T_941 = io_decode_0_csr == 12'h328; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216513.4]
  assign _T_942 = io_decode_0_csr == 12'hb08; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216514.4]
  assign _T_943 = io_decode_0_csr == 12'hc08; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216515.4]
  assign _T_944 = io_decode_0_csr == 12'hb88; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216516.4]
  assign _T_945 = io_decode_0_csr == 12'hc88; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216517.4]
  assign _T_946 = io_decode_0_csr == 12'h329; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216518.4]
  assign _T_947 = io_decode_0_csr == 12'hb09; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216519.4]
  assign _T_948 = io_decode_0_csr == 12'hc09; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216520.4]
  assign _T_949 = io_decode_0_csr == 12'hb89; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216521.4]
  assign _T_950 = io_decode_0_csr == 12'hc89; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216522.4]
  assign _T_951 = io_decode_0_csr == 12'h32a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216523.4]
  assign _T_952 = io_decode_0_csr == 12'hb0a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216524.4]
  assign _T_953 = io_decode_0_csr == 12'hc0a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216525.4]
  assign _T_954 = io_decode_0_csr == 12'hb8a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216526.4]
  assign _T_955 = io_decode_0_csr == 12'hc8a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216527.4]
  assign _T_956 = io_decode_0_csr == 12'h32b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216528.4]
  assign _T_957 = io_decode_0_csr == 12'hb0b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216529.4]
  assign _T_958 = io_decode_0_csr == 12'hc0b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216530.4]
  assign _T_959 = io_decode_0_csr == 12'hb8b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216531.4]
  assign _T_960 = io_decode_0_csr == 12'hc8b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216532.4]
  assign _T_961 = io_decode_0_csr == 12'h32c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216533.4]
  assign _T_962 = io_decode_0_csr == 12'hb0c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216534.4]
  assign _T_963 = io_decode_0_csr == 12'hc0c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216535.4]
  assign _T_964 = io_decode_0_csr == 12'hb8c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216536.4]
  assign _T_965 = io_decode_0_csr == 12'hc8c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216537.4]
  assign _T_966 = io_decode_0_csr == 12'h32d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216538.4]
  assign _T_967 = io_decode_0_csr == 12'hb0d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216539.4]
  assign _T_968 = io_decode_0_csr == 12'hc0d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216540.4]
  assign _T_969 = io_decode_0_csr == 12'hb8d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216541.4]
  assign _T_970 = io_decode_0_csr == 12'hc8d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216542.4]
  assign _T_971 = io_decode_0_csr == 12'h32e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216543.4]
  assign _T_972 = io_decode_0_csr == 12'hb0e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216544.4]
  assign _T_973 = io_decode_0_csr == 12'hc0e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216545.4]
  assign _T_974 = io_decode_0_csr == 12'hb8e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216546.4]
  assign _T_975 = io_decode_0_csr == 12'hc8e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216547.4]
  assign _T_976 = io_decode_0_csr == 12'h32f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216548.4]
  assign _T_977 = io_decode_0_csr == 12'hb0f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216549.4]
  assign _T_978 = io_decode_0_csr == 12'hc0f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216550.4]
  assign _T_979 = io_decode_0_csr == 12'hb8f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216551.4]
  assign _T_980 = io_decode_0_csr == 12'hc8f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216552.4]
  assign _T_981 = io_decode_0_csr == 12'h330; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216553.4]
  assign _T_982 = io_decode_0_csr == 12'hb10; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216554.4]
  assign _T_983 = io_decode_0_csr == 12'hc10; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216555.4]
  assign _T_984 = io_decode_0_csr == 12'hb90; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216556.4]
  assign _T_985 = io_decode_0_csr == 12'hc90; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216557.4]
  assign _T_986 = io_decode_0_csr == 12'h331; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216558.4]
  assign _T_987 = io_decode_0_csr == 12'hb11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216559.4]
  assign _T_988 = io_decode_0_csr == 12'hc11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216560.4]
  assign _T_989 = io_decode_0_csr == 12'hb91; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216561.4]
  assign _T_990 = io_decode_0_csr == 12'hc91; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216562.4]
  assign _T_991 = io_decode_0_csr == 12'h332; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216563.4]
  assign _T_992 = io_decode_0_csr == 12'hb12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216564.4]
  assign _T_993 = io_decode_0_csr == 12'hc12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216565.4]
  assign _T_994 = io_decode_0_csr == 12'hb92; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216566.4]
  assign _T_995 = io_decode_0_csr == 12'hc92; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216567.4]
  assign _T_996 = io_decode_0_csr == 12'h333; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216568.4]
  assign _T_997 = io_decode_0_csr == 12'hb13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216569.4]
  assign _T_998 = io_decode_0_csr == 12'hc13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216570.4]
  assign _T_999 = io_decode_0_csr == 12'hb93; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216571.4]
  assign _T_1000 = io_decode_0_csr == 12'hc93; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216572.4]
  assign _T_1001 = io_decode_0_csr == 12'h334; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216573.4]
  assign _T_1002 = io_decode_0_csr == 12'hb14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216574.4]
  assign _T_1003 = io_decode_0_csr == 12'hc14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216575.4]
  assign _T_1004 = io_decode_0_csr == 12'hb94; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216576.4]
  assign _T_1005 = io_decode_0_csr == 12'hc94; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216577.4]
  assign _T_1006 = io_decode_0_csr == 12'h335; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216578.4]
  assign _T_1007 = io_decode_0_csr == 12'hb15; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216579.4]
  assign _T_1008 = io_decode_0_csr == 12'hc15; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216580.4]
  assign _T_1009 = io_decode_0_csr == 12'hb95; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216581.4]
  assign _T_1010 = io_decode_0_csr == 12'hc95; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216582.4]
  assign _T_1011 = io_decode_0_csr == 12'h336; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216583.4]
  assign _T_1012 = io_decode_0_csr == 12'hb16; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216584.4]
  assign _T_1013 = io_decode_0_csr == 12'hc16; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216585.4]
  assign _T_1014 = io_decode_0_csr == 12'hb96; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216586.4]
  assign _T_1015 = io_decode_0_csr == 12'hc96; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216587.4]
  assign _T_1016 = io_decode_0_csr == 12'h337; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216588.4]
  assign _T_1017 = io_decode_0_csr == 12'hb17; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216589.4]
  assign _T_1018 = io_decode_0_csr == 12'hc17; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216590.4]
  assign _T_1019 = io_decode_0_csr == 12'hb97; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216591.4]
  assign _T_1020 = io_decode_0_csr == 12'hc97; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216592.4]
  assign _T_1021 = io_decode_0_csr == 12'h338; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216593.4]
  assign _T_1022 = io_decode_0_csr == 12'hb18; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216594.4]
  assign _T_1023 = io_decode_0_csr == 12'hc18; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216595.4]
  assign _T_1024 = io_decode_0_csr == 12'hb98; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216596.4]
  assign _T_1025 = io_decode_0_csr == 12'hc98; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216597.4]
  assign _T_1026 = io_decode_0_csr == 12'h339; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216598.4]
  assign _T_1027 = io_decode_0_csr == 12'hb19; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216599.4]
  assign _T_1028 = io_decode_0_csr == 12'hc19; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216600.4]
  assign _T_1029 = io_decode_0_csr == 12'hb99; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216601.4]
  assign _T_1030 = io_decode_0_csr == 12'hc99; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216602.4]
  assign _T_1031 = io_decode_0_csr == 12'h33a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216603.4]
  assign _T_1032 = io_decode_0_csr == 12'hb1a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216604.4]
  assign _T_1033 = io_decode_0_csr == 12'hc1a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216605.4]
  assign _T_1034 = io_decode_0_csr == 12'hb9a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216606.4]
  assign _T_1035 = io_decode_0_csr == 12'hc9a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216607.4]
  assign _T_1036 = io_decode_0_csr == 12'h33b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216608.4]
  assign _T_1037 = io_decode_0_csr == 12'hb1b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216609.4]
  assign _T_1038 = io_decode_0_csr == 12'hc1b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216610.4]
  assign _T_1039 = io_decode_0_csr == 12'hb9b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216611.4]
  assign _T_1040 = io_decode_0_csr == 12'hc9b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216612.4]
  assign _T_1041 = io_decode_0_csr == 12'h33c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216613.4]
  assign _T_1042 = io_decode_0_csr == 12'hb1c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216614.4]
  assign _T_1043 = io_decode_0_csr == 12'hc1c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216615.4]
  assign _T_1044 = io_decode_0_csr == 12'hb9c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216616.4]
  assign _T_1045 = io_decode_0_csr == 12'hc9c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216617.4]
  assign _T_1046 = io_decode_0_csr == 12'h33d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216618.4]
  assign _T_1047 = io_decode_0_csr == 12'hb1d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216619.4]
  assign _T_1048 = io_decode_0_csr == 12'hc1d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216620.4]
  assign _T_1049 = io_decode_0_csr == 12'hb9d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216621.4]
  assign _T_1050 = io_decode_0_csr == 12'hc9d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216622.4]
  assign _T_1051 = io_decode_0_csr == 12'h33e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216623.4]
  assign _T_1052 = io_decode_0_csr == 12'hb1e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216624.4]
  assign _T_1053 = io_decode_0_csr == 12'hc1e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216625.4]
  assign _T_1054 = io_decode_0_csr == 12'hb9e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216626.4]
  assign _T_1055 = io_decode_0_csr == 12'hc9e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216627.4]
  assign _T_1056 = io_decode_0_csr == 12'h33f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216628.4]
  assign _T_1057 = io_decode_0_csr == 12'hb1f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216629.4]
  assign _T_1058 = io_decode_0_csr == 12'hc1f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216630.4]
  assign _T_1059 = io_decode_0_csr == 12'hb9f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216631.4]
  assign _T_1060 = io_decode_0_csr == 12'hc9f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216632.4]
  assign _T_1061 = io_decode_0_csr == 12'h306; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216633.4]
  assign _T_1062 = io_decode_0_csr == 12'hc00; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216634.4]
  assign _T_1063 = io_decode_0_csr == 12'hc02; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216635.4]
  assign _T_1064 = io_decode_0_csr == 12'hb80; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216636.4]
  assign _T_1065 = io_decode_0_csr == 12'hb82; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216637.4]
  assign _T_1066 = io_decode_0_csr == 12'hc80; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216638.4]
  assign _T_1067 = io_decode_0_csr == 12'hc82; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216639.4]
  assign _T_1068 = io_decode_0_csr == 12'h100; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216640.4]
  assign _T_1069 = io_decode_0_csr == 12'h144; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216641.4]
  assign _T_1070 = io_decode_0_csr == 12'h104; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216642.4]
  assign _T_1071 = io_decode_0_csr == 12'h140; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216643.4]
  assign _T_1072 = io_decode_0_csr == 12'h142; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216644.4]
  assign _T_1073 = io_decode_0_csr == 12'h143; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216645.4]
  assign _T_1074 = io_decode_0_csr == 12'h180; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216646.4]
  assign _T_1075 = io_decode_0_csr == 12'h141; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216647.4]
  assign _T_1076 = io_decode_0_csr == 12'h105; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216648.4]
  assign _T_1077 = io_decode_0_csr == 12'h106; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216649.4]
  assign _T_1078 = io_decode_0_csr == 12'h303; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216650.4]
  assign _T_1079 = io_decode_0_csr == 12'h302; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216651.4]
  assign _T_1080 = io_decode_0_csr == 12'h3a0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216652.4]
  assign _T_1081 = io_decode_0_csr == 12'h3a1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216653.4]
  assign _T_1082 = io_decode_0_csr == 12'h3a2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216654.4]
  assign _T_1083 = io_decode_0_csr == 12'h3a3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216655.4]
  assign _T_1084 = io_decode_0_csr == 12'h3b0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216656.4]
  assign _T_1085 = io_decode_0_csr == 12'h3b1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216657.4]
  assign _T_1086 = io_decode_0_csr == 12'h3b2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216658.4]
  assign _T_1087 = io_decode_0_csr == 12'h3b3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216659.4]
  assign _T_1088 = io_decode_0_csr == 12'h3b4; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216660.4]
  assign _T_1089 = io_decode_0_csr == 12'h3b5; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216661.4]
  assign _T_1090 = io_decode_0_csr == 12'h3b6; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216662.4]
  assign _T_1091 = io_decode_0_csr == 12'h3b7; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216663.4]
  assign _T_1092 = io_decode_0_csr == 12'h3b8; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216664.4]
  assign _T_1093 = io_decode_0_csr == 12'h3b9; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216665.4]
  assign _T_1094 = io_decode_0_csr == 12'h3ba; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216666.4]
  assign _T_1095 = io_decode_0_csr == 12'h3bb; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216667.4]
  assign _T_1096 = io_decode_0_csr == 12'h3bc; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216668.4]
  assign _T_1097 = io_decode_0_csr == 12'h3bd; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216669.4]
  assign _T_1098 = io_decode_0_csr == 12'h3be; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216670.4]
  assign _T_1099 = io_decode_0_csr == 12'h3bf; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216671.4]
  assign _T_1100 = io_decode_0_csr == 12'h7c1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216672.4]
  assign _T_1101 = io_decode_0_csr == 12'hf12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216673.4]
  assign _T_1102 = io_decode_0_csr == 12'hf11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216674.4]
  assign _T_1103 = io_decode_0_csr == 12'hf13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@216675.4]
  assign _T_1104 = _T_895 | _T_896; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216676.4]
  assign _T_1105 = _T_1104 | _T_897; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216677.4]
  assign _T_1106 = _T_1105 | _T_898; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216678.4]
  assign _T_1107 = _T_1106 | _T_899; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216679.4]
  assign _T_1108 = _T_1107 | _T_900; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216680.4]
  assign _T_1109 = _T_1108 | _T_901; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216681.4]
  assign _T_1110 = _T_1109 | _T_902; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216682.4]
  assign _T_1111 = _T_1110 | _T_903; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216683.4]
  assign _T_1112 = _T_1111 | _T_904; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216684.4]
  assign _T_1113 = _T_1112 | _T_905; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216685.4]
  assign _T_1114 = _T_1113 | _T_906; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216686.4]
  assign _T_1115 = _T_1114 | _T_907; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216687.4]
  assign _T_1116 = _T_1115 | _T_908; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216688.4]
  assign _T_1117 = _T_1116 | _T_909; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216689.4]
  assign _T_1118 = _T_1117 | _T_910; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216690.4]
  assign _T_1119 = _T_1118 | _T_911; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216691.4]
  assign _T_1120 = _T_1119 | _T_912; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216692.4]
  assign _T_1121 = _T_1120 | _T_913; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216693.4]
  assign _T_1122 = _T_1121 | _T_914; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216694.4]
  assign _T_1123 = _T_1122 | _T_915; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216695.4]
  assign _T_1124 = _T_1123 | _T_916; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216696.4]
  assign _T_1125 = _T_1124 | _T_917; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216697.4]
  assign _T_1126 = _T_1125 | _T_918; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216698.4]
  assign _T_1127 = _T_1126 | _T_919; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216699.4]
  assign _T_1128 = _T_1127 | _T_920; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216700.4]
  assign _T_1129 = _T_1128 | _T_921; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216701.4]
  assign _T_1130 = _T_1129 | _T_922; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216702.4]
  assign _T_1131 = _T_1130 | _T_923; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216703.4]
  assign _T_1132 = _T_1131 | _T_924; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216704.4]
  assign _T_1133 = _T_1132 | _T_925; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216705.4]
  assign _T_1134 = _T_1133 | _T_926; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216706.4]
  assign _T_1135 = _T_1134 | _T_927; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216707.4]
  assign _T_1136 = _T_1135 | _T_928; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216708.4]
  assign _T_1137 = _T_1136 | _T_929; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216709.4]
  assign _T_1138 = _T_1137 | _T_930; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216710.4]
  assign _T_1139 = _T_1138 | _T_931; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216711.4]
  assign _T_1140 = _T_1139 | _T_932; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216712.4]
  assign _T_1141 = _T_1140 | _T_933; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216713.4]
  assign _T_1142 = _T_1141 | _T_934; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216714.4]
  assign _T_1143 = _T_1142 | _T_935; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216715.4]
  assign _T_1144 = _T_1143 | _T_936; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216716.4]
  assign _T_1145 = _T_1144 | _T_937; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216717.4]
  assign _T_1146 = _T_1145 | _T_938; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216718.4]
  assign _T_1147 = _T_1146 | _T_939; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216719.4]
  assign _T_1148 = _T_1147 | _T_940; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216720.4]
  assign _T_1149 = _T_1148 | _T_941; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216721.4]
  assign _T_1150 = _T_1149 | _T_942; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216722.4]
  assign _T_1151 = _T_1150 | _T_943; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216723.4]
  assign _T_1152 = _T_1151 | _T_944; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216724.4]
  assign _T_1153 = _T_1152 | _T_945; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216725.4]
  assign _T_1154 = _T_1153 | _T_946; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216726.4]
  assign _T_1155 = _T_1154 | _T_947; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216727.4]
  assign _T_1156 = _T_1155 | _T_948; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216728.4]
  assign _T_1157 = _T_1156 | _T_949; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216729.4]
  assign _T_1158 = _T_1157 | _T_950; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216730.4]
  assign _T_1159 = _T_1158 | _T_951; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216731.4]
  assign _T_1160 = _T_1159 | _T_952; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216732.4]
  assign _T_1161 = _T_1160 | _T_953; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216733.4]
  assign _T_1162 = _T_1161 | _T_954; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216734.4]
  assign _T_1163 = _T_1162 | _T_955; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216735.4]
  assign _T_1164 = _T_1163 | _T_956; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216736.4]
  assign _T_1165 = _T_1164 | _T_957; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216737.4]
  assign _T_1166 = _T_1165 | _T_958; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216738.4]
  assign _T_1167 = _T_1166 | _T_959; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216739.4]
  assign _T_1168 = _T_1167 | _T_960; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216740.4]
  assign _T_1169 = _T_1168 | _T_961; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216741.4]
  assign _T_1170 = _T_1169 | _T_962; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216742.4]
  assign _T_1171 = _T_1170 | _T_963; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216743.4]
  assign _T_1172 = _T_1171 | _T_964; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216744.4]
  assign _T_1173 = _T_1172 | _T_965; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216745.4]
  assign _T_1174 = _T_1173 | _T_966; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216746.4]
  assign _T_1175 = _T_1174 | _T_967; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216747.4]
  assign _T_1176 = _T_1175 | _T_968; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216748.4]
  assign _T_1177 = _T_1176 | _T_969; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216749.4]
  assign _T_1178 = _T_1177 | _T_970; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216750.4]
  assign _T_1179 = _T_1178 | _T_971; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216751.4]
  assign _T_1180 = _T_1179 | _T_972; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216752.4]
  assign _T_1181 = _T_1180 | _T_973; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216753.4]
  assign _T_1182 = _T_1181 | _T_974; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216754.4]
  assign _T_1183 = _T_1182 | _T_975; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216755.4]
  assign _T_1184 = _T_1183 | _T_976; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216756.4]
  assign _T_1185 = _T_1184 | _T_977; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216757.4]
  assign _T_1186 = _T_1185 | _T_978; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216758.4]
  assign _T_1187 = _T_1186 | _T_979; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216759.4]
  assign _T_1188 = _T_1187 | _T_980; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216760.4]
  assign _T_1189 = _T_1188 | _T_981; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216761.4]
  assign _T_1190 = _T_1189 | _T_982; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216762.4]
  assign _T_1191 = _T_1190 | _T_983; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216763.4]
  assign _T_1192 = _T_1191 | _T_984; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216764.4]
  assign _T_1193 = _T_1192 | _T_985; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216765.4]
  assign _T_1194 = _T_1193 | _T_986; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216766.4]
  assign _T_1195 = _T_1194 | _T_987; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216767.4]
  assign _T_1196 = _T_1195 | _T_988; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216768.4]
  assign _T_1197 = _T_1196 | _T_989; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216769.4]
  assign _T_1198 = _T_1197 | _T_990; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216770.4]
  assign _T_1199 = _T_1198 | _T_991; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216771.4]
  assign _T_1200 = _T_1199 | _T_992; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216772.4]
  assign _T_1201 = _T_1200 | _T_993; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216773.4]
  assign _T_1202 = _T_1201 | _T_994; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216774.4]
  assign _T_1203 = _T_1202 | _T_995; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216775.4]
  assign _T_1204 = _T_1203 | _T_996; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216776.4]
  assign _T_1205 = _T_1204 | _T_997; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216777.4]
  assign _T_1206 = _T_1205 | _T_998; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216778.4]
  assign _T_1207 = _T_1206 | _T_999; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216779.4]
  assign _T_1208 = _T_1207 | _T_1000; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216780.4]
  assign _T_1209 = _T_1208 | _T_1001; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216781.4]
  assign _T_1210 = _T_1209 | _T_1002; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216782.4]
  assign _T_1211 = _T_1210 | _T_1003; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216783.4]
  assign _T_1212 = _T_1211 | _T_1004; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216784.4]
  assign _T_1213 = _T_1212 | _T_1005; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216785.4]
  assign _T_1214 = _T_1213 | _T_1006; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216786.4]
  assign _T_1215 = _T_1214 | _T_1007; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216787.4]
  assign _T_1216 = _T_1215 | _T_1008; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216788.4]
  assign _T_1217 = _T_1216 | _T_1009; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216789.4]
  assign _T_1218 = _T_1217 | _T_1010; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216790.4]
  assign _T_1219 = _T_1218 | _T_1011; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216791.4]
  assign _T_1220 = _T_1219 | _T_1012; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216792.4]
  assign _T_1221 = _T_1220 | _T_1013; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216793.4]
  assign _T_1222 = _T_1221 | _T_1014; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216794.4]
  assign _T_1223 = _T_1222 | _T_1015; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216795.4]
  assign _T_1224 = _T_1223 | _T_1016; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216796.4]
  assign _T_1225 = _T_1224 | _T_1017; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216797.4]
  assign _T_1226 = _T_1225 | _T_1018; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216798.4]
  assign _T_1227 = _T_1226 | _T_1019; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216799.4]
  assign _T_1228 = _T_1227 | _T_1020; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216800.4]
  assign _T_1229 = _T_1228 | _T_1021; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216801.4]
  assign _T_1230 = _T_1229 | _T_1022; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216802.4]
  assign _T_1231 = _T_1230 | _T_1023; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216803.4]
  assign _T_1232 = _T_1231 | _T_1024; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216804.4]
  assign _T_1233 = _T_1232 | _T_1025; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216805.4]
  assign _T_1234 = _T_1233 | _T_1026; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216806.4]
  assign _T_1235 = _T_1234 | _T_1027; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216807.4]
  assign _T_1236 = _T_1235 | _T_1028; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216808.4]
  assign _T_1237 = _T_1236 | _T_1029; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216809.4]
  assign _T_1238 = _T_1237 | _T_1030; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216810.4]
  assign _T_1239 = _T_1238 | _T_1031; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216811.4]
  assign _T_1240 = _T_1239 | _T_1032; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216812.4]
  assign _T_1241 = _T_1240 | _T_1033; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216813.4]
  assign _T_1242 = _T_1241 | _T_1034; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216814.4]
  assign _T_1243 = _T_1242 | _T_1035; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216815.4]
  assign _T_1244 = _T_1243 | _T_1036; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216816.4]
  assign _T_1245 = _T_1244 | _T_1037; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216817.4]
  assign _T_1246 = _T_1245 | _T_1038; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216818.4]
  assign _T_1247 = _T_1246 | _T_1039; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216819.4]
  assign _T_1248 = _T_1247 | _T_1040; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216820.4]
  assign _T_1249 = _T_1248 | _T_1041; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216821.4]
  assign _T_1250 = _T_1249 | _T_1042; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216822.4]
  assign _T_1251 = _T_1250 | _T_1043; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216823.4]
  assign _T_1252 = _T_1251 | _T_1044; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216824.4]
  assign _T_1253 = _T_1252 | _T_1045; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216825.4]
  assign _T_1254 = _T_1253 | _T_1046; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216826.4]
  assign _T_1255 = _T_1254 | _T_1047; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216827.4]
  assign _T_1256 = _T_1255 | _T_1048; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216828.4]
  assign _T_1257 = _T_1256 | _T_1049; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216829.4]
  assign _T_1258 = _T_1257 | _T_1050; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216830.4]
  assign _T_1259 = _T_1258 | _T_1051; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216831.4]
  assign _T_1260 = _T_1259 | _T_1052; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216832.4]
  assign _T_1261 = _T_1260 | _T_1053; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216833.4]
  assign _T_1262 = _T_1261 | _T_1054; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216834.4]
  assign _T_1263 = _T_1262 | _T_1055; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216835.4]
  assign _T_1264 = _T_1263 | _T_1056; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216836.4]
  assign _T_1265 = _T_1264 | _T_1057; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216837.4]
  assign _T_1266 = _T_1265 | _T_1058; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216838.4]
  assign _T_1267 = _T_1266 | _T_1059; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216839.4]
  assign _T_1268 = _T_1267 | _T_1060; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216840.4]
  assign _T_1269 = _T_1268 | _T_1061; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216841.4]
  assign _T_1270 = _T_1269 | _T_1062; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216842.4]
  assign _T_1271 = _T_1270 | _T_1063; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216843.4]
  assign _T_1272 = _T_1271 | _T_1064; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216844.4]
  assign _T_1273 = _T_1272 | _T_1065; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216845.4]
  assign _T_1274 = _T_1273 | _T_1066; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216846.4]
  assign _T_1275 = _T_1274 | _T_1067; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216847.4]
  assign _T_1276 = _T_1275 | _T_1068; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216848.4]
  assign _T_1277 = _T_1276 | _T_1069; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216849.4]
  assign _T_1278 = _T_1277 | _T_1070; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216850.4]
  assign _T_1279 = _T_1278 | _T_1071; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216851.4]
  assign _T_1280 = _T_1279 | _T_1072; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216852.4]
  assign _T_1281 = _T_1280 | _T_1073; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216853.4]
  assign _T_1282 = _T_1281 | _T_1074; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216854.4]
  assign _T_1283 = _T_1282 | _T_1075; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216855.4]
  assign _T_1284 = _T_1283 | _T_1076; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216856.4]
  assign _T_1285 = _T_1284 | _T_1077; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216857.4]
  assign _T_1286 = _T_1285 | _T_1078; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216858.4]
  assign _T_1287 = _T_1286 | _T_1079; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216859.4]
  assign _T_1288 = _T_1287 | _T_1080; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216860.4]
  assign _T_1289 = _T_1288 | _T_1081; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216861.4]
  assign _T_1290 = _T_1289 | _T_1082; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216862.4]
  assign _T_1291 = _T_1290 | _T_1083; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216863.4]
  assign _T_1292 = _T_1291 | _T_1084; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216864.4]
  assign _T_1293 = _T_1292 | _T_1085; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216865.4]
  assign _T_1294 = _T_1293 | _T_1086; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216866.4]
  assign _T_1295 = _T_1294 | _T_1087; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216867.4]
  assign _T_1296 = _T_1295 | _T_1088; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216868.4]
  assign _T_1297 = _T_1296 | _T_1089; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216869.4]
  assign _T_1298 = _T_1297 | _T_1090; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216870.4]
  assign _T_1299 = _T_1298 | _T_1091; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216871.4]
  assign _T_1300 = _T_1299 | _T_1092; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216872.4]
  assign _T_1301 = _T_1300 | _T_1093; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216873.4]
  assign _T_1302 = _T_1301 | _T_1094; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216874.4]
  assign _T_1303 = _T_1302 | _T_1095; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216875.4]
  assign _T_1304 = _T_1303 | _T_1096; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216876.4]
  assign _T_1305 = _T_1304 | _T_1097; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216877.4]
  assign _T_1306 = _T_1305 | _T_1098; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216878.4]
  assign _T_1307 = _T_1306 | _T_1099; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216879.4]
  assign _T_1308 = _T_1307 | _T_1100; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216880.4]
  assign _T_1309 = _T_1308 | _T_1101; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216881.4]
  assign _T_1310 = _T_1309 | _T_1102; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216882.4]
  assign _T_1311 = _T_1310 | _T_1103; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@216883.4]
  assign _T_1312 = ~_T_1311; // @[CSR.scala 620:7:freechips.rocketchip.system.DefaultRV32Config.fir@216884.4]
  assign _T_1313 = _T_894 | _T_1312; // @[CSR.scala 619:62:freechips.rocketchip.system.DefaultRV32Config.fir@216885.4]
  assign _T_1315 = ~_T_861; // @[CSR.scala 621:35:freechips.rocketchip.system.DefaultRV32Config.fir@216887.4]
  assign _T_1316 = _T_1074 & _T_1315; // @[CSR.scala 621:32:freechips.rocketchip.system.DefaultRV32Config.fir@216888.4]
  assign _T_1317 = _T_1313 | _T_1316; // @[CSR.scala 620:32:freechips.rocketchip.system.DefaultRV32Config.fir@216889.4]
  assign _T_1318 = io_decode_0_csr >= 12'hc00; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@216890.4]
  assign _T_1319 = io_decode_0_csr < 12'hc20; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@216891.4]
  assign _T_1320 = _T_1318 & _T_1319; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@216892.4]
  assign _T_1321 = io_decode_0_csr >= 12'hc80; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@216893.4]
  assign _T_1322 = io_decode_0_csr < 12'hca0; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@216894.4]
  assign _T_1323 = _T_1321 & _T_1322; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@216895.4]
  assign _T_1324 = _T_1320 | _T_1323; // @[CSR.scala 622:66:freechips.rocketchip.system.DefaultRV32Config.fir@216896.4]
  assign _T_1325 = ~_T_876; // @[CSR.scala 622:133:freechips.rocketchip.system.DefaultRV32Config.fir@216897.4]
  assign _T_1326 = _T_1324 & _T_1325; // @[CSR.scala 622:130:freechips.rocketchip.system.DefaultRV32Config.fir@216898.4]
  assign _T_1327 = _T_1317 | _T_1326; // @[CSR.scala 621:53:freechips.rocketchip.system.DefaultRV32Config.fir@216899.4]
  assign _T_1328 = io_decode_0_csr & 12'hc10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@216900.4]
  assign _T_1329 = _T_1328 == 12'h410; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@216901.4]
  assign _T_1333 = _T_1329 & _T_1455; // @[CSR.scala 623:42:freechips.rocketchip.system.DefaultRV32Config.fir@216905.4]
  assign _T_1334 = _T_1327 | _T_1333; // @[CSR.scala 622:148:freechips.rocketchip.system.DefaultRV32Config.fir@216906.4]
  assign _T_1337 = io_decode_0_fp_csr & io_decode_0_fp_illegal; // @[CSR.scala 625:21:freechips.rocketchip.system.DefaultRV32Config.fir@216909.4]
  assign _T_1341 = io_decode_0_csr >= 12'h340; // @[CSR.scala 627:40:freechips.rocketchip.system.DefaultRV32Config.fir@216915.4]
  assign _T_1342 = io_decode_0_csr <= 12'h343; // @[CSR.scala 627:71:freechips.rocketchip.system.DefaultRV32Config.fir@216916.4]
  assign _T_1343 = _T_1341 & _T_1342; // @[CSR.scala 627:57:freechips.rocketchip.system.DefaultRV32Config.fir@216917.4]
  assign _T_1344 = io_decode_0_csr >= 12'h140; // @[CSR.scala 627:99:freechips.rocketchip.system.DefaultRV32Config.fir@216918.4]
  assign _T_1345 = io_decode_0_csr <= 12'h143; // @[CSR.scala 627:130:freechips.rocketchip.system.DefaultRV32Config.fir@216919.4]
  assign _T_1346 = _T_1344 & _T_1345; // @[CSR.scala 627:116:freechips.rocketchip.system.DefaultRV32Config.fir@216920.4]
  assign _T_1347 = _T_1343 | _T_1346; // @[CSR.scala 627:85:freechips.rocketchip.system.DefaultRV32Config.fir@216921.4]
  assign _T_1351 = ~_T_857; // @[CSR.scala 629:17:freechips.rocketchip.system.DefaultRV32Config.fir@216926.4]
  assign _T_1352 = _T_843 & _T_1351; // @[CSR.scala 629:14:freechips.rocketchip.system.DefaultRV32Config.fir@216927.4]
  assign _T_1353 = _T_894 | _T_1352; // @[CSR.scala 628:64:freechips.rocketchip.system.DefaultRV32Config.fir@216928.4]
  assign _T_1354 = ~_T_865; // @[CSR.scala 630:17:freechips.rocketchip.system.DefaultRV32Config.fir@216929.4]
  assign _T_1355 = _T_838 & _T_1354; // @[CSR.scala 630:14:freechips.rocketchip.system.DefaultRV32Config.fir@216930.4]
  assign _T_1356 = _T_1353 | _T_1355; // @[CSR.scala 629:28:freechips.rocketchip.system.DefaultRV32Config.fir@216931.4]
  assign _T_1358 = _T_838 & io_decode_0_csr[10]; // @[CSR.scala 631:14:freechips.rocketchip.system.DefaultRV32Config.fir@216933.4]
  assign _T_1360 = _T_1358 & _T_1455; // @[CSR.scala 631:32:freechips.rocketchip.system.DefaultRV32Config.fir@216935.4]
  assign _T_1361 = _T_1356 | _T_1360; // @[CSR.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@216936.4]
  assign _T_1363 = _T_846 & _T_1315; // @[CSR.scala 632:17:freechips.rocketchip.system.DefaultRV32Config.fir@216938.4]
  assign _T_1385 = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 643:37:freechips.rocketchip.system.DefaultRV32Config.fir@216967.4]
  assign debugTVec = reg_debug ? _T_1385 : 12'h800; // @[CSR.scala 643:22:freechips.rocketchip.system.DefaultRV32Config.fir@216968.4]
  assign _T_1394 = delegate ? read_stvec : read_mtvec; // @[CSR.scala 651:19:freechips.rocketchip.system.DefaultRV32Config.fir@216978.4]
  assign _T_1396 = {cause[4:0], 2'h0}; // @[CSR.scala 652:59:freechips.rocketchip.system.DefaultRV32Config.fir@216980.4]
  assign _T_1398 = {_T_1394[31:7],_T_1396}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  assign _T_1401 = _T_1394[0] & cause[31]; // @[CSR.scala 654:28:freechips.rocketchip.system.DefaultRV32Config.fir@216985.4]
  assign _T_1403 = cause_lsbs[7:5] == 3'h0; // @[CSR.scala 654:94:freechips.rocketchip.system.DefaultRV32Config.fir@216987.4]
  assign _T_1404 = _T_1401 & _T_1403; // @[CSR.scala 654:55:freechips.rocketchip.system.DefaultRV32Config.fir@216988.4]
  assign _T_1406 = {_T_1394[31:2], 2'h0}; // @[CSR.scala 655:56:freechips.rocketchip.system.DefaultRV32Config.fir@216990.4]
  assign notDebugTVec = _T_1404 ? _T_1398 : _T_1406; // @[CSR.scala 655:8:freechips.rocketchip.system.DefaultRV32Config.fir@216991.4]
  assign tvec = trapToDebug ? {{20'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 657:17:freechips.rocketchip.system.DefaultRV32Config.fir@216992.4]
  assign _T_1411 = &io_status_fs; // @[CSR.scala 663:32:freechips.rocketchip.system.DefaultRV32Config.fir@217002.4]
  assign _T_1412 = &io_status_xs; // @[CSR.scala 663:53:freechips.rocketchip.system.DefaultRV32Config.fir@217003.4]
  assign _T_1413 = _T_1411 | _T_1412; // @[CSR.scala 663:37:freechips.rocketchip.system.DefaultRV32Config.fir@217004.4]
  assign _T_1414 = &io_status_vs; // @[CSR.scala 663:74:freechips.rocketchip.system.DefaultRV32Config.fir@217005.4]
  assign _T_1417 = reg_mstatus_mprv & _T_1455; // @[CSR.scala 668:53:freechips.rocketchip.system.DefaultRV32Config.fir@217013.4]
  assign _T_1421 = insn_ret + insn_call; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217021.4]
  assign _T_1423 = insn_break + io_exception; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217023.4]
  assign _T_1425 = _T_1421 + _T_1423; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@217025.4]
  assign _T_1427 = _T_1425 <= 3'h1; // @[CSR.scala 673:79:freechips.rocketchip.system.DefaultRV32Config.fir@217027.4]
  assign _T_1429 = _T_1427 | reset; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217029.4]
  assign _T_1430 = ~_T_1429; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217030.4]
  assign _T_1432 = insn_wfi & _T_230; // @[CSR.scala 675:18:freechips.rocketchip.system.DefaultRV32Config.fir@217036.4]
  assign _T_1434 = _T_1432 & _T_1455; // @[CSR.scala 675:36:freechips.rocketchip.system.DefaultRV32Config.fir@217038.4]
  assign _GEN_34 = _T_1434 | reg_wfi; // @[CSR.scala 675:51:freechips.rocketchip.system.DefaultRV32Config.fir@217039.4]
  assign _T_1435 = |pending_interrupts; // @[CSR.scala 676:28:freechips.rocketchip.system.DefaultRV32Config.fir@217042.4]
  assign _T_1436 = _T_1435 | io_interrupts_debug; // @[CSR.scala 676:32:freechips.rocketchip.system.DefaultRV32Config.fir@217043.4]
  assign _T_1437 = _T_1436 | exception; // @[CSR.scala 676:55:freechips.rocketchip.system.DefaultRV32Config.fir@217044.4]
  assign _T_1439 = io_retire | exception; // @[CSR.scala 678:22:freechips.rocketchip.system.DefaultRV32Config.fir@217049.4]
  assign _GEN_36 = _T_1439 | reg_singleStepped; // @[CSR.scala 678:36:freechips.rocketchip.system.DefaultRV32Config.fir@217050.4]
  assign _T_1447 = ~reg_singleStepped; // @[CSR.scala 681:10:freechips.rocketchip.system.DefaultRV32Config.fir@217067.4]
  assign _T_1448 = ~io_retire; // @[CSR.scala 681:42:freechips.rocketchip.system.DefaultRV32Config.fir@217068.4]
  assign _T_1449 = _T_1447 | _T_1448; // @[CSR.scala 681:29:freechips.rocketchip.system.DefaultRV32Config.fir@217069.4]
  assign _T_1451 = _T_1449 | reset; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  assign _T_1452 = ~_T_1451; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  assign _T_1453 = ~io_pc; // @[CSR.scala 1091:28:freechips.rocketchip.system.DefaultRV32Config.fir@217077.4]
  assign _T_1454 = _T_1453 | 32'h3; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@217078.4]
  assign epc = ~_T_1454; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@217079.4]
  assign _T_1456 = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 692:86:freechips.rocketchip.system.DefaultRV32Config.fir@217089.10]
  assign _T_1457 = causeIsDebugInt ? 2'h3 : _T_1456; // @[CSR.scala 692:56:freechips.rocketchip.system.DefaultRV32Config.fir@217090.10]
  assign _GEN_38 = _T_1455 | reg_debug; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@217086.8]
  assign _GEN_47 = delegate ? reg_mstatus_sie : reg_mstatus_spie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_48 = delegate ? reg_mstatus_prv : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_54 = delegate ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_55 = delegate ? reg_mstatus_mpp : reg_mstatus_prv; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_56 = delegate & reg_mstatus_mie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@217098.8]
  assign _GEN_66 = trapToDebug ? reg_mstatus_spie : _GEN_47; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_67 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_48; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_72 = trapToDebug ? reg_mstatus_mpie : _GEN_54; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_73 = trapToDebug ? reg_mstatus_mpp : _GEN_55; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_74 = trapToDebug ? reg_mstatus_mie : _GEN_56; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@217084.6]
  assign _GEN_84 = exception ? _GEN_66 : reg_mstatus_spie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign _GEN_85 = exception ? _GEN_67 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign _GEN_90 = exception ? _GEN_72 : reg_mstatus_mpie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign _GEN_91 = exception ? _GEN_73 : reg_mstatus_mpp; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign _GEN_92 = exception ? _GEN_74 : reg_mstatus_mie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  assign _GEN_95 = io_rw_addr[10] ? _T_384 : _T_366; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@217458.8]
  assign _GEN_100 = _T_1780 | _GEN_84; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  assign _GEN_101 = _T_1780 ? 2'h0 : _GEN_85; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  assign _GEN_103 = _T_1780 ? _T_488 : _GEN_95; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@217443.6]
  assign _GEN_110 = insn_ret ? _GEN_101 : _GEN_85; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  assign _GEN_117 = insn_cease | _T_1802; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@217487.4]
  assign _T_1804 = _T_583 ? _T_361 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217505.4]
  assign _T_1805 = _T_584 ? reg_bp_0_address : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217506.4]
  assign _T_1806 = _T_585 ? reg_misa : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217507.4]
  assign _T_1807 = _T_586 ? read_mstatus : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217508.4]
  assign _T_1808 = _T_587 ? read_mtvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217509.4]
  assign _T_1809 = _T_588 ? read_mip : 16'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217510.4]
  assign _T_1810 = _T_589 ? reg_mie : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217511.4]
  assign _T_1811 = _T_590 ? reg_mscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217512.4]
  assign _T_1812 = _T_591 ? _T_366 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217513.4]
  assign _T_1813 = _T_592 ? reg_mtval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217514.4]
  assign _T_1814 = _T_593 ? reg_mcause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217515.4]
  assign _T_1816 = _T_595 ? _T_379 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217517.4]
  assign _T_1817 = _T_596 ? _T_384 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217518.4]
  assign _T_1818 = _T_597 ? reg_dscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217519.4]
  assign _T_1819 = _T_598 ? reg_fflags : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217520.4]
  assign _T_1820 = _T_599 ? reg_frm : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217521.4]
  assign _T_1821 = _T_600 ? read_fcsr : 8'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217522.4]
  assign _T_1822 = _T_601 ? _T_53 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217523.4]
  assign _T_1823 = _T_602 ? _T_45 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217524.4]
  assign _T_1969 = _T_748 ? read_mcounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217670.4]
  assign _T_1970 = _T_749 ? _T_53 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217671.4]
  assign _T_1971 = _T_750 ? _T_45 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217672.4]
  assign _T_1972 = _T_751 ? _T_53[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217673.4]
  assign _T_1973 = _T_752 ? _T_45[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217674.4]
  assign _T_1974 = _T_753 ? _T_53[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217675.4]
  assign _T_1975 = _T_754 ? _T_45[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217676.4]
  assign _T_1976 = _T_755 ? _T_480[31:0] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217677.4]
  assign _T_1977 = _T_756 ? _T_448 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217678.4]
  assign _T_1978 = _T_757 ? _T_447 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217679.4]
  assign _T_1979 = _T_758 ? reg_sscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217680.4]
  assign _T_1980 = _T_759 ? reg_scause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217681.4]
  assign _T_1981 = _T_760 ? reg_stval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217682.4]
  assign _T_1982 = _T_761 ? _T_483 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217683.4]
  assign _T_1983 = _T_762 ? _T_488 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217684.4]
  assign _T_1984 = _T_763 ? read_stvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217685.4]
  assign _T_1985 = _T_764 ? read_scounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217686.4]
  assign _T_1986 = _T_765 ? read_mideleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217687.4]
  assign _T_1987 = _T_766 ? read_medeleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217688.4]
  assign _T_1988 = _T_767 ? _T_512 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217689.4]
  assign _T_1989 = _T_768 ? _T_535 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217690.4]
  assign _T_1992 = _T_771 ? reg_pmp_0_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217693.4]
  assign _T_1993 = _T_772 ? reg_pmp_1_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217694.4]
  assign _T_1994 = _T_773 ? reg_pmp_2_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217695.4]
  assign _T_1995 = _T_774 ? reg_pmp_3_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217696.4]
  assign _T_1996 = _T_775 ? reg_pmp_4_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217697.4]
  assign _T_1997 = _T_776 ? reg_pmp_5_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217698.4]
  assign _T_1998 = _T_777 ? reg_pmp_6_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217699.4]
  assign _T_1999 = _T_778 ? reg_pmp_7_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217700.4]
  assign _T_2008 = _T_787 ? reg_custom_0 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217709.4]
  assign _T_2009 = _T_788 ? 32'h1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217710.4]
  assign _T_2011 = _T_790 ? 32'h20181004 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217712.4]
  assign _T_2013 = _T_1804 | _T_1805; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217714.4]
  assign _T_2014 = _T_2013 | _T_1806; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217715.4]
  assign _T_2015 = _T_2014 | _T_1807; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217716.4]
  assign _T_2016 = _T_2015 | _T_1808; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217717.4]
  assign _GEN_506 = {{16'd0}, _T_1809}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217718.4]
  assign _T_2017 = _T_2016 | _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217718.4]
  assign _T_2018 = _T_2017 | _T_1810; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217719.4]
  assign _T_2019 = _T_2018 | _T_1811; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217720.4]
  assign _T_2020 = _T_2019 | _T_1812; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217721.4]
  assign _T_2021 = _T_2020 | _T_1813; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217722.4]
  assign _T_2022 = _T_2021 | _T_1814; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217723.4]
  assign _T_2024 = _T_2022 | _T_1816; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217725.4]
  assign _T_2025 = _T_2024 | _T_1817; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217726.4]
  assign _T_2026 = _T_2025 | _T_1818; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217727.4]
  assign _GEN_507 = {{27'd0}, _T_1819}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217728.4]
  assign _T_2027 = _T_2026 | _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217728.4]
  assign _GEN_508 = {{29'd0}, _T_1820}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217729.4]
  assign _T_2028 = _T_2027 | _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217729.4]
  assign _GEN_509 = {{24'd0}, _T_1821}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217730.4]
  assign _T_2029 = _T_2028 | _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217730.4]
  assign _GEN_510 = {{32'd0}, _T_2029}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  assign _T_2030 = _GEN_510 | _T_1822; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  assign _T_2031 = _T_2030 | _T_1823; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217732.4]
  assign _GEN_511 = {{32'd0}, _T_1969}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217878.4]
  assign _T_2177 = _T_2031 | _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217878.4]
  assign _T_2178 = _T_2177 | _T_1970; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217879.4]
  assign _T_2179 = _T_2178 | _T_1971; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217880.4]
  assign _GEN_512 = {{32'd0}, _T_1972}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217881.4]
  assign _T_2180 = _T_2179 | _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217881.4]
  assign _GEN_513 = {{32'd0}, _T_1973}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217882.4]
  assign _T_2181 = _T_2180 | _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217882.4]
  assign _GEN_514 = {{32'd0}, _T_1974}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217883.4]
  assign _T_2182 = _T_2181 | _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217883.4]
  assign _GEN_515 = {{32'd0}, _T_1975}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217884.4]
  assign _T_2183 = _T_2182 | _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217884.4]
  assign _GEN_516 = {{32'd0}, _T_1976}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217885.4]
  assign _T_2184 = _T_2183 | _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217885.4]
  assign _GEN_517 = {{32'd0}, _T_1977}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217886.4]
  assign _T_2185 = _T_2184 | _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217886.4]
  assign _GEN_518 = {{32'd0}, _T_1978}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217887.4]
  assign _T_2186 = _T_2185 | _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217887.4]
  assign _GEN_519 = {{32'd0}, _T_1979}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217888.4]
  assign _T_2187 = _T_2186 | _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217888.4]
  assign _GEN_520 = {{32'd0}, _T_1980}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217889.4]
  assign _T_2188 = _T_2187 | _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217889.4]
  assign _GEN_521 = {{32'd0}, _T_1981}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217890.4]
  assign _T_2189 = _T_2188 | _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217890.4]
  assign _GEN_522 = {{32'd0}, _T_1982}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217891.4]
  assign _T_2190 = _T_2189 | _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217891.4]
  assign _GEN_523 = {{32'd0}, _T_1983}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217892.4]
  assign _T_2191 = _T_2190 | _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217892.4]
  assign _GEN_524 = {{32'd0}, _T_1984}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217893.4]
  assign _T_2192 = _T_2191 | _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217893.4]
  assign _GEN_525 = {{32'd0}, _T_1985}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217894.4]
  assign _T_2193 = _T_2192 | _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217894.4]
  assign _GEN_526 = {{32'd0}, _T_1986}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217895.4]
  assign _T_2194 = _T_2193 | _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217895.4]
  assign _GEN_527 = {{32'd0}, _T_1987}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217896.4]
  assign _T_2195 = _T_2194 | _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217896.4]
  assign _GEN_528 = {{32'd0}, _T_1988}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217897.4]
  assign _T_2196 = _T_2195 | _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217897.4]
  assign _GEN_529 = {{32'd0}, _T_1989}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217898.4]
  assign _T_2197 = _T_2196 | _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217898.4]
  assign _GEN_530 = {{34'd0}, _T_1992}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217901.4]
  assign _T_2200 = _T_2197 | _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217901.4]
  assign _GEN_531 = {{34'd0}, _T_1993}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217902.4]
  assign _T_2201 = _T_2200 | _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217902.4]
  assign _GEN_532 = {{34'd0}, _T_1994}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217903.4]
  assign _T_2202 = _T_2201 | _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217903.4]
  assign _GEN_533 = {{34'd0}, _T_1995}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217904.4]
  assign _T_2203 = _T_2202 | _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217904.4]
  assign _GEN_534 = {{34'd0}, _T_1996}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217905.4]
  assign _T_2204 = _T_2203 | _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217905.4]
  assign _GEN_535 = {{34'd0}, _T_1997}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217906.4]
  assign _T_2205 = _T_2204 | _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217906.4]
  assign _GEN_536 = {{34'd0}, _T_1998}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217907.4]
  assign _T_2206 = _T_2205 | _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217907.4]
  assign _GEN_537 = {{34'd0}, _T_1999}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217908.4]
  assign _T_2207 = _T_2206 | _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217908.4]
  assign _GEN_538 = {{32'd0}, _T_2008}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217917.4]
  assign _T_2216 = _T_2207 | _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217917.4]
  assign _GEN_539 = {{32'd0}, _T_2009}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217918.4]
  assign _T_2217 = _T_2216 | _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217918.4]
  assign _GEN_540 = {{32'd0}, _T_2011}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217920.4]
  assign _T_2219 = _T_2217 | _GEN_540; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@217920.4]
  assign _T_2223 = io_rw_cmd == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217927.6]
  assign _T_2224 = io_rw_cmd == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217928.6]
  assign _T_2225 = io_rw_cmd == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@217929.6]
  assign _T_4729 = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 797:30:freechips.rocketchip.system.DefaultRV32Config.fir@221276.6]
  assign _GEN_118 = io_fcsr_flags_valid ? _T_4729 : reg_fflags; // @[CSR.scala 796:30:freechips.rocketchip.system.DefaultRV32Config.fir@221275.4]
  assign _T_4733 = _T_2224 | _T_2225; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221283.4]
  assign csr_wen = _T_4733 | _T_2223; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221284.4]
  assign _T_4747 = {{71'd0}, wdata}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@221302.8 :freechips.rocketchip.system.DefaultRV32Config.fir@221304.8]
  assign _T_4779 = _T_4747[12:11] == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@221370.8]
  assign _T_4781 = |_T_4747[14:13]; // @[CSR.scala 1095:73:freechips.rocketchip.system.DefaultRV32Config.fir@221381.8]
  assign _GEN_124 = _T_586 ? {{1'd0}, _T_4747[8]} : _GEN_110; // @[CSR.scala 811:39:freechips.rocketchip.system.DefaultRV32Config.fir@221299.6]
  assign _T_4790 = ~wdata; // @[CSR.scala 843:25:freechips.rocketchip.system.DefaultRV32Config.fir@221395.10]
  assign _T_4791 = ~wdata[5]; // @[CSR.scala 843:35:freechips.rocketchip.system.DefaultRV32Config.fir@221396.10]
  assign _T_4792 = {_T_4791, 3'h0}; // @[CSR.scala 843:38:freechips.rocketchip.system.DefaultRV32Config.fir@221397.10]
  assign _GEN_541 = {{28'd0}, _T_4792}; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@221398.10]
  assign _T_4793 = _T_4790 | _GEN_541; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@221398.10]
  assign _T_4794 = ~_T_4793; // @[CSR.scala 843:23:freechips.rocketchip.system.DefaultRV32Config.fir@221399.10]
  assign _T_4795 = _T_4794 & 32'h1021; // @[CSR.scala 843:55:freechips.rocketchip.system.DefaultRV32Config.fir@221400.10]
  assign _T_4797 = reg_misa & 32'hffffefde; // @[CSR.scala 843:73:freechips.rocketchip.system.DefaultRV32Config.fir@221402.10]
  assign _T_4798 = _T_4795 | _T_4797; // @[CSR.scala 843:62:freechips.rocketchip.system.DefaultRV32Config.fir@221403.10]
  assign _T_4813 = {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 851:59:freechips.rocketchip.system.DefaultRV32Config.fir@221422.8]
  assign _T_4815 = io_rw_cmd[1] ? _T_4813 : 16'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@221424.8]
  assign _GEN_542 = {{16'd0}, _T_4815}; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221425.8]
  assign _T_4816 = _GEN_542 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221425.8]
  assign _T_4821 = _T_4816 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@221430.8]
  assign _T_4840 = wdata & 32'haaa; // @[CSR.scala 858:59:freechips.rocketchip.system.DefaultRV32Config.fir@221473.8]
  assign _T_4842 = _T_4790 | 32'h3; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@221478.8]
  assign _T_4843 = ~_T_4842; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@221479.8]
  assign _T_4844 = wdata & 32'h8000000f; // @[CSR.scala 863:62:freechips.rocketchip.system.DefaultRV32Config.fir@221489.8]
  assign _T_4847 = {_T_53[63:32],wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221498.8]
  assign _GEN_145 = _T_601 ? _T_4847 : {{57'd0}, _T_48}; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@221496.6]
  assign _T_4851 = {wdata,_T_53[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221506.8]
  assign _GEN_147 = _T_751 ? _T_4851 : _GEN_145; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@221503.6]
  assign _T_4854 = {_T_45[63:32],wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221513.8]
  assign _GEN_149 = _T_602 ? _T_4854 : {{57'd0}, _T_40}; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@221511.6]
  assign _T_4858 = {wdata,_T_45[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@221521.8]
  assign _GEN_151 = _T_752 ? _T_4858 : _GEN_149; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@221518.6]
  assign _GEN_154 = _T_598 ? wdata : {{27'd0}, _GEN_118}; // @[CSR.scala 876:40:freechips.rocketchip.system.DefaultRV32Config.fir@221526.6]
  assign _GEN_156 = _T_599 ? wdata : {{29'd0}, reg_frm}; // @[CSR.scala 877:40:freechips.rocketchip.system.DefaultRV32Config.fir@221530.6]
  assign _GEN_158 = _T_600 ? wdata : _GEN_154; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@221534.6]
  assign _GEN_159 = _T_600 ? {{5'd0}, wdata[31:5]} : _GEN_156; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@221534.6]
  assign _T_4877 = wdata[1:0] == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@221578.8]
  assign _GEN_169 = _T_755 ? {{1'd0}, _T_4747[8]} : _GEN_124; // @[CSR.scala 897:41:freechips.rocketchip.system.DefaultRV32Config.fir@221591.6]
  assign _T_4918 = ~read_mideleg; // @[CSR.scala 911:54:freechips.rocketchip.system.DefaultRV32Config.fir@221671.8]
  assign _T_4919 = _GEN_497 & _T_4918; // @[CSR.scala 911:52:freechips.rocketchip.system.DefaultRV32Config.fir@221672.8]
  assign _T_4920 = wdata & read_mideleg; // @[CSR.scala 911:78:freechips.rocketchip.system.DefaultRV32Config.fir@221673.8]
  assign _T_4921 = _T_4919 | _T_4920; // @[CSR.scala 911:69:freechips.rocketchip.system.DefaultRV32Config.fir@221674.8]
  assign _T_4945 = ~wdata[31]; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@221726.8]
  assign _T_4947 = _T_4945 | wdata[31]; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@221728.8]
  assign _T_4951 = reg_mie & _T_4918; // @[CSR.scala 925:64:freechips.rocketchip.system.DefaultRV32Config.fir@221738.8]
  assign _T_4953 = _T_4951 | _T_4920; // @[CSR.scala 925:81:freechips.rocketchip.system.DefaultRV32Config.fir@221740.8]
  assign _T_4957 = wdata & 32'h8000001f; // @[CSR.scala 929:64:freechips.rocketchip.system.DefaultRV32Config.fir@221756.8]
  assign _T_4960 = ~reg_bp_0_control_dmode; // @[CSR.scala 942:37:freechips.rocketchip.system.DefaultRV32Config.fir@221779.6]
  assign _T_4961 = _T_4960 | reg_debug; // @[CSR.scala 942:55:freechips.rocketchip.system.DefaultRV32Config.fir@221780.6]
  assign _T_4995 = io_rw_cmd[1] ? _T_361 : 32'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@221838.10]
  assign _T_4996 = _T_4995 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@221839.10]
  assign _T_5001 = _T_4996 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@221844.10]
  assign _T_5019 = _T_5001[27] & reg_debug; // @[CSR.scala 952:38:freechips.rocketchip.system.DefaultRV32Config.fir@221880.10]
  assign _GEN_191 = _T_5019 & _T_5001[12]; // @[CSR.scala 954:51:freechips.rocketchip.system.DefaultRV32Config.fir@221887.10]
  assign _T_5103 = ~reg_pmp_0_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222026.6]
  assign _T_5104 = _T_767 & _T_5103; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222027.6]
  assign _T_5114 = wdata[1] & wdata[0]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222048.8]
  assign _T_5116 = ~reg_pmp_1_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222052.6]
  assign _T_5118 = _T_5116 & reg_pmp_1_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222054.6]
  assign _T_5119 = reg_pmp_1_cfg_l & _T_5118; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222055.6]
  assign _T_5120 = reg_pmp_0_cfg_l | _T_5119; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222056.6]
  assign _T_5121 = ~_T_5120; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222057.6]
  assign _T_5122 = _T_771 & _T_5121; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222058.6]
  assign _GEN_262 = _T_5122 ? wdata : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222059.6]
  assign _T_5123 = ~reg_pmp_1_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222062.6]
  assign _T_5124 = _T_767 & _T_5123; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222063.6]
  assign _T_5134 = wdata[9] & wdata[8]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222084.8]
  assign _T_5136 = ~reg_pmp_2_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222088.6]
  assign _T_5138 = _T_5136 & reg_pmp_2_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222090.6]
  assign _T_5139 = reg_pmp_2_cfg_l & _T_5138; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222091.6]
  assign _T_5140 = reg_pmp_1_cfg_l | _T_5139; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222092.6]
  assign _T_5141 = ~_T_5140; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222093.6]
  assign _T_5142 = _T_772 & _T_5141; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222094.6]
  assign _GEN_269 = _T_5142 ? wdata : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222095.6]
  assign _T_5143 = ~reg_pmp_2_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222098.6]
  assign _T_5144 = _T_767 & _T_5143; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222099.6]
  assign _T_5154 = wdata[17] & wdata[16]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222120.8]
  assign _T_5156 = ~reg_pmp_3_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222124.6]
  assign _T_5158 = _T_5156 & reg_pmp_3_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222126.6]
  assign _T_5159 = reg_pmp_3_cfg_l & _T_5158; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222127.6]
  assign _T_5160 = reg_pmp_2_cfg_l | _T_5159; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222128.6]
  assign _T_5161 = ~_T_5160; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222129.6]
  assign _T_5162 = _T_773 & _T_5161; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222130.6]
  assign _GEN_276 = _T_5162 ? wdata : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222131.6]
  assign _T_5163 = ~reg_pmp_3_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222134.6]
  assign _T_5164 = _T_767 & _T_5163; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222135.6]
  assign _T_5174 = wdata[25] & wdata[24]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@222156.8]
  assign _T_5176 = ~reg_pmp_4_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222160.6]
  assign _T_5178 = _T_5176 & reg_pmp_4_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222162.6]
  assign _T_5179 = reg_pmp_4_cfg_l & _T_5178; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222163.6]
  assign _T_5180 = reg_pmp_3_cfg_l | _T_5179; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222164.6]
  assign _T_5181 = ~_T_5180; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222165.6]
  assign _T_5182 = _T_774 & _T_5181; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222166.6]
  assign _GEN_283 = _T_5182 ? wdata : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222167.6]
  assign _T_5183 = ~reg_pmp_4_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222170.6]
  assign _T_5184 = _T_768 & _T_5183; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222171.6]
  assign _T_5196 = ~reg_pmp_5_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222196.6]
  assign _T_5198 = _T_5196 & reg_pmp_5_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222198.6]
  assign _T_5199 = reg_pmp_5_cfg_l & _T_5198; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222199.6]
  assign _T_5200 = reg_pmp_4_cfg_l | _T_5199; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222200.6]
  assign _T_5201 = ~_T_5200; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222201.6]
  assign _T_5202 = _T_775 & _T_5201; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222202.6]
  assign _GEN_290 = _T_5202 ? wdata : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222203.6]
  assign _T_5203 = ~reg_pmp_5_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222206.6]
  assign _T_5204 = _T_768 & _T_5203; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222207.6]
  assign _T_5216 = ~reg_pmp_6_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222232.6]
  assign _T_5218 = _T_5216 & reg_pmp_6_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222234.6]
  assign _T_5219 = reg_pmp_6_cfg_l & _T_5218; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222235.6]
  assign _T_5220 = reg_pmp_5_cfg_l | _T_5219; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222236.6]
  assign _T_5221 = ~_T_5220; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222237.6]
  assign _T_5222 = _T_776 & _T_5221; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222238.6]
  assign _GEN_297 = _T_5222 ? wdata : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222239.6]
  assign _T_5223 = ~reg_pmp_6_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222242.6]
  assign _T_5224 = _T_768 & _T_5223; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222243.6]
  assign _T_5236 = ~reg_pmp_7_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@222268.6]
  assign _T_5238 = _T_5236 & reg_pmp_7_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@222270.6]
  assign _T_5239 = reg_pmp_7_cfg_l & _T_5238; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@222271.6]
  assign _T_5240 = reg_pmp_6_cfg_l | _T_5239; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222272.6]
  assign _T_5241 = ~_T_5240; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222273.6]
  assign _T_5242 = _T_777 & _T_5241; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222274.6]
  assign _GEN_304 = _T_5242 ? wdata : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222275.6]
  assign _T_5243 = ~reg_pmp_7_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@222278.6]
  assign _T_5244 = _T_768 & _T_5243; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@222279.6]
  assign _T_5260 = reg_pmp_7_cfg_l | _T_5239; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@222308.6]
  assign _T_5261 = ~_T_5260; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@222309.6]
  assign _T_5262 = _T_778 & _T_5261; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@222310.6]
  assign _GEN_311 = _T_5262 ? wdata : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@222311.6]
  assign _T_5263 = wdata & 32'h208; // @[CSR.scala 978:23:freechips.rocketchip.system.DefaultRV32Config.fir@222315.8]
  assign _T_5265 = reg_custom_0 & 32'hfffffdf7; // @[CSR.scala 978:38:freechips.rocketchip.system.DefaultRV32Config.fir@222317.8]
  assign _T_5266 = _T_5263 | _T_5265; // @[CSR.scala 978:31:freechips.rocketchip.system.DefaultRV32Config.fir@222318.8]
  assign _GEN_324 = csr_wen ? _GEN_169 : _GEN_110; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_344 = csr_wen ? _GEN_147 : {{57'd0}, _T_48}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_346 = csr_wen ? _GEN_151 : {{57'd0}, _T_40}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_349 = csr_wen ? _GEN_158 : {{27'd0}, _GEN_118}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_350 = csr_wen ? _GEN_159 : {{29'd0}, reg_frm}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_408 = csr_wen ? _GEN_262 : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_415 = csr_wen ? _GEN_269 : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_422 = csr_wen ? _GEN_276 : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_429 = csr_wen ? _GEN_283 : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_436 = csr_wen ? _GEN_290 : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_443 = csr_wen ? _GEN_297 : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_450 = csr_wen ? _GEN_304 : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _GEN_457 = csr_wen ? _GEN_311 : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@221298.4]
  assign _T_5292 = io_retire > 1'h0; // @[CSR.scala 1049:26:freechips.rocketchip.system.DefaultRV32Config.fir@222447.4]
  assign io_rw_rdata = _T_2219[31:0]; // @[CSR.scala 768:15:freechips.rocketchip.system.DefaultRV32Config.fir@217923.4]
  assign io_decode_0_fp_illegal = _T_877 | _T_879; // @[CSR.scala 615:23:freechips.rocketchip.system.DefaultRV32Config.fir@216449.4]
  assign io_decode_0_fp_csr = _T_885 == 12'h0; // @[CSR.scala 617:19:freechips.rocketchip.system.DefaultRV32Config.fir@216459.4]
  assign io_decode_0_read_illegal = _T_1334 | _T_1337; // @[CSR.scala 619:25:freechips.rocketchip.system.DefaultRV32Config.fir@216911.4]
  assign io_decode_0_write_illegal = &io_decode_0_csr[11:10]; // @[CSR.scala 626:26:freechips.rocketchip.system.DefaultRV32Config.fir@216914.4]
  assign io_decode_0_write_flush = ~_T_1347; // @[CSR.scala 627:24:freechips.rocketchip.system.DefaultRV32Config.fir@216923.4]
  assign io_decode_0_system_illegal = _T_1361 | _T_1363; // @[CSR.scala 628:27:freechips.rocketchip.system.DefaultRV32Config.fir@216940.4]
  assign io_csr_stall = reg_wfi | io_status_cease; // @[CSR.scala 758:16:freechips.rocketchip.system.DefaultRV32Config.fir@217485.4]
  assign io_eret = _T_1420 | insn_ret; // @[CSR.scala 660:11:freechips.rocketchip.system.DefaultRV32Config.fir@216997.4]
  assign io_singleStep = reg_dcsr_step & _T_1455; // @[CSR.scala 661:17:freechips.rocketchip.system.DefaultRV32Config.fir@217000.4]
  assign io_status_debug = reg_debug; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 664:19:freechips.rocketchip.system.DefaultRV32Config.fir@217008.4]
  assign io_status_cease = _T_1802; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 759:19:freechips.rocketchip.system.DefaultRV32Config.fir@217490.4]
  assign io_status_wfi = reg_wfi; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 760:17:freechips.rocketchip.system.DefaultRV32Config.fir@217491.4]
  assign io_status_isa = reg_misa; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 665:17:freechips.rocketchip.system.DefaultRV32Config.fir@217009.4]
  assign io_status_dprv = _T_1419; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 668:18:freechips.rocketchip.system.DefaultRV32Config.fir@217017.4]
  assign io_status_prv = reg_mstatus_prv; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_sd = _T_1413 | _T_1414; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 663:16:freechips.rocketchip.system.DefaultRV32Config.fir@217007.4]
  assign io_status_zero2 = 27'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_sxl = 2'h1; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 667:17:freechips.rocketchip.system.DefaultRV32Config.fir@217011.4]
  assign io_status_uxl = 2'h1; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 666:17:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  assign io_status_sd_rv32 = io_status_sd; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4 CSR.scala 670:23:freechips.rocketchip.system.DefaultRV32Config.fir@217018.4]
  assign io_status_zero1 = 8'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_tsr = reg_mstatus_tsr; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_tw = reg_mstatus_tw; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_tvm = reg_mstatus_tvm; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_mxr = reg_mstatus_mxr; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_sum = reg_mstatus_sum; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_mprv = reg_mstatus_mprv; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_xs = 2'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_fs = reg_mstatus_fs; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_mpp = reg_mstatus_mpp; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_vs = 2'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_spp = reg_mstatus_spp; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_mpie = reg_mstatus_mpie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_hpie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_spie = reg_mstatus_spie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_upie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_mie = reg_mstatus_mie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_hie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_sie = reg_mstatus_sie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_status_uie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@217001.4]
  assign io_ptbr_mode = reg_satp_mode; // @[CSR.scala 659:11:freechips.rocketchip.system.DefaultRV32Config.fir@216994.4]
  assign io_ptbr_ppn = reg_satp_ppn; // @[CSR.scala 659:11:freechips.rocketchip.system.DefaultRV32Config.fir@216994.4]
  assign io_evec = insn_ret ? _GEN_103 : tvec; // @[CSR.scala 658:11:freechips.rocketchip.system.DefaultRV32Config.fir@216993.4 CSR.scala 743:15:freechips.rocketchip.system.DefaultRV32Config.fir@217453.8 CSR.scala 747:15:freechips.rocketchip.system.DefaultRV32Config.fir@217466.10 CSR.scala 753:15:freechips.rocketchip.system.DefaultRV32Config.fir@217480.10]
  assign io_time = _T_53[31:0]; // @[CSR.scala 757:11:freechips.rocketchip.system.DefaultRV32Config.fir@217483.4]
  assign io_fcsr_rm = reg_frm; // @[CSR.scala 795:14:freechips.rocketchip.system.DefaultRV32Config.fir@221274.4]
  assign io_interrupt = _T_232 & _T_234; // @[CSR.scala 438:16:freechips.rocketchip.system.DefaultRV32Config.fir@215657.4]
  assign io_interrupt_cause = 32'h80000000 + _GEN_498; // @[CSR.scala 439:22:freechips.rocketchip.system.DefaultRV32Config.fir@215658.4]
  assign io_bp_0_control_action = reg_bp_0_control_action; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_m = reg_bp_0_control_m; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_s = reg_bp_0_control_s; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_u = reg_bp_0_control_u; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_x = reg_bp_0_control_x; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_w = reg_bp_0_control_w; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_control_r = reg_bp_0_control_r; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_bp_0_address = reg_bp_0_address; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@215659.4]
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_addr = reg_pmp_0_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_0_mask = _T_244[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215796.4]
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_addr = reg_pmp_1_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_1_mask = _T_253[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215797.4]
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_addr = reg_pmp_2_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_2_mask = _T_262[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215798.4]
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_addr = reg_pmp_3_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_3_mask = _T_271[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215799.4]
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_addr = reg_pmp_4_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_4_mask = _T_280[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215800.4]
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_addr = reg_pmp_5_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_5_mask = _T_289[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215801.4]
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_addr = reg_pmp_6_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_6_mask = _T_298[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215802.4]
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_addr = reg_pmp_7_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_pmp_7_mask = _T_307[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@215803.4]
  assign io_trace_0_valid = _T_5292 | io_trace_0_exception; // @[CSR.scala 1049:13:freechips.rocketchip.system.DefaultRV32Config.fir@222449.4]
  assign io_trace_0_iaddr = io_pc; // @[CSR.scala 1051:13:freechips.rocketchip.system.DefaultRV32Config.fir@222451.4]
  assign io_trace_0_insn = io_inst_0; // @[CSR.scala 1050:12:freechips.rocketchip.system.DefaultRV32Config.fir@222450.4]
  assign io_trace_0_exception = _T_1420 | io_exception; // @[CSR.scala 1048:17:freechips.rocketchip.system.DefaultRV32Config.fir@222446.4]
  assign io_customCSRs_0_value = reg_custom_0; // @[CSR.scala 765:14:freechips.rocketchip.system.DefaultRV32Config.fir@217494.4]
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
  reg_mstatus_prv = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_tsr = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_mstatus_tw = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_mstatus_tvm = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_mstatus_mxr = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  reg_mstatus_sum = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  reg_mstatus_mprv = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  reg_mstatus_fs = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  reg_mstatus_mpp = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  reg_mstatus_spp = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_mstatus_spie = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_mstatus_sie = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_dcsr_prv = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  reg_singleStepped = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_dcsr_ebreakm = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  reg_dcsr_ebreaks = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  reg_dcsr_ebreaku = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  reg_debug = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  reg_mideleg = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_medeleg = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_dcsr_cause = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  reg_dcsr_step = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  reg_dpc = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  reg_dscratch = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  reg_bp_0_control_dmode = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  reg_bp_0_control_action = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  reg_bp_0_control_tmatch = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  reg_bp_0_control_m = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  reg_bp_0_control_s = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  reg_bp_0_control_u = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  reg_bp_0_control_x = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  reg_bp_0_control_w = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  reg_bp_0_control_r = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  reg_bp_0_address = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  reg_pmp_0_cfg_l = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  reg_pmp_0_cfg_a = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  reg_pmp_0_cfg_x = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  reg_pmp_0_cfg_w = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  reg_pmp_0_cfg_r = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  reg_pmp_0_addr = _RAND_41[29:0];
  _RAND_42 = {1{`RANDOM}};
  reg_pmp_1_cfg_l = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  reg_pmp_1_cfg_a = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  reg_pmp_1_cfg_x = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  reg_pmp_1_cfg_w = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  reg_pmp_1_cfg_r = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  reg_pmp_1_addr = _RAND_47[29:0];
  _RAND_48 = {1{`RANDOM}};
  reg_pmp_2_cfg_l = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  reg_pmp_2_cfg_a = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  reg_pmp_2_cfg_x = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  reg_pmp_2_cfg_w = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  reg_pmp_2_cfg_r = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  reg_pmp_2_addr = _RAND_53[29:0];
  _RAND_54 = {1{`RANDOM}};
  reg_pmp_3_cfg_l = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  reg_pmp_3_cfg_a = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  reg_pmp_3_cfg_x = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  reg_pmp_3_cfg_w = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  reg_pmp_3_cfg_r = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  reg_pmp_3_addr = _RAND_59[29:0];
  _RAND_60 = {1{`RANDOM}};
  reg_pmp_4_cfg_l = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  reg_pmp_4_cfg_a = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  reg_pmp_4_cfg_x = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  reg_pmp_4_cfg_w = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  reg_pmp_4_cfg_r = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  reg_pmp_4_addr = _RAND_65[29:0];
  _RAND_66 = {1{`RANDOM}};
  reg_pmp_5_cfg_l = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  reg_pmp_5_cfg_a = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  reg_pmp_5_cfg_x = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  reg_pmp_5_cfg_w = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  reg_pmp_5_cfg_r = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  reg_pmp_5_addr = _RAND_71[29:0];
  _RAND_72 = {1{`RANDOM}};
  reg_pmp_6_cfg_l = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  reg_pmp_6_cfg_a = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  reg_pmp_6_cfg_x = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  reg_pmp_6_cfg_w = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  reg_pmp_6_cfg_r = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  reg_pmp_6_addr = _RAND_77[29:0];
  _RAND_78 = {1{`RANDOM}};
  reg_pmp_7_cfg_l = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  reg_pmp_7_cfg_a = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  reg_pmp_7_cfg_x = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  reg_pmp_7_cfg_w = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  reg_pmp_7_cfg_r = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  reg_pmp_7_addr = _RAND_83[29:0];
  _RAND_84 = {1{`RANDOM}};
  reg_mie = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  reg_mip_seip = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  reg_mip_stip = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  reg_mip_ssip = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  reg_mepc = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  reg_mcause = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  reg_mtval = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  reg_mscratch = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  reg_mtvec = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  reg_mcounteren = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  reg_scounteren = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  reg_sepc = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  reg_scause = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  reg_stval = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  reg_sscratch = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  reg_stvec = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  reg_satp_mode = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  reg_satp_ppn = _RAND_101[21:0];
  _RAND_102 = {1{`RANDOM}};
  reg_wfi = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  reg_fflags = _RAND_103[4:0];
  _RAND_104 = {1{`RANDOM}};
  reg_frm = _RAND_104[2:0];
  _RAND_105 = {1{`RANDOM}};
  _T_39 = _RAND_105[5:0];
  _RAND_106 = {2{`RANDOM}};
  _T_41 = _RAND_106[57:0];
  _RAND_107 = {1{`RANDOM}};
  _T_47 = _RAND_107[5:0];
  _RAND_108 = {2{`RANDOM}};
  _T_49 = _RAND_108[57:0];
  _RAND_109 = {1{`RANDOM}};
  reg_misa = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  reg_custom_0 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  _T_1419 = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  _T_1802 = _RAND_112[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_prv <= 2'h3;
    end else if (_T_1) begin
      reg_mstatus_prv <= 2'h0;
    end else if (insn_ret) begin
      if (_T_1780) begin
        reg_mstatus_prv <= {{1'd0}, reg_mstatus_spp};
      end else if (io_rw_addr[10]) begin
        reg_mstatus_prv <= reg_dcsr_prv;
      end else begin
        reg_mstatus_prv <= reg_mstatus_mpp;
      end
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1455) begin
          reg_mstatus_prv <= 2'h3;
        end
      end else if (delegate) begin
        reg_mstatus_prv <= 2'h1;
      end else begin
        reg_mstatus_prv <= 2'h3;
      end
    end
    if (reset) begin
      reg_mstatus_tsr <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_tsr <= _T_4747[22];
      end
    end
    if (reset) begin
      reg_mstatus_tw <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_tw <= _T_4747[21];
      end
    end
    if (reset) begin
      reg_mstatus_tvm <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_tvm <= _T_4747[20];
      end
    end
    if (reset) begin
      reg_mstatus_mxr <= 1'h0;
    end else if (csr_wen) begin
      if (_T_755) begin
        reg_mstatus_mxr <= _T_4747[19];
      end else if (_T_586) begin
        reg_mstatus_mxr <= _T_4747[19];
      end
    end
    if (reset) begin
      reg_mstatus_sum <= 1'h0;
    end else if (csr_wen) begin
      if (_T_755) begin
        reg_mstatus_sum <= _T_4747[18];
      end else if (_T_586) begin
        reg_mstatus_sum <= _T_4747[18];
      end
    end
    if (reset) begin
      reg_mstatus_mprv <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_mprv <= _T_4747[17];
      end
    end
    if (reset) begin
      reg_mstatus_fs <= 2'h0;
    end else if (csr_wen) begin
      if (_T_755) begin
        if (_T_4781) begin
          reg_mstatus_fs <= 2'h3;
        end else begin
          reg_mstatus_fs <= 2'h0;
        end
      end else if (_T_586) begin
        if (_T_4781) begin
          reg_mstatus_fs <= 2'h3;
        end else begin
          reg_mstatus_fs <= 2'h0;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mpp <= 2'h3;
    end else if (csr_wen) begin
      if (_T_586) begin
        if (_T_4779) begin
          reg_mstatus_mpp <= 2'h0;
        end else begin
          reg_mstatus_mpp <= _T_4747[12:11];
        end
      end else if (insn_ret) begin
        if (_T_1780) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpp <= reg_mstatus_prv;
              end
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpp <= reg_mstatus_prv;
              end
            end
          end
        end else begin
          reg_mstatus_mpp <= 2'h0;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mstatus_mpp <= reg_mstatus_prv;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1780) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mstatus_mpp <= reg_mstatus_prv;
            end
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mpp <= _GEN_91;
      end else begin
        reg_mstatus_mpp <= 2'h0;
      end
    end else begin
      reg_mstatus_mpp <= _GEN_91;
    end
    if (reset) begin
      reg_mstatus_spp <= 1'h0;
    end else begin
      reg_mstatus_spp <= _GEN_324[0];
    end
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_mpie <= _T_4747[7];
      end else if (insn_ret) begin
        if (_T_1780) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end
        end else begin
          reg_mstatus_mpie <= 1'h1;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mstatus_mpie <= reg_mstatus_mie;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1780) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mstatus_mpie <= reg_mstatus_mie;
            end
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mpie <= _GEN_90;
      end else begin
        reg_mstatus_mpie <= 1'h1;
      end
    end else begin
      reg_mstatus_mpie <= _GEN_90;
    end
    if (reset) begin
      reg_mstatus_spie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_755) begin
        reg_mstatus_spie <= _T_4747[5];
      end else if (_T_586) begin
        reg_mstatus_spie <= _T_4747[5];
      end else if (insn_ret) begin
        reg_mstatus_spie <= _GEN_100;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_spie <= reg_mstatus_sie;
          end
        end
      end
    end else if (insn_ret) begin
      reg_mstatus_spie <= _GEN_100;
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_mstatus_spie <= reg_mstatus_sie;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_586) begin
        reg_mstatus_mie <= _T_4747[3];
      end else if (insn_ret) begin
        if (_T_1780) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mie <= _GEN_56;
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mie <= _GEN_56;
            end
          end
        end else begin
          reg_mstatus_mie <= reg_mstatus_mpie;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          reg_mstatus_mie <= _GEN_56;
        end
      end
    end else if (insn_ret) begin
      if (_T_1780) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            reg_mstatus_mie <= _GEN_56;
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mie <= _GEN_92;
      end else begin
        reg_mstatus_mie <= reg_mstatus_mpie;
      end
    end else begin
      reg_mstatus_mie <= _GEN_92;
    end
    if (reset) begin
      reg_mstatus_sie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_755) begin
        reg_mstatus_sie <= _T_4747[1];
      end else if (_T_586) begin
        reg_mstatus_sie <= _T_4747[1];
      end else if (insn_ret) begin
        if (_T_1780) begin
          reg_mstatus_sie <= reg_mstatus_spie;
        end else if (exception) begin
          if (!(trapToDebug)) begin
            if (delegate) begin
              reg_mstatus_sie <= 1'h0;
            end
          end
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_sie <= 1'h0;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1780) begin
        reg_mstatus_sie <= reg_mstatus_spie;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_sie <= 1'h0;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_mstatus_sie <= 1'h0;
        end
      end
    end
    if (reset) begin
      reg_dcsr_prv <= 2'h3;
    end else if (csr_wen) begin
      if (_T_595) begin
        if (_T_4877) begin
          reg_dcsr_prv <= 2'h0;
        end else begin
          reg_dcsr_prv <= wdata[1:0];
        end
      end else if (exception) begin
        if (trapToDebug) begin
          if (_T_1455) begin
            reg_dcsr_prv <= reg_mstatus_prv;
          end
        end
      end
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1455) begin
          reg_dcsr_prv <= reg_mstatus_prv;
        end
      end
    end
    if (_T_230) begin
      reg_singleStepped <= 1'h0;
    end else begin
      reg_singleStepped <= _GEN_36;
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else if (csr_wen) begin
      if (_T_595) begin
        reg_dcsr_ebreakm <= wdata[15];
      end
    end
    if (reset) begin
      reg_dcsr_ebreaks <= 1'h0;
    end else if (csr_wen) begin
      if (_T_595) begin
        reg_dcsr_ebreaks <= wdata[13];
      end
    end
    if (reset) begin
      reg_dcsr_ebreaku <= 1'h0;
    end else if (csr_wen) begin
      if (_T_595) begin
        reg_dcsr_ebreaku <= wdata[12];
      end
    end
    if (reset) begin
      reg_debug <= 1'h0;
    end else if (insn_ret) begin
      if (_T_1780) begin
        if (exception) begin
          if (trapToDebug) begin
            reg_debug <= _GEN_38;
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_debug <= 1'h0;
      end else if (exception) begin
        if (trapToDebug) begin
          reg_debug <= _GEN_38;
        end
      end
    end else if (exception) begin
      if (trapToDebug) begin
        reg_debug <= _GEN_38;
      end
    end
    if (csr_wen) begin
      if (_T_765) begin
        reg_mideleg <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_766) begin
        reg_medeleg <= wdata;
      end
    end
    if (reset) begin
      reg_dcsr_cause <= 3'h0;
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1455) begin
          if (reg_singleStepped) begin
            reg_dcsr_cause <= 3'h4;
          end else begin
            reg_dcsr_cause <= {{1'd0}, _T_1457};
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else if (csr_wen) begin
      if (_T_595) begin
        reg_dcsr_step <= wdata[2];
      end
    end
    if (csr_wen) begin
      if (_T_596) begin
        reg_dpc <= _T_4843;
      end else if (exception) begin
        if (trapToDebug) begin
          if (_T_1455) begin
            reg_dpc <= epc;
          end
        end
      end
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1455) begin
          reg_dpc <= epc;
        end
      end
    end
    if (csr_wen) begin
      if (_T_597) begin
        reg_dscratch <= wdata;
      end
    end
    if (reset) begin
      reg_bp_0_control_dmode <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_dmode <= _T_5019;
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_action <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_action <= _GEN_191;
        end
      end
    end
    if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_tmatch <= wdata[8:7];
        end
      end
    end
    if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_m <= wdata[6];
        end
      end
    end
    if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_s <= wdata[4];
        end
      end
    end
    if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_u <= wdata[3];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_x <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_x <= wdata[2];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_w <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_w <= wdata[1];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_r <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4961) begin
        if (_T_583) begin
          reg_bp_0_control_r <= wdata[0];
        end
      end
    end
    if (csr_wen) begin
      if (_T_4961) begin
        if (_T_584) begin
          reg_bp_0_address <= wdata;
        end
      end
    end
    if (reset) begin
      reg_pmp_0_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5104) begin
        reg_pmp_0_cfg_l <= wdata[7];
      end
    end
    if (reset) begin
      reg_pmp_0_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5104) begin
        reg_pmp_0_cfg_a <= wdata[4:3];
      end
    end
    if (csr_wen) begin
      if (_T_5104) begin
        reg_pmp_0_cfg_x <= wdata[2];
      end
    end
    if (csr_wen) begin
      if (_T_5104) begin
        reg_pmp_0_cfg_w <= _T_5114;
      end
    end
    if (csr_wen) begin
      if (_T_5104) begin
        reg_pmp_0_cfg_r <= wdata[0];
      end
    end
    reg_pmp_0_addr <= _GEN_408[29:0];
    if (reset) begin
      reg_pmp_1_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5124) begin
        reg_pmp_1_cfg_l <= wdata[15];
      end
    end
    if (reset) begin
      reg_pmp_1_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5124) begin
        reg_pmp_1_cfg_a <= wdata[12:11];
      end
    end
    if (csr_wen) begin
      if (_T_5124) begin
        reg_pmp_1_cfg_x <= wdata[10];
      end
    end
    if (csr_wen) begin
      if (_T_5124) begin
        reg_pmp_1_cfg_w <= _T_5134;
      end
    end
    if (csr_wen) begin
      if (_T_5124) begin
        reg_pmp_1_cfg_r <= wdata[8];
      end
    end
    reg_pmp_1_addr <= _GEN_415[29:0];
    if (reset) begin
      reg_pmp_2_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5144) begin
        reg_pmp_2_cfg_l <= wdata[23];
      end
    end
    if (reset) begin
      reg_pmp_2_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5144) begin
        reg_pmp_2_cfg_a <= wdata[20:19];
      end
    end
    if (csr_wen) begin
      if (_T_5144) begin
        reg_pmp_2_cfg_x <= wdata[18];
      end
    end
    if (csr_wen) begin
      if (_T_5144) begin
        reg_pmp_2_cfg_w <= _T_5154;
      end
    end
    if (csr_wen) begin
      if (_T_5144) begin
        reg_pmp_2_cfg_r <= wdata[16];
      end
    end
    reg_pmp_2_addr <= _GEN_422[29:0];
    if (reset) begin
      reg_pmp_3_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5164) begin
        reg_pmp_3_cfg_l <= wdata[31];
      end
    end
    if (reset) begin
      reg_pmp_3_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5164) begin
        reg_pmp_3_cfg_a <= wdata[28:27];
      end
    end
    if (csr_wen) begin
      if (_T_5164) begin
        reg_pmp_3_cfg_x <= wdata[26];
      end
    end
    if (csr_wen) begin
      if (_T_5164) begin
        reg_pmp_3_cfg_w <= _T_5174;
      end
    end
    if (csr_wen) begin
      if (_T_5164) begin
        reg_pmp_3_cfg_r <= wdata[24];
      end
    end
    reg_pmp_3_addr <= _GEN_429[29:0];
    if (reset) begin
      reg_pmp_4_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5184) begin
        reg_pmp_4_cfg_l <= wdata[7];
      end
    end
    if (reset) begin
      reg_pmp_4_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5184) begin
        reg_pmp_4_cfg_a <= wdata[4:3];
      end
    end
    if (csr_wen) begin
      if (_T_5184) begin
        reg_pmp_4_cfg_x <= wdata[2];
      end
    end
    if (csr_wen) begin
      if (_T_5184) begin
        reg_pmp_4_cfg_w <= _T_5114;
      end
    end
    if (csr_wen) begin
      if (_T_5184) begin
        reg_pmp_4_cfg_r <= wdata[0];
      end
    end
    reg_pmp_4_addr <= _GEN_436[29:0];
    if (reset) begin
      reg_pmp_5_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5204) begin
        reg_pmp_5_cfg_l <= wdata[15];
      end
    end
    if (reset) begin
      reg_pmp_5_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5204) begin
        reg_pmp_5_cfg_a <= wdata[12:11];
      end
    end
    if (csr_wen) begin
      if (_T_5204) begin
        reg_pmp_5_cfg_x <= wdata[10];
      end
    end
    if (csr_wen) begin
      if (_T_5204) begin
        reg_pmp_5_cfg_w <= _T_5134;
      end
    end
    if (csr_wen) begin
      if (_T_5204) begin
        reg_pmp_5_cfg_r <= wdata[8];
      end
    end
    reg_pmp_5_addr <= _GEN_443[29:0];
    if (reset) begin
      reg_pmp_6_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5224) begin
        reg_pmp_6_cfg_l <= wdata[23];
      end
    end
    if (reset) begin
      reg_pmp_6_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5224) begin
        reg_pmp_6_cfg_a <= wdata[20:19];
      end
    end
    if (csr_wen) begin
      if (_T_5224) begin
        reg_pmp_6_cfg_x <= wdata[18];
      end
    end
    if (csr_wen) begin
      if (_T_5224) begin
        reg_pmp_6_cfg_w <= _T_5154;
      end
    end
    if (csr_wen) begin
      if (_T_5224) begin
        reg_pmp_6_cfg_r <= wdata[16];
      end
    end
    reg_pmp_6_addr <= _GEN_450[29:0];
    if (reset) begin
      reg_pmp_7_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_5244) begin
        reg_pmp_7_cfg_l <= wdata[31];
      end
    end
    if (reset) begin
      reg_pmp_7_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_5244) begin
        reg_pmp_7_cfg_a <= wdata[28:27];
      end
    end
    if (csr_wen) begin
      if (_T_5244) begin
        reg_pmp_7_cfg_x <= wdata[26];
      end
    end
    if (csr_wen) begin
      if (_T_5244) begin
        reg_pmp_7_cfg_w <= _T_5174;
      end
    end
    if (csr_wen) begin
      if (_T_5244) begin
        reg_pmp_7_cfg_r <= wdata[24];
      end
    end
    reg_pmp_7_addr <= _GEN_457[29:0];
    if (csr_wen) begin
      if (_T_757) begin
        reg_mie <= _T_4953;
      end else if (_T_589) begin
        reg_mie <= _T_4840;
      end
    end
    if (csr_wen) begin
      if (_T_588) begin
        reg_mip_seip <= _T_4821[9];
      end
    end
    if (csr_wen) begin
      if (_T_588) begin
        reg_mip_stip <= _T_4821[5];
      end
    end
    if (csr_wen) begin
      if (_T_756) begin
        reg_mip_ssip <= _T_4921[1];
      end else if (_T_588) begin
        reg_mip_ssip <= _T_4821[1];
      end
    end
    if (csr_wen) begin
      if (_T_591) begin
        reg_mepc <= _T_4843;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mepc <= epc;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (!(delegate)) begin
          reg_mepc <= epc;
        end
      end
    end
    if (reset) begin
      reg_mcause <= 32'h0;
    end else if (csr_wen) begin
      if (_T_593) begin
        reg_mcause <= _T_4844;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            if (insn_call) begin
              reg_mcause <= {{28'd0}, _T_1366};
            end else if (insn_break) begin
              reg_mcause <= 32'h3;
            end else begin
              reg_mcause <= io_cause;
            end
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (!(delegate)) begin
          if (insn_call) begin
            reg_mcause <= {{28'd0}, _T_1366};
          end else if (insn_break) begin
            reg_mcause <= 32'h3;
          end else begin
            reg_mcause <= io_cause;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_592) begin
        reg_mtval <= wdata;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mtval <= io_tval;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (!(delegate)) begin
          reg_mtval <= io_tval;
        end
      end
    end
    if (csr_wen) begin
      if (_T_590) begin
        reg_mscratch <= wdata;
      end
    end
    if (reset) begin
      reg_mtvec <= 32'h0;
    end else if (csr_wen) begin
      if (_T_587) begin
        reg_mtvec <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_748) begin
        reg_mcounteren <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_764) begin
        reg_scounteren <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_762) begin
        reg_sepc <= _T_4843;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_sepc <= epc;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_sepc <= epc;
        end
      end
    end
    if (csr_wen) begin
      if (_T_759) begin
        reg_scause <= _T_4957;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            if (insn_call) begin
              reg_scause <= {{28'd0}, _T_1366};
            end else if (insn_break) begin
              reg_scause <= 32'h3;
            end else begin
              reg_scause <= io_cause;
            end
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          if (insn_call) begin
            reg_scause <= {{28'd0}, _T_1366};
          end else if (insn_break) begin
            reg_scause <= 32'h3;
          end else begin
            reg_scause <= io_cause;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_760) begin
        reg_stval <= wdata;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_stval <= io_tval;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_stval <= io_tval;
        end
      end
    end
    if (csr_wen) begin
      if (_T_758) begin
        reg_sscratch <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_763) begin
        reg_stvec <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_761) begin
        if (_T_4947) begin
          reg_satp_mode <= wdata[31];
        end
      end
    end
    if (csr_wen) begin
      if (_T_761) begin
        if (_T_4947) begin
          reg_satp_ppn <= {{2'd0}, wdata[19:0]};
        end
      end
    end
    reg_fflags <= _GEN_349[4:0];
    reg_frm <= _GEN_350[2:0];
    if (reset) begin
      _T_39 <= 6'h0;
    end else begin
      _T_39 <= _GEN_346[5:0];
    end
    if (reset) begin
      _T_41 <= 58'h0;
    end else if (csr_wen) begin
      if (_T_752) begin
        _T_41 <= _T_4858[63:6];
      end else if (_T_602) begin
        _T_41 <= _T_4854[63:6];
      end else if (_T_40[6]) begin
        _T_41 <= _T_44;
      end
    end else if (_T_40[6]) begin
      _T_41 <= _T_44;
    end
    if (reset) begin
      reg_misa <= 32'h40941121;
    end else if (csr_wen) begin
      if (_T_585) begin
        reg_misa <= _T_4798;
      end
    end
    if (reset) begin
      reg_custom_0 <= 32'h208;
    end else if (csr_wen) begin
      if (_T_787) begin
        reg_custom_0 <= _T_5266;
      end
    end
    if (_T_1417) begin
      _T_1419 <= reg_mstatus_mpp;
    end else begin
      _T_1419 <= reg_mstatus_prv;
    end
    if (reset) begin
      _T_1802 <= 1'h0;
    end else begin
      _T_1802 <= _GEN_117;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1430) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:673 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217032.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1430) begin
          $fatal; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@217033.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1452) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:681 assert(!reg_singleStepped || io.retire === UInt(0))\n"); // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217074.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1452) begin
          $fatal; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@217075.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
  always @(posedge io_ungated_clock) begin
    if (reset) begin
      reg_wfi <= 1'h0;
    end else if (_T_1437) begin
      reg_wfi <= 1'h0;
    end else begin
      reg_wfi <= _GEN_34;
    end
    if (reset) begin
      _T_47 <= 6'h0;
    end else begin
      _T_47 <= _GEN_344[5:0];
    end
    if (reset) begin
      _T_49 <= 58'h0;
    end else if (csr_wen) begin
      if (_T_751) begin
        _T_49 <= _T_4851[63:6];
      end else if (_T_601) begin
        _T_49 <= _T_4847[63:6];
      end else if (_T_48[6]) begin
        _T_49 <= _T_52;
      end
    end else if (_T_48[6]) begin
      _T_49 <= _T_52;
    end
  end
endmodule
