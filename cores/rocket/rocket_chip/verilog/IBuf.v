module IBuf( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215579.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215580.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215581.4]
  output        io_imem_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input  [4:0]  io_imem_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input  [7:0]  io_imem_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input  [31:0] io_imem_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input  [31:0] io_imem_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_imem_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [31:0] io_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [4:0]  io_btb_resp_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [7:0]  io_btb_resp_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  input         io_inst_0_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_bits_xcpt0_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_bits_xcpt0_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_bits_xcpt1_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_bits_xcpt1_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output        io_inst_0_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [31:0] io_inst_0_bits_inst_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [4:0]  io_inst_0_bits_inst_rd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [4:0]  io_inst_0_bits_inst_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [4:0]  io_inst_0_bits_inst_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [4:0]  io_inst_0_bits_inst_rs3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
  output [31:0] io_inst_0_bits_raw // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215582.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] RVCExpander_io_in; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]

  wire [31:0] RVCExpander_io_in_yxdbg /*verilator public*/;   
  wire [31:0] RVCExpander_io_out_bits; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  wire [4:0] RVCExpander_io_out_rd; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  wire [4:0] RVCExpander_io_out_rs1; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  wire [4:0] RVCExpander_io_out_rs2; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  wire [4:0] RVCExpander_io_out_rs3; // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
  reg  nBufValid; // @[IBuf.scala 34:47:freechips.rocketchip.system.DefaultRV32Config.fir@215587.4]
  reg [31:0] buf__pc; // @[IBuf.scala 35:16:freechips.rocketchip.system.DefaultRV32Config.fir@215588.4]
  reg [31:0] buf__data; // @[IBuf.scala 35:16:freechips.rocketchip.system.DefaultRV32Config.fir@215588.4]
  reg  buf__xcpt_pf_inst; // @[IBuf.scala 35:16:freechips.rocketchip.system.DefaultRV32Config.fir@215588.4]
  reg  buf__xcpt_ae_inst; // @[IBuf.scala 35:16:freechips.rocketchip.system.DefaultRV32Config.fir@215588.4]
  reg  buf__replay; // @[IBuf.scala 35:16:freechips.rocketchip.system.DefaultRV32Config.fir@215588.4]
  reg [4:0] ibufBTBResp_entry; // @[IBuf.scala 36:24:freechips.rocketchip.system.DefaultRV32Config.fir@215589.4]
  reg [7:0] ibufBTBResp_bht_history; // @[IBuf.scala 36:24:freechips.rocketchip.system.DefaultRV32Config.fir@215589.4]
  wire  pcWordBits; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@215590.4]
  wire [1:0] _T; // @[IBuf.scala 41:64:freechips.rocketchip.system.DefaultRV32Config.fir@215594.4]
  wire [1:0] _T_1; // @[IBuf.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@215595.4]
  wire [1:0] _GEN_56; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@215596.4]
  wire [1:0] nIC; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@215597.4]
  wire [1:0] _T_4; // @[IBuf.scala 43:19:freechips.rocketchip.system.DefaultRV32Config.fir@215600.4]
  wire [1:0] _GEN_57; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@215601.4]
  wire [1:0] nValid; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@215602.4]
  wire [3:0] _T_62; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@215677.4]
  wire [3:0] _T_64; // @[IBuf.scala 74:33:freechips.rocketchip.system.DefaultRV32Config.fir@215679.4]
  wire [1:0] valid; // @[IBuf.scala 74:37:freechips.rocketchip.system.DefaultRV32Config.fir@215680.4]
  wire [1:0] _T_93; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@215727.4]
  wire [1:0] _T_65; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@215681.4]
  wire [1:0] bufMask; // @[IBuf.scala 75:37:freechips.rocketchip.system.DefaultRV32Config.fir@215683.4]
  wire [1:0] buf_replay; // @[IBuf.scala 77:23:freechips.rocketchip.system.DefaultRV32Config.fir@215688.4]
  wire  _T_98; // @[IBuf.scala 93:48:freechips.rocketchip.system.DefaultRV32Config.fir@215732.4]
  wire [1:0] nReady; // @[IBuf.scala 102:56:freechips.rocketchip.system.DefaultRV32Config.fir@215771.4]
  wire [1:0] nICReady; // @[IBuf.scala 42:25:freechips.rocketchip.system.DefaultRV32Config.fir@215599.4]
  wire  _T_6; // @[IBuf.scala 44:47:freechips.rocketchip.system.DefaultRV32Config.fir@215603.4]
  wire  _T_7; // @[IBuf.scala 44:37:freechips.rocketchip.system.DefaultRV32Config.fir@215604.4]
  wire  _T_8; // @[IBuf.scala 44:73:freechips.rocketchip.system.DefaultRV32Config.fir@215605.4]
  wire [1:0] _T_10; // @[IBuf.scala 44:92:freechips.rocketchip.system.DefaultRV32Config.fir@215607.4]
  wire  _T_11; // @[IBuf.scala 44:85:freechips.rocketchip.system.DefaultRV32Config.fir@215608.4]
  wire  _T_12; // @[IBuf.scala 44:80:freechips.rocketchip.system.DefaultRV32Config.fir@215609.4]
  wire [1:0] _T_16; // @[IBuf.scala 48:64:freechips.rocketchip.system.DefaultRV32Config.fir@215615.6]
  wire [1:0] _T_17; // @[IBuf.scala 48:23:freechips.rocketchip.system.DefaultRV32Config.fir@215616.6]
  wire  _T_19; // @[IBuf.scala 54:27:freechips.rocketchip.system.DefaultRV32Config.fir@215619.6]
  wire  _T_20; // @[IBuf.scala 54:62:freechips.rocketchip.system.DefaultRV32Config.fir@215620.6]
  wire  _T_21; // @[IBuf.scala 54:50:freechips.rocketchip.system.DefaultRV32Config.fir@215621.6]
  wire  _T_25; // @[IBuf.scala 54:68:freechips.rocketchip.system.DefaultRV32Config.fir@215625.6]
  wire [1:0] _T_27; // @[IBuf.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@215628.8]
  wire [63:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215635.8]
  wire [5:0] _T_33; // @[IBuf.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@215636.8]
  wire [63:0] _T_34; // @[IBuf.scala 128:10:freechips.rocketchip.system.DefaultRV32Config.fir@215637.8]
  wire [31:0] _T_37; // @[IBuf.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@215641.8]
  wire [2:0] _T_38; // @[IBuf.scala 59:80:freechips.rocketchip.system.DefaultRV32Config.fir@215642.8]
  wire [31:0] _GEN_65; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@215643.8]
  wire [31:0] _T_40; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@215644.8]
  wire [31:0] _T_41; // @[IBuf.scala 59:109:freechips.rocketchip.system.DefaultRV32Config.fir@215645.8]
  wire [31:0] _T_42; // @[IBuf.scala 59:49:freechips.rocketchip.system.DefaultRV32Config.fir@215646.8]
  wire [1:0] _GEN_0; // @[IBuf.scala 54:92:freechips.rocketchip.system.DefaultRV32Config.fir@215626.6]
  wire [1:0] _GEN_23; // @[IBuf.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@215612.4]
  wire [1:0] _GEN_46; // @[IBuf.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@215651.4]
  wire [1:0] _T_44; // @[IBuf.scala 68:32:freechips.rocketchip.system.DefaultRV32Config.fir@215655.4]
  wire [1:0] icShiftAmt; // @[IBuf.scala 68:44:freechips.rocketchip.system.DefaultRV32Config.fir@215657.4]
  wire [63:0] _T_49; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215661.4]
  wire [127:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215665.4]
  wire [5:0] _T_54; // @[IBuf.scala 121:19:freechips.rocketchip.system.DefaultRV32Config.fir@215666.4]
  wire [190:0] _GEN_68; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@215667.4]
  wire [190:0] _T_55; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@215667.4]
  wire [31:0] icData; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@215668.4]
  wire [4:0] _T_57; // @[IBuf.scala 71:65:freechips.rocketchip.system.DefaultRV32Config.fir@215670.4]
  wire [62:0] _T_58; // @[IBuf.scala 71:51:freechips.rocketchip.system.DefaultRV32Config.fir@215671.4]
  wire [31:0] icMask; // @[IBuf.scala 71:92:freechips.rocketchip.system.DefaultRV32Config.fir@215672.4]
  wire [31:0] _T_59; // @[IBuf.scala 72:21:freechips.rocketchip.system.DefaultRV32Config.fir@215673.4]
  wire [31:0] _T_60; // @[IBuf.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@215674.4]
  wire [31:0] _T_61; // @[IBuf.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@215675.4]
  wire  xcpt_1_pf_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@215687.4]
  wire  xcpt_1_ae_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@215687.4]
  wire [1:0] _T_69; // @[IBuf.scala 78:65:freechips.rocketchip.system.DefaultRV32Config.fir@215689.4]
  wire [1:0] _T_70; // @[IBuf.scala 78:63:freechips.rocketchip.system.DefaultRV32Config.fir@215690.4]
  wire [1:0] _T_71; // @[IBuf.scala 78:35:freechips.rocketchip.system.DefaultRV32Config.fir@215691.4]
  wire [1:0] ic_replay; // @[IBuf.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@215692.4]
  wire  _T_72; // @[IBuf.scala 79:10:freechips.rocketchip.system.DefaultRV32Config.fir@215693.4]
  wire  _T_73; // @[IBuf.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@215694.4]
  wire  _T_74; // @[IBuf.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@215695.4]
  wire  _T_75; // @[IBuf.scala 79:78:freechips.rocketchip.system.DefaultRV32Config.fir@215696.4]
  wire  _T_76; // @[IBuf.scala 79:52:freechips.rocketchip.system.DefaultRV32Config.fir@215697.4]
  wire  _T_78; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215699.4]
  wire  _T_79; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215700.4]
  wire  _T_80; // @[IBuf.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@215706.4]
  wire [1:0] _T_87; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@215721.4]
  wire [1:0] _T_108; // @[IBuf.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@215744.4]
  wire [1:0] _T_119; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@215763.4]
  RVCExpander RVCExpander ( // @[IBuf.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@215709.4]
    .io_in(RVCExpander_io_in_yxdbg),
    .io_out_bits(RVCExpander_io_out_bits),
    .io_out_rd(RVCExpander_io_out_rd),
    .io_out_rs1(RVCExpander_io_out_rs1),
    .io_out_rs2(RVCExpander_io_out_rs2),
    .io_out_rs3(RVCExpander_io_out_rs3)
  );
  assign pcWordBits = io_imem_bits_pc[1]; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@215590.4]
  assign _T = io_imem_bits_btb_bridx + 1'h1; // @[IBuf.scala 41:64:freechips.rocketchip.system.DefaultRV32Config.fir@215594.4]
  assign _T_1 = io_imem_bits_btb_taken ? _T : 2'h2; // @[IBuf.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@215595.4]
  assign _GEN_56 = {{1'd0}, pcWordBits}; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@215596.4]
  assign nIC = _T_1 - _GEN_56; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@215597.4]
  assign _T_4 = io_imem_valid ? nIC : 2'h0; // @[IBuf.scala 43:19:freechips.rocketchip.system.DefaultRV32Config.fir@215600.4]
  assign _GEN_57 = {{1'd0}, nBufValid}; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@215601.4]
  assign nValid = _T_4 + _GEN_57; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@215602.4]
  assign _T_62 = 4'h1 << nValid; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@215677.4]
  assign _T_64 = _T_62 - 4'h1; // @[IBuf.scala 74:33:freechips.rocketchip.system.DefaultRV32Config.fir@215679.4]
  assign valid = _T_64[1:0]; // @[IBuf.scala 74:37:freechips.rocketchip.system.DefaultRV32Config.fir@215680.4]
  assign _T_93 = {{1'd0}, valid[1]}; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@215727.4]
  assign _T_65 = 2'h1 << nBufValid; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@215681.4]
  assign bufMask = _T_65 - 2'h1; // @[IBuf.scala 75:37:freechips.rocketchip.system.DefaultRV32Config.fir@215683.4]
  assign buf_replay = buf__replay ? bufMask : 2'h0; // @[IBuf.scala 77:23:freechips.rocketchip.system.DefaultRV32Config.fir@215688.4]
  assign _T_98 = _T_93[0] | buf_replay[0]; // @[IBuf.scala 93:48:freechips.rocketchip.system.DefaultRV32Config.fir@215732.4]
  assign nReady = _T_98 ? 2'h2 : 2'h0; // @[IBuf.scala 102:56:freechips.rocketchip.system.DefaultRV32Config.fir@215771.4]
  assign nICReady = nReady - _GEN_57; // @[IBuf.scala 42:25:freechips.rocketchip.system.DefaultRV32Config.fir@215599.4]
  assign _T_6 = nReady >= _GEN_57; // @[IBuf.scala 44:47:freechips.rocketchip.system.DefaultRV32Config.fir@215603.4]
  assign _T_7 = io_inst_0_ready & _T_6; // @[IBuf.scala 44:37:freechips.rocketchip.system.DefaultRV32Config.fir@215604.4]
  assign _T_8 = nICReady >= nIC; // @[IBuf.scala 44:73:freechips.rocketchip.system.DefaultRV32Config.fir@215605.4]
  assign _T_10 = nIC - nICReady; // @[IBuf.scala 44:92:freechips.rocketchip.system.DefaultRV32Config.fir@215607.4]
  assign _T_11 = 2'h1 >= _T_10; // @[IBuf.scala 44:85:freechips.rocketchip.system.DefaultRV32Config.fir@215608.4]
  assign _T_12 = _T_8 | _T_11; // @[IBuf.scala 44:80:freechips.rocketchip.system.DefaultRV32Config.fir@215609.4]
  assign _T_16 = _GEN_57 - nReady; // @[IBuf.scala 48:64:freechips.rocketchip.system.DefaultRV32Config.fir@215615.6]
  assign _T_17 = _T_6 ? 2'h0 : _T_16; // @[IBuf.scala 48:23:freechips.rocketchip.system.DefaultRV32Config.fir@215616.6]
  assign _T_19 = io_imem_valid & _T_6; // @[IBuf.scala 54:27:freechips.rocketchip.system.DefaultRV32Config.fir@215619.6]
  assign _T_20 = nICReady < nIC; // @[IBuf.scala 54:62:freechips.rocketchip.system.DefaultRV32Config.fir@215620.6]
  assign _T_21 = _T_19 & _T_20; // @[IBuf.scala 54:50:freechips.rocketchip.system.DefaultRV32Config.fir@215621.6]
  assign _T_25 = _T_21 & _T_11; // @[IBuf.scala 54:68:freechips.rocketchip.system.DefaultRV32Config.fir@215625.6]
  assign _T_27 = _GEN_56 + nICReady; // @[IBuf.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@215628.8]
  assign _T_32 = {io_imem_bits_data[31:16],io_imem_bits_data[31:16],io_imem_bits_data}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215635.8]
  assign _T_33 = {_T_27, 4'h0}; // @[IBuf.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@215636.8]
  assign _T_34 = _T_32 >> _T_33; // @[IBuf.scala 128:10:freechips.rocketchip.system.DefaultRV32Config.fir@215637.8]
  assign _T_37 = io_imem_bits_pc & 32'hfffffffc; // @[IBuf.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@215641.8]
  assign _T_38 = {nICReady, 1'h0}; // @[IBuf.scala 59:80:freechips.rocketchip.system.DefaultRV32Config.fir@215642.8]
  assign _GEN_65 = {{29'd0}, _T_38}; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@215643.8]
  assign _T_40 = io_imem_bits_pc + _GEN_65; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@215644.8]
  assign _T_41 = _T_40 & 32'h3; // @[IBuf.scala 59:109:freechips.rocketchip.system.DefaultRV32Config.fir@215645.8]
  assign _T_42 = _T_37 | _T_41; // @[IBuf.scala 59:49:freechips.rocketchip.system.DefaultRV32Config.fir@215646.8]
  assign _GEN_0 = _T_25 ? _T_10 : _T_17; // @[IBuf.scala 54:92:freechips.rocketchip.system.DefaultRV32Config.fir@215626.6]
  assign _GEN_23 = io_inst_0_ready ? _GEN_0 : {{1'd0}, nBufValid}; // @[IBuf.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@215612.4]
  assign _GEN_46 = io_kill ? 2'h0 : _GEN_23; // @[IBuf.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@215651.4]
  assign _T_44 = 2'h2 + _GEN_57; // @[IBuf.scala 68:32:freechips.rocketchip.system.DefaultRV32Config.fir@215655.4]
  assign icShiftAmt = _T_44 - _GEN_56; // @[IBuf.scala 68:44:freechips.rocketchip.system.DefaultRV32Config.fir@215657.4]
  assign _T_49 = {io_imem_bits_data,io_imem_bits_data[15:0],io_imem_bits_data[15:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215661.4]
  assign _T_53 = {_T_49[63:48],_T_49[63:48],_T_49[63:48],_T_49[63:48],io_imem_bits_data,io_imem_bits_data[15:0],io_imem_bits_data[15:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@215665.4]
  assign _T_54 = {icShiftAmt, 4'h0}; // @[IBuf.scala 121:19:freechips.rocketchip.system.DefaultRV32Config.fir@215666.4]
  assign _GEN_68 = {{63'd0}, _T_53}; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@215667.4]
  assign _T_55 = _GEN_68 << _T_54; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@215667.4]
  assign icData = _T_55[95:64]; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@215668.4]
  assign _T_57 = {nBufValid, 4'h0}; // @[IBuf.scala 71:65:freechips.rocketchip.system.DefaultRV32Config.fir@215670.4]
  assign _T_58 = 63'hffffffff << _T_57; // @[IBuf.scala 71:51:freechips.rocketchip.system.DefaultRV32Config.fir@215671.4]
  assign icMask = _T_58[31:0]; // @[IBuf.scala 71:92:freechips.rocketchip.system.DefaultRV32Config.fir@215672.4]
  assign _T_59 = icData & icMask; // @[IBuf.scala 72:21:freechips.rocketchip.system.DefaultRV32Config.fir@215673.4]
  assign _T_60 = ~icMask; // @[IBuf.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@215674.4]
  assign _T_61 = buf__data & _T_60; // @[IBuf.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@215675.4]
  assign xcpt_1_pf_inst = bufMask[1] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@215687.4]
  assign xcpt_1_ae_inst = bufMask[1] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@215687.4]
  assign _T_69 = ~bufMask; // @[IBuf.scala 78:65:freechips.rocketchip.system.DefaultRV32Config.fir@215689.4]
  assign _T_70 = valid & _T_69; // @[IBuf.scala 78:63:freechips.rocketchip.system.DefaultRV32Config.fir@215690.4]
  assign _T_71 = io_imem_bits_replay ? _T_70 : 2'h0; // @[IBuf.scala 78:35:freechips.rocketchip.system.DefaultRV32Config.fir@215691.4]
  assign ic_replay = buf_replay | _T_71; // @[IBuf.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@215692.4]
  assign _T_72 = ~io_imem_valid; // @[IBuf.scala 79:10:freechips.rocketchip.system.DefaultRV32Config.fir@215693.4]
  assign _T_73 = ~io_imem_bits_btb_taken; // @[IBuf.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@215694.4]
  assign _T_74 = _T_72 | _T_73; // @[IBuf.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@215695.4]
  assign _T_75 = io_imem_bits_btb_bridx >= pcWordBits; // @[IBuf.scala 79:78:freechips.rocketchip.system.DefaultRV32Config.fir@215696.4]
  assign _T_76 = _T_74 | _T_75; // @[IBuf.scala 79:52:freechips.rocketchip.system.DefaultRV32Config.fir@215697.4]
  assign _T_78 = _T_76 | reset; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215699.4]
  assign _T_79 = ~_T_78; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215700.4]
  assign _T_80 = nBufValid > 1'h0; // @[IBuf.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@215706.4]
  assign _T_87 = {{1'd0}, ic_replay[1]}; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@215721.4]
  assign _T_108 = {xcpt_1_pf_inst,xcpt_1_ae_inst}; // @[IBuf.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@215744.4]
  assign _T_119 = {{1'd0}, bufMask[1]}; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@215763.4]
  assign io_imem_ready = _T_7 & _T_12; // @[IBuf.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@215611.4]
  assign io_pc = _T_80 ? buf__pc : io_imem_bits_pc; // @[IBuf.scala 82:9:freechips.rocketchip.system.DefaultRV32Config.fir@215708.4]
  assign io_btb_resp_entry = _T_119[0] ? ibufBTBResp_entry : io_imem_bits_btb_entry; // @[IBuf.scala 81:15:freechips.rocketchip.system.DefaultRV32Config.fir@215705.4 IBuf.scala 100:71:freechips.rocketchip.system.DefaultRV32Config.fir@215767.6]
  assign io_btb_resp_bht_history = _T_119[0] ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history; // @[IBuf.scala 81:15:freechips.rocketchip.system.DefaultRV32Config.fir@215705.4 IBuf.scala 100:71:freechips.rocketchip.system.DefaultRV32Config.fir@215767.6]
  assign io_inst_0_valid = valid[0] & _T_98; // @[IBuf.scala 94:24:freechips.rocketchip.system.DefaultRV32Config.fir@215736.4]
  assign io_inst_0_bits_xcpt0_pf_inst = bufMask[0] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@215739.4]
  assign io_inst_0_bits_xcpt0_ae_inst = bufMask[0] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@215739.4]
  assign io_inst_0_bits_xcpt1_pf_inst = _T_108[1]; // @[IBuf.scala 96:29:freechips.rocketchip.system.DefaultRV32Config.fir@215755.4]
  assign io_inst_0_bits_xcpt1_ae_inst = _T_108[0]; // @[IBuf.scala 96:29:freechips.rocketchip.system.DefaultRV32Config.fir@215755.4]
  assign io_inst_0_bits_replay = ic_replay[0] | _T_87[0]; // @[IBuf.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@215756.4]
  assign io_inst_0_bits_inst_bits = RVCExpander_io_out_bits; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@215714.4]
  assign io_inst_0_bits_inst_rd = RVCExpander_io_out_rd; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@215714.4]
  assign io_inst_0_bits_inst_rs1 = RVCExpander_io_out_rs1; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@215714.4]
  assign io_inst_0_bits_inst_rs2 = RVCExpander_io_out_rs2; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@215714.4]
  assign io_inst_0_bits_inst_rs3 = RVCExpander_io_out_rs3; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@215714.4]
  assign io_inst_0_bits_raw = _T_59 | _T_61; // @[IBuf.scala 89:25:freechips.rocketchip.system.DefaultRV32Config.fir@215715.4]
  assign RVCExpander_io_in = _T_59 | _T_61; // @[IBuf.scala 87:15:freechips.rocketchip.system.DefaultRV32Config.fir@215713.4]
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
  nBufValid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  buf__pc = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  buf__data = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  buf__xcpt_pf_inst = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  buf__xcpt_ae_inst = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  buf__replay = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ibufBTBResp_entry = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  ibufBTBResp_bht_history = _RAND_7[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      nBufValid <= 1'h0;
    end else begin
      nBufValid <= _GEN_46[0];
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__pc <= _T_42;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__data <= {{16'd0}, _T_34[15:0]};
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__replay <= io_imem_bits_replay;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_entry <= io_imem_bits_btb_entry;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_79) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IBuf.scala:79 assert(!io.imem.valid || !io.imem.bits.btb.taken || io.imem.bits.btb.bridx >= pcWordBits)\n"); // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215702.6]
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
          $fatal; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@215703.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
