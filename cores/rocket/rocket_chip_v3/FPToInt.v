module FPToInt( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212008.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212009.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input         io_in_bits_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [2:0]  io_out_bits_in_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [32:0] io_out_bits_in_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [32:0] io_out_bits_in_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output        io_out_bits_lt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [31:0] io_out_bits_store, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [31:0] io_out_bits_toint, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212011.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire [32:0] dcmp_io_a; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire [32:0] dcmp_io_b; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire  dcmp_io_signaling; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire  dcmp_io_lt; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire  dcmp_io_eq; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
  wire [32:0] RecFNToIN_io_in; // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
  wire [2:0] RecFNToIN_io_roundingMode; // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
  wire  RecFNToIN_io_signedOut; // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
  wire [31:0] RecFNToIN_io_out; // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
  wire [2:0] RecFNToIN_io_intExceptionFlags; // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
  reg  in_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  reg  in_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  reg [2:0] in_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  reg [1:0] in_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  reg [32:0] in_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  reg [32:0] in_in2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212016.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@212053.4]
  wire  _T_6; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@212055.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@212059.4]
  wire  _T_11; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@212062.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@212063.4]
  wire [9:0] _T_14; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@212068.4]
  wire  _T_15; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@212070.4]
  wire [24:0] _T_18; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212073.4]
  wire  _T_19; // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.DefaultRV32Config.fir@212075.4]
  wire [4:0] _T_22; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@212078.4]
  wire [23:0] _T_24; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@212080.4]
  wire [7:0] _T_28; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.DefaultRV32Config.fir@212084.4]
  wire [7:0] _T_29; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.DefaultRV32Config.fir@212085.4]
  wire  _T_30; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.DefaultRV32Config.fir@212086.4]
  wire [7:0] _T_32; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@212088.4]
  wire [7:0] _T_33; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212089.4]
  wire [22:0] _T_35; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@212091.4]
  wire [22:0] _T_36; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.DefaultRV32Config.fir@212092.4]
  wire [8:0] _T_37; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212093.4]
  wire [31:0] store; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212094.4]
  wire  _T_97; // @[FPU.scala 439:11:freechips.rocketchip.system.DefaultRV32Config.fir@212171.6]
  wire [2:0] _T_90; // @[FPU.scala 435:15:freechips.rocketchip.system.DefaultRV32Config.fir@212161.6]
  wire [1:0] _T_91; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212162.6]
  wire [2:0] _GEN_30; // @[FPU.scala 435:22:freechips.rocketchip.system.DefaultRV32Config.fir@212163.6]
  wire [2:0] _T_92; // @[FPU.scala 435:22:freechips.rocketchip.system.DefaultRV32Config.fir@212163.6]
  wire  _T_93; // @[FPU.scala 435:53:freechips.rocketchip.system.DefaultRV32Config.fir@212164.6]
  wire [32:0] _T_96; // @[FPU.scala 435:57:freechips.rocketchip.system.DefaultRV32Config.fir@212167.6]
  wire [32:0] _GEN_25; // @[FPU.scala 439:21:freechips.rocketchip.system.DefaultRV32Config.fir@212172.6]
  wire  _T_60; // @[FPU.scala 214:22:freechips.rocketchip.system.DefaultRV32Config.fir@212127.6]
  wire  _T_65; // @[FPU.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@212132.6]
  wire  _T_62; // @[FPU.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@212129.6]
  wire  _T_63; // @[FPU.scala 215:24:freechips.rocketchip.system.DefaultRV32Config.fir@212130.6]
  wire  _T_44; // @[FPU.scala 207:28:freechips.rocketchip.system.DefaultRV32Config.fir@212111.6]
  wire  _T_58; // @[FPU.scala 213:30:freechips.rocketchip.system.DefaultRV32Config.fir@212125.6]
  wire  _T_59; // @[FPU.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@212126.6]
  wire  _T_66; // @[FPU.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@212133.6]
  wire  _T_67; // @[FPU.scala 218:31:freechips.rocketchip.system.DefaultRV32Config.fir@212134.6]
  wire  _T_51; // @[FPU.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@212118.6]
  wire  _T_46; // @[FPU.scala 209:55:freechips.rocketchip.system.DefaultRV32Config.fir@212113.6]
  wire  _T_52; // @[FPU.scala 211:42:freechips.rocketchip.system.DefaultRV32Config.fir@212119.6]
  wire  _T_53; // @[FPU.scala 211:39:freechips.rocketchip.system.DefaultRV32Config.fir@212120.6]
  wire  _T_54; // @[FPU.scala 211:71:freechips.rocketchip.system.DefaultRV32Config.fir@212121.6]
  wire  _T_55; // @[FPU.scala 211:61:freechips.rocketchip.system.DefaultRV32Config.fir@212122.6]
  wire  _T_69; // @[FPU.scala 218:50:freechips.rocketchip.system.DefaultRV32Config.fir@212136.6]
  wire  _T_47; // @[FPU.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@212114.6]
  wire  _T_49; // @[FPU.scala 210:62:freechips.rocketchip.system.DefaultRV32Config.fir@212116.6]
  wire  _T_50; // @[FPU.scala 210:40:freechips.rocketchip.system.DefaultRV32Config.fir@212117.6]
  wire  _T_71; // @[FPU.scala 219:21:freechips.rocketchip.system.DefaultRV32Config.fir@212138.6]
  wire  _T_56; // @[FPU.scala 212:23:freechips.rocketchip.system.DefaultRV32Config.fir@212123.6]
  wire  _T_73; // @[FPU.scala 219:38:freechips.rocketchip.system.DefaultRV32Config.fir@212140.6]
  wire  _T_74; // @[FPU.scala 219:55:freechips.rocketchip.system.DefaultRV32Config.fir@212141.6]
  wire  _T_75; // @[FPU.scala 220:21:freechips.rocketchip.system.DefaultRV32Config.fir@212142.6]
  wire  _T_76; // @[FPU.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@212143.6]
  wire  _T_77; // @[FPU.scala 220:54:freechips.rocketchip.system.DefaultRV32Config.fir@212144.6]
  wire [9:0] _T_86; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212153.6]
  wire [32:0] _T_89; // @[FPU.scala 430:27:freechips.rocketchip.system.DefaultRV32Config.fir@212156.6]
  wire [32:0] _GEN_22; // @[FPU.scala 428:19:freechips.rocketchip.system.DefaultRV32Config.fir@212107.4]
  wire [32:0] toint; // @[FPU.scala 434:20:freechips.rocketchip.system.DefaultRV32Config.fir@212160.4]
  wire  _T_101; // @[FPU.scala 447:62:freechips.rocketchip.system.DefaultRV32Config.fir@212183.8]
  wire [4:0] _T_104; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212186.8]
  wire [4:0] _GEN_26; // @[FPU.scala 439:21:freechips.rocketchip.system.DefaultRV32Config.fir@212172.6]
  wire  _T_106; // @[FPU.scala 468:53:freechips.rocketchip.system.DefaultRV32Config.fir@212192.4]
  wire  _T_108; // @[FPU.scala 468:79:freechips.rocketchip.system.DefaultRV32Config.fir@212194.4]
  wire  _T_109; // @[FPU.scala 468:59:freechips.rocketchip.system.DefaultRV32Config.fir@212195.4]
  CompareRecFN dcmp ( // @[FPU.scala 415:20:freechips.rocketchip.system.DefaultRV32Config.fir@212043.4]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN RecFNToIN ( // @[FPU.scala 442:24:freechips.rocketchip.system.DefaultRV32Config.fir@212174.8]
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  assign _T_4 = in_in1[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@212053.4]
  assign _T_6 = in_in1[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@212055.4]
  assign _T_9 = _T_6 & in_in1[29]; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@212059.4]
  assign _T_11 = ~in_in1[29]; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@212062.4]
  assign _T_12 = _T_6 & _T_11; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@212063.4]
  assign _T_14 = {1'b0,$signed(in_in1[31:23])}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@212068.4]
  assign _T_15 = ~_T_4; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@212070.4]
  assign _T_18 = {1'h0,_T_15,in_in1[22:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212073.4]
  assign _T_19 = $signed(_T_14) < 10'sh82; // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.DefaultRV32Config.fir@212075.4]
  assign _T_22 = 5'h1 - _T_14[4:0]; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@212078.4]
  assign _T_24 = _T_18[24:1] >> _T_22; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@212080.4]
  assign _T_28 = _T_14[7:0] - 8'h81; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.DefaultRV32Config.fir@212084.4]
  assign _T_29 = _T_19 ? 8'h0 : _T_28; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.DefaultRV32Config.fir@212085.4]
  assign _T_30 = _T_9 | _T_12; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.DefaultRV32Config.fir@212086.4]
  assign _T_32 = _T_30 ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@212088.4]
  assign _T_33 = _T_29 | _T_32; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212089.4]
  assign _T_35 = _T_12 ? 23'h0 : _T_18[22:0]; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@212091.4]
  assign _T_36 = _T_19 ? _T_24[22:0] : _T_35; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.DefaultRV32Config.fir@212092.4]
  assign _T_37 = {in_in1[32],_T_33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212093.4]
  assign store = {in_in1[32],_T_33,_T_36}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212094.4]
  assign _T_97 = ~in_ren2; // @[FPU.scala 439:11:freechips.rocketchip.system.DefaultRV32Config.fir@212171.6]
  assign _T_90 = ~in_rm; // @[FPU.scala 435:15:freechips.rocketchip.system.DefaultRV32Config.fir@212161.6]
  assign _T_91 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212162.6]
  assign _GEN_30 = {{1'd0}, _T_91}; // @[FPU.scala 435:22:freechips.rocketchip.system.DefaultRV32Config.fir@212163.6]
  assign _T_92 = _T_90 & _GEN_30; // @[FPU.scala 435:22:freechips.rocketchip.system.DefaultRV32Config.fir@212163.6]
  assign _T_93 = |_T_92; // @[FPU.scala 435:53:freechips.rocketchip.system.DefaultRV32Config.fir@212164.6]
  assign _T_96 = {{32'd0}, _T_93}; // @[FPU.scala 435:57:freechips.rocketchip.system.DefaultRV32Config.fir@212167.6]
  assign _GEN_25 = _T_97 ? {{1'd0}, RecFNToIN_io_out} : _T_96; // @[FPU.scala 439:21:freechips.rocketchip.system.DefaultRV32Config.fir@212172.6]
  assign _T_60 = &in_in1[31:29]; // @[FPU.scala 214:22:freechips.rocketchip.system.DefaultRV32Config.fir@212127.6]
  assign _T_65 = _T_60 & in_in1[22]; // @[FPU.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@212132.6]
  assign _T_62 = ~in_in1[22]; // @[FPU.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@212129.6]
  assign _T_63 = _T_60 & _T_62; // @[FPU.scala 215:24:freechips.rocketchip.system.DefaultRV32Config.fir@212130.6]
  assign _T_44 = in_in1[31:30] == 2'h3; // @[FPU.scala 207:28:freechips.rocketchip.system.DefaultRV32Config.fir@212111.6]
  assign _T_58 = ~in_in1[29]; // @[FPU.scala 213:30:freechips.rocketchip.system.DefaultRV32Config.fir@212125.6]
  assign _T_59 = _T_44 & _T_58; // @[FPU.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@212126.6]
  assign _T_66 = ~in_in1[32]; // @[FPU.scala 218:34:freechips.rocketchip.system.DefaultRV32Config.fir@212133.6]
  assign _T_67 = _T_59 & _T_66; // @[FPU.scala 218:31:freechips.rocketchip.system.DefaultRV32Config.fir@212134.6]
  assign _T_51 = in_in1[31:30] == 2'h1; // @[FPU.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@212118.6]
  assign _T_46 = in_in1[29:23] < 7'h2; // @[FPU.scala 209:55:freechips.rocketchip.system.DefaultRV32Config.fir@212113.6]
  assign _T_52 = ~_T_46; // @[FPU.scala 211:42:freechips.rocketchip.system.DefaultRV32Config.fir@212119.6]
  assign _T_53 = _T_51 & _T_52; // @[FPU.scala 211:39:freechips.rocketchip.system.DefaultRV32Config.fir@212120.6]
  assign _T_54 = in_in1[31:30] == 2'h2; // @[FPU.scala 211:71:freechips.rocketchip.system.DefaultRV32Config.fir@212121.6]
  assign _T_55 = _T_53 | _T_54; // @[FPU.scala 211:61:freechips.rocketchip.system.DefaultRV32Config.fir@212122.6]
  assign _T_69 = _T_55 & _T_66; // @[FPU.scala 218:50:freechips.rocketchip.system.DefaultRV32Config.fir@212136.6]
  assign _T_47 = in_in1[31:29] == 3'h1; // @[FPU.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@212114.6]
  assign _T_49 = _T_51 & _T_46; // @[FPU.scala 210:62:freechips.rocketchip.system.DefaultRV32Config.fir@212116.6]
  assign _T_50 = _T_47 | _T_49; // @[FPU.scala 210:40:freechips.rocketchip.system.DefaultRV32Config.fir@212117.6]
  assign _T_71 = _T_50 & _T_66; // @[FPU.scala 219:21:freechips.rocketchip.system.DefaultRV32Config.fir@212138.6]
  assign _T_56 = in_in1[31:29] == 3'h0; // @[FPU.scala 212:23:freechips.rocketchip.system.DefaultRV32Config.fir@212123.6]
  assign _T_73 = _T_56 & _T_66; // @[FPU.scala 219:38:freechips.rocketchip.system.DefaultRV32Config.fir@212140.6]
  assign _T_74 = _T_56 & in_in1[32]; // @[FPU.scala 219:55:freechips.rocketchip.system.DefaultRV32Config.fir@212141.6]
  assign _T_75 = _T_50 & in_in1[32]; // @[FPU.scala 220:21:freechips.rocketchip.system.DefaultRV32Config.fir@212142.6]
  assign _T_76 = _T_55 & in_in1[32]; // @[FPU.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@212143.6]
  assign _T_77 = _T_59 & in_in1[32]; // @[FPU.scala 220:54:freechips.rocketchip.system.DefaultRV32Config.fir@212144.6]
  assign _T_86 = {_T_65,_T_63,_T_67,_T_69,_T_71,_T_73,_T_74,_T_75,_T_76,_T_77}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212153.6]
  assign _T_89 = {{23'd0}, _T_86}; // @[FPU.scala 430:27:freechips.rocketchip.system.DefaultRV32Config.fir@212156.6]
  assign _GEN_22 = in_rm[0] ? _T_89 : {{1'd0}, store}; // @[FPU.scala 428:19:freechips.rocketchip.system.DefaultRV32Config.fir@212107.4]
  assign toint = in_wflags ? _GEN_25 : _GEN_22; // @[FPU.scala 434:20:freechips.rocketchip.system.DefaultRV32Config.fir@212160.4]
  assign _T_101 = |RecFNToIN_io_intExceptionFlags[2:1]; // @[FPU.scala 447:62:freechips.rocketchip.system.DefaultRV32Config.fir@212183.8]
  assign _T_104 = {_T_101,3'h0,RecFNToIN_io_intExceptionFlags[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212186.8]
  assign _GEN_26 = _T_97 ? _T_104 : dcmp_io_exceptionFlags; // @[FPU.scala 439:21:freechips.rocketchip.system.DefaultRV32Config.fir@212172.6]
  assign _T_106 = $signed(dcmp_io_a) < 33'sh0; // @[FPU.scala 468:53:freechips.rocketchip.system.DefaultRV32Config.fir@212192.4]
  assign _T_108 = $signed(dcmp_io_b) >= 33'sh0; // @[FPU.scala 468:79:freechips.rocketchip.system.DefaultRV32Config.fir@212194.4]
  assign _T_109 = _T_106 & _T_108; // @[FPU.scala 468:59:freechips.rocketchip.system.DefaultRV32Config.fir@212195.4]
  assign io_out_bits_in_rm = in_rm; // @[FPU.scala 469:18:freechips.rocketchip.system.DefaultRV32Config.fir@212198.4]
  assign io_out_bits_in_in1 = in_in1; // @[FPU.scala 469:18:freechips.rocketchip.system.DefaultRV32Config.fir@212198.4]
  assign io_out_bits_in_in2 = in_in2; // @[FPU.scala 469:18:freechips.rocketchip.system.DefaultRV32Config.fir@212198.4]
  assign io_out_bits_lt = dcmp_io_lt | _T_109; // @[FPU.scala 468:18:freechips.rocketchip.system.DefaultRV32Config.fir@212197.4]
  assign io_out_bits_store = {_T_37,_T_36}; // @[FPU.scala 424:21:freechips.rocketchip.system.DefaultRV32Config.fir@212102.4]
  assign io_out_bits_toint = toint[31:0]; // @[FPU.scala 425:21:freechips.rocketchip.system.DefaultRV32Config.fir@212104.4]
  assign io_out_bits_exc = in_wflags ? _GEN_26 : 5'h0; // @[FPU.scala 426:19:freechips.rocketchip.system.DefaultRV32Config.fir@212105.4 FPU.scala 436:21:freechips.rocketchip.system.DefaultRV32Config.fir@212169.6 FPU.scala 447:23:freechips.rocketchip.system.DefaultRV32Config.fir@212187.8]
  assign dcmp_io_a = in_in1; // @[FPU.scala 416:13:freechips.rocketchip.system.DefaultRV32Config.fir@212045.4]
  assign dcmp_io_b = in_in2; // @[FPU.scala 417:13:freechips.rocketchip.system.DefaultRV32Config.fir@212046.4]
  assign dcmp_io_signaling = ~in_rm[1]; // @[FPU.scala 418:21:freechips.rocketchip.system.DefaultRV32Config.fir@212049.4]
  assign RecFNToIN_io_in = in_in1; // @[FPU.scala 443:18:freechips.rocketchip.system.DefaultRV32Config.fir@212176.8]
  assign RecFNToIN_io_roundingMode = in_rm; // @[FPU.scala 444:28:freechips.rocketchip.system.DefaultRV32Config.fir@212177.8]
  assign RecFNToIN_io_signedOut = ~in_typ[0]; // @[FPU.scala 445:25:freechips.rocketchip.system.DefaultRV32Config.fir@212180.8]
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
  in_ren2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_wflags = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_rm = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  in_typ = _RAND_3[1:0];
  _RAND_4 = {2{`RANDOM}};
  in_in1 = _RAND_4[32:0];
  _RAND_5 = {2{`RANDOM}};
  in_in2 = _RAND_5[32:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end
endmodule
