module CSRFile( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216936.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216937.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216938.4]
  input         io_ungated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_interrupts_seip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [11:0] io_rw_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [2:0]  io_rw_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_rw_rdata, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [31:0] io_rw_wdata, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [11:0] io_decode_0_csr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_fp_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_fp_csr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_read_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_write_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_write_flush, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_decode_0_system_illegal, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_csr_stall, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_eret, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_singleStep, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_cease, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_wfi, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_status_isa, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_sd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [26:0] io_status_zero2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_sxl, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_uxl, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_sd_rv32, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [7:0]  io_status_zero1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_tsr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_tw, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_tvm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_mprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_xs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_fs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_mpp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_status_vs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_spp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_mpie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_hpie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_spie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_upie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_mie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_hie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_sie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_status_uie, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [21:0] io_ptbr_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_evec, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_exception, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_retire, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [31:0] io_cause, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [31:0] io_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [31:0] io_tval, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_time, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input         io_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_interrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_interrupt_cause, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_action, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_bp_0_control_tmatch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_m, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_s, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_bp_0_control_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_bp_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [1:0]  io_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [29:0] io_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  input  [31:0] io_inst_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_trace_0_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_trace_0_iaddr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_trace_0_insn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output        io_trace_0_exception, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
  output [31:0] io_customCSRs_0_value // @[:freechips.rocketchip.system.DefaultRV32Config.fir@216939.4]
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
  reg [1:0] reg_mstatus_prv; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_tsr; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_tw; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_tvm; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_mxr; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_sum; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_mprv; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_spp; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_mpie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_spie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_mie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  reg  reg_mstatus_sie; // @[CSR.scala 311:24:freechips.rocketchip.system.DefaultRV32Config.fir@216982.4]
  wire  system_insn; // @[CSR.scala 588:31:freechips.rocketchip.system.DefaultRV32Config.fir@218024.4]
  wire [31:0] _T_798; // @[CSR.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@218025.4]
  wire [31:0] _T_805; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218032.4]
  wire  _T_806; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218033.4]
  wire [31:0] _T_807; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218034.4]
  wire  _T_808; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218035.4]
  wire  _T_810; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@218037.4]
  wire  insn_ret; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218052.4]
  wire  _T_1780; // @[CSR.scala 738:36:freechips.rocketchip.system.DefaultRV32Config.fir@219106.6]
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  wire [1:0] _GEN_93; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@219123.8]
  wire [1:0] _GEN_102; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  wire [31:0] _T_799; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218026.4]
  wire  _T_800; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218027.4]
  wire  insn_call; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218048.4]
  wire  _T_803; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218030.4]
  wire  insn_break; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218050.4]
  wire  _T_1420; // @[CSR.scala 672:29:freechips.rocketchip.system.DefaultRV32Config.fir@218684.4]
  wire  exception; // @[CSR.scala 672:43:freechips.rocketchip.system.DefaultRV32Config.fir@218685.4]
  reg  reg_singleStepped; // @[CSR.scala 363:30:freechips.rocketchip.system.DefaultRV32Config.fir@217069.4]
  wire [3:0] _GEN_494; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@218606.4]
  wire [3:0] _T_1366; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@218607.4]
  wire [31:0] _T_1367; // @[CSR.scala 637:14:freechips.rocketchip.system.DefaultRV32Config.fir@218608.4]
  wire [31:0] cause; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@218609.4]
  wire [7:0] cause_lsbs; // @[CSR.scala 638:25:freechips.rocketchip.system.DefaultRV32Config.fir@218610.4]
  wire  _T_1369; // @[CSR.scala 639:53:freechips.rocketchip.system.DefaultRV32Config.fir@218612.4]
  wire  causeIsDebugInt; // @[CSR.scala 639:39:freechips.rocketchip.system.DefaultRV32Config.fir@218613.4]
  wire  _T_1381; // @[CSR.scala 642:60:freechips.rocketchip.system.DefaultRV32Config.fir@218627.4]
  wire  _T_1371; // @[CSR.scala 640:29:freechips.rocketchip.system.DefaultRV32Config.fir@218615.4]
  wire  causeIsDebugTrigger; // @[CSR.scala 640:44:freechips.rocketchip.system.DefaultRV32Config.fir@218617.4]
  wire  _T_1382; // @[CSR.scala 642:79:freechips.rocketchip.system.DefaultRV32Config.fir@218628.4]
  wire  _T_1375; // @[CSR.scala 641:42:freechips.rocketchip.system.DefaultRV32Config.fir@218620.4]
  reg  reg_dcsr_ebreakm; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  reg  reg_dcsr_ebreaks; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  reg  reg_dcsr_ebreaku; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  wire [3:0] _T_1378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@218623.4]
  wire [3:0] _T_1379; // @[CSR.scala 641:134:freechips.rocketchip.system.DefaultRV32Config.fir@218624.4]
  wire  causeIsDebugBreak; // @[CSR.scala 641:56:freechips.rocketchip.system.DefaultRV32Config.fir@218626.4]
  wire  _T_1383; // @[CSR.scala 642:102:freechips.rocketchip.system.DefaultRV32Config.fir@218629.4]
  reg  reg_debug; // @[CSR.scala 360:22:freechips.rocketchip.system.DefaultRV32Config.fir@217066.4]
  wire  trapToDebug; // @[CSR.scala 642:123:freechips.rocketchip.system.DefaultRV32Config.fir@218630.4]
  wire  _T_1455; // @[CSR.scala 689:13:freechips.rocketchip.system.DefaultRV32Config.fir@218750.8]
  wire [1:0] _GEN_42; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@218751.8]
  wire  _T_1386; // @[CSR.scala 644:59:freechips.rocketchip.system.DefaultRV32Config.fir@218634.4]
  reg [31:0] reg_mideleg; // @[CSR.scala 371:18:freechips.rocketchip.system.DefaultRV32Config.fir@217074.4]
  wire [31:0] read_mideleg; // @[CSR.scala 372:36:freechips.rocketchip.system.DefaultRV32Config.fir@217075.4]
  wire [31:0] _T_1389; // @[CSR.scala 644:102:freechips.rocketchip.system.DefaultRV32Config.fir@218637.4]
  reg [31:0] reg_medeleg; // @[CSR.scala 375:18:freechips.rocketchip.system.DefaultRV32Config.fir@217077.4]
  wire [31:0] read_medeleg; // @[CSR.scala 376:36:freechips.rocketchip.system.DefaultRV32Config.fir@217078.4]
  wire [31:0] _T_1391; // @[CSR.scala 644:128:freechips.rocketchip.system.DefaultRV32Config.fir@218639.4]
  wire  _T_1393; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@218641.4]
  wire  delegate; // @[CSR.scala 644:68:freechips.rocketchip.system.DefaultRV32Config.fir@218642.4]
  wire [1:0] _GEN_50; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire [1:0] _GEN_61; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire [1:0] _GEN_79; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire [1:0] new_prv; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@219104.4]
  wire  _T_1; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@216986.4]
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  reg  reg_dcsr_step; // @[CSR.scala 319:21:freechips.rocketchip.system.DefaultRV32Config.fir@217010.4]
  reg [31:0] reg_dpc; // @[CSR.scala 361:20:freechips.rocketchip.system.DefaultRV32Config.fir@217067.4]
  reg [31:0] reg_dscratch; // @[CSR.scala 362:25:freechips.rocketchip.system.DefaultRV32Config.fir@217068.4]
  reg  reg_bp_0_control_dmode; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_action; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_m; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_s; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_u; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_x; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_w; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_bp_0_control_r; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg [31:0] reg_bp_0_address; // @[CSR.scala 366:19:freechips.rocketchip.system.DefaultRV32Config.fir@217071.4]
  reg  reg_pmp_0_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_0_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_0_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_0_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_0_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_0_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_1_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_1_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_1_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_1_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_1_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_1_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_2_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_2_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_2_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_2_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_2_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_2_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_3_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_3_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_3_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_3_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_3_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_3_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_4_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_4_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_4_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_4_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_4_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_4_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_5_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_5_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_5_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_5_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_5_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_5_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_6_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_6_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_6_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_6_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_6_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_6_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_7_cfg_l; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [1:0] reg_pmp_7_cfg_a; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_7_cfg_x; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_7_cfg_w; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg  reg_pmp_7_cfg_r; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [29:0] reg_pmp_7_addr; // @[CSR.scala 367:20:freechips.rocketchip.system.DefaultRV32Config.fir@217072.4]
  reg [31:0] reg_mie; // @[CSR.scala 369:20:freechips.rocketchip.system.DefaultRV32Config.fir@217073.4]
  reg  reg_mip_seip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@217080.4]
  reg  reg_mip_stip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@217080.4]
  reg  reg_mip_ssip; // @[CSR.scala 378:20:freechips.rocketchip.system.DefaultRV32Config.fir@217080.4]
  reg [31:0] reg_mepc; // @[CSR.scala 379:21:freechips.rocketchip.system.DefaultRV32Config.fir@217081.4]
  reg [31:0] reg_mcause; // @[CSR.scala 380:27:freechips.rocketchip.system.DefaultRV32Config.fir@217082.4]
  reg [31:0] reg_mtval; // @[CSR.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@217083.4]
  reg [31:0] reg_mscratch; // @[CSR.scala 382:25:freechips.rocketchip.system.DefaultRV32Config.fir@217084.4]
  reg [31:0] reg_mtvec; // @[CSR.scala 385:27:freechips.rocketchip.system.DefaultRV32Config.fir@217085.4]
  reg [31:0] reg_mcounteren; // @[CSR.scala 391:18:freechips.rocketchip.system.DefaultRV32Config.fir@217086.4]
  wire [31:0] read_mcounteren; // @[CSR.scala 392:30:freechips.rocketchip.system.DefaultRV32Config.fir@217087.4]
  reg [31:0] reg_scounteren; // @[CSR.scala 395:18:freechips.rocketchip.system.DefaultRV32Config.fir@217089.4]
  wire [31:0] read_scounteren; // @[CSR.scala 396:36:freechips.rocketchip.system.DefaultRV32Config.fir@217090.4]
  reg [31:0] reg_sepc; // @[CSR.scala 399:21:freechips.rocketchip.system.DefaultRV32Config.fir@217092.4]
  reg [31:0] reg_scause; // @[CSR.scala 400:23:freechips.rocketchip.system.DefaultRV32Config.fir@217093.4]
  reg [31:0] reg_stval; // @[CSR.scala 401:22:freechips.rocketchip.system.DefaultRV32Config.fir@217094.4]
  reg [31:0] reg_sscratch; // @[CSR.scala 402:25:freechips.rocketchip.system.DefaultRV32Config.fir@217095.4]
  reg [31:0] reg_stvec; // @[CSR.scala 403:22:freechips.rocketchip.system.DefaultRV32Config.fir@217096.4]
  reg  reg_satp_mode; // @[CSR.scala 404:21:freechips.rocketchip.system.DefaultRV32Config.fir@217097.4]
  reg [21:0] reg_satp_ppn; // @[CSR.scala 404:21:freechips.rocketchip.system.DefaultRV32Config.fir@217097.4]
  reg  reg_wfi; // @[CSR.scala 405:50:freechips.rocketchip.system.DefaultRV32Config.fir@217098.4]
  reg [4:0] reg_fflags; // @[CSR.scala 407:23:freechips.rocketchip.system.DefaultRV32Config.fir@217099.4]
  reg [2:0] reg_frm; // @[CSR.scala 408:20:freechips.rocketchip.system.DefaultRV32Config.fir@217100.4]
  reg [5:0] _T_39; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@217101.4]
  wire [5:0] _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217102.4]
  wire [6:0] _T_40; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217102.4]
  reg [57:0] _T_41; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@217104.4]
  wire [57:0] _T_44; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@217108.6]
  wire [63:0] _T_45; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217111.4]
  wire  _T_46; // @[CSR.scala 415:103:freechips.rocketchip.system.DefaultRV32Config.fir@217112.4]
  reg [5:0] _T_47; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@217113.4]
  wire [5:0] _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217114.4]
  wire [6:0] _T_48; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217114.4]
  reg [57:0] _T_49; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@217116.4]
  wire [57:0] _T_52; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@217120.6]
  wire [63:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217123.4]
  wire  mip_seip; // @[CSR.scala 426:57:freechips.rocketchip.system.DefaultRV32Config.fir@217130.4]
  wire [7:0] _T_61; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@217139.4]
  wire [15:0] _T_69; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@217147.4]
  wire [15:0] read_mip; // @[CSR.scala 428:29:freechips.rocketchip.system.DefaultRV32Config.fir@217148.4]
  wire [31:0] _GEN_497; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@217149.4]
  wire [31:0] pending_interrupts; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@217149.4]
  wire [14:0] d_interrupts; // @[CSR.scala 432:42:freechips.rocketchip.system.DefaultRV32Config.fir@217151.4]
  wire  _T_72; // @[CSR.scala 433:51:freechips.rocketchip.system.DefaultRV32Config.fir@217153.4]
  wire [31:0] _T_73; // @[CSR.scala 433:73:freechips.rocketchip.system.DefaultRV32Config.fir@217154.4]
  wire [31:0] _T_74; // @[CSR.scala 433:93:freechips.rocketchip.system.DefaultRV32Config.fir@217155.4]
  wire [31:0] _T_75; // @[CSR.scala 433:71:freechips.rocketchip.system.DefaultRV32Config.fir@217156.4]
  wire [31:0] m_interrupts; // @[CSR.scala 433:25:freechips.rocketchip.system.DefaultRV32Config.fir@217157.4]
  wire  _T_76; // @[CSR.scala 434:42:freechips.rocketchip.system.DefaultRV32Config.fir@217158.4]
  wire  _T_77; // @[CSR.scala 434:70:freechips.rocketchip.system.DefaultRV32Config.fir@217159.4]
  wire  _T_78; // @[CSR.scala 434:80:freechips.rocketchip.system.DefaultRV32Config.fir@217160.4]
  wire  _T_79; // @[CSR.scala 434:50:freechips.rocketchip.system.DefaultRV32Config.fir@217161.4]
  wire [31:0] _T_80; // @[CSR.scala 434:120:freechips.rocketchip.system.DefaultRV32Config.fir@217162.4]
  wire [31:0] s_interrupts; // @[CSR.scala 434:25:freechips.rocketchip.system.DefaultRV32Config.fir@217163.4]
  wire  _T_119; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217202.4]
  wire  _T_120; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217203.4]
  wire  _T_121; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217204.4]
  wire  _T_122; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217205.4]
  wire  _T_123; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217206.4]
  wire  _T_124; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217207.4]
  wire  _T_125; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217208.4]
  wire  _T_126; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217209.4]
  wire  _T_127; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217210.4]
  wire  _T_128; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217211.4]
  wire  _T_129; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217212.4]
  wire  _T_130; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217213.4]
  wire  _T_131; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217214.4]
  wire  _T_132; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217215.4]
  wire  _T_133; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217216.4]
  wire  _T_134; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217217.4]
  wire  _T_135; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217218.4]
  wire  _T_136; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217219.4]
  wire  _T_137; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217220.4]
  wire  _T_138; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217221.4]
  wire  _T_139; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217222.4]
  wire  _T_140; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217223.4]
  wire  _T_141; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217224.4]
  wire  _T_142; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217225.4]
  wire  _T_143; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217226.4]
  wire  _T_144; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217227.4]
  wire  _T_145; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217228.4]
  wire  _T_146; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217229.4]
  wire  _T_147; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217230.4]
  wire  _T_148; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217231.4]
  wire  _T_149; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217232.4]
  wire  _T_150; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217233.4]
  wire  _T_151; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217234.4]
  wire  _T_152; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217235.4]
  wire  _T_153; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217236.4]
  wire  _T_154; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217237.4]
  wire  anyInterrupt; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217238.4]
  wire [2:0] _T_193; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217277.4]
  wire [3:0] _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217278.4]
  wire [3:0] _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217279.4]
  wire [3:0] _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217280.4]
  wire [3:0] _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217281.4]
  wire [3:0] _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217282.4]
  wire [3:0] _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217283.4]
  wire [3:0] _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217284.4]
  wire [3:0] _T_201; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217285.4]
  wire [3:0] _T_202; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217286.4]
  wire [3:0] _T_203; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217287.4]
  wire [3:0] _T_204; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217288.4]
  wire [3:0] _T_205; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217289.4]
  wire [3:0] _T_206; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217290.4]
  wire [3:0] _T_207; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217291.4]
  wire [3:0] _T_208; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217292.4]
  wire [3:0] _T_209; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217293.4]
  wire [3:0] _T_210; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217294.4]
  wire [3:0] _T_211; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217295.4]
  wire [3:0] _T_212; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217296.4]
  wire [3:0] _T_213; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217297.4]
  wire [3:0] _T_214; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217298.4]
  wire [3:0] _T_215; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217299.4]
  wire [3:0] _T_216; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217300.4]
  wire [3:0] _T_217; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217301.4]
  wire [3:0] _T_218; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217302.4]
  wire [3:0] _T_219; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217303.4]
  wire [3:0] _T_220; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217304.4]
  wire [3:0] _T_221; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217305.4]
  wire [3:0] _T_222; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217306.4]
  wire [3:0] _T_223; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217307.4]
  wire [3:0] _T_224; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217308.4]
  wire [3:0] _T_225; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217309.4]
  wire [3:0] _T_226; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217310.4]
  wire [3:0] _T_227; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217311.4]
  wire [3:0] _T_228; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217312.4]
  wire [3:0] whichInterrupt; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217313.4]
  wire [31:0] _GEN_498; // @[CSR.scala 437:43:freechips.rocketchip.system.DefaultRV32Config.fir@217314.4]
  wire  _T_230; // @[CSR.scala 438:36:freechips.rocketchip.system.DefaultRV32Config.fir@217316.4]
  wire  _T_231; // @[CSR.scala 438:33:freechips.rocketchip.system.DefaultRV32Config.fir@217317.4]
  wire  _T_232; // @[CSR.scala 438:51:freechips.rocketchip.system.DefaultRV32Config.fir@217318.4]
  wire  _T_233; // @[CSR.scala 438:88:freechips.rocketchip.system.DefaultRV32Config.fir@217319.4]
  wire  _T_234; // @[CSR.scala 438:76:freechips.rocketchip.system.DefaultRV32Config.fir@217320.4]
  wire [30:0] _T_238; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217334.4]
  wire [30:0] _T_241; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217337.4]
  wire [30:0] _T_242; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217338.4]
  wire [30:0] _T_243; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217339.4]
  wire [32:0] _T_244; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217340.4]
  wire [30:0] _T_247; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217351.4]
  wire [30:0] _T_250; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217354.4]
  wire [30:0] _T_251; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217355.4]
  wire [30:0] _T_252; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217356.4]
  wire [32:0] _T_253; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217357.4]
  wire [30:0] _T_256; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217368.4]
  wire [30:0] _T_259; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217371.4]
  wire [30:0] _T_260; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217372.4]
  wire [30:0] _T_261; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217373.4]
  wire [32:0] _T_262; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217374.4]
  wire [30:0] _T_265; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217385.4]
  wire [30:0] _T_268; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217388.4]
  wire [30:0] _T_269; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217389.4]
  wire [30:0] _T_270; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217390.4]
  wire [32:0] _T_271; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217391.4]
  wire [30:0] _T_274; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217402.4]
  wire [30:0] _T_277; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217405.4]
  wire [30:0] _T_278; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217406.4]
  wire [30:0] _T_279; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217407.4]
  wire [32:0] _T_280; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217408.4]
  wire [30:0] _T_283; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217419.4]
  wire [30:0] _T_286; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217422.4]
  wire [30:0] _T_287; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217423.4]
  wire [30:0] _T_288; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217424.4]
  wire [32:0] _T_289; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217425.4]
  wire [30:0] _T_292; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217436.4]
  wire [30:0] _T_295; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  wire [30:0] _T_296; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217440.4]
  wire [30:0] _T_297; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217441.4]
  wire [32:0] _T_298; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217442.4]
  wire [30:0] _T_301; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217453.4]
  wire [30:0] _T_304; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217456.4]
  wire [30:0] _T_305; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217457.4]
  wire [30:0] _T_306; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217458.4]
  wire [32:0] _T_307; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217459.4]
  reg [31:0] reg_misa; // @[CSR.scala 456:21:freechips.rocketchip.system.DefaultRV32Config.fir@217469.4]
  wire [6:0] _T_313; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217475.4]
  wire [18:0] _T_321; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217483.4]
  wire [16:0] _T_328; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217490.4]
  wire [102:0] _T_337; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217499.4]
  wire [31:0] read_mstatus; // @[CSR.scala 457:40:freechips.rocketchip.system.DefaultRV32Config.fir@217500.4]
  wire [6:0] _T_339; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@217502.4]
  wire [31:0] _T_341; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@217504.4]
  wire [31:0] _T_342; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@217505.4]
  wire [31:0] read_mtvec; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@217506.4]
  wire [6:0] _T_344; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@217508.4]
  wire [31:0] _T_346; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@217510.4]
  wire [31:0] _T_347; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@217511.4]
  wire [31:0] read_stvec; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@217512.4]
  wire [6:0] _T_353; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@217518.4]
  wire [31:0] _T_361; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@217526.4]
  wire [31:0] _T_362; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217527.4]
  wire [1:0] _T_364; // @[CSR.scala 1092:36:freechips.rocketchip.system.DefaultRV32Config.fir@217529.4]
  wire [31:0] _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217530.4]
  wire [31:0] _T_365; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217530.4]
  wire [31:0] _T_366; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217531.4]
  wire [11:0] _T_372; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@217537.4]
  wire [31:0] _T_379; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@217544.4]
  wire [31:0] _T_380; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217545.4]
  wire [31:0] _T_383; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217548.4]
  wire [31:0] _T_384; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217549.4]
  wire [7:0] read_fcsr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217550.4]
  wire [31:0] _T_447; // @[CSR.scala 533:28:freechips.rocketchip.system.DefaultRV32Config.fir@217614.4]
  wire [31:0] _T_448; // @[CSR.scala 534:29:freechips.rocketchip.system.DefaultRV32Config.fir@217615.4]
  wire [6:0] _T_456; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217668.4]
  wire [18:0] _T_464; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217676.4]
  wire [16:0] _T_471; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217683.4]
  wire [102:0] _T_480; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217692.4]
  wire [31:0] _T_483; // @[CSR.scala 554:43:freechips.rocketchip.system.DefaultRV32Config.fir@217695.4]
  wire [31:0] _T_484; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217696.4]
  wire [31:0] _T_487; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217699.4]
  wire [31:0] _T_488; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217700.4]
  wire [7:0] _T_494; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217715.4]
  wire [7:0] _T_504; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217725.4]
  wire [15:0] _T_510; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  wire [31:0] _T_512; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217733.4]
  wire [7:0] _T_517; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217738.4]
  wire [7:0] _T_527; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217748.4]
  wire [15:0] _T_533; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217754.4]
  wire [31:0] _T_535; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217756.4]
  reg [31:0] reg_custom_0; // @[CSR.scala 577:43:freechips.rocketchip.system.DefaultRV32Config.fir@217803.4]
  wire  _T_583; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217808.4]
  wire  _T_584; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217809.4]
  wire  _T_585; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217810.4]
  wire  _T_586; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217811.4]
  wire  _T_587; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217812.4]
  wire  _T_588; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217813.4]
  wire  _T_589; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217814.4]
  wire  _T_590; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217815.4]
  wire  _T_591; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217816.4]
  wire  _T_592; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217817.4]
  wire  _T_593; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217818.4]
  wire  _T_595; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217820.4]
  wire  _T_596; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217821.4]
  wire  _T_597; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217822.4]
  wire  _T_598; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217823.4]
  wire  _T_599; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217824.4]
  wire  _T_600; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217825.4]
  wire  _T_601; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217826.4]
  wire  _T_602; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217827.4]
  wire  _T_748; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217973.4]
  wire  _T_749; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217974.4]
  wire  _T_750; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217975.4]
  wire  _T_751; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217976.4]
  wire  _T_752; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217977.4]
  wire  _T_753; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217978.4]
  wire  _T_754; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217979.4]
  wire  _T_755; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217980.4]
  wire  _T_756; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217981.4]
  wire  _T_757; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217982.4]
  wire  _T_758; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217983.4]
  wire  _T_759; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217984.4]
  wire  _T_760; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217985.4]
  wire  _T_761; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217986.4]
  wire  _T_762; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217987.4]
  wire  _T_763; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217988.4]
  wire  _T_764; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217989.4]
  wire  _T_765; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217990.4]
  wire  _T_766; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217991.4]
  wire  _T_767; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217992.4]
  wire  _T_768; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217993.4]
  wire  _T_771; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217996.4]
  wire  _T_772; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217997.4]
  wire  _T_773; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217998.4]
  wire  _T_774; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217999.4]
  wire  _T_775; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218000.4]
  wire  _T_776; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218001.4]
  wire  _T_777; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218002.4]
  wire  _T_778; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218003.4]
  wire  _T_787; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218012.4]
  wire  _T_788; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218013.4]
  wire  _T_790; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218015.4]
  wire [31:0] _T_792; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@218017.4]
  wire [31:0] _T_793; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@218018.4]
  wire  _T_795; // @[CSR.scala 1070:59:freechips.rocketchip.system.DefaultRV32Config.fir@218020.4]
  wire [31:0] _T_796; // @[CSR.scala 1070:49:freechips.rocketchip.system.DefaultRV32Config.fir@218021.4]
  wire [31:0] _T_797; // @[CSR.scala 1070:45:freechips.rocketchip.system.DefaultRV32Config.fir@218022.4]
  wire [31:0] wdata; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@218023.4]
  wire [31:0] _T_811; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218038.4]
  wire  _T_812; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218039.4]
  wire [31:0] _T_814; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218041.4]
  wire  _T_815; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218042.4]
  wire  insn_cease; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218054.4]
  wire  insn_wfi; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218056.4]
  wire [31:0] _T_826; // @[CSR.scala 607:30:freechips.rocketchip.system.DefaultRV32Config.fir@218059.4]
  wire [31:0] _T_833; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218066.4]
  wire  _T_834; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218067.4]
  wire [31:0] _T_835; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218068.4]
  wire  _T_836; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218069.4]
  wire  _T_838; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@218071.4]
  wire [31:0] _T_842; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218075.4]
  wire  _T_843; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218076.4]
  wire [31:0] _T_845; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218078.4]
  wire  _T_846; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218079.4]
  wire  _T_854; // @[CSR.scala 609:63:freechips.rocketchip.system.DefaultRV32Config.fir@218087.4]
  wire  _T_856; // @[CSR.scala 609:74:freechips.rocketchip.system.DefaultRV32Config.fir@218089.4]
  wire  _T_857; // @[CSR.scala 609:71:freechips.rocketchip.system.DefaultRV32Config.fir@218090.4]
  wire  _T_860; // @[CSR.scala 610:73:freechips.rocketchip.system.DefaultRV32Config.fir@218093.4]
  wire  _T_861; // @[CSR.scala 610:70:freechips.rocketchip.system.DefaultRV32Config.fir@218094.4]
  wire  _T_864; // @[CSR.scala 611:75:freechips.rocketchip.system.DefaultRV32Config.fir@218097.4]
  wire  _T_865; // @[CSR.scala 611:72:freechips.rocketchip.system.DefaultRV32Config.fir@218098.4]
  wire [31:0] _T_868; // @[CSR.scala 613:68:freechips.rocketchip.system.DefaultRV32Config.fir@218101.4]
  wire  _T_870; // @[CSR.scala 613:50:freechips.rocketchip.system.DefaultRV32Config.fir@218103.4]
  wire  _T_871; // @[CSR.scala 614:44:freechips.rocketchip.system.DefaultRV32Config.fir@218104.4]
  wire [31:0] _T_873; // @[CSR.scala 614:71:freechips.rocketchip.system.DefaultRV32Config.fir@218106.4]
  wire  _T_875; // @[CSR.scala 614:53:freechips.rocketchip.system.DefaultRV32Config.fir@218108.4]
  wire  _T_876; // @[CSR.scala 613:84:freechips.rocketchip.system.DefaultRV32Config.fir@218109.4]
  wire  _T_877; // @[CSR.scala 615:39:freechips.rocketchip.system.DefaultRV32Config.fir@218110.4]
  wire  _T_879; // @[CSR.scala 615:48:freechips.rocketchip.system.DefaultRV32Config.fir@218112.4]
  wire [11:0] _T_885; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218120.4]
  wire  _T_894; // @[CSR.scala 619:44:freechips.rocketchip.system.DefaultRV32Config.fir@218131.4]
  wire  _T_895; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218132.4]
  wire  _T_896; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218133.4]
  wire  _T_897; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218134.4]
  wire  _T_898; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218135.4]
  wire  _T_899; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218136.4]
  wire  _T_900; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218137.4]
  wire  _T_901; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218138.4]
  wire  _T_902; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218139.4]
  wire  _T_903; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218140.4]
  wire  _T_904; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218141.4]
  wire  _T_905; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218142.4]
  wire  _T_906; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218143.4]
  wire  _T_907; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218144.4]
  wire  _T_908; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218145.4]
  wire  _T_909; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218146.4]
  wire  _T_910; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218147.4]
  wire  _T_911; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218148.4]
  wire  _T_912; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218149.4]
  wire  _T_913; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218150.4]
  wire  _T_914; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218151.4]
  wire  _T_915; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218152.4]
  wire  _T_916; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218153.4]
  wire  _T_917; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218154.4]
  wire  _T_918; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218155.4]
  wire  _T_919; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218156.4]
  wire  _T_920; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218157.4]
  wire  _T_921; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218158.4]
  wire  _T_922; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218159.4]
  wire  _T_923; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218160.4]
  wire  _T_924; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218161.4]
  wire  _T_925; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218162.4]
  wire  _T_926; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218163.4]
  wire  _T_927; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218164.4]
  wire  _T_928; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218165.4]
  wire  _T_929; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218166.4]
  wire  _T_930; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218167.4]
  wire  _T_931; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218168.4]
  wire  _T_932; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218169.4]
  wire  _T_933; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218170.4]
  wire  _T_934; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218171.4]
  wire  _T_935; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218172.4]
  wire  _T_936; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218173.4]
  wire  _T_937; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218174.4]
  wire  _T_938; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218175.4]
  wire  _T_939; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218176.4]
  wire  _T_940; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218177.4]
  wire  _T_941; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218178.4]
  wire  _T_942; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218179.4]
  wire  _T_943; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218180.4]
  wire  _T_944; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218181.4]
  wire  _T_945; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218182.4]
  wire  _T_946; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218183.4]
  wire  _T_947; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218184.4]
  wire  _T_948; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218185.4]
  wire  _T_949; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218186.4]
  wire  _T_950; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218187.4]
  wire  _T_951; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218188.4]
  wire  _T_952; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218189.4]
  wire  _T_953; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218190.4]
  wire  _T_954; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218191.4]
  wire  _T_955; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218192.4]
  wire  _T_956; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218193.4]
  wire  _T_957; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218194.4]
  wire  _T_958; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218195.4]
  wire  _T_959; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218196.4]
  wire  _T_960; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218197.4]
  wire  _T_961; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218198.4]
  wire  _T_962; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218199.4]
  wire  _T_963; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218200.4]
  wire  _T_964; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218201.4]
  wire  _T_965; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218202.4]
  wire  _T_966; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218203.4]
  wire  _T_967; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218204.4]
  wire  _T_968; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218205.4]
  wire  _T_969; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218206.4]
  wire  _T_970; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218207.4]
  wire  _T_971; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218208.4]
  wire  _T_972; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218209.4]
  wire  _T_973; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218210.4]
  wire  _T_974; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218211.4]
  wire  _T_975; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218212.4]
  wire  _T_976; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218213.4]
  wire  _T_977; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218214.4]
  wire  _T_978; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218215.4]
  wire  _T_979; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218216.4]
  wire  _T_980; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218217.4]
  wire  _T_981; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218218.4]
  wire  _T_982; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218219.4]
  wire  _T_983; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218220.4]
  wire  _T_984; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218221.4]
  wire  _T_985; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218222.4]
  wire  _T_986; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218223.4]
  wire  _T_987; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218224.4]
  wire  _T_988; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218225.4]
  wire  _T_989; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218226.4]
  wire  _T_990; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218227.4]
  wire  _T_991; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218228.4]
  wire  _T_992; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218229.4]
  wire  _T_993; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218230.4]
  wire  _T_994; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218231.4]
  wire  _T_995; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218232.4]
  wire  _T_996; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218233.4]
  wire  _T_997; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218234.4]
  wire  _T_998; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218235.4]
  wire  _T_999; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218236.4]
  wire  _T_1000; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218237.4]
  wire  _T_1001; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218238.4]
  wire  _T_1002; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218239.4]
  wire  _T_1003; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218240.4]
  wire  _T_1004; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218241.4]
  wire  _T_1005; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218242.4]
  wire  _T_1006; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218243.4]
  wire  _T_1007; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218244.4]
  wire  _T_1008; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218245.4]
  wire  _T_1009; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218246.4]
  wire  _T_1010; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218247.4]
  wire  _T_1011; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218248.4]
  wire  _T_1012; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218249.4]
  wire  _T_1013; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218250.4]
  wire  _T_1014; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218251.4]
  wire  _T_1015; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218252.4]
  wire  _T_1016; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218253.4]
  wire  _T_1017; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218254.4]
  wire  _T_1018; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218255.4]
  wire  _T_1019; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218256.4]
  wire  _T_1020; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218257.4]
  wire  _T_1021; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218258.4]
  wire  _T_1022; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218259.4]
  wire  _T_1023; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218260.4]
  wire  _T_1024; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218261.4]
  wire  _T_1025; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218262.4]
  wire  _T_1026; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218263.4]
  wire  _T_1027; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218264.4]
  wire  _T_1028; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218265.4]
  wire  _T_1029; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218266.4]
  wire  _T_1030; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218267.4]
  wire  _T_1031; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218268.4]
  wire  _T_1032; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218269.4]
  wire  _T_1033; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218270.4]
  wire  _T_1034; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218271.4]
  wire  _T_1035; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218272.4]
  wire  _T_1036; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218273.4]
  wire  _T_1037; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218274.4]
  wire  _T_1038; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218275.4]
  wire  _T_1039; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218276.4]
  wire  _T_1040; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218277.4]
  wire  _T_1041; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218278.4]
  wire  _T_1042; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218279.4]
  wire  _T_1043; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218280.4]
  wire  _T_1044; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218281.4]
  wire  _T_1045; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218282.4]
  wire  _T_1046; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218283.4]
  wire  _T_1047; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218284.4]
  wire  _T_1048; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218285.4]
  wire  _T_1049; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218286.4]
  wire  _T_1050; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218287.4]
  wire  _T_1051; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218288.4]
  wire  _T_1052; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218289.4]
  wire  _T_1053; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218290.4]
  wire  _T_1054; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218291.4]
  wire  _T_1055; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218292.4]
  wire  _T_1056; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218293.4]
  wire  _T_1057; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218294.4]
  wire  _T_1058; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218295.4]
  wire  _T_1059; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218296.4]
  wire  _T_1060; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218297.4]
  wire  _T_1061; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218298.4]
  wire  _T_1062; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218299.4]
  wire  _T_1063; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218300.4]
  wire  _T_1064; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218301.4]
  wire  _T_1065; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218302.4]
  wire  _T_1066; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218303.4]
  wire  _T_1067; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218304.4]
  wire  _T_1068; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218305.4]
  wire  _T_1069; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218306.4]
  wire  _T_1070; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218307.4]
  wire  _T_1071; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218308.4]
  wire  _T_1072; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218309.4]
  wire  _T_1073; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218310.4]
  wire  _T_1074; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218311.4]
  wire  _T_1075; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218312.4]
  wire  _T_1076; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218313.4]
  wire  _T_1077; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218314.4]
  wire  _T_1078; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218315.4]
  wire  _T_1079; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218316.4]
  wire  _T_1080; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218317.4]
  wire  _T_1081; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218318.4]
  wire  _T_1082; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218319.4]
  wire  _T_1083; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218320.4]
  wire  _T_1084; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218321.4]
  wire  _T_1085; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218322.4]
  wire  _T_1086; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218323.4]
  wire  _T_1087; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218324.4]
  wire  _T_1088; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218325.4]
  wire  _T_1089; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218326.4]
  wire  _T_1090; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218327.4]
  wire  _T_1091; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218328.4]
  wire  _T_1092; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218329.4]
  wire  _T_1093; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218330.4]
  wire  _T_1094; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218331.4]
  wire  _T_1095; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218332.4]
  wire  _T_1096; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218333.4]
  wire  _T_1097; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218334.4]
  wire  _T_1098; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218335.4]
  wire  _T_1099; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218336.4]
  wire  _T_1100; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218337.4]
  wire  _T_1101; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218338.4]
  wire  _T_1102; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218339.4]
  wire  _T_1103; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218340.4]
  wire  _T_1104; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218341.4]
  wire  _T_1105; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218342.4]
  wire  _T_1106; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218343.4]
  wire  _T_1107; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218344.4]
  wire  _T_1108; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218345.4]
  wire  _T_1109; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218346.4]
  wire  _T_1110; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218347.4]
  wire  _T_1111; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218348.4]
  wire  _T_1112; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218349.4]
  wire  _T_1113; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218350.4]
  wire  _T_1114; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218351.4]
  wire  _T_1115; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218352.4]
  wire  _T_1116; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218353.4]
  wire  _T_1117; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218354.4]
  wire  _T_1118; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218355.4]
  wire  _T_1119; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218356.4]
  wire  _T_1120; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218357.4]
  wire  _T_1121; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218358.4]
  wire  _T_1122; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218359.4]
  wire  _T_1123; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218360.4]
  wire  _T_1124; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218361.4]
  wire  _T_1125; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218362.4]
  wire  _T_1126; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218363.4]
  wire  _T_1127; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218364.4]
  wire  _T_1128; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218365.4]
  wire  _T_1129; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218366.4]
  wire  _T_1130; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218367.4]
  wire  _T_1131; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218368.4]
  wire  _T_1132; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218369.4]
  wire  _T_1133; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218370.4]
  wire  _T_1134; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218371.4]
  wire  _T_1135; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218372.4]
  wire  _T_1136; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218373.4]
  wire  _T_1137; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218374.4]
  wire  _T_1138; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218375.4]
  wire  _T_1139; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218376.4]
  wire  _T_1140; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218377.4]
  wire  _T_1141; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218378.4]
  wire  _T_1142; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218379.4]
  wire  _T_1143; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218380.4]
  wire  _T_1144; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218381.4]
  wire  _T_1145; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218382.4]
  wire  _T_1146; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218383.4]
  wire  _T_1147; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218384.4]
  wire  _T_1148; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218385.4]
  wire  _T_1149; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218386.4]
  wire  _T_1150; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218387.4]
  wire  _T_1151; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218388.4]
  wire  _T_1152; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218389.4]
  wire  _T_1153; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218390.4]
  wire  _T_1154; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218391.4]
  wire  _T_1155; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218392.4]
  wire  _T_1156; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218393.4]
  wire  _T_1157; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218394.4]
  wire  _T_1158; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218395.4]
  wire  _T_1159; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218396.4]
  wire  _T_1160; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218397.4]
  wire  _T_1161; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218398.4]
  wire  _T_1162; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218399.4]
  wire  _T_1163; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218400.4]
  wire  _T_1164; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218401.4]
  wire  _T_1165; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218402.4]
  wire  _T_1166; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218403.4]
  wire  _T_1167; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218404.4]
  wire  _T_1168; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218405.4]
  wire  _T_1169; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218406.4]
  wire  _T_1170; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218407.4]
  wire  _T_1171; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218408.4]
  wire  _T_1172; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218409.4]
  wire  _T_1173; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218410.4]
  wire  _T_1174; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218411.4]
  wire  _T_1175; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218412.4]
  wire  _T_1176; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218413.4]
  wire  _T_1177; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218414.4]
  wire  _T_1178; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218415.4]
  wire  _T_1179; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218416.4]
  wire  _T_1180; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218417.4]
  wire  _T_1181; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218418.4]
  wire  _T_1182; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218419.4]
  wire  _T_1183; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218420.4]
  wire  _T_1184; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218421.4]
  wire  _T_1185; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218422.4]
  wire  _T_1186; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218423.4]
  wire  _T_1187; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218424.4]
  wire  _T_1188; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218425.4]
  wire  _T_1189; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218426.4]
  wire  _T_1190; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218427.4]
  wire  _T_1191; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218428.4]
  wire  _T_1192; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218429.4]
  wire  _T_1193; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218430.4]
  wire  _T_1194; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218431.4]
  wire  _T_1195; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218432.4]
  wire  _T_1196; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218433.4]
  wire  _T_1197; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218434.4]
  wire  _T_1198; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218435.4]
  wire  _T_1199; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218436.4]
  wire  _T_1200; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218437.4]
  wire  _T_1201; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218438.4]
  wire  _T_1202; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218439.4]
  wire  _T_1203; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218440.4]
  wire  _T_1204; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218441.4]
  wire  _T_1205; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218442.4]
  wire  _T_1206; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218443.4]
  wire  _T_1207; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218444.4]
  wire  _T_1208; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218445.4]
  wire  _T_1209; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218446.4]
  wire  _T_1210; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218447.4]
  wire  _T_1211; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218448.4]
  wire  _T_1212; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218449.4]
  wire  _T_1213; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218450.4]
  wire  _T_1214; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218451.4]
  wire  _T_1215; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218452.4]
  wire  _T_1216; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218453.4]
  wire  _T_1217; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218454.4]
  wire  _T_1218; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218455.4]
  wire  _T_1219; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218456.4]
  wire  _T_1220; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218457.4]
  wire  _T_1221; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218458.4]
  wire  _T_1222; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218459.4]
  wire  _T_1223; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218460.4]
  wire  _T_1224; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218461.4]
  wire  _T_1225; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218462.4]
  wire  _T_1226; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218463.4]
  wire  _T_1227; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218464.4]
  wire  _T_1228; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218465.4]
  wire  _T_1229; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218466.4]
  wire  _T_1230; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218467.4]
  wire  _T_1231; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218468.4]
  wire  _T_1232; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218469.4]
  wire  _T_1233; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218470.4]
  wire  _T_1234; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218471.4]
  wire  _T_1235; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218472.4]
  wire  _T_1236; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218473.4]
  wire  _T_1237; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218474.4]
  wire  _T_1238; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218475.4]
  wire  _T_1239; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218476.4]
  wire  _T_1240; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218477.4]
  wire  _T_1241; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218478.4]
  wire  _T_1242; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218479.4]
  wire  _T_1243; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218480.4]
  wire  _T_1244; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218481.4]
  wire  _T_1245; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218482.4]
  wire  _T_1246; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218483.4]
  wire  _T_1247; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218484.4]
  wire  _T_1248; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218485.4]
  wire  _T_1249; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218486.4]
  wire  _T_1250; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218487.4]
  wire  _T_1251; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218488.4]
  wire  _T_1252; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218489.4]
  wire  _T_1253; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218490.4]
  wire  _T_1254; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218491.4]
  wire  _T_1255; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218492.4]
  wire  _T_1256; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218493.4]
  wire  _T_1257; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218494.4]
  wire  _T_1258; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218495.4]
  wire  _T_1259; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218496.4]
  wire  _T_1260; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218497.4]
  wire  _T_1261; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218498.4]
  wire  _T_1262; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218499.4]
  wire  _T_1263; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218500.4]
  wire  _T_1264; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218501.4]
  wire  _T_1265; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218502.4]
  wire  _T_1266; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218503.4]
  wire  _T_1267; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218504.4]
  wire  _T_1268; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218505.4]
  wire  _T_1269; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218506.4]
  wire  _T_1270; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218507.4]
  wire  _T_1271; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218508.4]
  wire  _T_1272; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218509.4]
  wire  _T_1273; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218510.4]
  wire  _T_1274; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218511.4]
  wire  _T_1275; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218512.4]
  wire  _T_1276; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218513.4]
  wire  _T_1277; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218514.4]
  wire  _T_1278; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218515.4]
  wire  _T_1279; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218516.4]
  wire  _T_1280; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218517.4]
  wire  _T_1281; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218518.4]
  wire  _T_1282; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218519.4]
  wire  _T_1283; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218520.4]
  wire  _T_1284; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218521.4]
  wire  _T_1285; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218522.4]
  wire  _T_1286; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218523.4]
  wire  _T_1287; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218524.4]
  wire  _T_1288; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218525.4]
  wire  _T_1289; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218526.4]
  wire  _T_1290; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218527.4]
  wire  _T_1291; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218528.4]
  wire  _T_1292; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218529.4]
  wire  _T_1293; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218530.4]
  wire  _T_1294; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218531.4]
  wire  _T_1295; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218532.4]
  wire  _T_1296; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218533.4]
  wire  _T_1297; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218534.4]
  wire  _T_1298; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218535.4]
  wire  _T_1299; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218536.4]
  wire  _T_1300; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218537.4]
  wire  _T_1301; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218538.4]
  wire  _T_1302; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218539.4]
  wire  _T_1303; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218540.4]
  wire  _T_1304; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218541.4]
  wire  _T_1305; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218542.4]
  wire  _T_1306; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218543.4]
  wire  _T_1307; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218544.4]
  wire  _T_1308; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218545.4]
  wire  _T_1309; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218546.4]
  wire  _T_1310; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218547.4]
  wire  _T_1311; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218548.4]
  wire  _T_1312; // @[CSR.scala 620:7:freechips.rocketchip.system.DefaultRV32Config.fir@218549.4]
  wire  _T_1313; // @[CSR.scala 619:62:freechips.rocketchip.system.DefaultRV32Config.fir@218550.4]
  wire  _T_1315; // @[CSR.scala 621:35:freechips.rocketchip.system.DefaultRV32Config.fir@218552.4]
  wire  _T_1316; // @[CSR.scala 621:32:freechips.rocketchip.system.DefaultRV32Config.fir@218553.4]
  wire  _T_1317; // @[CSR.scala 620:32:freechips.rocketchip.system.DefaultRV32Config.fir@218554.4]
  wire  _T_1318; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@218555.4]
  wire  _T_1319; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@218556.4]
  wire  _T_1320; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@218557.4]
  wire  _T_1321; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@218558.4]
  wire  _T_1322; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@218559.4]
  wire  _T_1323; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@218560.4]
  wire  _T_1324; // @[CSR.scala 622:66:freechips.rocketchip.system.DefaultRV32Config.fir@218561.4]
  wire  _T_1325; // @[CSR.scala 622:133:freechips.rocketchip.system.DefaultRV32Config.fir@218562.4]
  wire  _T_1326; // @[CSR.scala 622:130:freechips.rocketchip.system.DefaultRV32Config.fir@218563.4]
  wire  _T_1327; // @[CSR.scala 621:53:freechips.rocketchip.system.DefaultRV32Config.fir@218564.4]
  wire [11:0] _T_1328; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218565.4]
  wire  _T_1329; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218566.4]
  wire  _T_1333; // @[CSR.scala 623:42:freechips.rocketchip.system.DefaultRV32Config.fir@218570.4]
  wire  _T_1334; // @[CSR.scala 622:148:freechips.rocketchip.system.DefaultRV32Config.fir@218571.4]
  wire  _T_1337; // @[CSR.scala 625:21:freechips.rocketchip.system.DefaultRV32Config.fir@218574.4]
  wire  _T_1341; // @[CSR.scala 627:40:freechips.rocketchip.system.DefaultRV32Config.fir@218580.4]
  wire  _T_1342; // @[CSR.scala 627:71:freechips.rocketchip.system.DefaultRV32Config.fir@218581.4]
  wire  _T_1343; // @[CSR.scala 627:57:freechips.rocketchip.system.DefaultRV32Config.fir@218582.4]
  wire  _T_1344; // @[CSR.scala 627:99:freechips.rocketchip.system.DefaultRV32Config.fir@218583.4]
  wire  _T_1345; // @[CSR.scala 627:130:freechips.rocketchip.system.DefaultRV32Config.fir@218584.4]
  wire  _T_1346; // @[CSR.scala 627:116:freechips.rocketchip.system.DefaultRV32Config.fir@218585.4]
  wire  _T_1347; // @[CSR.scala 627:85:freechips.rocketchip.system.DefaultRV32Config.fir@218586.4]
  wire  _T_1351; // @[CSR.scala 629:17:freechips.rocketchip.system.DefaultRV32Config.fir@218591.4]
  wire  _T_1352; // @[CSR.scala 629:14:freechips.rocketchip.system.DefaultRV32Config.fir@218592.4]
  wire  _T_1353; // @[CSR.scala 628:64:freechips.rocketchip.system.DefaultRV32Config.fir@218593.4]
  wire  _T_1354; // @[CSR.scala 630:17:freechips.rocketchip.system.DefaultRV32Config.fir@218594.4]
  wire  _T_1355; // @[CSR.scala 630:14:freechips.rocketchip.system.DefaultRV32Config.fir@218595.4]
  wire  _T_1356; // @[CSR.scala 629:28:freechips.rocketchip.system.DefaultRV32Config.fir@218596.4]
  wire  _T_1358; // @[CSR.scala 631:14:freechips.rocketchip.system.DefaultRV32Config.fir@218598.4]
  wire  _T_1360; // @[CSR.scala 631:32:freechips.rocketchip.system.DefaultRV32Config.fir@218600.4]
  wire  _T_1361; // @[CSR.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@218601.4]
  wire  _T_1363; // @[CSR.scala 632:17:freechips.rocketchip.system.DefaultRV32Config.fir@218603.4]
  wire [11:0] _T_1385; // @[CSR.scala 643:37:freechips.rocketchip.system.DefaultRV32Config.fir@218632.4]
  wire [11:0] debugTVec; // @[CSR.scala 643:22:freechips.rocketchip.system.DefaultRV32Config.fir@218633.4]
  wire [31:0] _T_1394; // @[CSR.scala 651:19:freechips.rocketchip.system.DefaultRV32Config.fir@218643.4]
  wire [6:0] _T_1396; // @[CSR.scala 652:59:freechips.rocketchip.system.DefaultRV32Config.fir@218645.4]
  wire [31:0] _T_1398; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@218647.4]
  wire  _T_1401; // @[CSR.scala 654:28:freechips.rocketchip.system.DefaultRV32Config.fir@218650.4]
  wire  _T_1403; // @[CSR.scala 654:94:freechips.rocketchip.system.DefaultRV32Config.fir@218652.4]
  wire  _T_1404; // @[CSR.scala 654:55:freechips.rocketchip.system.DefaultRV32Config.fir@218653.4]
  wire [31:0] _T_1406; // @[CSR.scala 655:56:freechips.rocketchip.system.DefaultRV32Config.fir@218655.4]
  wire [31:0] notDebugTVec; // @[CSR.scala 655:8:freechips.rocketchip.system.DefaultRV32Config.fir@218656.4]
  wire [31:0] tvec; // @[CSR.scala 657:17:freechips.rocketchip.system.DefaultRV32Config.fir@218657.4]
  wire  _T_1411; // @[CSR.scala 663:32:freechips.rocketchip.system.DefaultRV32Config.fir@218667.4]
  wire  _T_1412; // @[CSR.scala 663:53:freechips.rocketchip.system.DefaultRV32Config.fir@218668.4]
  wire  _T_1413; // @[CSR.scala 663:37:freechips.rocketchip.system.DefaultRV32Config.fir@218669.4]
  wire  _T_1414; // @[CSR.scala 663:74:freechips.rocketchip.system.DefaultRV32Config.fir@218670.4]
  wire  _T_1417; // @[CSR.scala 668:53:freechips.rocketchip.system.DefaultRV32Config.fir@218678.4]
  reg [1:0] _T_1419; // @[CSR.scala 668:24:freechips.rocketchip.system.DefaultRV32Config.fir@218680.4]
  wire [1:0] _T_1421; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218686.4]
  wire [1:0] _T_1423; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218688.4]
  wire [2:0] _T_1425; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218690.4]
  wire  _T_1427; // @[CSR.scala 673:79:freechips.rocketchip.system.DefaultRV32Config.fir@218692.4]
  wire  _T_1429; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218694.4]
  wire  _T_1430; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218695.4]
  wire  _T_1432; // @[CSR.scala 675:18:freechips.rocketchip.system.DefaultRV32Config.fir@218701.4]
  wire  _T_1434; // @[CSR.scala 675:36:freechips.rocketchip.system.DefaultRV32Config.fir@218703.4]
  wire  _GEN_34; // @[CSR.scala 675:51:freechips.rocketchip.system.DefaultRV32Config.fir@218704.4]
  wire  _T_1435; // @[CSR.scala 676:28:freechips.rocketchip.system.DefaultRV32Config.fir@218707.4]
  wire  _T_1436; // @[CSR.scala 676:32:freechips.rocketchip.system.DefaultRV32Config.fir@218708.4]
  wire  _T_1437; // @[CSR.scala 676:55:freechips.rocketchip.system.DefaultRV32Config.fir@218709.4]
  wire  _T_1439; // @[CSR.scala 678:22:freechips.rocketchip.system.DefaultRV32Config.fir@218714.4]
  wire  _GEN_36; // @[CSR.scala 678:36:freechips.rocketchip.system.DefaultRV32Config.fir@218715.4]
  wire  _T_1447; // @[CSR.scala 681:10:freechips.rocketchip.system.DefaultRV32Config.fir@218732.4]
  wire  _T_1448; // @[CSR.scala 681:42:freechips.rocketchip.system.DefaultRV32Config.fir@218733.4]
  wire  _T_1449; // @[CSR.scala 681:29:freechips.rocketchip.system.DefaultRV32Config.fir@218734.4]
  wire  _T_1451; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218736.4]
  wire  _T_1452; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218737.4]
  wire [31:0] _T_1453; // @[CSR.scala 1091:28:freechips.rocketchip.system.DefaultRV32Config.fir@218742.4]
  wire [31:0] _T_1454; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@218743.4]
  wire [31:0] epc; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@218744.4]
  wire [1:0] _T_1456; // @[CSR.scala 692:86:freechips.rocketchip.system.DefaultRV32Config.fir@218754.10]
  wire [1:0] _T_1457; // @[CSR.scala 692:56:freechips.rocketchip.system.DefaultRV32Config.fir@218755.10]
  wire  _GEN_38; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@218751.8]
  wire  _GEN_47; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire [1:0] _GEN_48; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire  _GEN_54; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire [1:0] _GEN_55; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire  _GEN_56; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  wire  _GEN_66; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire [1:0] _GEN_67; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire  _GEN_72; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire [1:0] _GEN_73; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire  _GEN_74; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  wire  _GEN_84; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire [1:0] _GEN_85; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire  _GEN_90; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire [1:0] _GEN_91; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire  _GEN_92; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  wire [31:0] _GEN_95; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@219123.8]
  wire  _GEN_100; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  wire [1:0] _GEN_101; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  wire [31:0] _GEN_103; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  wire [1:0] _GEN_110; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@219104.4]
  reg  _T_1802; // @[Reg.scala 27:20:freechips.rocketchip.system.DefaultRV32Config.fir@219151.4]
  wire  _GEN_117; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@219152.4]
  wire [31:0] _T_1804; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219170.4]
  wire [31:0] _T_1805; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219171.4]
  wire [31:0] _T_1806; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219172.4]
  wire [31:0] _T_1807; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219173.4]
  wire [31:0] _T_1808; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219174.4]
  wire [15:0] _T_1809; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219175.4]
  wire [31:0] _T_1810; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219176.4]
  wire [31:0] _T_1811; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219177.4]
  wire [31:0] _T_1812; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219178.4]
  wire [31:0] _T_1813; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219179.4]
  wire [31:0] _T_1814; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219180.4]
  wire [31:0] _T_1816; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219182.4]
  wire [31:0] _T_1817; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219183.4]
  wire [31:0] _T_1818; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219184.4]
  wire [4:0] _T_1819; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219185.4]
  wire [2:0] _T_1820; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219186.4]
  wire [7:0] _T_1821; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219187.4]
  wire [63:0] _T_1822; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219188.4]
  wire [63:0] _T_1823; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219189.4]
  wire [31:0] _T_1969; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219335.4]
  wire [63:0] _T_1970; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219336.4]
  wire [63:0] _T_1971; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219337.4]
  wire [31:0] _T_1972; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219338.4]
  wire [31:0] _T_1973; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219339.4]
  wire [31:0] _T_1974; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219340.4]
  wire [31:0] _T_1975; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219341.4]
  wire [31:0] _T_1976; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219342.4]
  wire [31:0] _T_1977; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219343.4]
  wire [31:0] _T_1978; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219344.4]
  wire [31:0] _T_1979; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219345.4]
  wire [31:0] _T_1980; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219346.4]
  wire [31:0] _T_1981; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219347.4]
  wire [31:0] _T_1982; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219348.4]
  wire [31:0] _T_1983; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219349.4]
  wire [31:0] _T_1984; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219350.4]
  wire [31:0] _T_1985; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219351.4]
  wire [31:0] _T_1986; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219352.4]
  wire [31:0] _T_1987; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219353.4]
  wire [31:0] _T_1988; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219354.4]
  wire [31:0] _T_1989; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219355.4]
  wire [29:0] _T_1992; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219358.4]
  wire [29:0] _T_1993; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219359.4]
  wire [29:0] _T_1994; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219360.4]
  wire [29:0] _T_1995; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219361.4]
  wire [29:0] _T_1996; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219362.4]
  wire [29:0] _T_1997; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219363.4]
  wire [29:0] _T_1998; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219364.4]
  wire [29:0] _T_1999; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219365.4]
  wire [31:0] _T_2008; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219374.4]
  wire [31:0] _T_2009; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219375.4]
  wire [31:0] _T_2011; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219377.4]
  wire [31:0] _T_2013; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219379.4]
  wire [31:0] _T_2014; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219380.4]
  wire [31:0] _T_2015; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219381.4]
  wire [31:0] _T_2016; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219382.4]
  wire [31:0] _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219383.4]
  wire [31:0] _T_2017; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219383.4]
  wire [31:0] _T_2018; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219384.4]
  wire [31:0] _T_2019; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219385.4]
  wire [31:0] _T_2020; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219386.4]
  wire [31:0] _T_2021; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219387.4]
  wire [31:0] _T_2022; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219388.4]
  wire [31:0] _T_2024; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219390.4]
  wire [31:0] _T_2025; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219391.4]
  wire [31:0] _T_2026; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219392.4]
  wire [31:0] _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219393.4]
  wire [31:0] _T_2027; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219393.4]
  wire [31:0] _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219394.4]
  wire [31:0] _T_2028; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219394.4]
  wire [31:0] _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219395.4]
  wire [31:0] _T_2029; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219395.4]
  wire [63:0] _GEN_510; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219396.4]
  wire [63:0] _T_2030; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219396.4]
  wire [63:0] _T_2031; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219397.4]
  wire [63:0] _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219543.4]
  wire [63:0] _T_2177; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219543.4]
  wire [63:0] _T_2178; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219544.4]
  wire [63:0] _T_2179; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219545.4]
  wire [63:0] _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219546.4]
  wire [63:0] _T_2180; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219546.4]
  wire [63:0] _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219547.4]
  wire [63:0] _T_2181; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219547.4]
  wire [63:0] _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219548.4]
  wire [63:0] _T_2182; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219548.4]
  wire [63:0] _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219549.4]
  wire [63:0] _T_2183; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219549.4]
  wire [63:0] _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219550.4]
  wire [63:0] _T_2184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219550.4]
  wire [63:0] _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219551.4]
  wire [63:0] _T_2185; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219551.4]
  wire [63:0] _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219552.4]
  wire [63:0] _T_2186; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219552.4]
  wire [63:0] _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219553.4]
  wire [63:0] _T_2187; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219553.4]
  wire [63:0] _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219554.4]
  wire [63:0] _T_2188; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219554.4]
  wire [63:0] _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219555.4]
  wire [63:0] _T_2189; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219555.4]
  wire [63:0] _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219556.4]
  wire [63:0] _T_2190; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219556.4]
  wire [63:0] _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219557.4]
  wire [63:0] _T_2191; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219557.4]
  wire [63:0] _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219558.4]
  wire [63:0] _T_2192; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219558.4]
  wire [63:0] _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219559.4]
  wire [63:0] _T_2193; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219559.4]
  wire [63:0] _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219560.4]
  wire [63:0] _T_2194; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219560.4]
  wire [63:0] _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219561.4]
  wire [63:0] _T_2195; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219561.4]
  wire [63:0] _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219562.4]
  wire [63:0] _T_2196; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219562.4]
  wire [63:0] _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219563.4]
  wire [63:0] _T_2197; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219563.4]
  wire [63:0] _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219566.4]
  wire [63:0] _T_2200; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219566.4]
  wire [63:0] _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219567.4]
  wire [63:0] _T_2201; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219567.4]
  wire [63:0] _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219568.4]
  wire [63:0] _T_2202; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219568.4]
  wire [63:0] _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219569.4]
  wire [63:0] _T_2203; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219569.4]
  wire [63:0] _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219570.4]
  wire [63:0] _T_2204; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219570.4]
  wire [63:0] _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219571.4]
  wire [63:0] _T_2205; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219571.4]
  wire [63:0] _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219572.4]
  wire [63:0] _T_2206; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219572.4]
  wire [63:0] _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219573.4]
  wire [63:0] _T_2207; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219573.4]
  wire [63:0] _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219582.4]
  wire [63:0] _T_2216; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219582.4]
  wire [63:0] _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219583.4]
  wire [63:0] _T_2217; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219583.4]
  wire [63:0] _GEN_540; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219585.4]
  wire [63:0] _T_2219; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219585.4]
  wire  _T_2223; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219592.6]
  wire  _T_2224; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219593.6]
  wire  _T_2225; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219594.6]
  wire [4:0] _T_4729; // @[CSR.scala 797:30:freechips.rocketchip.system.DefaultRV32Config.fir@222941.6]
  wire [4:0] _GEN_118; // @[CSR.scala 796:30:freechips.rocketchip.system.DefaultRV32Config.fir@222940.4]
  wire  _T_4733; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@222948.4]
  wire  csr_wen; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@222949.4]
  wire [102:0] _T_4747; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@222967.8 :freechips.rocketchip.system.DefaultRV32Config.fir@222969.8]
  wire  _T_4779; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@223035.8]
  wire  _T_4781; // @[CSR.scala 1095:73:freechips.rocketchip.system.DefaultRV32Config.fir@223046.8]
  wire [1:0] _GEN_124; // @[CSR.scala 811:39:freechips.rocketchip.system.DefaultRV32Config.fir@222964.6]
  wire  _T_4786; // @[CSR.scala 841:33:freechips.rocketchip.system.DefaultRV32Config.fir@223055.8]
  wire  _T_4789; // @[CSR.scala 841:43:freechips.rocketchip.system.DefaultRV32Config.fir@223058.8]
  wire [31:0] _T_4790; // @[CSR.scala 843:25:freechips.rocketchip.system.DefaultRV32Config.fir@223060.10]
  wire  _T_4791; // @[CSR.scala 843:35:freechips.rocketchip.system.DefaultRV32Config.fir@223061.10]
  wire [3:0] _T_4792; // @[CSR.scala 843:38:freechips.rocketchip.system.DefaultRV32Config.fir@223062.10]
  wire [31:0] _GEN_541; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@223063.10]
  wire [31:0] _T_4793; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@223063.10]
  wire [31:0] _T_4794; // @[CSR.scala 843:23:freechips.rocketchip.system.DefaultRV32Config.fir@223064.10]
  wire [31:0] _T_4795; // @[CSR.scala 843:55:freechips.rocketchip.system.DefaultRV32Config.fir@223065.10]
  wire [31:0] _T_4797; // @[CSR.scala 843:73:freechips.rocketchip.system.DefaultRV32Config.fir@223067.10]
  wire [31:0] _T_4798; // @[CSR.scala 843:62:freechips.rocketchip.system.DefaultRV32Config.fir@223068.10]
  wire [15:0] _T_4813; // @[CSR.scala 851:59:freechips.rocketchip.system.DefaultRV32Config.fir@223087.8]
  wire [15:0] _T_4815; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@223089.8]
  wire [31:0] _GEN_542; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223090.8]
  wire [31:0] _T_4816; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223090.8]
  wire [31:0] _T_4821; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@223095.8]
  wire [31:0] _T_4840; // @[CSR.scala 858:59:freechips.rocketchip.system.DefaultRV32Config.fir@223138.8]
  wire [31:0] _T_4842; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@223143.8]
  wire [31:0] _T_4843; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@223144.8]
  wire [31:0] _T_4844; // @[CSR.scala 863:62:freechips.rocketchip.system.DefaultRV32Config.fir@223154.8]
  wire [63:0] _T_4847; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223163.8]
  wire [63:0] _GEN_145; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@223161.6]
  wire [63:0] _T_4851; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223171.8]
  wire [63:0] _GEN_147; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@223168.6]
  wire [63:0] _T_4854; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223178.8]
  wire [63:0] _GEN_149; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@223176.6]
  wire [63:0] _T_4858; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223186.8]
  wire [63:0] _GEN_151; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@223183.6]
  wire [31:0] _GEN_154; // @[CSR.scala 876:40:freechips.rocketchip.system.DefaultRV32Config.fir@223191.6]
  wire [31:0] _GEN_156; // @[CSR.scala 877:40:freechips.rocketchip.system.DefaultRV32Config.fir@223195.6]
  wire [31:0] _GEN_158; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@223199.6]
  wire [31:0] _GEN_159; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@223199.6]
  wire  _T_4877; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@223243.8]
  wire [1:0] _GEN_169; // @[CSR.scala 897:41:freechips.rocketchip.system.DefaultRV32Config.fir@223256.6]
  wire [31:0] _T_4918; // @[CSR.scala 911:54:freechips.rocketchip.system.DefaultRV32Config.fir@223336.8]
  wire [31:0] _T_4919; // @[CSR.scala 911:52:freechips.rocketchip.system.DefaultRV32Config.fir@223337.8]
  wire [31:0] _T_4920; // @[CSR.scala 911:78:freechips.rocketchip.system.DefaultRV32Config.fir@223338.8]
  wire [31:0] _T_4921; // @[CSR.scala 911:69:freechips.rocketchip.system.DefaultRV32Config.fir@223339.8]
  wire  _T_4945; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@223391.8]
  wire  _T_4947; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@223393.8]
  wire [31:0] _T_4951; // @[CSR.scala 925:64:freechips.rocketchip.system.DefaultRV32Config.fir@223403.8]
  wire [31:0] _T_4953; // @[CSR.scala 925:81:freechips.rocketchip.system.DefaultRV32Config.fir@223405.8]
  wire [31:0] _T_4957; // @[CSR.scala 929:64:freechips.rocketchip.system.DefaultRV32Config.fir@223421.8]
  wire  _T_4960; // @[CSR.scala 942:37:freechips.rocketchip.system.DefaultRV32Config.fir@223444.6]
  wire  _T_4961; // @[CSR.scala 942:55:freechips.rocketchip.system.DefaultRV32Config.fir@223445.6]
  wire [31:0] _T_4995; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@223503.10]
  wire [31:0] _T_4996; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223504.10]
  wire [31:0] _T_5001; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@223509.10]
  wire  _T_5019; // @[CSR.scala 952:38:freechips.rocketchip.system.DefaultRV32Config.fir@223545.10]
  wire  _GEN_191; // @[CSR.scala 954:51:freechips.rocketchip.system.DefaultRV32Config.fir@223552.10]
  wire  _T_5103; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223691.6]
  wire  _T_5104; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223692.6]
  wire  _T_5114; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223713.8]
  wire  _T_5116; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223717.6]
  wire  _T_5118; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223719.6]
  wire  _T_5119; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223720.6]
  wire  _T_5120; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223721.6]
  wire  _T_5121; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223722.6]
  wire  _T_5122; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223723.6]
  wire [31:0] _GEN_262; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223724.6]
  wire  _T_5123; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223727.6]
  wire  _T_5124; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223728.6]
  wire  _T_5134; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223749.8]
  wire  _T_5136; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223753.6]
  wire  _T_5138; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223755.6]
  wire  _T_5139; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223756.6]
  wire  _T_5140; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223757.6]
  wire  _T_5141; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223758.6]
  wire  _T_5142; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223759.6]
  wire [31:0] _GEN_269; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223760.6]
  wire  _T_5143; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223763.6]
  wire  _T_5144; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223764.6]
  wire  _T_5154; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223785.8]
  wire  _T_5156; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223789.6]
  wire  _T_5158; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223791.6]
  wire  _T_5159; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223792.6]
  wire  _T_5160; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223793.6]
  wire  _T_5161; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223794.6]
  wire  _T_5162; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223795.6]
  wire [31:0] _GEN_276; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223796.6]
  wire  _T_5163; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223799.6]
  wire  _T_5164; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223800.6]
  wire  _T_5174; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223821.8]
  wire  _T_5176; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223825.6]
  wire  _T_5178; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223827.6]
  wire  _T_5179; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223828.6]
  wire  _T_5180; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223829.6]
  wire  _T_5181; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223830.6]
  wire  _T_5182; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223831.6]
  wire [31:0] _GEN_283; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223832.6]
  wire  _T_5183; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223835.6]
  wire  _T_5184; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223836.6]
  wire  _T_5196; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223861.6]
  wire  _T_5198; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223863.6]
  wire  _T_5199; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223864.6]
  wire  _T_5200; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223865.6]
  wire  _T_5201; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223866.6]
  wire  _T_5202; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223867.6]
  wire [31:0] _GEN_290; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223868.6]
  wire  _T_5203; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223871.6]
  wire  _T_5204; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223872.6]
  wire  _T_5216; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223897.6]
  wire  _T_5218; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223899.6]
  wire  _T_5219; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223900.6]
  wire  _T_5220; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223901.6]
  wire  _T_5221; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223902.6]
  wire  _T_5222; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223903.6]
  wire [31:0] _GEN_297; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223904.6]
  wire  _T_5223; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223907.6]
  wire  _T_5224; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223908.6]
  wire  _T_5236; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223933.6]
  wire  _T_5238; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223935.6]
  wire  _T_5239; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223936.6]
  wire  _T_5240; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223937.6]
  wire  _T_5241; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223938.6]
  wire  _T_5242; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223939.6]
  wire [31:0] _GEN_304; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223940.6]
  wire  _T_5243; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223943.6]
  wire  _T_5244; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223944.6]
  wire  _T_5260; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223973.6]
  wire  _T_5261; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223974.6]
  wire  _T_5262; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223975.6]
  wire [31:0] _GEN_311; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223976.6]
  wire [31:0] _T_5263; // @[CSR.scala 978:23:freechips.rocketchip.system.DefaultRV32Config.fir@223980.8]
  wire [31:0] _T_5265; // @[CSR.scala 978:38:freechips.rocketchip.system.DefaultRV32Config.fir@223982.8]
  wire [31:0] _T_5266; // @[CSR.scala 978:31:freechips.rocketchip.system.DefaultRV32Config.fir@223983.8]
  wire [1:0] _GEN_324; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [63:0] _GEN_344; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [63:0] _GEN_346; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_349; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_350; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_408; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_415; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_422; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_429; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_436; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_443; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_450; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire [31:0] _GEN_457; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  wire  _T_5292; // @[CSR.scala 1049:26:freechips.rocketchip.system.DefaultRV32Config.fir@224112.4]
  assign system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 588:31:freechips.rocketchip.system.DefaultRV32Config.fir@218024.4]
  assign _T_798 = {io_rw_addr, 20'h0}; // @[CSR.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@218025.4]
  assign _T_805 = _T_798 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218032.4]
  assign _T_806 = _T_805 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218033.4]
  assign _T_807 = _T_798 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218034.4]
  assign _T_808 = _T_807 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218035.4]
  assign _T_810 = _T_806 | _T_808; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@218037.4]
  assign insn_ret = system_insn & _T_810; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218052.4]
  assign _T_1780 = ~io_rw_addr[9]; // @[CSR.scala 738:36:freechips.rocketchip.system.DefaultRV32Config.fir@219106.6]
  assign _GEN_93 = io_rw_addr[10] ? reg_dcsr_prv : reg_mstatus_mpp; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@219123.8]
  assign _GEN_102 = _T_1780 ? {{1'd0}, reg_mstatus_spp} : _GEN_93; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  assign _T_799 = _T_798 & 32'h10100000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218026.4]
  assign _T_800 = _T_799 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218027.4]
  assign insn_call = system_insn & _T_800; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218048.4]
  assign _T_803 = _T_799 == 32'h100000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218030.4]
  assign insn_break = system_insn & _T_803; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218050.4]
  assign _T_1420 = insn_call | insn_break; // @[CSR.scala 672:29:freechips.rocketchip.system.DefaultRV32Config.fir@218684.4]
  assign exception = _T_1420 | io_exception; // @[CSR.scala 672:43:freechips.rocketchip.system.DefaultRV32Config.fir@218685.4]
  assign _GEN_494 = {{2'd0}, reg_mstatus_prv}; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@218606.4]
  assign _T_1366 = _GEN_494 + 4'h8; // @[CSR.scala 636:36:freechips.rocketchip.system.DefaultRV32Config.fir@218607.4]
  assign _T_1367 = insn_break ? 32'h3 : io_cause; // @[CSR.scala 637:14:freechips.rocketchip.system.DefaultRV32Config.fir@218608.4]
  assign cause = insn_call ? {{28'd0}, _T_1366} : _T_1367; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@218609.4]
  assign cause_lsbs = cause[7:0]; // @[CSR.scala 638:25:freechips.rocketchip.system.DefaultRV32Config.fir@218610.4]
  assign _T_1369 = cause_lsbs == 8'he; // @[CSR.scala 639:53:freechips.rocketchip.system.DefaultRV32Config.fir@218612.4]
  assign causeIsDebugInt = cause[31] & _T_1369; // @[CSR.scala 639:39:freechips.rocketchip.system.DefaultRV32Config.fir@218613.4]
  assign _T_1381 = reg_singleStepped | causeIsDebugInt; // @[CSR.scala 642:60:freechips.rocketchip.system.DefaultRV32Config.fir@218627.4]
  assign _T_1371 = ~cause[31]; // @[CSR.scala 640:29:freechips.rocketchip.system.DefaultRV32Config.fir@218615.4]
  assign causeIsDebugTrigger = _T_1371 & _T_1369; // @[CSR.scala 640:44:freechips.rocketchip.system.DefaultRV32Config.fir@218617.4]
  assign _T_1382 = _T_1381 | causeIsDebugTrigger; // @[CSR.scala 642:79:freechips.rocketchip.system.DefaultRV32Config.fir@218628.4]
  assign _T_1375 = _T_1371 & insn_break; // @[CSR.scala 641:42:freechips.rocketchip.system.DefaultRV32Config.fir@218620.4]
  assign _T_1378 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@218623.4]
  assign _T_1379 = _T_1378 >> reg_mstatus_prv; // @[CSR.scala 641:134:freechips.rocketchip.system.DefaultRV32Config.fir@218624.4]
  assign causeIsDebugBreak = _T_1375 & _T_1379[0]; // @[CSR.scala 641:56:freechips.rocketchip.system.DefaultRV32Config.fir@218626.4]
  assign _T_1383 = _T_1382 | causeIsDebugBreak; // @[CSR.scala 642:102:freechips.rocketchip.system.DefaultRV32Config.fir@218629.4]
  assign trapToDebug = _T_1383 | reg_debug; // @[CSR.scala 642:123:freechips.rocketchip.system.DefaultRV32Config.fir@218630.4]
  assign _T_1455 = ~reg_debug; // @[CSR.scala 689:13:freechips.rocketchip.system.DefaultRV32Config.fir@218750.8]
  assign _GEN_42 = _T_1455 ? 2'h3 : reg_mstatus_prv; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@218751.8]
  assign _T_1386 = reg_mstatus_prv <= 2'h1; // @[CSR.scala 644:59:freechips.rocketchip.system.DefaultRV32Config.fir@218634.4]
  assign read_mideleg = reg_mideleg & 32'h222; // @[CSR.scala 372:36:freechips.rocketchip.system.DefaultRV32Config.fir@217075.4]
  assign _T_1389 = read_mideleg >> cause_lsbs; // @[CSR.scala 644:102:freechips.rocketchip.system.DefaultRV32Config.fir@218637.4]
  assign read_medeleg = reg_medeleg & 32'hb15d; // @[CSR.scala 376:36:freechips.rocketchip.system.DefaultRV32Config.fir@217078.4]
  assign _T_1391 = read_medeleg >> cause_lsbs; // @[CSR.scala 644:128:freechips.rocketchip.system.DefaultRV32Config.fir@218639.4]
  assign _T_1393 = cause[31] ? _T_1389[0] : _T_1391[0]; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@218641.4]
  assign delegate = _T_1386 & _T_1393; // @[CSR.scala 644:68:freechips.rocketchip.system.DefaultRV32Config.fir@218642.4]
  assign _GEN_50 = delegate ? 2'h1 : 2'h3; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_61 = trapToDebug ? _GEN_42 : _GEN_50; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_79 = exception ? _GEN_61 : reg_mstatus_prv; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign new_prv = insn_ret ? _GEN_102 : _GEN_79; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@219104.4]
  assign _T_1 = new_prv == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@216986.4]
  assign read_mcounteren = reg_mcounteren & 32'h7; // @[CSR.scala 392:30:freechips.rocketchip.system.DefaultRV32Config.fir@217087.4]
  assign read_scounteren = reg_scounteren & 32'h7; // @[CSR.scala 396:36:freechips.rocketchip.system.DefaultRV32Config.fir@217090.4]
  assign _GEN_495 = {{5'd0}, io_retire}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217102.4]
  assign _T_40 = _T_39 + _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217102.4]
  assign _T_44 = _T_41 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@217108.6]
  assign _T_45 = {_T_41,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217111.4]
  assign _T_46 = ~io_csr_stall; // @[CSR.scala 415:103:freechips.rocketchip.system.DefaultRV32Config.fir@217112.4]
  assign _GEN_496 = {{5'd0}, _T_46}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217114.4]
  assign _T_48 = _T_47 + _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@217114.4]
  assign _T_52 = _T_49 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@217120.6]
  assign _T_53 = {_T_49,_T_47}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217123.4]
  assign mip_seip = reg_mip_seip | io_interrupts_seip; // @[CSR.scala 426:57:freechips.rocketchip.system.DefaultRV32Config.fir@217130.4]
  assign _T_61 = {io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@217139.4]
  assign _T_69 = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,_T_61}; // @[CSR.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@217147.4]
  assign read_mip = _T_69 & 16'haaa; // @[CSR.scala 428:29:freechips.rocketchip.system.DefaultRV32Config.fir@217148.4]
  assign _GEN_497 = {{16'd0}, read_mip}; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@217149.4]
  assign pending_interrupts = _GEN_497 & reg_mie; // @[CSR.scala 431:56:freechips.rocketchip.system.DefaultRV32Config.fir@217149.4]
  assign d_interrupts = {io_interrupts_debug, 14'h0}; // @[CSR.scala 432:42:freechips.rocketchip.system.DefaultRV32Config.fir@217151.4]
  assign _T_72 = _T_1386 | reg_mstatus_mie; // @[CSR.scala 433:51:freechips.rocketchip.system.DefaultRV32Config.fir@217153.4]
  assign _T_73 = ~pending_interrupts; // @[CSR.scala 433:73:freechips.rocketchip.system.DefaultRV32Config.fir@217154.4]
  assign _T_74 = _T_73 | read_mideleg; // @[CSR.scala 433:93:freechips.rocketchip.system.DefaultRV32Config.fir@217155.4]
  assign _T_75 = ~_T_74; // @[CSR.scala 433:71:freechips.rocketchip.system.DefaultRV32Config.fir@217156.4]
  assign m_interrupts = _T_72 ? _T_75 : 32'h0; // @[CSR.scala 433:25:freechips.rocketchip.system.DefaultRV32Config.fir@217157.4]
  assign _T_76 = reg_mstatus_prv < 2'h1; // @[CSR.scala 434:42:freechips.rocketchip.system.DefaultRV32Config.fir@217158.4]
  assign _T_77 = reg_mstatus_prv == 2'h1; // @[CSR.scala 434:70:freechips.rocketchip.system.DefaultRV32Config.fir@217159.4]
  assign _T_78 = _T_77 & reg_mstatus_sie; // @[CSR.scala 434:80:freechips.rocketchip.system.DefaultRV32Config.fir@217160.4]
  assign _T_79 = _T_76 | _T_78; // @[CSR.scala 434:50:freechips.rocketchip.system.DefaultRV32Config.fir@217161.4]
  assign _T_80 = pending_interrupts & read_mideleg; // @[CSR.scala 434:120:freechips.rocketchip.system.DefaultRV32Config.fir@217162.4]
  assign s_interrupts = _T_79 ? _T_80 : 32'h0; // @[CSR.scala 434:25:freechips.rocketchip.system.DefaultRV32Config.fir@217163.4]
  assign _T_119 = d_interrupts[14] | d_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217202.4]
  assign _T_120 = _T_119 | d_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217203.4]
  assign _T_121 = _T_120 | d_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217204.4]
  assign _T_122 = _T_121 | d_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217205.4]
  assign _T_123 = _T_122 | d_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217206.4]
  assign _T_124 = _T_123 | d_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217207.4]
  assign _T_125 = _T_124 | d_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217208.4]
  assign _T_126 = _T_125 | d_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217209.4]
  assign _T_127 = _T_126 | d_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217210.4]
  assign _T_128 = _T_127 | d_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217211.4]
  assign _T_129 = _T_128 | d_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217212.4]
  assign _T_130 = _T_129 | m_interrupts[15]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217213.4]
  assign _T_131 = _T_130 | m_interrupts[14]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217214.4]
  assign _T_132 = _T_131 | m_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217215.4]
  assign _T_133 = _T_132 | m_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217216.4]
  assign _T_134 = _T_133 | m_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217217.4]
  assign _T_135 = _T_134 | m_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217218.4]
  assign _T_136 = _T_135 | m_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217219.4]
  assign _T_137 = _T_136 | m_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217220.4]
  assign _T_138 = _T_137 | m_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217221.4]
  assign _T_139 = _T_138 | m_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217222.4]
  assign _T_140 = _T_139 | m_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217223.4]
  assign _T_141 = _T_140 | m_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217224.4]
  assign _T_142 = _T_141 | m_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217225.4]
  assign _T_143 = _T_142 | s_interrupts[15]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217226.4]
  assign _T_144 = _T_143 | s_interrupts[14]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217227.4]
  assign _T_145 = _T_144 | s_interrupts[13]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217228.4]
  assign _T_146 = _T_145 | s_interrupts[12]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217229.4]
  assign _T_147 = _T_146 | s_interrupts[11]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217230.4]
  assign _T_148 = _T_147 | s_interrupts[3]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217231.4]
  assign _T_149 = _T_148 | s_interrupts[7]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217232.4]
  assign _T_150 = _T_149 | s_interrupts[9]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217233.4]
  assign _T_151 = _T_150 | s_interrupts[1]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217234.4]
  assign _T_152 = _T_151 | s_interrupts[5]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217235.4]
  assign _T_153 = _T_152 | s_interrupts[8]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217236.4]
  assign _T_154 = _T_153 | s_interrupts[0]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217237.4]
  assign anyInterrupt = _T_154 | s_interrupts[4]; // @[CSR.scala 1064:90:freechips.rocketchip.system.DefaultRV32Config.fir@217238.4]
  assign _T_193 = s_interrupts[0] ? 3'h0 : 3'h4; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217277.4]
  assign _T_194 = s_interrupts[8] ? 4'h8 : {{1'd0}, _T_193}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217278.4]
  assign _T_195 = s_interrupts[5] ? 4'h5 : _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217279.4]
  assign _T_196 = s_interrupts[1] ? 4'h1 : _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217280.4]
  assign _T_197 = s_interrupts[9] ? 4'h9 : _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217281.4]
  assign _T_198 = s_interrupts[7] ? 4'h7 : _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217282.4]
  assign _T_199 = s_interrupts[3] ? 4'h3 : _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217283.4]
  assign _T_200 = s_interrupts[11] ? 4'hb : _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217284.4]
  assign _T_201 = s_interrupts[12] ? 4'hc : _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217285.4]
  assign _T_202 = s_interrupts[13] ? 4'hd : _T_201; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217286.4]
  assign _T_203 = s_interrupts[14] ? 4'he : _T_202; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217287.4]
  assign _T_204 = s_interrupts[15] ? 4'hf : _T_203; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217288.4]
  assign _T_205 = m_interrupts[4] ? 4'h4 : _T_204; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217289.4]
  assign _T_206 = m_interrupts[0] ? 4'h0 : _T_205; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217290.4]
  assign _T_207 = m_interrupts[8] ? 4'h8 : _T_206; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217291.4]
  assign _T_208 = m_interrupts[5] ? 4'h5 : _T_207; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217292.4]
  assign _T_209 = m_interrupts[1] ? 4'h1 : _T_208; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217293.4]
  assign _T_210 = m_interrupts[9] ? 4'h9 : _T_209; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217294.4]
  assign _T_211 = m_interrupts[7] ? 4'h7 : _T_210; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217295.4]
  assign _T_212 = m_interrupts[3] ? 4'h3 : _T_211; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217296.4]
  assign _T_213 = m_interrupts[11] ? 4'hb : _T_212; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217297.4]
  assign _T_214 = m_interrupts[12] ? 4'hc : _T_213; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217298.4]
  assign _T_215 = m_interrupts[13] ? 4'hd : _T_214; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217299.4]
  assign _T_216 = m_interrupts[14] ? 4'he : _T_215; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217300.4]
  assign _T_217 = m_interrupts[15] ? 4'hf : _T_216; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217301.4]
  assign _T_218 = d_interrupts[4] ? 4'h4 : _T_217; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217302.4]
  assign _T_219 = d_interrupts[0] ? 4'h0 : _T_218; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217303.4]
  assign _T_220 = d_interrupts[8] ? 4'h8 : _T_219; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217304.4]
  assign _T_221 = d_interrupts[5] ? 4'h5 : _T_220; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217305.4]
  assign _T_222 = d_interrupts[1] ? 4'h1 : _T_221; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217306.4]
  assign _T_223 = d_interrupts[9] ? 4'h9 : _T_222; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217307.4]
  assign _T_224 = d_interrupts[7] ? 4'h7 : _T_223; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217308.4]
  assign _T_225 = d_interrupts[3] ? 4'h3 : _T_224; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217309.4]
  assign _T_226 = d_interrupts[11] ? 4'hb : _T_225; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217310.4]
  assign _T_227 = d_interrupts[12] ? 4'hc : _T_226; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217311.4]
  assign _T_228 = d_interrupts[13] ? 4'hd : _T_227; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217312.4]
  assign whichInterrupt = d_interrupts[14] ? 4'he : _T_228; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@217313.4]
  assign _GEN_498 = {{28'd0}, whichInterrupt}; // @[CSR.scala 437:43:freechips.rocketchip.system.DefaultRV32Config.fir@217314.4]
  assign _T_230 = ~io_singleStep; // @[CSR.scala 438:36:freechips.rocketchip.system.DefaultRV32Config.fir@217316.4]
  assign _T_231 = anyInterrupt & _T_230; // @[CSR.scala 438:33:freechips.rocketchip.system.DefaultRV32Config.fir@217317.4]
  assign _T_232 = _T_231 | reg_singleStepped; // @[CSR.scala 438:51:freechips.rocketchip.system.DefaultRV32Config.fir@217318.4]
  assign _T_233 = reg_debug | io_status_cease; // @[CSR.scala 438:88:freechips.rocketchip.system.DefaultRV32Config.fir@217319.4]
  assign _T_234 = ~_T_233; // @[CSR.scala 438:76:freechips.rocketchip.system.DefaultRV32Config.fir@217320.4]
  assign _T_238 = {reg_pmp_0_addr,reg_pmp_0_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217334.4]
  assign _T_241 = _T_238 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217337.4]
  assign _T_242 = ~_T_241; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217338.4]
  assign _T_243 = _T_238 & _T_242; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217339.4]
  assign _T_244 = {_T_243,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217340.4]
  assign _T_247 = {reg_pmp_1_addr,reg_pmp_1_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217351.4]
  assign _T_250 = _T_247 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217354.4]
  assign _T_251 = ~_T_250; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217355.4]
  assign _T_252 = _T_247 & _T_251; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217356.4]
  assign _T_253 = {_T_252,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217357.4]
  assign _T_256 = {reg_pmp_2_addr,reg_pmp_2_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217368.4]
  assign _T_259 = _T_256 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217371.4]
  assign _T_260 = ~_T_259; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217372.4]
  assign _T_261 = _T_256 & _T_260; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217373.4]
  assign _T_262 = {_T_261,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217374.4]
  assign _T_265 = {reg_pmp_3_addr,reg_pmp_3_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217385.4]
  assign _T_268 = _T_265 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217388.4]
  assign _T_269 = ~_T_268; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217389.4]
  assign _T_270 = _T_265 & _T_269; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217390.4]
  assign _T_271 = {_T_270,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217391.4]
  assign _T_274 = {reg_pmp_4_addr,reg_pmp_4_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217402.4]
  assign _T_277 = _T_274 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217405.4]
  assign _T_278 = ~_T_277; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217406.4]
  assign _T_279 = _T_274 & _T_278; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217407.4]
  assign _T_280 = {_T_279,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217408.4]
  assign _T_283 = {reg_pmp_5_addr,reg_pmp_5_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217419.4]
  assign _T_286 = _T_283 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217422.4]
  assign _T_287 = ~_T_286; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217423.4]
  assign _T_288 = _T_283 & _T_287; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217424.4]
  assign _T_289 = {_T_288,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217425.4]
  assign _T_292 = {reg_pmp_6_addr,reg_pmp_6_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217436.4]
  assign _T_295 = _T_292 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217439.4]
  assign _T_296 = ~_T_295; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217440.4]
  assign _T_297 = _T_292 & _T_296; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217441.4]
  assign _T_298 = {_T_297,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217442.4]
  assign _T_301 = {reg_pmp_7_addr,reg_pmp_7_cfg_a[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217453.4]
  assign _T_304 = _T_301 + 31'h1; // @[PMP.scala 60:23:freechips.rocketchip.system.DefaultRV32Config.fir@217456.4]
  assign _T_305 = ~_T_304; // @[PMP.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@217457.4]
  assign _T_306 = _T_301 & _T_305; // @[PMP.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@217458.4]
  assign _T_307 = {_T_306,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217459.4]
  assign _T_313 = {io_status_hpie,io_status_spie,io_status_upie,io_status_mie,io_status_hie,io_status_sie,io_status_uie}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217475.4]
  assign _T_321 = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp,io_status_vs,io_status_spp,io_status_mpie,_T_313}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217483.4]
  assign _T_328 = {io_status_sxl,io_status_uxl,io_status_sd_rv32,io_status_zero1,io_status_tsr,io_status_tw,io_status_tvm,io_status_mxr}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217490.4]
  assign _T_337 = {io_status_debug,io_status_cease,io_status_wfi,io_status_isa,io_status_dprv,io_status_prv,io_status_sd,io_status_zero2,_T_328,_T_321}; // @[CSR.scala 457:38:freechips.rocketchip.system.DefaultRV32Config.fir@217499.4]
  assign read_mstatus = _T_337[31:0]; // @[CSR.scala 457:40:freechips.rocketchip.system.DefaultRV32Config.fir@217500.4]
  assign _T_339 = reg_mtvec[0] ? 7'h7e : 7'h2; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@217502.4]
  assign _T_341 = {{25'd0}, _T_339}; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@217504.4]
  assign _T_342 = ~_T_341; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@217505.4]
  assign read_mtvec = reg_mtvec & _T_342; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@217506.4]
  assign _T_344 = reg_stvec[0] ? 7'h7e : 7'h2; // @[CSR.scala 1093:39:freechips.rocketchip.system.DefaultRV32Config.fir@217508.4]
  assign _T_346 = {{25'd0}, _T_344}; // @[package.scala 149:41:freechips.rocketchip.system.DefaultRV32Config.fir@217510.4]
  assign _T_347 = ~_T_346; // @[package.scala 149:37:freechips.rocketchip.system.DefaultRV32Config.fir@217511.4]
  assign read_stvec = reg_stvec & _T_347; // @[package.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@217512.4]
  assign _T_353 = {reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,reg_bp_0_control_w,reg_bp_0_control_r}; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@217518.4]
  assign _T_361 = {4'h2,reg_bp_0_control_dmode,14'h400,reg_bp_0_control_action,1'h0,2'h0,reg_bp_0_control_tmatch,_T_353}; // @[CSR.scala 463:48:freechips.rocketchip.system.DefaultRV32Config.fir@217526.4]
  assign _T_362 = ~reg_mepc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217527.4]
  assign _T_364 = reg_misa[2] ? 2'h1 : 2'h3; // @[CSR.scala 1092:36:freechips.rocketchip.system.DefaultRV32Config.fir@217529.4]
  assign _GEN_499 = {{30'd0}, _T_364}; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217530.4]
  assign _T_365 = _T_362 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217530.4]
  assign _T_366 = ~_T_365; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217531.4]
  assign _T_372 = {2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@217537.4]
  assign _T_379 = {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,_T_372}; // @[CSR.scala 477:27:freechips.rocketchip.system.DefaultRV32Config.fir@217544.4]
  assign _T_380 = ~reg_dpc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217545.4]
  assign _T_383 = _T_380 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217548.4]
  assign _T_384 = ~_T_383; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217549.4]
  assign read_fcsr = {reg_frm,reg_fflags}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217550.4]
  assign _T_447 = reg_mie & read_mideleg; // @[CSR.scala 533:28:freechips.rocketchip.system.DefaultRV32Config.fir@217614.4]
  assign _T_448 = _GEN_497 & read_mideleg; // @[CSR.scala 534:29:freechips.rocketchip.system.DefaultRV32Config.fir@217615.4]
  assign _T_456 = {1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217668.4]
  assign _T_464 = {io_status_sum,1'h0,io_status_xs,io_status_fs,2'h0,io_status_vs,io_status_spp,1'h0,_T_456}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217676.4]
  assign _T_471 = {2'h0,io_status_uxl,io_status_sd_rv32,8'h0,2'h0,1'h0,io_status_mxr}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217683.4]
  assign _T_480 = {35'h0,4'h0,io_status_sd,27'h0,_T_471,_T_464}; // @[CSR.scala 548:57:freechips.rocketchip.system.DefaultRV32Config.fir@217692.4]
  assign _T_483 = {reg_satp_mode,9'h0,reg_satp_ppn}; // @[CSR.scala 554:43:freechips.rocketchip.system.DefaultRV32Config.fir@217695.4]
  assign _T_484 = ~reg_sepc; // @[CSR.scala 1092:28:freechips.rocketchip.system.DefaultRV32Config.fir@217696.4]
  assign _T_487 = _T_484 | _GEN_499; // @[CSR.scala 1092:31:freechips.rocketchip.system.DefaultRV32Config.fir@217699.4]
  assign _T_488 = ~_T_487; // @[CSR.scala 1092:26:freechips.rocketchip.system.DefaultRV32Config.fir@217700.4]
  assign _T_494 = {reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217715.4]
  assign _T_504 = {reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217725.4]
  assign _T_510 = {reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,_T_494}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217731.4]
  assign _T_512 = {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,_T_504,_T_510}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217733.4]
  assign _T_517 = {reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217738.4]
  assign _T_527 = {reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@217748.4]
  assign _T_533 = {reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,_T_517}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217754.4]
  assign _T_535 = {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,_T_527,_T_533}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@217756.4]
  assign _T_583 = io_rw_addr == 12'h7a1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217808.4]
  assign _T_584 = io_rw_addr == 12'h7a2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217809.4]
  assign _T_585 = io_rw_addr == 12'h301; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217810.4]
  assign _T_586 = io_rw_addr == 12'h300; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217811.4]
  assign _T_587 = io_rw_addr == 12'h305; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217812.4]
  assign _T_588 = io_rw_addr == 12'h344; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217813.4]
  assign _T_589 = io_rw_addr == 12'h304; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217814.4]
  assign _T_590 = io_rw_addr == 12'h340; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217815.4]
  assign _T_591 = io_rw_addr == 12'h341; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217816.4]
  assign _T_592 = io_rw_addr == 12'h343; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217817.4]
  assign _T_593 = io_rw_addr == 12'h342; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217818.4]
  assign _T_595 = io_rw_addr == 12'h7b0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217820.4]
  assign _T_596 = io_rw_addr == 12'h7b1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217821.4]
  assign _T_597 = io_rw_addr == 12'h7b2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217822.4]
  assign _T_598 = io_rw_addr == 12'h1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217823.4]
  assign _T_599 = io_rw_addr == 12'h2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217824.4]
  assign _T_600 = io_rw_addr == 12'h3; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217825.4]
  assign _T_601 = io_rw_addr == 12'hb00; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217826.4]
  assign _T_602 = io_rw_addr == 12'hb02; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217827.4]
  assign _T_748 = io_rw_addr == 12'h306; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217973.4]
  assign _T_749 = io_rw_addr == 12'hc00; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217974.4]
  assign _T_750 = io_rw_addr == 12'hc02; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217975.4]
  assign _T_751 = io_rw_addr == 12'hb80; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217976.4]
  assign _T_752 = io_rw_addr == 12'hb82; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217977.4]
  assign _T_753 = io_rw_addr == 12'hc80; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217978.4]
  assign _T_754 = io_rw_addr == 12'hc82; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217979.4]
  assign _T_755 = io_rw_addr == 12'h100; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217980.4]
  assign _T_756 = io_rw_addr == 12'h144; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217981.4]
  assign _T_757 = io_rw_addr == 12'h104; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217982.4]
  assign _T_758 = io_rw_addr == 12'h140; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217983.4]
  assign _T_759 = io_rw_addr == 12'h142; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217984.4]
  assign _T_760 = io_rw_addr == 12'h143; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217985.4]
  assign _T_761 = io_rw_addr == 12'h180; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217986.4]
  assign _T_762 = io_rw_addr == 12'h141; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217987.4]
  assign _T_763 = io_rw_addr == 12'h105; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217988.4]
  assign _T_764 = io_rw_addr == 12'h106; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217989.4]
  assign _T_765 = io_rw_addr == 12'h303; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217990.4]
  assign _T_766 = io_rw_addr == 12'h302; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217991.4]
  assign _T_767 = io_rw_addr == 12'h3a0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217992.4]
  assign _T_768 = io_rw_addr == 12'h3a1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217993.4]
  assign _T_771 = io_rw_addr == 12'h3b0; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217996.4]
  assign _T_772 = io_rw_addr == 12'h3b1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217997.4]
  assign _T_773 = io_rw_addr == 12'h3b2; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217998.4]
  assign _T_774 = io_rw_addr == 12'h3b3; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@217999.4]
  assign _T_775 = io_rw_addr == 12'h3b4; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218000.4]
  assign _T_776 = io_rw_addr == 12'h3b5; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218001.4]
  assign _T_777 = io_rw_addr == 12'h3b6; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218002.4]
  assign _T_778 = io_rw_addr == 12'h3b7; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218003.4]
  assign _T_787 = io_rw_addr == 12'h7c1; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218012.4]
  assign _T_788 = io_rw_addr == 12'hf12; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218013.4]
  assign _T_790 = io_rw_addr == 12'hf13; // @[CSR.scala 585:73:freechips.rocketchip.system.DefaultRV32Config.fir@218015.4]
  assign _T_792 = io_rw_cmd[1] ? io_rw_rdata : 32'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@218017.4]
  assign _T_793 = _T_792 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@218018.4]
  assign _T_795 = &io_rw_cmd[1:0]; // @[CSR.scala 1070:59:freechips.rocketchip.system.DefaultRV32Config.fir@218020.4]
  assign _T_796 = _T_795 ? io_rw_wdata : 32'h0; // @[CSR.scala 1070:49:freechips.rocketchip.system.DefaultRV32Config.fir@218021.4]
  assign _T_797 = ~_T_796; // @[CSR.scala 1070:45:freechips.rocketchip.system.DefaultRV32Config.fir@218022.4]
  assign wdata = _T_793 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@218023.4]
  assign _T_811 = _T_798 & 32'h20200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218038.4]
  assign _T_812 = _T_811 == 32'h20000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218039.4]
  assign _T_814 = _T_798 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218041.4]
  assign _T_815 = _T_814 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218042.4]
  assign insn_cease = system_insn & _T_812; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218054.4]
  assign insn_wfi = system_insn & _T_815; // @[CSR.scala 600:95:freechips.rocketchip.system.DefaultRV32Config.fir@218056.4]
  assign _T_826 = {io_decode_0_csr, 20'h0}; // @[CSR.scala 607:30:freechips.rocketchip.system.DefaultRV32Config.fir@218059.4]
  assign _T_833 = _T_826 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218066.4]
  assign _T_834 = _T_833 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218067.4]
  assign _T_835 = _T_826 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218068.4]
  assign _T_836 = _T_835 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218069.4]
  assign _T_838 = _T_834 | _T_836; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@218071.4]
  assign _T_842 = _T_826 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218075.4]
  assign _T_843 = _T_842 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218076.4]
  assign _T_845 = _T_826 & 32'h42000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218078.4]
  assign _T_846 = _T_845 == 32'h2000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218079.4]
  assign _T_854 = reg_mstatus_prv > 2'h1; // @[CSR.scala 609:63:freechips.rocketchip.system.DefaultRV32Config.fir@218087.4]
  assign _T_856 = ~reg_mstatus_tw; // @[CSR.scala 609:74:freechips.rocketchip.system.DefaultRV32Config.fir@218089.4]
  assign _T_857 = _T_854 | _T_856; // @[CSR.scala 609:71:freechips.rocketchip.system.DefaultRV32Config.fir@218090.4]
  assign _T_860 = ~reg_mstatus_tvm; // @[CSR.scala 610:73:freechips.rocketchip.system.DefaultRV32Config.fir@218093.4]
  assign _T_861 = _T_854 | _T_860; // @[CSR.scala 610:70:freechips.rocketchip.system.DefaultRV32Config.fir@218094.4]
  assign _T_864 = ~reg_mstatus_tsr; // @[CSR.scala 611:75:freechips.rocketchip.system.DefaultRV32Config.fir@218097.4]
  assign _T_865 = _T_854 | _T_864; // @[CSR.scala 611:72:freechips.rocketchip.system.DefaultRV32Config.fir@218098.4]
  assign _T_868 = read_mcounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 613:68:freechips.rocketchip.system.DefaultRV32Config.fir@218101.4]
  assign _T_870 = _T_854 | _T_868[0]; // @[CSR.scala 613:50:freechips.rocketchip.system.DefaultRV32Config.fir@218103.4]
  assign _T_871 = reg_mstatus_prv >= 2'h1; // @[CSR.scala 614:44:freechips.rocketchip.system.DefaultRV32Config.fir@218104.4]
  assign _T_873 = read_scounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 614:71:freechips.rocketchip.system.DefaultRV32Config.fir@218106.4]
  assign _T_875 = _T_871 | _T_873[0]; // @[CSR.scala 614:53:freechips.rocketchip.system.DefaultRV32Config.fir@218108.4]
  assign _T_876 = _T_870 & _T_875; // @[CSR.scala 613:84:freechips.rocketchip.system.DefaultRV32Config.fir@218109.4]
  assign _T_877 = io_status_fs == 2'h0; // @[CSR.scala 615:39:freechips.rocketchip.system.DefaultRV32Config.fir@218110.4]
  assign _T_879 = ~reg_misa[5]; // @[CSR.scala 615:48:freechips.rocketchip.system.DefaultRV32Config.fir@218112.4]
  assign _T_885 = io_decode_0_csr & 12'h900; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218120.4]
  assign _T_894 = reg_mstatus_prv < io_decode_0_csr[9:8]; // @[CSR.scala 619:44:freechips.rocketchip.system.DefaultRV32Config.fir@218131.4]
  assign _T_895 = io_decode_0_csr == 12'h7a0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218132.4]
  assign _T_896 = io_decode_0_csr == 12'h7a1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218133.4]
  assign _T_897 = io_decode_0_csr == 12'h7a2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218134.4]
  assign _T_898 = io_decode_0_csr == 12'h301; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218135.4]
  assign _T_899 = io_decode_0_csr == 12'h300; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218136.4]
  assign _T_900 = io_decode_0_csr == 12'h305; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218137.4]
  assign _T_901 = io_decode_0_csr == 12'h344; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218138.4]
  assign _T_902 = io_decode_0_csr == 12'h304; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218139.4]
  assign _T_903 = io_decode_0_csr == 12'h340; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218140.4]
  assign _T_904 = io_decode_0_csr == 12'h341; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218141.4]
  assign _T_905 = io_decode_0_csr == 12'h343; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218142.4]
  assign _T_906 = io_decode_0_csr == 12'h342; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218143.4]
  assign _T_907 = io_decode_0_csr == 12'hf14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218144.4]
  assign _T_908 = io_decode_0_csr == 12'h7b0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218145.4]
  assign _T_909 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218146.4]
  assign _T_910 = io_decode_0_csr == 12'h7b2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218147.4]
  assign _T_911 = io_decode_0_csr == 12'h1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218148.4]
  assign _T_912 = io_decode_0_csr == 12'h2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218149.4]
  assign _T_913 = io_decode_0_csr == 12'h3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218150.4]
  assign _T_914 = io_decode_0_csr == 12'hb00; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218151.4]
  assign _T_915 = io_decode_0_csr == 12'hb02; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218152.4]
  assign _T_916 = io_decode_0_csr == 12'h323; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218153.4]
  assign _T_917 = io_decode_0_csr == 12'hb03; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218154.4]
  assign _T_918 = io_decode_0_csr == 12'hc03; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218155.4]
  assign _T_919 = io_decode_0_csr == 12'hb83; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218156.4]
  assign _T_920 = io_decode_0_csr == 12'hc83; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218157.4]
  assign _T_921 = io_decode_0_csr == 12'h324; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218158.4]
  assign _T_922 = io_decode_0_csr == 12'hb04; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218159.4]
  assign _T_923 = io_decode_0_csr == 12'hc04; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218160.4]
  assign _T_924 = io_decode_0_csr == 12'hb84; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218161.4]
  assign _T_925 = io_decode_0_csr == 12'hc84; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218162.4]
  assign _T_926 = io_decode_0_csr == 12'h325; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218163.4]
  assign _T_927 = io_decode_0_csr == 12'hb05; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218164.4]
  assign _T_928 = io_decode_0_csr == 12'hc05; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218165.4]
  assign _T_929 = io_decode_0_csr == 12'hb85; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218166.4]
  assign _T_930 = io_decode_0_csr == 12'hc85; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218167.4]
  assign _T_931 = io_decode_0_csr == 12'h326; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218168.4]
  assign _T_932 = io_decode_0_csr == 12'hb06; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218169.4]
  assign _T_933 = io_decode_0_csr == 12'hc06; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218170.4]
  assign _T_934 = io_decode_0_csr == 12'hb86; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218171.4]
  assign _T_935 = io_decode_0_csr == 12'hc86; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218172.4]
  assign _T_936 = io_decode_0_csr == 12'h327; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218173.4]
  assign _T_937 = io_decode_0_csr == 12'hb07; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218174.4]
  assign _T_938 = io_decode_0_csr == 12'hc07; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218175.4]
  assign _T_939 = io_decode_0_csr == 12'hb87; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218176.4]
  assign _T_940 = io_decode_0_csr == 12'hc87; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218177.4]
  assign _T_941 = io_decode_0_csr == 12'h328; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218178.4]
  assign _T_942 = io_decode_0_csr == 12'hb08; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218179.4]
  assign _T_943 = io_decode_0_csr == 12'hc08; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218180.4]
  assign _T_944 = io_decode_0_csr == 12'hb88; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218181.4]
  assign _T_945 = io_decode_0_csr == 12'hc88; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218182.4]
  assign _T_946 = io_decode_0_csr == 12'h329; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218183.4]
  assign _T_947 = io_decode_0_csr == 12'hb09; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218184.4]
  assign _T_948 = io_decode_0_csr == 12'hc09; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218185.4]
  assign _T_949 = io_decode_0_csr == 12'hb89; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218186.4]
  assign _T_950 = io_decode_0_csr == 12'hc89; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218187.4]
  assign _T_951 = io_decode_0_csr == 12'h32a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218188.4]
  assign _T_952 = io_decode_0_csr == 12'hb0a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218189.4]
  assign _T_953 = io_decode_0_csr == 12'hc0a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218190.4]
  assign _T_954 = io_decode_0_csr == 12'hb8a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218191.4]
  assign _T_955 = io_decode_0_csr == 12'hc8a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218192.4]
  assign _T_956 = io_decode_0_csr == 12'h32b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218193.4]
  assign _T_957 = io_decode_0_csr == 12'hb0b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218194.4]
  assign _T_958 = io_decode_0_csr == 12'hc0b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218195.4]
  assign _T_959 = io_decode_0_csr == 12'hb8b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218196.4]
  assign _T_960 = io_decode_0_csr == 12'hc8b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218197.4]
  assign _T_961 = io_decode_0_csr == 12'h32c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218198.4]
  assign _T_962 = io_decode_0_csr == 12'hb0c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218199.4]
  assign _T_963 = io_decode_0_csr == 12'hc0c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218200.4]
  assign _T_964 = io_decode_0_csr == 12'hb8c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218201.4]
  assign _T_965 = io_decode_0_csr == 12'hc8c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218202.4]
  assign _T_966 = io_decode_0_csr == 12'h32d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218203.4]
  assign _T_967 = io_decode_0_csr == 12'hb0d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218204.4]
  assign _T_968 = io_decode_0_csr == 12'hc0d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218205.4]
  assign _T_969 = io_decode_0_csr == 12'hb8d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218206.4]
  assign _T_970 = io_decode_0_csr == 12'hc8d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218207.4]
  assign _T_971 = io_decode_0_csr == 12'h32e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218208.4]
  assign _T_972 = io_decode_0_csr == 12'hb0e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218209.4]
  assign _T_973 = io_decode_0_csr == 12'hc0e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218210.4]
  assign _T_974 = io_decode_0_csr == 12'hb8e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218211.4]
  assign _T_975 = io_decode_0_csr == 12'hc8e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218212.4]
  assign _T_976 = io_decode_0_csr == 12'h32f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218213.4]
  assign _T_977 = io_decode_0_csr == 12'hb0f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218214.4]
  assign _T_978 = io_decode_0_csr == 12'hc0f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218215.4]
  assign _T_979 = io_decode_0_csr == 12'hb8f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218216.4]
  assign _T_980 = io_decode_0_csr == 12'hc8f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218217.4]
  assign _T_981 = io_decode_0_csr == 12'h330; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218218.4]
  assign _T_982 = io_decode_0_csr == 12'hb10; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218219.4]
  assign _T_983 = io_decode_0_csr == 12'hc10; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218220.4]
  assign _T_984 = io_decode_0_csr == 12'hb90; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218221.4]
  assign _T_985 = io_decode_0_csr == 12'hc90; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218222.4]
  assign _T_986 = io_decode_0_csr == 12'h331; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218223.4]
  assign _T_987 = io_decode_0_csr == 12'hb11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218224.4]
  assign _T_988 = io_decode_0_csr == 12'hc11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218225.4]
  assign _T_989 = io_decode_0_csr == 12'hb91; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218226.4]
  assign _T_990 = io_decode_0_csr == 12'hc91; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218227.4]
  assign _T_991 = io_decode_0_csr == 12'h332; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218228.4]
  assign _T_992 = io_decode_0_csr == 12'hb12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218229.4]
  assign _T_993 = io_decode_0_csr == 12'hc12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218230.4]
  assign _T_994 = io_decode_0_csr == 12'hb92; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218231.4]
  assign _T_995 = io_decode_0_csr == 12'hc92; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218232.4]
  assign _T_996 = io_decode_0_csr == 12'h333; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218233.4]
  assign _T_997 = io_decode_0_csr == 12'hb13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218234.4]
  assign _T_998 = io_decode_0_csr == 12'hc13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218235.4]
  assign _T_999 = io_decode_0_csr == 12'hb93; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218236.4]
  assign _T_1000 = io_decode_0_csr == 12'hc93; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218237.4]
  assign _T_1001 = io_decode_0_csr == 12'h334; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218238.4]
  assign _T_1002 = io_decode_0_csr == 12'hb14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218239.4]
  assign _T_1003 = io_decode_0_csr == 12'hc14; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218240.4]
  assign _T_1004 = io_decode_0_csr == 12'hb94; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218241.4]
  assign _T_1005 = io_decode_0_csr == 12'hc94; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218242.4]
  assign _T_1006 = io_decode_0_csr == 12'h335; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218243.4]
  assign _T_1007 = io_decode_0_csr == 12'hb15; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218244.4]
  assign _T_1008 = io_decode_0_csr == 12'hc15; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218245.4]
  assign _T_1009 = io_decode_0_csr == 12'hb95; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218246.4]
  assign _T_1010 = io_decode_0_csr == 12'hc95; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218247.4]
  assign _T_1011 = io_decode_0_csr == 12'h336; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218248.4]
  assign _T_1012 = io_decode_0_csr == 12'hb16; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218249.4]
  assign _T_1013 = io_decode_0_csr == 12'hc16; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218250.4]
  assign _T_1014 = io_decode_0_csr == 12'hb96; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218251.4]
  assign _T_1015 = io_decode_0_csr == 12'hc96; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218252.4]
  assign _T_1016 = io_decode_0_csr == 12'h337; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218253.4]
  assign _T_1017 = io_decode_0_csr == 12'hb17; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218254.4]
  assign _T_1018 = io_decode_0_csr == 12'hc17; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218255.4]
  assign _T_1019 = io_decode_0_csr == 12'hb97; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218256.4]
  assign _T_1020 = io_decode_0_csr == 12'hc97; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218257.4]
  assign _T_1021 = io_decode_0_csr == 12'h338; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218258.4]
  assign _T_1022 = io_decode_0_csr == 12'hb18; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218259.4]
  assign _T_1023 = io_decode_0_csr == 12'hc18; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218260.4]
  assign _T_1024 = io_decode_0_csr == 12'hb98; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218261.4]
  assign _T_1025 = io_decode_0_csr == 12'hc98; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218262.4]
  assign _T_1026 = io_decode_0_csr == 12'h339; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218263.4]
  assign _T_1027 = io_decode_0_csr == 12'hb19; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218264.4]
  assign _T_1028 = io_decode_0_csr == 12'hc19; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218265.4]
  assign _T_1029 = io_decode_0_csr == 12'hb99; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218266.4]
  assign _T_1030 = io_decode_0_csr == 12'hc99; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218267.4]
  assign _T_1031 = io_decode_0_csr == 12'h33a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218268.4]
  assign _T_1032 = io_decode_0_csr == 12'hb1a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218269.4]
  assign _T_1033 = io_decode_0_csr == 12'hc1a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218270.4]
  assign _T_1034 = io_decode_0_csr == 12'hb9a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218271.4]
  assign _T_1035 = io_decode_0_csr == 12'hc9a; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218272.4]
  assign _T_1036 = io_decode_0_csr == 12'h33b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218273.4]
  assign _T_1037 = io_decode_0_csr == 12'hb1b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218274.4]
  assign _T_1038 = io_decode_0_csr == 12'hc1b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218275.4]
  assign _T_1039 = io_decode_0_csr == 12'hb9b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218276.4]
  assign _T_1040 = io_decode_0_csr == 12'hc9b; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218277.4]
  assign _T_1041 = io_decode_0_csr == 12'h33c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218278.4]
  assign _T_1042 = io_decode_0_csr == 12'hb1c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218279.4]
  assign _T_1043 = io_decode_0_csr == 12'hc1c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218280.4]
  assign _T_1044 = io_decode_0_csr == 12'hb9c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218281.4]
  assign _T_1045 = io_decode_0_csr == 12'hc9c; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218282.4]
  assign _T_1046 = io_decode_0_csr == 12'h33d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218283.4]
  assign _T_1047 = io_decode_0_csr == 12'hb1d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218284.4]
  assign _T_1048 = io_decode_0_csr == 12'hc1d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218285.4]
  assign _T_1049 = io_decode_0_csr == 12'hb9d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218286.4]
  assign _T_1050 = io_decode_0_csr == 12'hc9d; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218287.4]
  assign _T_1051 = io_decode_0_csr == 12'h33e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218288.4]
  assign _T_1052 = io_decode_0_csr == 12'hb1e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218289.4]
  assign _T_1053 = io_decode_0_csr == 12'hc1e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218290.4]
  assign _T_1054 = io_decode_0_csr == 12'hb9e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218291.4]
  assign _T_1055 = io_decode_0_csr == 12'hc9e; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218292.4]
  assign _T_1056 = io_decode_0_csr == 12'h33f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218293.4]
  assign _T_1057 = io_decode_0_csr == 12'hb1f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218294.4]
  assign _T_1058 = io_decode_0_csr == 12'hc1f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218295.4]
  assign _T_1059 = io_decode_0_csr == 12'hb9f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218296.4]
  assign _T_1060 = io_decode_0_csr == 12'hc9f; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218297.4]
  assign _T_1061 = io_decode_0_csr == 12'h306; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218298.4]
  assign _T_1062 = io_decode_0_csr == 12'hc00; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218299.4]
  assign _T_1063 = io_decode_0_csr == 12'hc02; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218300.4]
  assign _T_1064 = io_decode_0_csr == 12'hb80; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218301.4]
  assign _T_1065 = io_decode_0_csr == 12'hb82; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218302.4]
  assign _T_1066 = io_decode_0_csr == 12'hc80; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218303.4]
  assign _T_1067 = io_decode_0_csr == 12'hc82; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218304.4]
  assign _T_1068 = io_decode_0_csr == 12'h100; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218305.4]
  assign _T_1069 = io_decode_0_csr == 12'h144; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218306.4]
  assign _T_1070 = io_decode_0_csr == 12'h104; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218307.4]
  assign _T_1071 = io_decode_0_csr == 12'h140; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218308.4]
  assign _T_1072 = io_decode_0_csr == 12'h142; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218309.4]
  assign _T_1073 = io_decode_0_csr == 12'h143; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218310.4]
  assign _T_1074 = io_decode_0_csr == 12'h180; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218311.4]
  assign _T_1075 = io_decode_0_csr == 12'h141; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218312.4]
  assign _T_1076 = io_decode_0_csr == 12'h105; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218313.4]
  assign _T_1077 = io_decode_0_csr == 12'h106; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218314.4]
  assign _T_1078 = io_decode_0_csr == 12'h303; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218315.4]
  assign _T_1079 = io_decode_0_csr == 12'h302; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218316.4]
  assign _T_1080 = io_decode_0_csr == 12'h3a0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218317.4]
  assign _T_1081 = io_decode_0_csr == 12'h3a1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218318.4]
  assign _T_1082 = io_decode_0_csr == 12'h3a2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218319.4]
  assign _T_1083 = io_decode_0_csr == 12'h3a3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218320.4]
  assign _T_1084 = io_decode_0_csr == 12'h3b0; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218321.4]
  assign _T_1085 = io_decode_0_csr == 12'h3b1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218322.4]
  assign _T_1086 = io_decode_0_csr == 12'h3b2; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218323.4]
  assign _T_1087 = io_decode_0_csr == 12'h3b3; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218324.4]
  assign _T_1088 = io_decode_0_csr == 12'h3b4; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218325.4]
  assign _T_1089 = io_decode_0_csr == 12'h3b5; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218326.4]
  assign _T_1090 = io_decode_0_csr == 12'h3b6; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218327.4]
  assign _T_1091 = io_decode_0_csr == 12'h3b7; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218328.4]
  assign _T_1092 = io_decode_0_csr == 12'h3b8; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218329.4]
  assign _T_1093 = io_decode_0_csr == 12'h3b9; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218330.4]
  assign _T_1094 = io_decode_0_csr == 12'h3ba; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218331.4]
  assign _T_1095 = io_decode_0_csr == 12'h3bb; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218332.4]
  assign _T_1096 = io_decode_0_csr == 12'h3bc; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218333.4]
  assign _T_1097 = io_decode_0_csr == 12'h3bd; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218334.4]
  assign _T_1098 = io_decode_0_csr == 12'h3be; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218335.4]
  assign _T_1099 = io_decode_0_csr == 12'h3bf; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218336.4]
  assign _T_1100 = io_decode_0_csr == 12'h7c1; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218337.4]
  assign _T_1101 = io_decode_0_csr == 12'hf12; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218338.4]
  assign _T_1102 = io_decode_0_csr == 12'hf11; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218339.4]
  assign _T_1103 = io_decode_0_csr == 12'hf13; // @[CSR.scala 603:99:freechips.rocketchip.system.DefaultRV32Config.fir@218340.4]
  assign _T_1104 = _T_895 | _T_896; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218341.4]
  assign _T_1105 = _T_1104 | _T_897; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218342.4]
  assign _T_1106 = _T_1105 | _T_898; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218343.4]
  assign _T_1107 = _T_1106 | _T_899; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218344.4]
  assign _T_1108 = _T_1107 | _T_900; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218345.4]
  assign _T_1109 = _T_1108 | _T_901; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218346.4]
  assign _T_1110 = _T_1109 | _T_902; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218347.4]
  assign _T_1111 = _T_1110 | _T_903; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218348.4]
  assign _T_1112 = _T_1111 | _T_904; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218349.4]
  assign _T_1113 = _T_1112 | _T_905; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218350.4]
  assign _T_1114 = _T_1113 | _T_906; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218351.4]
  assign _T_1115 = _T_1114 | _T_907; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218352.4]
  assign _T_1116 = _T_1115 | _T_908; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218353.4]
  assign _T_1117 = _T_1116 | _T_909; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218354.4]
  assign _T_1118 = _T_1117 | _T_910; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218355.4]
  assign _T_1119 = _T_1118 | _T_911; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218356.4]
  assign _T_1120 = _T_1119 | _T_912; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218357.4]
  assign _T_1121 = _T_1120 | _T_913; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218358.4]
  assign _T_1122 = _T_1121 | _T_914; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218359.4]
  assign _T_1123 = _T_1122 | _T_915; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218360.4]
  assign _T_1124 = _T_1123 | _T_916; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218361.4]
  assign _T_1125 = _T_1124 | _T_917; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218362.4]
  assign _T_1126 = _T_1125 | _T_918; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218363.4]
  assign _T_1127 = _T_1126 | _T_919; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218364.4]
  assign _T_1128 = _T_1127 | _T_920; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218365.4]
  assign _T_1129 = _T_1128 | _T_921; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218366.4]
  assign _T_1130 = _T_1129 | _T_922; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218367.4]
  assign _T_1131 = _T_1130 | _T_923; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218368.4]
  assign _T_1132 = _T_1131 | _T_924; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218369.4]
  assign _T_1133 = _T_1132 | _T_925; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218370.4]
  assign _T_1134 = _T_1133 | _T_926; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218371.4]
  assign _T_1135 = _T_1134 | _T_927; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218372.4]
  assign _T_1136 = _T_1135 | _T_928; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218373.4]
  assign _T_1137 = _T_1136 | _T_929; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218374.4]
  assign _T_1138 = _T_1137 | _T_930; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218375.4]
  assign _T_1139 = _T_1138 | _T_931; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218376.4]
  assign _T_1140 = _T_1139 | _T_932; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218377.4]
  assign _T_1141 = _T_1140 | _T_933; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218378.4]
  assign _T_1142 = _T_1141 | _T_934; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218379.4]
  assign _T_1143 = _T_1142 | _T_935; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218380.4]
  assign _T_1144 = _T_1143 | _T_936; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218381.4]
  assign _T_1145 = _T_1144 | _T_937; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218382.4]
  assign _T_1146 = _T_1145 | _T_938; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218383.4]
  assign _T_1147 = _T_1146 | _T_939; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218384.4]
  assign _T_1148 = _T_1147 | _T_940; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218385.4]
  assign _T_1149 = _T_1148 | _T_941; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218386.4]
  assign _T_1150 = _T_1149 | _T_942; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218387.4]
  assign _T_1151 = _T_1150 | _T_943; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218388.4]
  assign _T_1152 = _T_1151 | _T_944; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218389.4]
  assign _T_1153 = _T_1152 | _T_945; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218390.4]
  assign _T_1154 = _T_1153 | _T_946; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218391.4]
  assign _T_1155 = _T_1154 | _T_947; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218392.4]
  assign _T_1156 = _T_1155 | _T_948; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218393.4]
  assign _T_1157 = _T_1156 | _T_949; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218394.4]
  assign _T_1158 = _T_1157 | _T_950; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218395.4]
  assign _T_1159 = _T_1158 | _T_951; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218396.4]
  assign _T_1160 = _T_1159 | _T_952; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218397.4]
  assign _T_1161 = _T_1160 | _T_953; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218398.4]
  assign _T_1162 = _T_1161 | _T_954; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218399.4]
  assign _T_1163 = _T_1162 | _T_955; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218400.4]
  assign _T_1164 = _T_1163 | _T_956; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218401.4]
  assign _T_1165 = _T_1164 | _T_957; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218402.4]
  assign _T_1166 = _T_1165 | _T_958; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218403.4]
  assign _T_1167 = _T_1166 | _T_959; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218404.4]
  assign _T_1168 = _T_1167 | _T_960; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218405.4]
  assign _T_1169 = _T_1168 | _T_961; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218406.4]
  assign _T_1170 = _T_1169 | _T_962; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218407.4]
  assign _T_1171 = _T_1170 | _T_963; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218408.4]
  assign _T_1172 = _T_1171 | _T_964; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218409.4]
  assign _T_1173 = _T_1172 | _T_965; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218410.4]
  assign _T_1174 = _T_1173 | _T_966; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218411.4]
  assign _T_1175 = _T_1174 | _T_967; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218412.4]
  assign _T_1176 = _T_1175 | _T_968; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218413.4]
  assign _T_1177 = _T_1176 | _T_969; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218414.4]
  assign _T_1178 = _T_1177 | _T_970; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218415.4]
  assign _T_1179 = _T_1178 | _T_971; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218416.4]
  assign _T_1180 = _T_1179 | _T_972; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218417.4]
  assign _T_1181 = _T_1180 | _T_973; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218418.4]
  assign _T_1182 = _T_1181 | _T_974; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218419.4]
  assign _T_1183 = _T_1182 | _T_975; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218420.4]
  assign _T_1184 = _T_1183 | _T_976; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218421.4]
  assign _T_1185 = _T_1184 | _T_977; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218422.4]
  assign _T_1186 = _T_1185 | _T_978; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218423.4]
  assign _T_1187 = _T_1186 | _T_979; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218424.4]
  assign _T_1188 = _T_1187 | _T_980; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218425.4]
  assign _T_1189 = _T_1188 | _T_981; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218426.4]
  assign _T_1190 = _T_1189 | _T_982; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218427.4]
  assign _T_1191 = _T_1190 | _T_983; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218428.4]
  assign _T_1192 = _T_1191 | _T_984; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218429.4]
  assign _T_1193 = _T_1192 | _T_985; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218430.4]
  assign _T_1194 = _T_1193 | _T_986; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218431.4]
  assign _T_1195 = _T_1194 | _T_987; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218432.4]
  assign _T_1196 = _T_1195 | _T_988; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218433.4]
  assign _T_1197 = _T_1196 | _T_989; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218434.4]
  assign _T_1198 = _T_1197 | _T_990; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218435.4]
  assign _T_1199 = _T_1198 | _T_991; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218436.4]
  assign _T_1200 = _T_1199 | _T_992; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218437.4]
  assign _T_1201 = _T_1200 | _T_993; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218438.4]
  assign _T_1202 = _T_1201 | _T_994; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218439.4]
  assign _T_1203 = _T_1202 | _T_995; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218440.4]
  assign _T_1204 = _T_1203 | _T_996; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218441.4]
  assign _T_1205 = _T_1204 | _T_997; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218442.4]
  assign _T_1206 = _T_1205 | _T_998; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218443.4]
  assign _T_1207 = _T_1206 | _T_999; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218444.4]
  assign _T_1208 = _T_1207 | _T_1000; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218445.4]
  assign _T_1209 = _T_1208 | _T_1001; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218446.4]
  assign _T_1210 = _T_1209 | _T_1002; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218447.4]
  assign _T_1211 = _T_1210 | _T_1003; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218448.4]
  assign _T_1212 = _T_1211 | _T_1004; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218449.4]
  assign _T_1213 = _T_1212 | _T_1005; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218450.4]
  assign _T_1214 = _T_1213 | _T_1006; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218451.4]
  assign _T_1215 = _T_1214 | _T_1007; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218452.4]
  assign _T_1216 = _T_1215 | _T_1008; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218453.4]
  assign _T_1217 = _T_1216 | _T_1009; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218454.4]
  assign _T_1218 = _T_1217 | _T_1010; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218455.4]
  assign _T_1219 = _T_1218 | _T_1011; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218456.4]
  assign _T_1220 = _T_1219 | _T_1012; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218457.4]
  assign _T_1221 = _T_1220 | _T_1013; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218458.4]
  assign _T_1222 = _T_1221 | _T_1014; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218459.4]
  assign _T_1223 = _T_1222 | _T_1015; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218460.4]
  assign _T_1224 = _T_1223 | _T_1016; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218461.4]
  assign _T_1225 = _T_1224 | _T_1017; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218462.4]
  assign _T_1226 = _T_1225 | _T_1018; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218463.4]
  assign _T_1227 = _T_1226 | _T_1019; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218464.4]
  assign _T_1228 = _T_1227 | _T_1020; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218465.4]
  assign _T_1229 = _T_1228 | _T_1021; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218466.4]
  assign _T_1230 = _T_1229 | _T_1022; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218467.4]
  assign _T_1231 = _T_1230 | _T_1023; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218468.4]
  assign _T_1232 = _T_1231 | _T_1024; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218469.4]
  assign _T_1233 = _T_1232 | _T_1025; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218470.4]
  assign _T_1234 = _T_1233 | _T_1026; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218471.4]
  assign _T_1235 = _T_1234 | _T_1027; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218472.4]
  assign _T_1236 = _T_1235 | _T_1028; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218473.4]
  assign _T_1237 = _T_1236 | _T_1029; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218474.4]
  assign _T_1238 = _T_1237 | _T_1030; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218475.4]
  assign _T_1239 = _T_1238 | _T_1031; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218476.4]
  assign _T_1240 = _T_1239 | _T_1032; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218477.4]
  assign _T_1241 = _T_1240 | _T_1033; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218478.4]
  assign _T_1242 = _T_1241 | _T_1034; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218479.4]
  assign _T_1243 = _T_1242 | _T_1035; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218480.4]
  assign _T_1244 = _T_1243 | _T_1036; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218481.4]
  assign _T_1245 = _T_1244 | _T_1037; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218482.4]
  assign _T_1246 = _T_1245 | _T_1038; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218483.4]
  assign _T_1247 = _T_1246 | _T_1039; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218484.4]
  assign _T_1248 = _T_1247 | _T_1040; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218485.4]
  assign _T_1249 = _T_1248 | _T_1041; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218486.4]
  assign _T_1250 = _T_1249 | _T_1042; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218487.4]
  assign _T_1251 = _T_1250 | _T_1043; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218488.4]
  assign _T_1252 = _T_1251 | _T_1044; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218489.4]
  assign _T_1253 = _T_1252 | _T_1045; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218490.4]
  assign _T_1254 = _T_1253 | _T_1046; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218491.4]
  assign _T_1255 = _T_1254 | _T_1047; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218492.4]
  assign _T_1256 = _T_1255 | _T_1048; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218493.4]
  assign _T_1257 = _T_1256 | _T_1049; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218494.4]
  assign _T_1258 = _T_1257 | _T_1050; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218495.4]
  assign _T_1259 = _T_1258 | _T_1051; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218496.4]
  assign _T_1260 = _T_1259 | _T_1052; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218497.4]
  assign _T_1261 = _T_1260 | _T_1053; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218498.4]
  assign _T_1262 = _T_1261 | _T_1054; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218499.4]
  assign _T_1263 = _T_1262 | _T_1055; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218500.4]
  assign _T_1264 = _T_1263 | _T_1056; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218501.4]
  assign _T_1265 = _T_1264 | _T_1057; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218502.4]
  assign _T_1266 = _T_1265 | _T_1058; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218503.4]
  assign _T_1267 = _T_1266 | _T_1059; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218504.4]
  assign _T_1268 = _T_1267 | _T_1060; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218505.4]
  assign _T_1269 = _T_1268 | _T_1061; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218506.4]
  assign _T_1270 = _T_1269 | _T_1062; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218507.4]
  assign _T_1271 = _T_1270 | _T_1063; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218508.4]
  assign _T_1272 = _T_1271 | _T_1064; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218509.4]
  assign _T_1273 = _T_1272 | _T_1065; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218510.4]
  assign _T_1274 = _T_1273 | _T_1066; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218511.4]
  assign _T_1275 = _T_1274 | _T_1067; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218512.4]
  assign _T_1276 = _T_1275 | _T_1068; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218513.4]
  assign _T_1277 = _T_1276 | _T_1069; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218514.4]
  assign _T_1278 = _T_1277 | _T_1070; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218515.4]
  assign _T_1279 = _T_1278 | _T_1071; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218516.4]
  assign _T_1280 = _T_1279 | _T_1072; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218517.4]
  assign _T_1281 = _T_1280 | _T_1073; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218518.4]
  assign _T_1282 = _T_1281 | _T_1074; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218519.4]
  assign _T_1283 = _T_1282 | _T_1075; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218520.4]
  assign _T_1284 = _T_1283 | _T_1076; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218521.4]
  assign _T_1285 = _T_1284 | _T_1077; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218522.4]
  assign _T_1286 = _T_1285 | _T_1078; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218523.4]
  assign _T_1287 = _T_1286 | _T_1079; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218524.4]
  assign _T_1288 = _T_1287 | _T_1080; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218525.4]
  assign _T_1289 = _T_1288 | _T_1081; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218526.4]
  assign _T_1290 = _T_1289 | _T_1082; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218527.4]
  assign _T_1291 = _T_1290 | _T_1083; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218528.4]
  assign _T_1292 = _T_1291 | _T_1084; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218529.4]
  assign _T_1293 = _T_1292 | _T_1085; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218530.4]
  assign _T_1294 = _T_1293 | _T_1086; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218531.4]
  assign _T_1295 = _T_1294 | _T_1087; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218532.4]
  assign _T_1296 = _T_1295 | _T_1088; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218533.4]
  assign _T_1297 = _T_1296 | _T_1089; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218534.4]
  assign _T_1298 = _T_1297 | _T_1090; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218535.4]
  assign _T_1299 = _T_1298 | _T_1091; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218536.4]
  assign _T_1300 = _T_1299 | _T_1092; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218537.4]
  assign _T_1301 = _T_1300 | _T_1093; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218538.4]
  assign _T_1302 = _T_1301 | _T_1094; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218539.4]
  assign _T_1303 = _T_1302 | _T_1095; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218540.4]
  assign _T_1304 = _T_1303 | _T_1096; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218541.4]
  assign _T_1305 = _T_1304 | _T_1097; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218542.4]
  assign _T_1306 = _T_1305 | _T_1098; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218543.4]
  assign _T_1307 = _T_1306 | _T_1099; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218544.4]
  assign _T_1308 = _T_1307 | _T_1100; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218545.4]
  assign _T_1309 = _T_1308 | _T_1101; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218546.4]
  assign _T_1310 = _T_1309 | _T_1102; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218547.4]
  assign _T_1311 = _T_1310 | _T_1103; // @[CSR.scala 603:115:freechips.rocketchip.system.DefaultRV32Config.fir@218548.4]
  assign _T_1312 = ~_T_1311; // @[CSR.scala 620:7:freechips.rocketchip.system.DefaultRV32Config.fir@218549.4]
  assign _T_1313 = _T_894 | _T_1312; // @[CSR.scala 619:62:freechips.rocketchip.system.DefaultRV32Config.fir@218550.4]
  assign _T_1315 = ~_T_861; // @[CSR.scala 621:35:freechips.rocketchip.system.DefaultRV32Config.fir@218552.4]
  assign _T_1316 = _T_1074 & _T_1315; // @[CSR.scala 621:32:freechips.rocketchip.system.DefaultRV32Config.fir@218553.4]
  assign _T_1317 = _T_1313 | _T_1316; // @[CSR.scala 620:32:freechips.rocketchip.system.DefaultRV32Config.fir@218554.4]
  assign _T_1318 = io_decode_0_csr >= 12'hc00; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@218555.4]
  assign _T_1319 = io_decode_0_csr < 12'hc20; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@218556.4]
  assign _T_1320 = _T_1318 & _T_1319; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@218557.4]
  assign _T_1321 = io_decode_0_csr >= 12'hc80; // @[package.scala 180:47:freechips.rocketchip.system.DefaultRV32Config.fir@218558.4]
  assign _T_1322 = io_decode_0_csr < 12'hca0; // @[package.scala 180:60:freechips.rocketchip.system.DefaultRV32Config.fir@218559.4]
  assign _T_1323 = _T_1321 & _T_1322; // @[package.scala 180:55:freechips.rocketchip.system.DefaultRV32Config.fir@218560.4]
  assign _T_1324 = _T_1320 | _T_1323; // @[CSR.scala 622:66:freechips.rocketchip.system.DefaultRV32Config.fir@218561.4]
  assign _T_1325 = ~_T_876; // @[CSR.scala 622:133:freechips.rocketchip.system.DefaultRV32Config.fir@218562.4]
  assign _T_1326 = _T_1324 & _T_1325; // @[CSR.scala 622:130:freechips.rocketchip.system.DefaultRV32Config.fir@218563.4]
  assign _T_1327 = _T_1317 | _T_1326; // @[CSR.scala 621:53:freechips.rocketchip.system.DefaultRV32Config.fir@218564.4]
  assign _T_1328 = io_decode_0_csr & 12'hc10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@218565.4]
  assign _T_1329 = _T_1328 == 12'h410; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@218566.4]
  assign _T_1333 = _T_1329 & _T_1455; // @[CSR.scala 623:42:freechips.rocketchip.system.DefaultRV32Config.fir@218570.4]
  assign _T_1334 = _T_1327 | _T_1333; // @[CSR.scala 622:148:freechips.rocketchip.system.DefaultRV32Config.fir@218571.4]
  assign _T_1337 = io_decode_0_fp_csr & io_decode_0_fp_illegal; // @[CSR.scala 625:21:freechips.rocketchip.system.DefaultRV32Config.fir@218574.4]
  assign _T_1341 = io_decode_0_csr >= 12'h340; // @[CSR.scala 627:40:freechips.rocketchip.system.DefaultRV32Config.fir@218580.4]
  assign _T_1342 = io_decode_0_csr <= 12'h343; // @[CSR.scala 627:71:freechips.rocketchip.system.DefaultRV32Config.fir@218581.4]
  assign _T_1343 = _T_1341 & _T_1342; // @[CSR.scala 627:57:freechips.rocketchip.system.DefaultRV32Config.fir@218582.4]
  assign _T_1344 = io_decode_0_csr >= 12'h140; // @[CSR.scala 627:99:freechips.rocketchip.system.DefaultRV32Config.fir@218583.4]
  assign _T_1345 = io_decode_0_csr <= 12'h143; // @[CSR.scala 627:130:freechips.rocketchip.system.DefaultRV32Config.fir@218584.4]
  assign _T_1346 = _T_1344 & _T_1345; // @[CSR.scala 627:116:freechips.rocketchip.system.DefaultRV32Config.fir@218585.4]
  assign _T_1347 = _T_1343 | _T_1346; // @[CSR.scala 627:85:freechips.rocketchip.system.DefaultRV32Config.fir@218586.4]
  assign _T_1351 = ~_T_857; // @[CSR.scala 629:17:freechips.rocketchip.system.DefaultRV32Config.fir@218591.4]
  assign _T_1352 = _T_843 & _T_1351; // @[CSR.scala 629:14:freechips.rocketchip.system.DefaultRV32Config.fir@218592.4]
  assign _T_1353 = _T_894 | _T_1352; // @[CSR.scala 628:64:freechips.rocketchip.system.DefaultRV32Config.fir@218593.4]
  assign _T_1354 = ~_T_865; // @[CSR.scala 630:17:freechips.rocketchip.system.DefaultRV32Config.fir@218594.4]
  assign _T_1355 = _T_838 & _T_1354; // @[CSR.scala 630:14:freechips.rocketchip.system.DefaultRV32Config.fir@218595.4]
  assign _T_1356 = _T_1353 | _T_1355; // @[CSR.scala 629:28:freechips.rocketchip.system.DefaultRV32Config.fir@218596.4]
  assign _T_1358 = _T_838 & io_decode_0_csr[10]; // @[CSR.scala 631:14:freechips.rocketchip.system.DefaultRV32Config.fir@218598.4]
  assign _T_1360 = _T_1358 & _T_1455; // @[CSR.scala 631:32:freechips.rocketchip.system.DefaultRV32Config.fir@218600.4]
  assign _T_1361 = _T_1356 | _T_1360; // @[CSR.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@218601.4]
  assign _T_1363 = _T_846 & _T_1315; // @[CSR.scala 632:17:freechips.rocketchip.system.DefaultRV32Config.fir@218603.4]
  assign _T_1385 = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 643:37:freechips.rocketchip.system.DefaultRV32Config.fir@218632.4]
  assign debugTVec = reg_debug ? _T_1385 : 12'h800; // @[CSR.scala 643:22:freechips.rocketchip.system.DefaultRV32Config.fir@218633.4]
  assign _T_1394 = delegate ? read_stvec : read_mtvec; // @[CSR.scala 651:19:freechips.rocketchip.system.DefaultRV32Config.fir@218643.4]
  assign _T_1396 = {cause[4:0], 2'h0}; // @[CSR.scala 652:59:freechips.rocketchip.system.DefaultRV32Config.fir@218645.4]
  assign _T_1398 = {_T_1394[31:7],_T_1396}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@218647.4]
  assign _T_1401 = _T_1394[0] & cause[31]; // @[CSR.scala 654:28:freechips.rocketchip.system.DefaultRV32Config.fir@218650.4]
  assign _T_1403 = cause_lsbs[7:5] == 3'h0; // @[CSR.scala 654:94:freechips.rocketchip.system.DefaultRV32Config.fir@218652.4]
  assign _T_1404 = _T_1401 & _T_1403; // @[CSR.scala 654:55:freechips.rocketchip.system.DefaultRV32Config.fir@218653.4]
  assign _T_1406 = {_T_1394[31:2], 2'h0}; // @[CSR.scala 655:56:freechips.rocketchip.system.DefaultRV32Config.fir@218655.4]
  assign notDebugTVec = _T_1404 ? _T_1398 : _T_1406; // @[CSR.scala 655:8:freechips.rocketchip.system.DefaultRV32Config.fir@218656.4]
  assign tvec = trapToDebug ? {{20'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 657:17:freechips.rocketchip.system.DefaultRV32Config.fir@218657.4]
  assign _T_1411 = &io_status_fs; // @[CSR.scala 663:32:freechips.rocketchip.system.DefaultRV32Config.fir@218667.4]
  assign _T_1412 = &io_status_xs; // @[CSR.scala 663:53:freechips.rocketchip.system.DefaultRV32Config.fir@218668.4]
  assign _T_1413 = _T_1411 | _T_1412; // @[CSR.scala 663:37:freechips.rocketchip.system.DefaultRV32Config.fir@218669.4]
  assign _T_1414 = &io_status_vs; // @[CSR.scala 663:74:freechips.rocketchip.system.DefaultRV32Config.fir@218670.4]
  assign _T_1417 = reg_mstatus_mprv & _T_1455; // @[CSR.scala 668:53:freechips.rocketchip.system.DefaultRV32Config.fir@218678.4]
  assign _T_1421 = insn_ret + insn_call; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218686.4]
  assign _T_1423 = insn_break + io_exception; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218688.4]
  assign _T_1425 = _T_1421 + _T_1423; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@218690.4]
  assign _T_1427 = _T_1425 <= 3'h1; // @[CSR.scala 673:79:freechips.rocketchip.system.DefaultRV32Config.fir@218692.4]
  assign _T_1429 = _T_1427 | reset; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218694.4]
  assign _T_1430 = ~_T_1429; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218695.4]
  assign _T_1432 = insn_wfi & _T_230; // @[CSR.scala 675:18:freechips.rocketchip.system.DefaultRV32Config.fir@218701.4]
  assign _T_1434 = _T_1432 & _T_1455; // @[CSR.scala 675:36:freechips.rocketchip.system.DefaultRV32Config.fir@218703.4]
  assign _GEN_34 = _T_1434 | reg_wfi; // @[CSR.scala 675:51:freechips.rocketchip.system.DefaultRV32Config.fir@218704.4]
  assign _T_1435 = |pending_interrupts; // @[CSR.scala 676:28:freechips.rocketchip.system.DefaultRV32Config.fir@218707.4]
  assign _T_1436 = _T_1435 | io_interrupts_debug; // @[CSR.scala 676:32:freechips.rocketchip.system.DefaultRV32Config.fir@218708.4]
  assign _T_1437 = _T_1436 | exception; // @[CSR.scala 676:55:freechips.rocketchip.system.DefaultRV32Config.fir@218709.4]
  assign _T_1439 = io_retire | exception; // @[CSR.scala 678:22:freechips.rocketchip.system.DefaultRV32Config.fir@218714.4]
  assign _GEN_36 = _T_1439 | reg_singleStepped; // @[CSR.scala 678:36:freechips.rocketchip.system.DefaultRV32Config.fir@218715.4]
  assign _T_1447 = ~reg_singleStepped; // @[CSR.scala 681:10:freechips.rocketchip.system.DefaultRV32Config.fir@218732.4]
  assign _T_1448 = ~io_retire; // @[CSR.scala 681:42:freechips.rocketchip.system.DefaultRV32Config.fir@218733.4]
  assign _T_1449 = _T_1447 | _T_1448; // @[CSR.scala 681:29:freechips.rocketchip.system.DefaultRV32Config.fir@218734.4]
  assign _T_1451 = _T_1449 | reset; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218736.4]
  assign _T_1452 = ~_T_1451; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218737.4]
  assign _T_1453 = ~io_pc; // @[CSR.scala 1091:28:freechips.rocketchip.system.DefaultRV32Config.fir@218742.4]
  assign _T_1454 = _T_1453 | 32'h1; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@218743.4]
  assign epc = ~_T_1454; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@218744.4]
  assign _T_1456 = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 692:86:freechips.rocketchip.system.DefaultRV32Config.fir@218754.10]
  assign _T_1457 = causeIsDebugInt ? 2'h3 : _T_1456; // @[CSR.scala 692:56:freechips.rocketchip.system.DefaultRV32Config.fir@218755.10]
  assign _GEN_38 = _T_1455 | reg_debug; // @[CSR.scala 689:25:freechips.rocketchip.system.DefaultRV32Config.fir@218751.8]
  assign _GEN_47 = delegate ? reg_mstatus_sie : reg_mstatus_spie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_48 = delegate ? reg_mstatus_prv : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_54 = delegate ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_55 = delegate ? reg_mstatus_mpp : reg_mstatus_prv; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_56 = delegate & reg_mstatus_mie; // @[CSR.scala 696:27:freechips.rocketchip.system.DefaultRV32Config.fir@218763.8]
  assign _GEN_66 = trapToDebug ? reg_mstatus_spie : _GEN_47; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_67 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_48; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_72 = trapToDebug ? reg_mstatus_mpie : _GEN_54; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_73 = trapToDebug ? reg_mstatus_mpp : _GEN_55; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_74 = trapToDebug ? reg_mstatus_mie : _GEN_56; // @[CSR.scala 688:24:freechips.rocketchip.system.DefaultRV32Config.fir@218749.6]
  assign _GEN_84 = exception ? _GEN_66 : reg_mstatus_spie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign _GEN_85 = exception ? _GEN_67 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign _GEN_90 = exception ? _GEN_72 : reg_mstatus_mpie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign _GEN_91 = exception ? _GEN_73 : reg_mstatus_mpp; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign _GEN_92 = exception ? _GEN_74 : reg_mstatus_mie; // @[CSR.scala 687:20:freechips.rocketchip.system.DefaultRV32Config.fir@218748.4]
  assign _GEN_95 = io_rw_addr[10] ? _T_384 : _T_366; // @[CSR.scala 744:53:freechips.rocketchip.system.DefaultRV32Config.fir@219123.8]
  assign _GEN_100 = _T_1780 | _GEN_84; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  assign _GEN_101 = _T_1780 ? 2'h0 : _GEN_85; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  assign _GEN_103 = _T_1780 ? _T_488 : _GEN_95; // @[CSR.scala 738:52:freechips.rocketchip.system.DefaultRV32Config.fir@219108.6]
  assign _GEN_110 = insn_ret ? _GEN_101 : _GEN_85; // @[CSR.scala 737:19:freechips.rocketchip.system.DefaultRV32Config.fir@219104.4]
  assign _GEN_117 = insn_cease | _T_1802; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@219152.4]
  assign _T_1804 = _T_583 ? _T_361 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219170.4]
  assign _T_1805 = _T_584 ? reg_bp_0_address : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219171.4]
  assign _T_1806 = _T_585 ? reg_misa : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219172.4]
  assign _T_1807 = _T_586 ? read_mstatus : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219173.4]
  assign _T_1808 = _T_587 ? read_mtvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219174.4]
  assign _T_1809 = _T_588 ? read_mip : 16'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219175.4]
  assign _T_1810 = _T_589 ? reg_mie : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219176.4]
  assign _T_1811 = _T_590 ? reg_mscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219177.4]
  assign _T_1812 = _T_591 ? _T_366 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219178.4]
  assign _T_1813 = _T_592 ? reg_mtval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219179.4]
  assign _T_1814 = _T_593 ? reg_mcause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219180.4]
  assign _T_1816 = _T_595 ? _T_379 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219182.4]
  assign _T_1817 = _T_596 ? _T_384 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219183.4]
  assign _T_1818 = _T_597 ? reg_dscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219184.4]
  assign _T_1819 = _T_598 ? reg_fflags : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219185.4]
  assign _T_1820 = _T_599 ? reg_frm : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219186.4]
  assign _T_1821 = _T_600 ? read_fcsr : 8'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219187.4]
  assign _T_1822 = _T_601 ? _T_53 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219188.4]
  assign _T_1823 = _T_602 ? _T_45 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219189.4]
  assign _T_1969 = _T_748 ? read_mcounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219335.4]
  assign _T_1970 = _T_749 ? _T_53 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219336.4]
  assign _T_1971 = _T_750 ? _T_45 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219337.4]
  assign _T_1972 = _T_751 ? _T_53[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219338.4]
  assign _T_1973 = _T_752 ? _T_45[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219339.4]
  assign _T_1974 = _T_753 ? _T_53[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219340.4]
  assign _T_1975 = _T_754 ? _T_45[63:32] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219341.4]
  assign _T_1976 = _T_755 ? _T_480[31:0] : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219342.4]
  assign _T_1977 = _T_756 ? _T_448 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219343.4]
  assign _T_1978 = _T_757 ? _T_447 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219344.4]
  assign _T_1979 = _T_758 ? reg_sscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219345.4]
  assign _T_1980 = _T_759 ? reg_scause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219346.4]
  assign _T_1981 = _T_760 ? reg_stval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219347.4]
  assign _T_1982 = _T_761 ? _T_483 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219348.4]
  assign _T_1983 = _T_762 ? _T_488 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219349.4]
  assign _T_1984 = _T_763 ? read_stvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219350.4]
  assign _T_1985 = _T_764 ? read_scounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219351.4]
  assign _T_1986 = _T_765 ? read_mideleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219352.4]
  assign _T_1987 = _T_766 ? read_medeleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219353.4]
  assign _T_1988 = _T_767 ? _T_512 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219354.4]
  assign _T_1989 = _T_768 ? _T_535 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219355.4]
  assign _T_1992 = _T_771 ? reg_pmp_0_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219358.4]
  assign _T_1993 = _T_772 ? reg_pmp_1_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219359.4]
  assign _T_1994 = _T_773 ? reg_pmp_2_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219360.4]
  assign _T_1995 = _T_774 ? reg_pmp_3_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219361.4]
  assign _T_1996 = _T_775 ? reg_pmp_4_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219362.4]
  assign _T_1997 = _T_776 ? reg_pmp_5_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219363.4]
  assign _T_1998 = _T_777 ? reg_pmp_6_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219364.4]
  assign _T_1999 = _T_778 ? reg_pmp_7_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219365.4]
  assign _T_2008 = _T_787 ? reg_custom_0 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219374.4]
  assign _T_2009 = _T_788 ? 32'h1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219375.4]
  assign _T_2011 = _T_790 ? 32'h20181004 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219377.4]
  assign _T_2013 = _T_1804 | _T_1805; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219379.4]
  assign _T_2014 = _T_2013 | _T_1806; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219380.4]
  assign _T_2015 = _T_2014 | _T_1807; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219381.4]
  assign _T_2016 = _T_2015 | _T_1808; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219382.4]
  assign _GEN_506 = {{16'd0}, _T_1809}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219383.4]
  assign _T_2017 = _T_2016 | _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219383.4]
  assign _T_2018 = _T_2017 | _T_1810; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219384.4]
  assign _T_2019 = _T_2018 | _T_1811; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219385.4]
  assign _T_2020 = _T_2019 | _T_1812; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219386.4]
  assign _T_2021 = _T_2020 | _T_1813; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219387.4]
  assign _T_2022 = _T_2021 | _T_1814; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219388.4]
  assign _T_2024 = _T_2022 | _T_1816; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219390.4]
  assign _T_2025 = _T_2024 | _T_1817; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219391.4]
  assign _T_2026 = _T_2025 | _T_1818; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219392.4]
  assign _GEN_507 = {{27'd0}, _T_1819}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219393.4]
  assign _T_2027 = _T_2026 | _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219393.4]
  assign _GEN_508 = {{29'd0}, _T_1820}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219394.4]
  assign _T_2028 = _T_2027 | _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219394.4]
  assign _GEN_509 = {{24'd0}, _T_1821}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219395.4]
  assign _T_2029 = _T_2028 | _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219395.4]
  assign _GEN_510 = {{32'd0}, _T_2029}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219396.4]
  assign _T_2030 = _GEN_510 | _T_1822; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219396.4]
  assign _T_2031 = _T_2030 | _T_1823; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219397.4]
  assign _GEN_511 = {{32'd0}, _T_1969}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219543.4]
  assign _T_2177 = _T_2031 | _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219543.4]
  assign _T_2178 = _T_2177 | _T_1970; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219544.4]
  assign _T_2179 = _T_2178 | _T_1971; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219545.4]
  assign _GEN_512 = {{32'd0}, _T_1972}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219546.4]
  assign _T_2180 = _T_2179 | _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219546.4]
  assign _GEN_513 = {{32'd0}, _T_1973}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219547.4]
  assign _T_2181 = _T_2180 | _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219547.4]
  assign _GEN_514 = {{32'd0}, _T_1974}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219548.4]
  assign _T_2182 = _T_2181 | _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219548.4]
  assign _GEN_515 = {{32'd0}, _T_1975}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219549.4]
  assign _T_2183 = _T_2182 | _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219549.4]
  assign _GEN_516 = {{32'd0}, _T_1976}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219550.4]
  assign _T_2184 = _T_2183 | _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219550.4]
  assign _GEN_517 = {{32'd0}, _T_1977}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219551.4]
  assign _T_2185 = _T_2184 | _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219551.4]
  assign _GEN_518 = {{32'd0}, _T_1978}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219552.4]
  assign _T_2186 = _T_2185 | _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219552.4]
  assign _GEN_519 = {{32'd0}, _T_1979}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219553.4]
  assign _T_2187 = _T_2186 | _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219553.4]
  assign _GEN_520 = {{32'd0}, _T_1980}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219554.4]
  assign _T_2188 = _T_2187 | _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219554.4]
  assign _GEN_521 = {{32'd0}, _T_1981}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219555.4]
  assign _T_2189 = _T_2188 | _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219555.4]
  assign _GEN_522 = {{32'd0}, _T_1982}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219556.4]
  assign _T_2190 = _T_2189 | _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219556.4]
  assign _GEN_523 = {{32'd0}, _T_1983}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219557.4]
  assign _T_2191 = _T_2190 | _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219557.4]
  assign _GEN_524 = {{32'd0}, _T_1984}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219558.4]
  assign _T_2192 = _T_2191 | _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219558.4]
  assign _GEN_525 = {{32'd0}, _T_1985}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219559.4]
  assign _T_2193 = _T_2192 | _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219559.4]
  assign _GEN_526 = {{32'd0}, _T_1986}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219560.4]
  assign _T_2194 = _T_2193 | _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219560.4]
  assign _GEN_527 = {{32'd0}, _T_1987}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219561.4]
  assign _T_2195 = _T_2194 | _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219561.4]
  assign _GEN_528 = {{32'd0}, _T_1988}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219562.4]
  assign _T_2196 = _T_2195 | _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219562.4]
  assign _GEN_529 = {{32'd0}, _T_1989}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219563.4]
  assign _T_2197 = _T_2196 | _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219563.4]
  assign _GEN_530 = {{34'd0}, _T_1992}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219566.4]
  assign _T_2200 = _T_2197 | _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219566.4]
  assign _GEN_531 = {{34'd0}, _T_1993}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219567.4]
  assign _T_2201 = _T_2200 | _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219567.4]
  assign _GEN_532 = {{34'd0}, _T_1994}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219568.4]
  assign _T_2202 = _T_2201 | _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219568.4]
  assign _GEN_533 = {{34'd0}, _T_1995}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219569.4]
  assign _T_2203 = _T_2202 | _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219569.4]
  assign _GEN_534 = {{34'd0}, _T_1996}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219570.4]
  assign _T_2204 = _T_2203 | _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219570.4]
  assign _GEN_535 = {{34'd0}, _T_1997}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219571.4]
  assign _T_2205 = _T_2204 | _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219571.4]
  assign _GEN_536 = {{34'd0}, _T_1998}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219572.4]
  assign _T_2206 = _T_2205 | _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219572.4]
  assign _GEN_537 = {{34'd0}, _T_1999}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219573.4]
  assign _T_2207 = _T_2206 | _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219573.4]
  assign _GEN_538 = {{32'd0}, _T_2008}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219582.4]
  assign _T_2216 = _T_2207 | _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219582.4]
  assign _GEN_539 = {{32'd0}, _T_2009}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219583.4]
  assign _T_2217 = _T_2216 | _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219583.4]
  assign _GEN_540 = {{32'd0}, _T_2011}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219585.4]
  assign _T_2219 = _T_2217 | _GEN_540; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@219585.4]
  assign _T_2223 = io_rw_cmd == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219592.6]
  assign _T_2224 = io_rw_cmd == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219593.6]
  assign _T_2225 = io_rw_cmd == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@219594.6]
  assign _T_4729 = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 797:30:freechips.rocketchip.system.DefaultRV32Config.fir@222941.6]
  assign _GEN_118 = io_fcsr_flags_valid ? _T_4729 : reg_fflags; // @[CSR.scala 796:30:freechips.rocketchip.system.DefaultRV32Config.fir@222940.4]
  assign _T_4733 = _T_2224 | _T_2225; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@222948.4]
  assign csr_wen = _T_4733 | _T_2223; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@222949.4]
  assign _T_4747 = {{71'd0}, wdata}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@222967.8 :freechips.rocketchip.system.DefaultRV32Config.fir@222969.8]
  assign _T_4779 = _T_4747[12:11] == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@223035.8]
  assign _T_4781 = |_T_4747[14:13]; // @[CSR.scala 1095:73:freechips.rocketchip.system.DefaultRV32Config.fir@223046.8]
  assign _GEN_124 = _T_586 ? {{1'd0}, _T_4747[8]} : _GEN_110; // @[CSR.scala 811:39:freechips.rocketchip.system.DefaultRV32Config.fir@222964.6]
  assign _T_4786 = ~io_pc[1]; // @[CSR.scala 841:33:freechips.rocketchip.system.DefaultRV32Config.fir@223055.8]
  assign _T_4789 = _T_4786 | wdata[2]; // @[CSR.scala 841:43:freechips.rocketchip.system.DefaultRV32Config.fir@223058.8]
  assign _T_4790 = ~wdata; // @[CSR.scala 843:25:freechips.rocketchip.system.DefaultRV32Config.fir@223060.10]
  assign _T_4791 = ~wdata[5]; // @[CSR.scala 843:35:freechips.rocketchip.system.DefaultRV32Config.fir@223061.10]
  assign _T_4792 = {_T_4791, 3'h0}; // @[CSR.scala 843:38:freechips.rocketchip.system.DefaultRV32Config.fir@223062.10]
  assign _GEN_541 = {{28'd0}, _T_4792}; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@223063.10]
  assign _T_4793 = _T_4790 | _GEN_541; // @[CSR.scala 843:32:freechips.rocketchip.system.DefaultRV32Config.fir@223063.10]
  assign _T_4794 = ~_T_4793; // @[CSR.scala 843:23:freechips.rocketchip.system.DefaultRV32Config.fir@223064.10]
  assign _T_4795 = _T_4794 & 32'h1025; // @[CSR.scala 843:55:freechips.rocketchip.system.DefaultRV32Config.fir@223065.10]
  assign _T_4797 = reg_misa & 32'hffffefda; // @[CSR.scala 843:73:freechips.rocketchip.system.DefaultRV32Config.fir@223067.10]
  assign _T_4798 = _T_4795 | _T_4797; // @[CSR.scala 843:62:freechips.rocketchip.system.DefaultRV32Config.fir@223068.10]
  assign _T_4813 = {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 851:59:freechips.rocketchip.system.DefaultRV32Config.fir@223087.8]
  assign _T_4815 = io_rw_cmd[1] ? _T_4813 : 16'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@223089.8]
  assign _GEN_542 = {{16'd0}, _T_4815}; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223090.8]
  assign _T_4816 = _GEN_542 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223090.8]
  assign _T_4821 = _T_4816 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@223095.8]
  assign _T_4840 = wdata & 32'haaa; // @[CSR.scala 858:59:freechips.rocketchip.system.DefaultRV32Config.fir@223138.8]
  assign _T_4842 = _T_4790 | 32'h1; // @[CSR.scala 1091:31:freechips.rocketchip.system.DefaultRV32Config.fir@223143.8]
  assign _T_4843 = ~_T_4842; // @[CSR.scala 1091:26:freechips.rocketchip.system.DefaultRV32Config.fir@223144.8]
  assign _T_4844 = wdata & 32'h8000000f; // @[CSR.scala 863:62:freechips.rocketchip.system.DefaultRV32Config.fir@223154.8]
  assign _T_4847 = {_T_53[63:32],wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223163.8]
  assign _GEN_145 = _T_601 ? _T_4847 : {{57'd0}, _T_48}; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@223161.6]
  assign _T_4851 = {wdata,_T_53[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223171.8]
  assign _GEN_147 = _T_751 ? _T_4851 : _GEN_145; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@223168.6]
  assign _T_4854 = {_T_45[63:32],wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223178.8]
  assign _GEN_149 = _T_602 ? _T_4854 : {{57'd0}, _T_40}; // @[CSR.scala 1085:31:freechips.rocketchip.system.DefaultRV32Config.fir@223176.6]
  assign _T_4858 = {wdata,_T_45[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223186.8]
  assign _GEN_151 = _T_752 ? _T_4858 : _GEN_149; // @[CSR.scala 1086:31:freechips.rocketchip.system.DefaultRV32Config.fir@223183.6]
  assign _GEN_154 = _T_598 ? wdata : {{27'd0}, _GEN_118}; // @[CSR.scala 876:40:freechips.rocketchip.system.DefaultRV32Config.fir@223191.6]
  assign _GEN_156 = _T_599 ? wdata : {{29'd0}, reg_frm}; // @[CSR.scala 877:40:freechips.rocketchip.system.DefaultRV32Config.fir@223195.6]
  assign _GEN_158 = _T_600 ? wdata : _GEN_154; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@223199.6]
  assign _GEN_159 = _T_600 ? {{5'd0}, wdata[31:5]} : _GEN_156; // @[CSR.scala 878:38:freechips.rocketchip.system.DefaultRV32Config.fir@223199.6]
  assign _T_4877 = wdata[1:0] == 2'h2; // @[CSR.scala 1074:35:freechips.rocketchip.system.DefaultRV32Config.fir@223243.8]
  assign _GEN_169 = _T_755 ? {{1'd0}, _T_4747[8]} : _GEN_124; // @[CSR.scala 897:41:freechips.rocketchip.system.DefaultRV32Config.fir@223256.6]
  assign _T_4918 = ~read_mideleg; // @[CSR.scala 911:54:freechips.rocketchip.system.DefaultRV32Config.fir@223336.8]
  assign _T_4919 = _GEN_497 & _T_4918; // @[CSR.scala 911:52:freechips.rocketchip.system.DefaultRV32Config.fir@223337.8]
  assign _T_4920 = wdata & read_mideleg; // @[CSR.scala 911:78:freechips.rocketchip.system.DefaultRV32Config.fir@223338.8]
  assign _T_4921 = _T_4919 | _T_4920; // @[CSR.scala 911:69:freechips.rocketchip.system.DefaultRV32Config.fir@223339.8]
  assign _T_4945 = ~wdata[31]; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@223391.8]
  assign _T_4947 = _T_4945 | wdata[31]; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@223393.8]
  assign _T_4951 = reg_mie & _T_4918; // @[CSR.scala 925:64:freechips.rocketchip.system.DefaultRV32Config.fir@223403.8]
  assign _T_4953 = _T_4951 | _T_4920; // @[CSR.scala 925:81:freechips.rocketchip.system.DefaultRV32Config.fir@223405.8]
  assign _T_4957 = wdata & 32'h8000001f; // @[CSR.scala 929:64:freechips.rocketchip.system.DefaultRV32Config.fir@223421.8]
  assign _T_4960 = ~reg_bp_0_control_dmode; // @[CSR.scala 942:37:freechips.rocketchip.system.DefaultRV32Config.fir@223444.6]
  assign _T_4961 = _T_4960 | reg_debug; // @[CSR.scala 942:55:freechips.rocketchip.system.DefaultRV32Config.fir@223445.6]
  assign _T_4995 = io_rw_cmd[1] ? _T_361 : 32'h0; // @[CSR.scala 1070:9:freechips.rocketchip.system.DefaultRV32Config.fir@223503.10]
  assign _T_4996 = _T_4995 | io_rw_wdata; // @[CSR.scala 1070:34:freechips.rocketchip.system.DefaultRV32Config.fir@223504.10]
  assign _T_5001 = _T_4996 & _T_797; // @[CSR.scala 1070:43:freechips.rocketchip.system.DefaultRV32Config.fir@223509.10]
  assign _T_5019 = _T_5001[27] & reg_debug; // @[CSR.scala 952:38:freechips.rocketchip.system.DefaultRV32Config.fir@223545.10]
  assign _GEN_191 = _T_5019 & _T_5001[12]; // @[CSR.scala 954:51:freechips.rocketchip.system.DefaultRV32Config.fir@223552.10]
  assign _T_5103 = ~reg_pmp_0_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223691.6]
  assign _T_5104 = _T_767 & _T_5103; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223692.6]
  assign _T_5114 = wdata[1] & wdata[0]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223713.8]
  assign _T_5116 = ~reg_pmp_1_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223717.6]
  assign _T_5118 = _T_5116 & reg_pmp_1_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223719.6]
  assign _T_5119 = reg_pmp_1_cfg_l & _T_5118; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223720.6]
  assign _T_5120 = reg_pmp_0_cfg_l | _T_5119; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223721.6]
  assign _T_5121 = ~_T_5120; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223722.6]
  assign _T_5122 = _T_771 & _T_5121; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223723.6]
  assign _GEN_262 = _T_5122 ? wdata : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223724.6]
  assign _T_5123 = ~reg_pmp_1_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223727.6]
  assign _T_5124 = _T_767 & _T_5123; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223728.6]
  assign _T_5134 = wdata[9] & wdata[8]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223749.8]
  assign _T_5136 = ~reg_pmp_2_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223753.6]
  assign _T_5138 = _T_5136 & reg_pmp_2_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223755.6]
  assign _T_5139 = reg_pmp_2_cfg_l & _T_5138; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223756.6]
  assign _T_5140 = reg_pmp_1_cfg_l | _T_5139; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223757.6]
  assign _T_5141 = ~_T_5140; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223758.6]
  assign _T_5142 = _T_772 & _T_5141; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223759.6]
  assign _GEN_269 = _T_5142 ? wdata : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223760.6]
  assign _T_5143 = ~reg_pmp_2_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223763.6]
  assign _T_5144 = _T_767 & _T_5143; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223764.6]
  assign _T_5154 = wdata[17] & wdata[16]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223785.8]
  assign _T_5156 = ~reg_pmp_3_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223789.6]
  assign _T_5158 = _T_5156 & reg_pmp_3_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223791.6]
  assign _T_5159 = reg_pmp_3_cfg_l & _T_5158; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223792.6]
  assign _T_5160 = reg_pmp_2_cfg_l | _T_5159; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223793.6]
  assign _T_5161 = ~_T_5160; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223794.6]
  assign _T_5162 = _T_773 & _T_5161; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223795.6]
  assign _GEN_276 = _T_5162 ? wdata : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223796.6]
  assign _T_5163 = ~reg_pmp_3_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223799.6]
  assign _T_5164 = _T_767 & _T_5163; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223800.6]
  assign _T_5174 = wdata[25] & wdata[24]; // @[CSR.scala 966:31:freechips.rocketchip.system.DefaultRV32Config.fir@223821.8]
  assign _T_5176 = ~reg_pmp_4_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223825.6]
  assign _T_5178 = _T_5176 & reg_pmp_4_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223827.6]
  assign _T_5179 = reg_pmp_4_cfg_l & _T_5178; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223828.6]
  assign _T_5180 = reg_pmp_3_cfg_l | _T_5179; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223829.6]
  assign _T_5181 = ~_T_5180; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223830.6]
  assign _T_5182 = _T_774 & _T_5181; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223831.6]
  assign _GEN_283 = _T_5182 ? wdata : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223832.6]
  assign _T_5183 = ~reg_pmp_4_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223835.6]
  assign _T_5184 = _T_768 & _T_5183; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223836.6]
  assign _T_5196 = ~reg_pmp_5_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223861.6]
  assign _T_5198 = _T_5196 & reg_pmp_5_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223863.6]
  assign _T_5199 = reg_pmp_5_cfg_l & _T_5198; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223864.6]
  assign _T_5200 = reg_pmp_4_cfg_l | _T_5199; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223865.6]
  assign _T_5201 = ~_T_5200; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223866.6]
  assign _T_5202 = _T_775 & _T_5201; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223867.6]
  assign _GEN_290 = _T_5202 ? wdata : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223868.6]
  assign _T_5203 = ~reg_pmp_5_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223871.6]
  assign _T_5204 = _T_768 & _T_5203; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223872.6]
  assign _T_5216 = ~reg_pmp_6_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223897.6]
  assign _T_5218 = _T_5216 & reg_pmp_6_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223899.6]
  assign _T_5219 = reg_pmp_6_cfg_l & _T_5218; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223900.6]
  assign _T_5220 = reg_pmp_5_cfg_l | _T_5219; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223901.6]
  assign _T_5221 = ~_T_5220; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223902.6]
  assign _T_5222 = _T_776 & _T_5221; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223903.6]
  assign _GEN_297 = _T_5222 ? wdata : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223904.6]
  assign _T_5223 = ~reg_pmp_6_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223907.6]
  assign _T_5224 = _T_768 & _T_5223; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223908.6]
  assign _T_5236 = ~reg_pmp_7_cfg_a[1]; // @[PMP.scala 49:13:freechips.rocketchip.system.DefaultRV32Config.fir@223933.6]
  assign _T_5238 = _T_5236 & reg_pmp_7_cfg_a[0]; // @[PMP.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@223935.6]
  assign _T_5239 = reg_pmp_7_cfg_l & _T_5238; // @[PMP.scala 51:62:freechips.rocketchip.system.DefaultRV32Config.fir@223936.6]
  assign _T_5240 = reg_pmp_6_cfg_l | _T_5239; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223937.6]
  assign _T_5241 = ~_T_5240; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223938.6]
  assign _T_5242 = _T_777 & _T_5241; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223939.6]
  assign _GEN_304 = _T_5242 ? wdata : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223940.6]
  assign _T_5243 = ~reg_pmp_7_cfg_l; // @[CSR.scala 962:60:freechips.rocketchip.system.DefaultRV32Config.fir@223943.6]
  assign _T_5244 = _T_768 & _T_5243; // @[CSR.scala 962:57:freechips.rocketchip.system.DefaultRV32Config.fir@223944.6]
  assign _T_5260 = reg_pmp_7_cfg_l | _T_5239; // @[PMP.scala 51:44:freechips.rocketchip.system.DefaultRV32Config.fir@223973.6]
  assign _T_5261 = ~_T_5260; // @[CSR.scala 971:48:freechips.rocketchip.system.DefaultRV32Config.fir@223974.6]
  assign _T_5262 = _T_778 & _T_5261; // @[CSR.scala 971:45:freechips.rocketchip.system.DefaultRV32Config.fir@223975.6]
  assign _GEN_311 = _T_5262 ? wdata : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 971:71:freechips.rocketchip.system.DefaultRV32Config.fir@223976.6]
  assign _T_5263 = wdata & 32'h208; // @[CSR.scala 978:23:freechips.rocketchip.system.DefaultRV32Config.fir@223980.8]
  assign _T_5265 = reg_custom_0 & 32'hfffffdf7; // @[CSR.scala 978:38:freechips.rocketchip.system.DefaultRV32Config.fir@223982.8]
  assign _T_5266 = _T_5263 | _T_5265; // @[CSR.scala 978:31:freechips.rocketchip.system.DefaultRV32Config.fir@223983.8]
  assign _GEN_324 = csr_wen ? _GEN_169 : _GEN_110; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_344 = csr_wen ? _GEN_147 : {{57'd0}, _T_48}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_346 = csr_wen ? _GEN_151 : {{57'd0}, _T_40}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_349 = csr_wen ? _GEN_158 : {{27'd0}, _GEN_118}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_350 = csr_wen ? _GEN_159 : {{29'd0}, reg_frm}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_408 = csr_wen ? _GEN_262 : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_415 = csr_wen ? _GEN_269 : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_422 = csr_wen ? _GEN_276 : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_429 = csr_wen ? _GEN_283 : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_436 = csr_wen ? _GEN_290 : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_443 = csr_wen ? _GEN_297 : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_450 = csr_wen ? _GEN_304 : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _GEN_457 = csr_wen ? _GEN_311 : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 810:18:freechips.rocketchip.system.DefaultRV32Config.fir@222963.4]
  assign _T_5292 = io_retire > 1'h0; // @[CSR.scala 1049:26:freechips.rocketchip.system.DefaultRV32Config.fir@224112.4]
  assign io_rw_rdata = _T_2219[31:0]; // @[CSR.scala 768:15:freechips.rocketchip.system.DefaultRV32Config.fir@219588.4]
  assign io_decode_0_fp_illegal = _T_877 | _T_879; // @[CSR.scala 615:23:freechips.rocketchip.system.DefaultRV32Config.fir@218114.4]
  assign io_decode_0_fp_csr = _T_885 == 12'h0; // @[CSR.scala 617:19:freechips.rocketchip.system.DefaultRV32Config.fir@218124.4]
  assign io_decode_0_read_illegal = _T_1334 | _T_1337; // @[CSR.scala 619:25:freechips.rocketchip.system.DefaultRV32Config.fir@218576.4]
  assign io_decode_0_write_illegal = &io_decode_0_csr[11:10]; // @[CSR.scala 626:26:freechips.rocketchip.system.DefaultRV32Config.fir@218579.4]
  assign io_decode_0_write_flush = ~_T_1347; // @[CSR.scala 627:24:freechips.rocketchip.system.DefaultRV32Config.fir@218588.4]
  assign io_decode_0_system_illegal = _T_1361 | _T_1363; // @[CSR.scala 628:27:freechips.rocketchip.system.DefaultRV32Config.fir@218605.4]
  assign io_csr_stall = reg_wfi | io_status_cease; // @[CSR.scala 758:16:freechips.rocketchip.system.DefaultRV32Config.fir@219150.4]
  assign io_eret = _T_1420 | insn_ret; // @[CSR.scala 660:11:freechips.rocketchip.system.DefaultRV32Config.fir@218662.4]
  assign io_singleStep = reg_dcsr_step & _T_1455; // @[CSR.scala 661:17:freechips.rocketchip.system.DefaultRV32Config.fir@218665.4]
  assign io_status_debug = reg_debug; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 664:19:freechips.rocketchip.system.DefaultRV32Config.fir@218673.4]
  assign io_status_cease = _T_1802; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 759:19:freechips.rocketchip.system.DefaultRV32Config.fir@219155.4]
  assign io_status_wfi = reg_wfi; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 760:17:freechips.rocketchip.system.DefaultRV32Config.fir@219156.4]
  assign io_status_isa = reg_misa; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 665:17:freechips.rocketchip.system.DefaultRV32Config.fir@218674.4]
  assign io_status_dprv = _T_1419; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 668:18:freechips.rocketchip.system.DefaultRV32Config.fir@218682.4]
  assign io_status_prv = reg_mstatus_prv; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_sd = _T_1413 | _T_1414; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 663:16:freechips.rocketchip.system.DefaultRV32Config.fir@218672.4]
  assign io_status_zero2 = 27'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_sxl = 2'h1; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 667:17:freechips.rocketchip.system.DefaultRV32Config.fir@218676.4]
  assign io_status_uxl = 2'h1; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 666:17:freechips.rocketchip.system.DefaultRV32Config.fir@218675.4]
  assign io_status_sd_rv32 = io_status_sd; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4 CSR.scala 670:23:freechips.rocketchip.system.DefaultRV32Config.fir@218683.4]
  assign io_status_zero1 = 8'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_tsr = reg_mstatus_tsr; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_tw = reg_mstatus_tw; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_tvm = reg_mstatus_tvm; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_mxr = reg_mstatus_mxr; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_sum = reg_mstatus_sum; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_mprv = reg_mstatus_mprv; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_xs = 2'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_fs = reg_mstatus_fs; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_mpp = reg_mstatus_mpp; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_vs = 2'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_spp = reg_mstatus_spp; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_mpie = reg_mstatus_mpie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_hpie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_spie = reg_mstatus_spie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_upie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_mie = reg_mstatus_mie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_hie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_sie = reg_mstatus_sie; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_status_uie = 1'h0; // @[CSR.scala 662:13:freechips.rocketchip.system.DefaultRV32Config.fir@218666.4]
  assign io_ptbr_mode = reg_satp_mode; // @[CSR.scala 659:11:freechips.rocketchip.system.DefaultRV32Config.fir@218659.4]
  assign io_ptbr_ppn = reg_satp_ppn; // @[CSR.scala 659:11:freechips.rocketchip.system.DefaultRV32Config.fir@218659.4]
  assign io_evec = insn_ret ? _GEN_103 : tvec; // @[CSR.scala 658:11:freechips.rocketchip.system.DefaultRV32Config.fir@218658.4 CSR.scala 743:15:freechips.rocketchip.system.DefaultRV32Config.fir@219118.8 CSR.scala 747:15:freechips.rocketchip.system.DefaultRV32Config.fir@219131.10 CSR.scala 753:15:freechips.rocketchip.system.DefaultRV32Config.fir@219145.10]
  assign io_time = _T_53[31:0]; // @[CSR.scala 757:11:freechips.rocketchip.system.DefaultRV32Config.fir@219148.4]
  assign io_fcsr_rm = reg_frm; // @[CSR.scala 795:14:freechips.rocketchip.system.DefaultRV32Config.fir@222939.4]
  assign io_interrupt = _T_232 & _T_234; // @[CSR.scala 438:16:freechips.rocketchip.system.DefaultRV32Config.fir@217322.4]
  assign io_interrupt_cause = 32'h80000000 + _GEN_498; // @[CSR.scala 439:22:freechips.rocketchip.system.DefaultRV32Config.fir@217323.4]
  assign io_bp_0_control_action = reg_bp_0_control_action; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_m = reg_bp_0_control_m; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_s = reg_bp_0_control_s; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_u = reg_bp_0_control_u; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_x = reg_bp_0_control_x; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_w = reg_bp_0_control_w; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_control_r = reg_bp_0_control_r; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_bp_0_address = reg_bp_0_address; // @[CSR.scala 440:9:freechips.rocketchip.system.DefaultRV32Config.fir@217324.4]
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_addr = reg_pmp_0_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_0_mask = _T_244[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217461.4]
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_addr = reg_pmp_1_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_1_mask = _T_253[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217462.4]
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_addr = reg_pmp_2_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_2_mask = _T_262[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217463.4]
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_addr = reg_pmp_3_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_3_mask = _T_271[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217464.4]
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_addr = reg_pmp_4_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_4_mask = _T_280[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217465.4]
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_addr = reg_pmp_5_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_5_mask = _T_289[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217466.4]
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_addr = reg_pmp_6_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_6_mask = _T_298[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217467.4]
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_addr = reg_pmp_7_addr; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_pmp_7_mask = _T_307[31:0]; // @[CSR.scala 441:10:freechips.rocketchip.system.DefaultRV32Config.fir@217468.4]
  assign io_trace_0_valid = _T_5292 | io_trace_0_exception; // @[CSR.scala 1049:13:freechips.rocketchip.system.DefaultRV32Config.fir@224114.4]
  assign io_trace_0_iaddr = io_pc; // @[CSR.scala 1051:13:freechips.rocketchip.system.DefaultRV32Config.fir@224116.4]
  assign io_trace_0_insn = io_inst_0; // @[CSR.scala 1050:12:freechips.rocketchip.system.DefaultRV32Config.fir@224115.4]
  assign io_trace_0_exception = _T_1420 | io_exception; // @[CSR.scala 1048:17:freechips.rocketchip.system.DefaultRV32Config.fir@224111.4]
  assign io_customCSRs_0_value = reg_custom_0; // @[CSR.scala 765:14:freechips.rocketchip.system.DefaultRV32Config.fir@219159.4]
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
      reg_misa <= 32'h40941125;
    end else if (csr_wen) begin
      if (_T_585) begin
        if (_T_4789) begin
          reg_misa <= _T_4798;
        end
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
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:673 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218697.6]
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
          $fatal; // @[CSR.scala 673:9:freechips.rocketchip.system.DefaultRV32Config.fir@218698.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:681 assert(!reg_singleStepped || io.retire === UInt(0))\n"); // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218739.6]
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
          $fatal; // @[CSR.scala 681:9:freechips.rocketchip.system.DefaultRV32Config.fir@218740.6]
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
