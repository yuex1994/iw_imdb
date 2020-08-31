module FPU( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213333.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213334.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213335.4]
  input  [31:0] io_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input  [31:0] io_fromint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input  [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output [31:0] io_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output [31:0] io_toint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input         io_dmem_resp_val, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input  [4:0]  io_dmem_resp_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input  [31:0] io_dmem_resp_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input         io_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_fcsr_rdy, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_nack_mem, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_illegal_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input         io_killx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  input         io_killm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_dec_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_dec_ren1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_dec_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_dec_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_sboard_set, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output        io_sboard_clr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
  output [4:0]  io_sboard_clra // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213336.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] fp_decoder_io_inst; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_wen; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_ren1; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_ren2; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_ren3; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_swap12; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_swap23; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_singleOut; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_fromint; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_toint; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_fastpipe; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_fma; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_div; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_sqrt; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  wire  fp_decoder_io_sigs_wflags; // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
  reg [32:0] regfile [0:31]; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [32:0] regfile_ex_rs_0_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [4:0] regfile_ex_rs_0_addr; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [32:0] regfile_ex_rs_1_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [4:0] regfile_ex_rs_1_addr; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [32:0] regfile_ex_rs_2_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [4:0] regfile_ex_rs_2_addr; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [32:0] regfile__T_91_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [4:0] regfile__T_91_addr; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire  regfile__T_91_mask; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire  regfile__T_91_en; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [32:0] regfile__T_214_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire [4:0] regfile__T_214_addr; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire  regfile__T_214_mask; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire  regfile__T_214_en; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  wire  sfma_clock; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire  sfma_reset; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire  sfma_io_in_valid; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire  sfma_io_in_bits_ren3; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire  sfma_io_in_bits_swap23; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [2:0] sfma_io_in_bits_rm; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [32:0] sfma_io_in_bits_in1; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [32:0] sfma_io_in_bits_in2; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [32:0] sfma_io_in_bits_in3; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [32:0] sfma_io_out_bits_data; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire [4:0] sfma_io_out_bits_exc; // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
  wire  fpiu_clock; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire  fpiu_io_in_valid; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire  fpiu_io_in_bits_ren2; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire  fpiu_io_in_bits_wflags; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [2:0] fpiu_io_in_bits_rm; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [1:0] fpiu_io_in_bits_typ; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [32:0] fpiu_io_in_bits_in1; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [32:0] fpiu_io_in_bits_in2; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [2:0] fpiu_io_out_bits_in_rm; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [32:0] fpiu_io_out_bits_in_in1; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [32:0] fpiu_io_out_bits_in_in2; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire  fpiu_io_out_bits_lt; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [31:0] fpiu_io_out_bits_store; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [31:0] fpiu_io_out_bits_toint; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire [4:0] fpiu_io_out_bits_exc; // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
  wire  ifpu_clock; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire  ifpu_reset; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire  ifpu_io_in_valid; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire  ifpu_io_in_bits_wflags; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire [2:0] ifpu_io_in_bits_rm; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire [1:0] ifpu_io_in_bits_typ; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire [31:0] ifpu_io_in_bits_in1; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire [32:0] ifpu_io_out_bits_data; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire [4:0] ifpu_io_out_bits_exc; // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
  wire  fpmu_clock; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire  fpmu_reset; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire  fpmu_io_in_valid; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire  fpmu_io_in_bits_wflags; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire [2:0] fpmu_io_in_bits_rm; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire [32:0] fpmu_io_in_bits_in1; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire [32:0] fpmu_io_in_bits_in2; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire [32:0] fpmu_io_out_bits_data; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire [4:0] fpmu_io_out_bits_exc; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire  fpmu_io_lt; // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
  wire  divSqrt_clock; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_reset; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_io_inReady; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_io_inValid; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_io_sqrtOp; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire [32:0] divSqrt_io_a; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire [32:0] divSqrt_io_b; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire [2:0] divSqrt_io_roundingMode; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_io_outValid_div; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire  divSqrt_io_outValid_sqrt; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire [32:0] divSqrt_io_out; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  wire [4:0] divSqrt_io_exceptionFlags; // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
  reg  ex_reg_valid; // @[FPU.scala 695:25:freechips.rocketchip.system.DefaultRV32Config.fir@213348.4]
  reg [31:0] ex_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213350.4]
  reg  ex_reg_ctrl_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_ren3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_swap23; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg  ex_reg_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  reg [4:0] ex_ra_0; // @[FPU.scala 698:31:freechips.rocketchip.system.DefaultRV32Config.fir@213373.4]
  reg [4:0] ex_ra_1; // @[FPU.scala 698:31:freechips.rocketchip.system.DefaultRV32Config.fir@213374.4]
  reg [4:0] ex_ra_2; // @[FPU.scala 698:31:freechips.rocketchip.system.DefaultRV32Config.fir@213375.4]
  reg  load_wb; // @[FPU.scala 701:20:freechips.rocketchip.system.DefaultRV32Config.fir@213376.4]
  reg [31:0] load_wb_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213383.4]
  reg [4:0] load_wb_tag; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213387.4]
  reg  mem_reg_valid; // @[FPU.scala 712:30:freechips.rocketchip.system.DefaultRV32Config.fir@213397.4]
  wire  killm; // @[FPU.scala 713:25:freechips.rocketchip.system.DefaultRV32Config.fir@213398.4]
  wire  _T_3; // @[FPU.scala 717:41:freechips.rocketchip.system.DefaultRV32Config.fir@213401.4]
  wire  killx; // @[FPU.scala 717:24:freechips.rocketchip.system.DefaultRV32Config.fir@213402.4]
  wire  _T_4; // @[FPU.scala 718:36:freechips.rocketchip.system.DefaultRV32Config.fir@213403.4]
  wire  _T_5; // @[FPU.scala 718:33:freechips.rocketchip.system.DefaultRV32Config.fir@213404.4]
  reg [31:0] mem_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213407.4]
  wire  _T_7; // @[FPU.scala 720:49:freechips.rocketchip.system.DefaultRV32Config.fir@213411.4]
  wire  _T_9; // @[FPU.scala 720:45:freechips.rocketchip.system.DefaultRV32Config.fir@213413.4]
  reg  wb_reg_valid; // @[FPU.scala 720:25:freechips.rocketchip.system.DefaultRV32Config.fir@213414.4]
  reg  mem_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  mem_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213422.4]
  reg  wb_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213441.4]
  wire  _T_14; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@213466.6]
  wire  _T_15; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@213467.6]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213491.6]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213492.6]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213493.6]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213494.6]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213495.6]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213496.6]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213497.6]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213498.6]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213499.6]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213500.6]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213501.6]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213502.6]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213503.6]
  wire [4:0] _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213504.6]
  wire [4:0] _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213505.6]
  wire [4:0] _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213506.6]
  wire [4:0] _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213507.6]
  wire [4:0] _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213508.6]
  wire [4:0] _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213509.6]
  wire [4:0] _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213510.6]
  wire [4:0] _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213511.6]
  wire [4:0] _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213512.6]
  wire [53:0] _GEN_141; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@213513.6]
  wire [53:0] _T_61; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@213513.6]
  wire [22:0] _T_63; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@213515.6]
  wire [8:0] _GEN_142; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@213516.6]
  wire [8:0] _T_64; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@213516.6]
  wire [8:0] _T_65; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@213517.6]
  wire [1:0] _T_66; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@213518.6]
  wire [7:0] _GEN_143; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@213519.6]
  wire [7:0] _T_67; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@213519.6]
  wire [8:0] _GEN_144; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@213520.6]
  wire [8:0] _T_69; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@213521.6]
  wire  _T_70; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@213522.6]
  wire  _T_72; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@213524.6]
  wire  _T_74; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@213527.6]
  wire  _T_75; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@213528.6]
  wire [9:0] _T_78; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@213535.6]
  wire  _T_79; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@213537.6]
  wire [22:0] _T_80; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@213538.6]
  wire [24:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213540.6]
  wire [2:0] _T_84; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@213543.6]
  wire [2:0] _GEN_145; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@213545.6]
  wire [2:0] _T_86; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@213545.6]
  wire [28:0] _T_89; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213548.6]
  wire [3:0] _T_90; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213549.6]
  wire  _T_101; // @[FPU.scala 744:13:freechips.rocketchip.system.DefaultRV32Config.fir@213572.8]
  wire  _T_107; // @[FPU.scala 750:32:freechips.rocketchip.system.DefaultRV32Config.fir@213592.8]
  wire  _T_108; // @[FPU.scala 750:29:freechips.rocketchip.system.DefaultRV32Config.fir@213593.8]
  wire  _T_112; // @[FPU.scala 754:38:freechips.rocketchip.system.DefaultRV32Config.fir@213605.4]
  wire  _T_114; // @[FPU.scala 777:33:freechips.rocketchip.system.DefaultRV32Config.fir@213612.4]
  wire  _T_121; // @[FPU.scala 765:39:freechips.rocketchip.system.DefaultRV32Config.fir@213629.4]
  wire  _T_123; // @[FPU.scala 765:53:freechips.rocketchip.system.DefaultRV32Config.fir@213631.4]
  wire [1:0] _GEN_146; // @[FPU.scala 765:36:freechips.rocketchip.system.DefaultRV32Config.fir@213632.4]
  wire  _T_125; // @[FPU.scala 781:51:freechips.rocketchip.system.DefaultRV32Config.fir@213646.4]
  wire  _T_126; // @[FPU.scala 781:66:freechips.rocketchip.system.DefaultRV32Config.fir@213647.4]
  wire  _T_127; // @[FPU.scala 781:103:freechips.rocketchip.system.DefaultRV32Config.fir@213648.4]
  wire  _T_128; // @[FPU.scala 781:82:freechips.rocketchip.system.DefaultRV32Config.fir@213649.4]
  wire [32:0] _T_142; // @[FPU.scala 793:29:freechips.rocketchip.system.DefaultRV32Config.fir@213694.4]
  reg [4:0] divSqrt_waddr; // @[FPU.scala 802:26:freechips.rocketchip.system.DefaultRV32Config.fir@213710.4]
  wire  _T_146; // @[FPU.scala 812:56:freechips.rocketchip.system.DefaultRV32Config.fir@213719.4]
  wire [1:0] _T_147; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213720.4]
  wire  _T_148; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213721.4]
  wire [1:0] _GEN_148; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  wire [1:0] memLatencyMask; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  reg [1:0] wen; // @[FPU.scala 835:16:freechips.rocketchip.system.DefaultRV32Config.fir@213723.4]
  reg [4:0] wbInfo_0_rd; // @[FPU.scala 836:19:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  reg [1:0] wbInfo_0_pipeid; // @[FPU.scala 836:19:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  reg [4:0] wbInfo_1_rd; // @[FPU.scala 836:19:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  reg [1:0] wbInfo_1_pipeid; // @[FPU.scala 836:19:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  _T_149; // @[FPU.scala 837:48:freechips.rocketchip.system.DefaultRV32Config.fir@213725.4]
  wire  _T_150; // @[FPU.scala 837:69:freechips.rocketchip.system.DefaultRV32Config.fir@213726.4]
  wire  mem_wen; // @[FPU.scala 837:31:freechips.rocketchip.system.DefaultRV32Config.fir@213727.4]
  wire [1:0] _T_151; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213728.4]
  wire [1:0] _T_152; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213729.4]
  wire  _T_153; // @[FPU.scala 812:56:freechips.rocketchip.system.DefaultRV32Config.fir@213730.4]
  wire [2:0] _T_154; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213731.4]
  wire [1:0] _T_155; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213732.4]
  wire [2:0] _GEN_149; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213733.4]
  wire [2:0] _T_156; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213733.4]
  wire [2:0] _GEN_150; // @[FPU.scala 838:62:freechips.rocketchip.system.DefaultRV32Config.fir@213734.4]
  wire [2:0] _T_157; // @[FPU.scala 838:62:freechips.rocketchip.system.DefaultRV32Config.fir@213734.4]
  wire  _T_158; // @[FPU.scala 838:89:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  _T_159; // @[FPU.scala 838:43:freechips.rocketchip.system.DefaultRV32Config.fir@213736.4]
  wire [2:0] _T_160; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213737.4]
  wire [2:0] _T_161; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213738.4]
  wire [3:0] _T_163; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213740.4]
  wire [2:0] _T_164; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213741.4]
  wire [3:0] _GEN_151; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213742.4]
  wire [3:0] _T_165; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213742.4]
  wire [3:0] _GEN_152; // @[FPU.scala 838:101:freechips.rocketchip.system.DefaultRV32Config.fir@213743.4]
  wire [3:0] _T_166; // @[FPU.scala 838:101:freechips.rocketchip.system.DefaultRV32Config.fir@213743.4]
  wire  _T_167; // @[FPU.scala 838:128:freechips.rocketchip.system.DefaultRV32Config.fir@213744.4]
  wire  _T_168; // @[FPU.scala 838:93:freechips.rocketchip.system.DefaultRV32Config.fir@213745.4]
  reg  write_port_busy; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213746.4]
  wire [1:0] _GEN_153; // @[FPU.scala 847:23:freechips.rocketchip.system.DefaultRV32Config.fir@213761.8]
  wire [1:0] _T_174; // @[FPU.scala 847:23:freechips.rocketchip.system.DefaultRV32Config.fir@213761.8]
  wire  _T_175; // @[FPU.scala 850:13:freechips.rocketchip.system.DefaultRV32Config.fir@213764.6]
  wire  _T_177; // @[FPU.scala 850:30:freechips.rocketchip.system.DefaultRV32Config.fir@213766.6]
  wire [1:0] _GEN_154; // @[FPU.scala 823:108:freechips.rocketchip.system.DefaultRV32Config.fir@213775.8]
  wire [1:0] _T_183; // @[FPU.scala 823:108:freechips.rocketchip.system.DefaultRV32Config.fir@213775.8]
  wire  _T_187; // @[FPU.scala 850:30:freechips.rocketchip.system.DefaultRV32Config.fir@213782.6]
  wire  _T_275; // @[FPU.scala 919:37:freechips.rocketchip.system.DefaultRV32Config.fir@213928.4]
  reg  divSqrt_killed; // @[FPU.scala 897:29:freechips.rocketchip.system.DefaultRV32Config.fir@213895.4]
  wire  _T_276; // @[FPU.scala 920:24:freechips.rocketchip.system.DefaultRV32Config.fir@213930.6]
  wire  divSqrt_wen; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  wire  _T_196; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213800.4]
  wire [32:0] _T_197; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213801.4]
  wire  _T_198; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213802.4]
  wire [32:0] _T_199; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213803.4]
  wire  _T_200; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213804.4]
  wire [32:0] _T_201; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213805.4]
  wire [32:0] divSqrt_wdata; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  wire [4:0] _T_203; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213808.4]
  wire [4:0] _T_205; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213810.4]
  wire [4:0] wexc; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213812.4]
  wire  wb_toint_valid; // @[FPU.scala 876:37:freechips.rocketchip.system.DefaultRV32Config.fir@213836.4]
  reg [4:0] wb_toint_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213837.4]
  wire  _T_218; // @[FPU.scala 878:41:freechips.rocketchip.system.DefaultRV32Config.fir@213841.4]
  wire [4:0] _T_221; // @[FPU.scala 880:8:freechips.rocketchip.system.DefaultRV32Config.fir@213845.4]
  wire [4:0] divSqrt_flags; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  wire [4:0] _T_222; // @[FPU.scala 881:8:freechips.rocketchip.system.DefaultRV32Config.fir@213846.4]
  wire [4:0] _T_223; // @[FPU.scala 880:48:freechips.rocketchip.system.DefaultRV32Config.fir@213847.4]
  wire [4:0] _T_225; // @[FPU.scala 882:8:freechips.rocketchip.system.DefaultRV32Config.fir@213849.4]
  wire  _T_227; // @[FPU.scala 884:47:freechips.rocketchip.system.DefaultRV32Config.fir@213852.4]
  wire  _T_228; // @[FPU.scala 884:72:freechips.rocketchip.system.DefaultRV32Config.fir@213853.4]
  wire  divSqrt_write_port_busy; // @[FPU.scala 884:65:freechips.rocketchip.system.DefaultRV32Config.fir@213854.4]
  wire  _T_229; // @[FPU.scala 885:33:freechips.rocketchip.system.DefaultRV32Config.fir@213855.4]
  wire  _T_230; // @[FPU.scala 885:68:freechips.rocketchip.system.DefaultRV32Config.fir@213856.4]
  wire  _T_231; // @[FPU.scala 885:51:freechips.rocketchip.system.DefaultRV32Config.fir@213857.4]
  wire  _T_233; // @[FPU.scala 885:87:freechips.rocketchip.system.DefaultRV32Config.fir@213859.4]
  wire  _T_235; // @[FPU.scala 885:120:freechips.rocketchip.system.DefaultRV32Config.fir@213861.4]
  wire  divSqrt_inFlight; // @[FPU.scala 912:13:freechips.rocketchip.system.DefaultRV32Config.fir@213918.4]
  wire  _T_236; // @[FPU.scala 885:131:freechips.rocketchip.system.DefaultRV32Config.fir@213862.4]
  wire  _T_238; // @[FPU.scala 886:34:freechips.rocketchip.system.DefaultRV32Config.fir@213865.4]
  reg  _T_244; // @[FPU.scala 889:55:freechips.rocketchip.system.DefaultRV32Config.fir@213873.4]
  wire  _T_253; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@213886.4]
  wire  _T_254; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@213887.4]
  wire  _T_255; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@213888.4]
  wire  _T_257; // @[FPU.scala 894:67:freechips.rocketchip.system.DefaultRV32Config.fir@213890.4]
  wire  _T_258; // @[FPU.scala 894:87:freechips.rocketchip.system.DefaultRV32Config.fir@213891.4]
  wire  _T_259; // @[FPU.scala 894:73:freechips.rocketchip.system.DefaultRV32Config.fir@213892.4]
  wire  tag_2; // @[FPU.scala 903:17:freechips.rocketchip.system.DefaultRV32Config.fir@213901.4]
  wire  _T_266; // @[FPU.scala 905:50:freechips.rocketchip.system.DefaultRV32Config.fir@213906.4]
  wire  _T_267; // @[FPU.scala 905:43:freechips.rocketchip.system.DefaultRV32Config.fir@213907.4]
  wire  _T_269; // @[FPU.scala 905:65:freechips.rocketchip.system.DefaultRV32Config.fir@213909.4]
  wire  _T_270; // @[FPU.scala 905:103:freechips.rocketchip.system.DefaultRV32Config.fir@213910.4]
  wire  _T_273; // @[FPU.scala 914:32:freechips.rocketchip.system.DefaultRV32Config.fir@213922.4]
  FPUDecoder fp_decoder ( // @[FPU.scala 691:26:freechips.rocketchip.system.DefaultRV32Config.fir@213343.4]
    .io_inst(fp_decoder_io_inst),
    .io_sigs_wen(fp_decoder_io_sigs_wen),
    .io_sigs_ren1(fp_decoder_io_sigs_ren1),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap12(fp_decoder_io_sigs_swap12),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_singleOut(fp_decoder_io_sigs_singleOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_div(fp_decoder_io_sigs_div),
    .io_sigs_sqrt(fp_decoder_io_sigs_sqrt),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  FPUFMAPipe sfma ( // @[FPU.scala 776:20:freechips.rocketchip.system.DefaultRV32Config.fir@213608.4]
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  FPToInt fpiu ( // @[FPU.scala 780:20:freechips.rocketchip.system.DefaultRV32Config.fir@213642.4]
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_in_rm(fpiu_io_out_bits_in_rm),
    .io_out_bits_in_in1(fpiu_io_out_bits_in_in1),
    .io_out_bits_in_in2(fpiu_io_out_bits_in_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_store(fpiu_io_out_bits_store),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  IntToFP ifpu ( // @[FPU.scala 790:20:freechips.rocketchip.system.DefaultRV32Config.fir@213687.4]
    .clock(ifpu_clock),
    .reset(ifpu_reset),
    .io_in_valid(ifpu_io_in_valid),
    .io_in_bits_wflags(ifpu_io_in_bits_wflags),
    .io_in_bits_rm(ifpu_io_in_bits_rm),
    .io_in_bits_typ(ifpu_io_in_bits_typ),
    .io_in_bits_in1(ifpu_io_in_bits_in1),
    .io_out_bits_data(ifpu_io_out_bits_data),
    .io_out_bits_exc(ifpu_io_out_bits_exc)
  );
  FPToFP fpmu ( // @[FPU.scala 795:20:freechips.rocketchip.system.DefaultRV32Config.fir@213696.4]
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  DivSqrtRecFN_small divSqrt ( // @[FPU.scala 904:27:freechips.rocketchip.system.DefaultRV32Config.fir@213902.4]
    .clock(divSqrt_clock),
    .reset(divSqrt_reset),
    .io_inReady(divSqrt_io_inReady),
    .io_inValid(divSqrt_io_inValid),
    .io_sqrtOp(divSqrt_io_sqrtOp),
    .io_a(divSqrt_io_a),
    .io_b(divSqrt_io_b),
    .io_roundingMode(divSqrt_io_roundingMode),
    .io_outValid_div(divSqrt_io_outValid_div),
    .io_outValid_sqrt(divSqrt_io_outValid_sqrt),
    .io_out(divSqrt_io_out),
    .io_exceptionFlags(divSqrt_io_exceptionFlags)
  );
  assign regfile_ex_rs_0_addr = ex_ra_0;
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr]; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr]; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr]; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
  assign regfile__T_91_data = {_T_90,_T_89};
  assign regfile__T_91_addr = load_wb_tag;
  assign regfile__T_91_mask = 1'h1;
  assign regfile__T_91_en = load_wb;
  assign regfile__T_214_data = divSqrt_wen ? divSqrt_wdata : _T_201;
  assign regfile__T_214_addr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;
  assign regfile__T_214_mask = 1'h1;
  assign regfile__T_214_en = wen[0] | divSqrt_wen;
  assign killm = io_killm | io_nack_mem; // @[FPU.scala 713:25:freechips.rocketchip.system.DefaultRV32Config.fir@213398.4]
  assign _T_3 = mem_reg_valid & killm; // @[FPU.scala 717:41:freechips.rocketchip.system.DefaultRV32Config.fir@213401.4]
  assign killx = io_killx | _T_3; // @[FPU.scala 717:24:freechips.rocketchip.system.DefaultRV32Config.fir@213402.4]
  assign _T_4 = ~killx; // @[FPU.scala 718:36:freechips.rocketchip.system.DefaultRV32Config.fir@213403.4]
  assign _T_5 = ex_reg_valid & _T_4; // @[FPU.scala 718:33:freechips.rocketchip.system.DefaultRV32Config.fir@213404.4]
  assign _T_7 = ~killm; // @[FPU.scala 720:49:freechips.rocketchip.system.DefaultRV32Config.fir@213411.4]
  assign _T_9 = mem_reg_valid & _T_7; // @[FPU.scala 720:45:freechips.rocketchip.system.DefaultRV32Config.fir@213413.4]
  assign _T_14 = load_wb_data[30:23] == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@213466.6]
  assign _T_15 = load_wb_data[22:0] == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@213467.6]
  assign _T_39 = load_wb_data[1] ? 5'h15 : 5'h16; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213491.6]
  assign _T_40 = load_wb_data[2] ? 5'h14 : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213492.6]
  assign _T_41 = load_wb_data[3] ? 5'h13 : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213493.6]
  assign _T_42 = load_wb_data[4] ? 5'h12 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213494.6]
  assign _T_43 = load_wb_data[5] ? 5'h11 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213495.6]
  assign _T_44 = load_wb_data[6] ? 5'h10 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213496.6]
  assign _T_45 = load_wb_data[7] ? 5'hf : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213497.6]
  assign _T_46 = load_wb_data[8] ? 5'he : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213498.6]
  assign _T_47 = load_wb_data[9] ? 5'hd : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213499.6]
  assign _T_48 = load_wb_data[10] ? 5'hc : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213500.6]
  assign _T_49 = load_wb_data[11] ? 5'hb : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213501.6]
  assign _T_50 = load_wb_data[12] ? 5'ha : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213502.6]
  assign _T_51 = load_wb_data[13] ? 5'h9 : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213503.6]
  assign _T_52 = load_wb_data[14] ? 5'h8 : _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213504.6]
  assign _T_53 = load_wb_data[15] ? 5'h7 : _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213505.6]
  assign _T_54 = load_wb_data[16] ? 5'h6 : _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213506.6]
  assign _T_55 = load_wb_data[17] ? 5'h5 : _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213507.6]
  assign _T_56 = load_wb_data[18] ? 5'h4 : _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213508.6]
  assign _T_57 = load_wb_data[19] ? 5'h3 : _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213509.6]
  assign _T_58 = load_wb_data[20] ? 5'h2 : _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213510.6]
  assign _T_59 = load_wb_data[21] ? 5'h1 : _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213511.6]
  assign _T_60 = load_wb_data[22] ? 5'h0 : _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@213512.6]
  assign _GEN_141 = {{31'd0}, load_wb_data[22:0]}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@213513.6]
  assign _T_61 = _GEN_141 << _T_60; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@213513.6]
  assign _T_63 = {_T_61[21:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@213515.6]
  assign _GEN_142 = {{4'd0}, _T_60}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@213516.6]
  assign _T_64 = _GEN_142 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@213516.6]
  assign _T_65 = _T_14 ? _T_64 : {{1'd0}, load_wb_data[30:23]}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@213517.6]
  assign _T_66 = _T_14 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@213518.6]
  assign _GEN_143 = {{6'd0}, _T_66}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@213519.6]
  assign _T_67 = 8'h80 | _GEN_143; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@213519.6]
  assign _GEN_144 = {{1'd0}, _T_67}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@213520.6]
  assign _T_69 = _T_65 + _GEN_144; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@213521.6]
  assign _T_70 = _T_14 & _T_15; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@213522.6]
  assign _T_72 = _T_69[8:7] == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@213524.6]
  assign _T_74 = ~_T_15; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@213527.6]
  assign _T_75 = _T_72 & _T_74; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@213528.6]
  assign _T_78 = {1'b0,$signed(_T_69)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@213535.6]
  assign _T_79 = ~_T_70; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@213537.6]
  assign _T_80 = _T_14 ? _T_63 : load_wb_data[22:0]; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@213538.6]
  assign _T_82 = {1'h0,_T_79,_T_80}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213540.6]
  assign _T_84 = _T_70 ? 3'h0 : _T_78[8:6]; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@213543.6]
  assign _GEN_145 = {{2'd0}, _T_75}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@213545.6]
  assign _T_86 = _T_84 | _GEN_145; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@213545.6]
  assign _T_89 = {_T_78[5:0],_T_82[22:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213548.6]
  assign _T_90 = {load_wb_data[31],_T_86}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213549.6]
  assign _T_101 = ~fp_decoder_io_sigs_swap12; // @[FPU.scala 744:13:freechips.rocketchip.system.DefaultRV32Config.fir@213572.8]
  assign _T_107 = ~fp_decoder_io_sigs_swap23; // @[FPU.scala 750:32:freechips.rocketchip.system.DefaultRV32Config.fir@213592.8]
  assign _T_108 = _T_101 & _T_107; // @[FPU.scala 750:29:freechips.rocketchip.system.DefaultRV32Config.fir@213593.8]
  assign _T_112 = ex_reg_inst[14:12] == 3'h7; // @[FPU.scala 754:38:freechips.rocketchip.system.DefaultRV32Config.fir@213605.4]
  assign _T_114 = ex_reg_valid & ex_reg_ctrl_fma; // @[FPU.scala 777:33:freechips.rocketchip.system.DefaultRV32Config.fir@213612.4]
  assign _T_121 = ~ex_reg_ctrl_ren3; // @[FPU.scala 765:39:freechips.rocketchip.system.DefaultRV32Config.fir@213629.4]
  assign _T_123 = _T_121 & ex_reg_inst[27]; // @[FPU.scala 765:53:freechips.rocketchip.system.DefaultRV32Config.fir@213631.4]
  assign _GEN_146 = {{1'd0}, _T_123}; // @[FPU.scala 765:36:freechips.rocketchip.system.DefaultRV32Config.fir@213632.4]
  assign _T_125 = ex_reg_ctrl_toint | ex_reg_ctrl_div; // @[FPU.scala 781:51:freechips.rocketchip.system.DefaultRV32Config.fir@213646.4]
  assign _T_126 = _T_125 | ex_reg_ctrl_sqrt; // @[FPU.scala 781:66:freechips.rocketchip.system.DefaultRV32Config.fir@213647.4]
  assign _T_127 = ex_reg_ctrl_fastpipe & ex_reg_ctrl_wflags; // @[FPU.scala 781:103:freechips.rocketchip.system.DefaultRV32Config.fir@213648.4]
  assign _T_128 = _T_126 | _T_127; // @[FPU.scala 781:82:freechips.rocketchip.system.DefaultRV32Config.fir@213649.4]
  assign _T_142 = {{1'd0}, io_fromint_data}; // @[FPU.scala 793:29:freechips.rocketchip.system.DefaultRV32Config.fir@213694.4]
  assign _T_146 = mem_ctrl_fma & mem_ctrl_singleOut; // @[FPU.scala 812:56:freechips.rocketchip.system.DefaultRV32Config.fir@213719.4]
  assign _T_147 = _T_146 ? 2'h2 : 2'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213720.4]
  assign _T_148 = mem_ctrl_fastpipe | mem_ctrl_fromint; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213721.4]
  assign _GEN_148 = {{1'd0}, _T_148}; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  assign memLatencyMask = _GEN_148 | _T_147; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  assign _T_149 = mem_ctrl_fma | mem_ctrl_fastpipe; // @[FPU.scala 837:48:freechips.rocketchip.system.DefaultRV32Config.fir@213725.4]
  assign _T_150 = _T_149 | mem_ctrl_fromint; // @[FPU.scala 837:69:freechips.rocketchip.system.DefaultRV32Config.fir@213726.4]
  assign mem_wen = mem_reg_valid & _T_150; // @[FPU.scala 837:31:freechips.rocketchip.system.DefaultRV32Config.fir@213727.4]
  assign _T_151 = ex_reg_ctrl_fastpipe ? 2'h2 : 2'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213728.4]
  assign _T_152 = ex_reg_ctrl_fromint ? 2'h2 : 2'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213729.4]
  assign _T_153 = ex_reg_ctrl_fma & ex_reg_ctrl_singleOut; // @[FPU.scala 812:56:freechips.rocketchip.system.DefaultRV32Config.fir@213730.4]
  assign _T_154 = _T_153 ? 3'h4 : 3'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213731.4]
  assign _T_155 = _T_151 | _T_152; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213732.4]
  assign _GEN_149 = {{1'd0}, _T_155}; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213733.4]
  assign _T_156 = _GEN_149 | _T_154; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213733.4]
  assign _GEN_150 = {{1'd0}, memLatencyMask}; // @[FPU.scala 838:62:freechips.rocketchip.system.DefaultRV32Config.fir@213734.4]
  assign _T_157 = _GEN_150 & _T_156; // @[FPU.scala 838:62:freechips.rocketchip.system.DefaultRV32Config.fir@213734.4]
  assign _T_158 = |_T_157; // @[FPU.scala 838:89:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  assign _T_159 = mem_wen & _T_158; // @[FPU.scala 838:43:freechips.rocketchip.system.DefaultRV32Config.fir@213736.4]
  assign _T_160 = ex_reg_ctrl_fastpipe ? 3'h4 : 3'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213737.4]
  assign _T_161 = ex_reg_ctrl_fromint ? 3'h4 : 3'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213738.4]
  assign _T_163 = _T_153 ? 4'h8 : 4'h0; // @[FPU.scala 821:23:freechips.rocketchip.system.DefaultRV32Config.fir@213740.4]
  assign _T_164 = _T_160 | _T_161; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213741.4]
  assign _GEN_151 = {{1'd0}, _T_164}; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213742.4]
  assign _T_165 = _GEN_151 | _T_163; // @[FPU.scala 821:78:freechips.rocketchip.system.DefaultRV32Config.fir@213742.4]
  assign _GEN_152 = {{2'd0}, wen}; // @[FPU.scala 838:101:freechips.rocketchip.system.DefaultRV32Config.fir@213743.4]
  assign _T_166 = _GEN_152 & _T_165; // @[FPU.scala 838:101:freechips.rocketchip.system.DefaultRV32Config.fir@213743.4]
  assign _T_167 = |_T_166; // @[FPU.scala 838:128:freechips.rocketchip.system.DefaultRV32Config.fir@213744.4]
  assign _T_168 = _T_159 | _T_167; // @[FPU.scala 838:93:freechips.rocketchip.system.DefaultRV32Config.fir@213745.4]
  assign _GEN_153 = {{1'd0}, wen[1]}; // @[FPU.scala 847:23:freechips.rocketchip.system.DefaultRV32Config.fir@213761.8]
  assign _T_174 = _GEN_153 | memLatencyMask; // @[FPU.scala 847:23:freechips.rocketchip.system.DefaultRV32Config.fir@213761.8]
  assign _T_175 = ~write_port_busy; // @[FPU.scala 850:13:freechips.rocketchip.system.DefaultRV32Config.fir@213764.6]
  assign _T_177 = _T_175 & memLatencyMask[0]; // @[FPU.scala 850:30:freechips.rocketchip.system.DefaultRV32Config.fir@213766.6]
  assign _GEN_154 = {{1'd0}, mem_ctrl_fromint}; // @[FPU.scala 823:108:freechips.rocketchip.system.DefaultRV32Config.fir@213775.8]
  assign _T_183 = _GEN_154 | _T_147; // @[FPU.scala 823:108:freechips.rocketchip.system.DefaultRV32Config.fir@213775.8]
  assign _T_187 = _T_175 & memLatencyMask[1]; // @[FPU.scala 850:30:freechips.rocketchip.system.DefaultRV32Config.fir@213782.6]
  assign _T_275 = divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt; // @[FPU.scala 919:37:freechips.rocketchip.system.DefaultRV32Config.fir@213928.4]
  assign _T_276 = ~divSqrt_killed; // @[FPU.scala 920:24:freechips.rocketchip.system.DefaultRV32Config.fir@213930.6]
  assign divSqrt_wen = _T_275 & _T_276; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  assign _T_196 = wbInfo_0_pipeid == 2'h1; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213800.4]
  assign _T_197 = _T_196 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213801.4]
  assign _T_198 = wbInfo_0_pipeid == 2'h2; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213802.4]
  assign _T_199 = _T_198 ? sfma_io_out_bits_data : _T_197; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213803.4]
  assign _T_200 = wbInfo_0_pipeid == 2'h3; // @[package.scala 32:86:freechips.rocketchip.system.DefaultRV32Config.fir@213804.4]
  assign _T_201 = _T_200 ? sfma_io_out_bits_data : _T_199; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213805.4]
  assign divSqrt_wdata = divSqrt_io_out; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  assign _T_203 = _T_196 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213808.4]
  assign _T_205 = _T_198 ? sfma_io_out_bits_exc : _T_203; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213810.4]
  assign wexc = _T_200 ? sfma_io_out_bits_exc : _T_205; // @[package.scala 32:76:freechips.rocketchip.system.DefaultRV32Config.fir@213812.4]
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint; // @[FPU.scala 876:37:freechips.rocketchip.system.DefaultRV32Config.fir@213836.4]
  assign _T_218 = wb_toint_valid | divSqrt_wen; // @[FPU.scala 878:41:freechips.rocketchip.system.DefaultRV32Config.fir@213841.4]
  assign _T_221 = wb_toint_valid ? wb_toint_exc : 5'h0; // @[FPU.scala 880:8:freechips.rocketchip.system.DefaultRV32Config.fir@213845.4]
  assign divSqrt_flags = divSqrt_io_exceptionFlags; // @[FPU.scala 919:66:freechips.rocketchip.system.DefaultRV32Config.fir@213929.4]
  assign _T_222 = divSqrt_wen ? divSqrt_flags : 5'h0; // @[FPU.scala 881:8:freechips.rocketchip.system.DefaultRV32Config.fir@213846.4]
  assign _T_223 = _T_221 | _T_222; // @[FPU.scala 880:48:freechips.rocketchip.system.DefaultRV32Config.fir@213847.4]
  assign _T_225 = wen[0] ? wexc : 5'h0; // @[FPU.scala 882:8:freechips.rocketchip.system.DefaultRV32Config.fir@213849.4]
  assign _T_227 = mem_ctrl_div | mem_ctrl_sqrt; // @[FPU.scala 884:47:freechips.rocketchip.system.DefaultRV32Config.fir@213852.4]
  assign _T_228 = |wen; // @[FPU.scala 884:72:freechips.rocketchip.system.DefaultRV32Config.fir@213853.4]
  assign divSqrt_write_port_busy = _T_227 & _T_228; // @[FPU.scala 884:65:freechips.rocketchip.system.DefaultRV32Config.fir@213854.4]
  assign _T_229 = ex_reg_valid & ex_reg_ctrl_wflags; // @[FPU.scala 885:33:freechips.rocketchip.system.DefaultRV32Config.fir@213855.4]
  assign _T_230 = mem_reg_valid & mem_ctrl_wflags; // @[FPU.scala 885:68:freechips.rocketchip.system.DefaultRV32Config.fir@213856.4]
  assign _T_231 = _T_229 | _T_230; // @[FPU.scala 885:51:freechips.rocketchip.system.DefaultRV32Config.fir@213857.4]
  assign _T_233 = _T_231 | wb_toint_valid; // @[FPU.scala 885:87:freechips.rocketchip.system.DefaultRV32Config.fir@213859.4]
  assign _T_235 = _T_233 | _T_228; // @[FPU.scala 885:120:freechips.rocketchip.system.DefaultRV32Config.fir@213861.4]
  assign divSqrt_inFlight = ~divSqrt_io_inReady; // @[FPU.scala 912:13:freechips.rocketchip.system.DefaultRV32Config.fir@213918.4]
  assign _T_236 = _T_235 | divSqrt_inFlight; // @[FPU.scala 885:131:freechips.rocketchip.system.DefaultRV32Config.fir@213862.4]
  assign _T_238 = write_port_busy | divSqrt_write_port_busy; // @[FPU.scala 886:34:freechips.rocketchip.system.DefaultRV32Config.fir@213865.4]
  assign _T_253 = io_inst[14:12] == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@213886.4]
  assign _T_254 = io_inst[14:12] == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@213887.4]
  assign _T_255 = _T_253 | _T_254; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@213888.4]
  assign _T_257 = io_inst[14:12] == 3'h7; // @[FPU.scala 894:67:freechips.rocketchip.system.DefaultRV32Config.fir@213890.4]
  assign _T_258 = io_fcsr_rm >= 3'h5; // @[FPU.scala 894:87:freechips.rocketchip.system.DefaultRV32Config.fir@213891.4]
  assign _T_259 = _T_257 & _T_258; // @[FPU.scala 894:73:freechips.rocketchip.system.DefaultRV32Config.fir@213892.4]
  assign tag_2 = ~mem_ctrl_singleOut; // @[FPU.scala 903:17:freechips.rocketchip.system.DefaultRV32Config.fir@213901.4]
  assign _T_266 = ~tag_2; // @[FPU.scala 905:50:freechips.rocketchip.system.DefaultRV32Config.fir@213906.4]
  assign _T_267 = mem_reg_valid & _T_266; // @[FPU.scala 905:43:freechips.rocketchip.system.DefaultRV32Config.fir@213907.4]
  assign _T_269 = _T_267 & _T_227; // @[FPU.scala 905:65:freechips.rocketchip.system.DefaultRV32Config.fir@213909.4]
  assign _T_270 = ~divSqrt_inFlight; // @[FPU.scala 905:103:freechips.rocketchip.system.DefaultRV32Config.fir@213910.4]
  assign _T_273 = divSqrt_io_inValid & divSqrt_io_inReady; // @[FPU.scala 914:32:freechips.rocketchip.system.DefaultRV32Config.fir@213922.4]
  assign io_fcsr_flags_valid = _T_218 | wen[0]; // @[FPU.scala 878:23:freechips.rocketchip.system.DefaultRV32Config.fir@213844.4]
  assign io_fcsr_flags_bits = _T_223 | _T_225; // @[FPU.scala 879:22:freechips.rocketchip.system.DefaultRV32Config.fir@213851.4]
  assign io_store_data = fpiu_io_out_bits_store; // @[FPU.scala 783:17:freechips.rocketchip.system.DefaultRV32Config.fir@213679.4]
  assign io_toint_data = fpiu_io_out_bits_toint; // @[FPU.scala 784:17:freechips.rocketchip.system.DefaultRV32Config.fir@213680.4]
  assign io_fcsr_rdy = ~_T_236; // @[FPU.scala 885:15:freechips.rocketchip.system.DefaultRV32Config.fir@213864.4]
  assign io_nack_mem = _T_238 | divSqrt_inFlight; // @[FPU.scala 886:15:freechips.rocketchip.system.DefaultRV32Config.fir@213867.4]
  assign io_illegal_rm = _T_255 | _T_259; // @[FPU.scala 894:17:freechips.rocketchip.system.DefaultRV32Config.fir@213894.4]
  assign io_dec_wen = fp_decoder_io_sigs_wen; // @[FPU.scala 887:10:freechips.rocketchip.system.DefaultRV32Config.fir@213868.4]
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1; // @[FPU.scala 887:10:freechips.rocketchip.system.DefaultRV32Config.fir@213868.4]
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2; // @[FPU.scala 887:10:freechips.rocketchip.system.DefaultRV32Config.fir@213868.4]
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3; // @[FPU.scala 887:10:freechips.rocketchip.system.DefaultRV32Config.fir@213868.4]
  assign io_sboard_set = wb_reg_valid & _T_244; // @[FPU.scala 889:17:freechips.rocketchip.system.DefaultRV32Config.fir@213876.4]
  assign io_sboard_clr = _T_275 & _T_276; // @[FPU.scala 890:17:freechips.rocketchip.system.DefaultRV32Config.fir@213882.4]
  assign io_sboard_clra = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd; // @[FPU.scala 891:18:freechips.rocketchip.system.DefaultRV32Config.fir@213883.4]
  assign fp_decoder_io_inst = io_inst; // @[FPU.scala 692:22:freechips.rocketchip.system.DefaultRV32Config.fir@213347.4]
  assign sfma_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213610.4]
  assign sfma_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213611.4]
  assign sfma_io_in_valid = _T_114 & ex_reg_ctrl_singleOut; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@213614.4]
  assign sfma_io_in_bits_ren3 = ex_reg_ctrl_ren3; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_swap23 = ex_reg_ctrl_swap23; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_rm = _T_112 ? io_fcsr_rm : ex_reg_inst[14:12]; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_fmaCmd = ex_reg_inst[3:2] | _GEN_146; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign sfma_io_in_bits_in3 = regfile_ex_rs_2_data; // @[FPU.scala 778:19:freechips.rocketchip.system.DefaultRV32Config.fir@213641.4]
  assign fpiu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213644.4]
  assign fpiu_io_in_valid = ex_reg_valid & _T_128; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@213651.4]
  assign fpiu_io_in_bits_ren2 = ex_reg_ctrl_ren2; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign fpiu_io_in_bits_wflags = ex_reg_ctrl_wflags; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign fpiu_io_in_bits_rm = _T_112 ? io_fcsr_rm : ex_reg_inst[14:12]; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign fpiu_io_in_bits_typ = ex_reg_inst[21:20]; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign fpiu_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign fpiu_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 782:19:freechips.rocketchip.system.DefaultRV32Config.fir@213678.4]
  assign ifpu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213689.4]
  assign ifpu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213690.4]
  assign ifpu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fromint; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@213692.4]
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 792:19:freechips.rocketchip.system.DefaultRV32Config.fir@213693.4]
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 792:19:freechips.rocketchip.system.DefaultRV32Config.fir@213693.4]
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ; // @[FPU.scala 792:19:freechips.rocketchip.system.DefaultRV32Config.fir@213693.4]
  assign ifpu_io_in_bits_in1 = _T_142[31:0]; // @[FPU.scala 792:19:freechips.rocketchip.system.DefaultRV32Config.fir@213693.4 FPU.scala 793:23:freechips.rocketchip.system.DefaultRV32Config.fir@213695.4]
  assign fpmu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213698.4]
  assign fpmu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213699.4]
  assign fpmu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fastpipe; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@213701.4]
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 797:19:freechips.rocketchip.system.DefaultRV32Config.fir@213702.4]
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 797:19:freechips.rocketchip.system.DefaultRV32Config.fir@213702.4]
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1; // @[FPU.scala 797:19:freechips.rocketchip.system.DefaultRV32Config.fir@213702.4]
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2; // @[FPU.scala 797:19:freechips.rocketchip.system.DefaultRV32Config.fir@213702.4]
  assign fpmu_io_lt = fpiu_io_out_bits_lt; // @[FPU.scala 798:14:freechips.rocketchip.system.DefaultRV32Config.fir@213703.4]
  assign divSqrt_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213904.4]
  assign divSqrt_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213905.4]
  assign divSqrt_io_inValid = _T_269 & _T_270; // @[FPU.scala 905:26:freechips.rocketchip.system.DefaultRV32Config.fir@213912.4]
  assign divSqrt_io_sqrtOp = mem_ctrl_sqrt; // @[FPU.scala 906:25:freechips.rocketchip.system.DefaultRV32Config.fir@213913.4]
  assign divSqrt_io_a = fpiu_io_out_bits_in_in1; // @[FPU.scala 907:20:freechips.rocketchip.system.DefaultRV32Config.fir@213914.4]
  assign divSqrt_io_b = fpiu_io_out_bits_in_in2; // @[FPU.scala 908:20:freechips.rocketchip.system.DefaultRV32Config.fir@213915.4]
  assign divSqrt_io_roundingMode = fpiu_io_out_bits_in_rm; // @[FPU.scala 909:31:freechips.rocketchip.system.DefaultRV32Config.fir@213916.4]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[32:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ex_reg_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ex_reg_inst = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  ex_reg_ctrl_ren2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  ex_reg_ctrl_ren3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ex_reg_ctrl_swap23 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ex_reg_ctrl_singleOut = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  ex_reg_ctrl_fromint = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ex_reg_ctrl_toint = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ex_reg_ctrl_fastpipe = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ex_reg_ctrl_fma = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ex_reg_ctrl_div = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  ex_reg_ctrl_sqrt = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  ex_reg_ctrl_wflags = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  ex_ra_0 = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  ex_ra_1 = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  ex_ra_2 = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  load_wb = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  load_wb_data = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  load_wb_tag = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  mem_reg_valid = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  mem_reg_inst = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  wb_reg_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_ctrl_singleOut = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_ctrl_fromint = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_toint = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_fastpipe = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_fma = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_sqrt = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_wflags = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  wb_ctrl_toint = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  divSqrt_waddr = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  wen = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  wbInfo_0_rd = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  wbInfo_0_pipeid = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  wbInfo_1_rd = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  wbInfo_1_pipeid = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  write_port_busy = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  divSqrt_killed = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  wb_toint_exc = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  _T_244 = _RAND_41[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_91_en & regfile__T_91_mask) begin
      regfile[regfile__T_91_addr] <= regfile__T_91_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
    end
    if(regfile__T_214_en & regfile__T_214_mask) begin
      regfile[regfile__T_214_addr] <= regfile__T_214_data; // @[FPU.scala 732:20:freechips.rocketchip.system.DefaultRV32Config.fir@213460.4]
    end
    if (reset) begin
      ex_reg_valid <= 1'h0;
    end else begin
      ex_reg_valid <= io_valid;
    end
    if (io_valid) begin
      ex_reg_inst <= io_inst;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren2 <= fp_decoder_io_sigs_ren2;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren3 <= fp_decoder_io_sigs_ren3;
    end
    if (io_valid) begin
      ex_reg_ctrl_swap23 <= fp_decoder_io_sigs_swap23;
    end
    if (io_valid) begin
      ex_reg_ctrl_singleOut <= fp_decoder_io_sigs_singleOut;
    end
    if (io_valid) begin
      ex_reg_ctrl_fromint <= fp_decoder_io_sigs_fromint;
    end
    if (io_valid) begin
      ex_reg_ctrl_toint <= fp_decoder_io_sigs_toint;
    end
    if (io_valid) begin
      ex_reg_ctrl_fastpipe <= fp_decoder_io_sigs_fastpipe;
    end
    if (io_valid) begin
      ex_reg_ctrl_fma <= fp_decoder_io_sigs_fma;
    end
    if (io_valid) begin
      ex_reg_ctrl_div <= fp_decoder_io_sigs_div;
    end
    if (io_valid) begin
      ex_reg_ctrl_sqrt <= fp_decoder_io_sigs_sqrt;
    end
    if (io_valid) begin
      ex_reg_ctrl_wflags <= fp_decoder_io_sigs_wflags;
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_0 <= io_inst[24:20];
        end else if (fp_decoder_io_sigs_ren1) begin
          if (_T_101) begin
            ex_ra_0 <= io_inst[19:15];
          end
        end
      end else if (fp_decoder_io_sigs_ren1) begin
        if (_T_101) begin
          ex_ra_0 <= io_inst[19:15];
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (_T_108) begin
          ex_ra_1 <= io_inst[24:20];
        end else if (fp_decoder_io_sigs_ren1) begin
          if (fp_decoder_io_sigs_swap12) begin
            ex_ra_1 <= io_inst[19:15];
          end
        end
      end else if (fp_decoder_io_sigs_ren1) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_1 <= io_inst[19:15];
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren3) begin
        ex_ra_2 <= io_inst[31:27];
      end else if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap23) begin
          ex_ra_2 <= io_inst[24:20];
        end
      end
    end
    load_wb <= io_dmem_resp_val;
    if (io_dmem_resp_val) begin
      load_wb_data <= io_dmem_resp_data;
    end
    if (io_dmem_resp_val) begin
      load_wb_tag <= io_dmem_resp_tag;
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else begin
      mem_reg_valid <= _T_5;
    end
    if (ex_reg_valid) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_9;
    end
    if (ex_reg_valid) begin
      mem_ctrl_singleOut <= ex_reg_ctrl_singleOut;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fromint <= ex_reg_ctrl_fromint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_toint <= ex_reg_ctrl_toint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fastpipe <= ex_reg_ctrl_fastpipe;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fma <= ex_reg_ctrl_fma;
    end
    if (ex_reg_valid) begin
      mem_ctrl_div <= ex_reg_ctrl_div;
    end
    if (ex_reg_valid) begin
      mem_ctrl_sqrt <= ex_reg_ctrl_sqrt;
    end
    if (ex_reg_valid) begin
      mem_ctrl_wflags <= ex_reg_ctrl_wflags;
    end
    if (mem_reg_valid) begin
      wb_ctrl_toint <= mem_ctrl_toint;
    end
    if (_T_273) begin
      divSqrt_waddr <= mem_reg_inst[11:7];
    end
    if (reset) begin
      wen <= 2'h0;
    end else if (mem_wen) begin
      if (_T_7) begin
        wen <= _T_174;
      end else begin
        wen <= {{1'd0}, wen[1]};
      end
    end else begin
      wen <= {{1'd0}, wen[1]};
    end
    if (mem_wen) begin
      if (_T_177) begin
        wbInfo_0_rd <= mem_reg_inst[11:7];
      end else if (wen[1]) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end else if (wen[1]) begin
      wbInfo_0_rd <= wbInfo_1_rd;
    end
    if (mem_wen) begin
      if (_T_177) begin
        wbInfo_0_pipeid <= _T_183;
      end else if (wen[1]) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end else if (wen[1]) begin
      wbInfo_0_pipeid <= wbInfo_1_pipeid;
    end
    if (mem_wen) begin
      if (_T_187) begin
        wbInfo_1_rd <= mem_reg_inst[11:7];
      end
    end
    if (mem_wen) begin
      if (_T_187) begin
        wbInfo_1_pipeid <= _T_183;
      end
    end
    if (ex_reg_valid) begin
      write_port_busy <= _T_168;
    end
    if (_T_273) begin
      divSqrt_killed <= killm;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_244 <= mem_ctrl_div | mem_ctrl_sqrt;
  end
endmodule
