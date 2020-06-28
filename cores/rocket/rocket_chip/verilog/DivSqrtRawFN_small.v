module DivSqrtRawFN_small( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213133.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213134.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213135.4]
  output        io_inReady, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_inValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_a_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_a_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_a_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_a_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input  [9:0]  io_a_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input  [24:0] io_a_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_b_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_b_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_b_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input         io_b_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input  [9:0]  io_b_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input  [24:0] io_b_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOutValid_div, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOutValid_sqrt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output [2:0]  io_roundingModeOut, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_invalidExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_infiniteExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOut_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOut_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOut_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output        io_rawOut_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output [9:0]  io_rawOut_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
  output [26:0] io_rawOut_sig // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213136.4]
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
`endif // RANDOMIZE_REG_INIT
  reg [26:0] cycleNum; // @[DivSqrtRecFN_small.scala 223:33:freechips.rocketchip.system.DefaultRV32Config.fir@213138.4]
  reg  sqrtOp_Z; // @[DivSqrtRecFN_small.scala 225:29:freechips.rocketchip.system.DefaultRV32Config.fir@213139.4]
  reg  majorExc_Z; // @[DivSqrtRecFN_small.scala 226:29:freechips.rocketchip.system.DefaultRV32Config.fir@213140.4]
  reg  isNaN_Z; // @[DivSqrtRecFN_small.scala 228:29:freechips.rocketchip.system.DefaultRV32Config.fir@213141.4]
  reg  isInf_Z; // @[DivSqrtRecFN_small.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@213142.4]
  reg  isZero_Z; // @[DivSqrtRecFN_small.scala 230:29:freechips.rocketchip.system.DefaultRV32Config.fir@213143.4]
  reg  sign_Z; // @[DivSqrtRecFN_small.scala 231:29:freechips.rocketchip.system.DefaultRV32Config.fir@213144.4]
  reg [9:0] sExp_Z; // @[DivSqrtRecFN_small.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@213145.4]
  reg [22:0] fractB_Z; // @[DivSqrtRecFN_small.scala 233:29:freechips.rocketchip.system.DefaultRV32Config.fir@213146.4]
  reg [2:0] roundingMode_Z; // @[DivSqrtRecFN_small.scala 234:29:freechips.rocketchip.system.DefaultRV32Config.fir@213147.4]
  reg [25:0] rem_Z; // @[DivSqrtRecFN_small.scala 240:29:freechips.rocketchip.system.DefaultRV32Config.fir@213148.4]
  reg  notZeroRem_Z; // @[DivSqrtRecFN_small.scala 241:29:freechips.rocketchip.system.DefaultRV32Config.fir@213149.4]
  reg [25:0] sigX_Z; // @[DivSqrtRecFN_small.scala 242:29:freechips.rocketchip.system.DefaultRV32Config.fir@213150.4]
  wire  _T; // @[DivSqrtRecFN_small.scala 251:24:freechips.rocketchip.system.DefaultRV32Config.fir@213151.4]
  wire  _T_1; // @[DivSqrtRecFN_small.scala 251:59:freechips.rocketchip.system.DefaultRV32Config.fir@213152.4]
  wire  notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 251:42:freechips.rocketchip.system.DefaultRV32Config.fir@213153.4]
  wire  _T_2; // @[DivSqrtRecFN_small.scala 253:9:freechips.rocketchip.system.DefaultRV32Config.fir@213154.4]
  wire  _T_3; // @[DivSqrtRecFN_small.scala 253:27:freechips.rocketchip.system.DefaultRV32Config.fir@213155.4]
  wire  _T_4; // @[DivSqrtRecFN_small.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@213156.4]
  wire  notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 253:43:freechips.rocketchip.system.DefaultRV32Config.fir@213157.4]
  wire  _T_6; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@213159.4]
  wire  _T_7; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@213160.4]
  wire  _T_8; // @[DivSqrtRecFN_small.scala 256:38:freechips.rocketchip.system.DefaultRV32Config.fir@213161.4]
  wire  _T_13; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@213166.4]
  wire  _T_14; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@213167.4]
  wire  _T_15; // @[DivSqrtRecFN_small.scala 257:38:freechips.rocketchip.system.DefaultRV32Config.fir@213168.4]
  wire  _T_16; // @[DivSqrtRecFN_small.scala 257:66:freechips.rocketchip.system.DefaultRV32Config.fir@213169.4]
  wire  _T_18; // @[DivSqrtRecFN_small.scala 259:36:freechips.rocketchip.system.DefaultRV32Config.fir@213171.4]
  wire  _T_19; // @[DivSqrtRecFN_small.scala 259:33:freechips.rocketchip.system.DefaultRV32Config.fir@213172.4]
  wire  _T_20; // @[DivSqrtRecFN_small.scala 259:51:freechips.rocketchip.system.DefaultRV32Config.fir@213173.4]
  wire  _T_21; // @[DivSqrtRecFN_small.scala 258:46:freechips.rocketchip.system.DefaultRV32Config.fir@213174.4]
  wire  _T_22; // @[DivSqrtRecFN_small.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@213176.4]
  wire  _T_23; // @[DivSqrtRecFN_small.scala 264:26:freechips.rocketchip.system.DefaultRV32Config.fir@213177.4]
  wire  _T_24; // @[DivSqrtRecFN_small.scala 264:42:freechips.rocketchip.system.DefaultRV32Config.fir@213178.4]
  wire  _T_25; // @[DivSqrtRecFN_small.scala 266:63:freechips.rocketchip.system.DefaultRV32Config.fir@213180.4]
  wire  _T_26; // @[DivSqrtRecFN_small.scala 267:64:freechips.rocketchip.system.DefaultRV32Config.fir@213182.4]
  wire  _T_27; // @[DivSqrtRecFN_small.scala 268:33:freechips.rocketchip.system.DefaultRV32Config.fir@213184.4]
  wire  _T_28; // @[DivSqrtRecFN_small.scala 268:45:freechips.rocketchip.system.DefaultRV32Config.fir@213185.4]
  wire  sign_S; // @[DivSqrtRecFN_small.scala 268:30:freechips.rocketchip.system.DefaultRV32Config.fir@213186.4]
  wire  _T_29; // @[DivSqrtRecFN_small.scala 270:39:freechips.rocketchip.system.DefaultRV32Config.fir@213187.4]
  wire  specialCaseA_S; // @[DivSqrtRecFN_small.scala 270:55:freechips.rocketchip.system.DefaultRV32Config.fir@213188.4]
  wire  _T_30; // @[DivSqrtRecFN_small.scala 271:39:freechips.rocketchip.system.DefaultRV32Config.fir@213189.4]
  wire  specialCaseB_S; // @[DivSqrtRecFN_small.scala 271:55:freechips.rocketchip.system.DefaultRV32Config.fir@213190.4]
  wire  _T_31; // @[DivSqrtRecFN_small.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@213191.4]
  wire  _T_32; // @[DivSqrtRecFN_small.scala 272:48:freechips.rocketchip.system.DefaultRV32Config.fir@213192.4]
  wire  normalCase_S_div; // @[DivSqrtRecFN_small.scala 272:45:freechips.rocketchip.system.DefaultRV32Config.fir@213193.4]
  wire  _T_34; // @[DivSqrtRecFN_small.scala 273:49:freechips.rocketchip.system.DefaultRV32Config.fir@213195.4]
  wire  normalCase_S_sqrt; // @[DivSqrtRecFN_small.scala 273:46:freechips.rocketchip.system.DefaultRV32Config.fir@213196.4]
  wire  normalCase_S; // @[DivSqrtRecFN_small.scala 274:27:freechips.rocketchip.system.DefaultRV32Config.fir@213197.4]
  wire [7:0] _T_37; // @[DivSqrtRecFN_small.scala 278:40:freechips.rocketchip.system.DefaultRV32Config.fir@213200.4]
  wire [8:0] _T_39; // @[DivSqrtRecFN_small.scala 278:71:freechips.rocketchip.system.DefaultRV32Config.fir@213202.4]
  wire [9:0] _GEN_13; // @[DivSqrtRecFN_small.scala 277:21:freechips.rocketchip.system.DefaultRV32Config.fir@213203.4]
  wire [10:0] sExpQuot_S_div; // @[DivSqrtRecFN_small.scala 277:21:freechips.rocketchip.system.DefaultRV32Config.fir@213203.4]
  wire  _T_40; // @[DivSqrtRecFN_small.scala 281:48:freechips.rocketchip.system.DefaultRV32Config.fir@213204.4]
  wire [3:0] _T_42; // @[DivSqrtRecFN_small.scala 281:16:freechips.rocketchip.system.DefaultRV32Config.fir@213206.4]
  wire [9:0] sSatExpQuot_S_div; // @[DivSqrtRecFN_small.scala 286:11:freechips.rocketchip.system.DefaultRV32Config.fir@213209.4]
  wire  _T_46; // @[DivSqrtRecFN_small.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@213211.4]
  wire  evenSqrt_S; // @[DivSqrtRecFN_small.scala 288:32:freechips.rocketchip.system.DefaultRV32Config.fir@213212.4]
  wire  oddSqrt_S; // @[DivSqrtRecFN_small.scala 289:32:freechips.rocketchip.system.DefaultRV32Config.fir@213214.4]
  wire  idle; // @[DivSqrtRecFN_small.scala 293:24:freechips.rocketchip.system.DefaultRV32Config.fir@213215.4]
  wire  inReady; // @[DivSqrtRecFN_small.scala 294:24:freechips.rocketchip.system.DefaultRV32Config.fir@213217.4]
  wire  entering; // @[DivSqrtRecFN_small.scala 295:28:freechips.rocketchip.system.DefaultRV32Config.fir@213218.4]
  wire  entering_normalCase; // @[DivSqrtRecFN_small.scala 296:40:freechips.rocketchip.system.DefaultRV32Config.fir@213219.4]
  wire  skipCycle2; // @[DivSqrtRecFN_small.scala 298:34:freechips.rocketchip.system.DefaultRV32Config.fir@213222.4]
  wire  _T_51; // @[DivSqrtRecFN_small.scala 300:11:freechips.rocketchip.system.DefaultRV32Config.fir@213223.4]
  wire  _T_52; // @[DivSqrtRecFN_small.scala 300:18:freechips.rocketchip.system.DefaultRV32Config.fir@213224.4]
  wire  _T_53; // @[DivSqrtRecFN_small.scala 302:28:freechips.rocketchip.system.DefaultRV32Config.fir@213226.6]
  wire  _T_54; // @[DivSqrtRecFN_small.scala 302:26:freechips.rocketchip.system.DefaultRV32Config.fir@213227.6]
  wire [1:0] _T_55; // @[DivSqrtRecFN_small.scala 302:16:freechips.rocketchip.system.DefaultRV32Config.fir@213228.6]
  wire [25:0] _T_57; // @[DivSqrtRecFN_small.scala 305:24:freechips.rocketchip.system.DefaultRV32Config.fir@213230.6]
  wire [26:0] _T_58; // @[DivSqrtRecFN_small.scala 304:20:freechips.rocketchip.system.DefaultRV32Config.fir@213231.6]
  wire [26:0] _T_59; // @[DivSqrtRecFN_small.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@213232.6]
  wire [26:0] _GEN_14; // @[DivSqrtRecFN_small.scala 302:59:freechips.rocketchip.system.DefaultRV32Config.fir@213233.6]
  wire [26:0] _T_60; // @[DivSqrtRecFN_small.scala 302:59:freechips.rocketchip.system.DefaultRV32Config.fir@213233.6]
  wire  _T_61; // @[DivSqrtRecFN_small.scala 310:17:freechips.rocketchip.system.DefaultRV32Config.fir@213234.6]
  wire  _T_62; // @[DivSqrtRecFN_small.scala 310:31:freechips.rocketchip.system.DefaultRV32Config.fir@213235.6]
  wire  _T_63; // @[DivSqrtRecFN_small.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@213236.6]
  wire [25:0] _T_65; // @[DivSqrtRecFN_small.scala 310:16:freechips.rocketchip.system.DefaultRV32Config.fir@213238.6]
  wire [26:0] _GEN_15; // @[DivSqrtRecFN_small.scala 309:15:freechips.rocketchip.system.DefaultRV32Config.fir@213239.6]
  wire [26:0] _T_66; // @[DivSqrtRecFN_small.scala 309:15:freechips.rocketchip.system.DefaultRV32Config.fir@213239.6]
  wire [1:0] _T_67; // @[DivSqrtRecFN_small.scala 311:16:freechips.rocketchip.system.DefaultRV32Config.fir@213240.6]
  wire [26:0] _GEN_16; // @[DivSqrtRecFN_small.scala 310:63:freechips.rocketchip.system.DefaultRV32Config.fir@213241.6]
  wire [26:0] _T_68; // @[DivSqrtRecFN_small.scala 310:63:freechips.rocketchip.system.DefaultRV32Config.fir@213241.6]
  wire [8:0] _T_69; // @[DivSqrtRecFN_small.scala 329:29:freechips.rocketchip.system.DefaultRV32Config.fir@213254.6]
  wire [9:0] _T_70; // @[DivSqrtRecFN_small.scala 329:34:freechips.rocketchip.system.DefaultRV32Config.fir@213255.6]
  wire  _T_73; // @[DivSqrtRecFN_small.scala 334:31:freechips.rocketchip.system.DefaultRV32Config.fir@213261.4]
  wire  _T_75; // @[DivSqrtRecFN_small.scala 341:24:freechips.rocketchip.system.DefaultRV32Config.fir@213266.4]
  wire  _T_76; // @[DivSqrtRecFN_small.scala 341:21:freechips.rocketchip.system.DefaultRV32Config.fir@213267.4]
  wire [25:0] _T_77; // @[DivSqrtRecFN_small.scala 341:47:freechips.rocketchip.system.DefaultRV32Config.fir@213268.4]
  wire [25:0] _T_78; // @[DivSqrtRecFN_small.scala 341:12:freechips.rocketchip.system.DefaultRV32Config.fir@213269.4]
  wire  _T_79; // @[DivSqrtRecFN_small.scala 342:21:freechips.rocketchip.system.DefaultRV32Config.fir@213270.4]
  wire [1:0] _T_82; // @[DivSqrtRecFN_small.scala 343:56:freechips.rocketchip.system.DefaultRV32Config.fir@213273.4]
  wire [24:0] _T_84; // @[DivSqrtRecFN_small.scala 344:44:freechips.rocketchip.system.DefaultRV32Config.fir@213275.4]
  wire [26:0] _T_85; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213276.4]
  wire [26:0] _T_86; // @[DivSqrtRecFN_small.scala 342:12:freechips.rocketchip.system.DefaultRV32Config.fir@213277.4]
  wire [26:0] _GEN_17; // @[DivSqrtRecFN_small.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@213278.4]
  wire [26:0] _T_87; // @[DivSqrtRecFN_small.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@213278.4]
  wire  _T_88; // @[DivSqrtRecFN_small.scala 348:13:freechips.rocketchip.system.DefaultRV32Config.fir@213279.4]
  wire [26:0] _T_89; // @[DivSqrtRecFN_small.scala 348:29:freechips.rocketchip.system.DefaultRV32Config.fir@213280.4]
  wire [26:0] _T_90; // @[DivSqrtRecFN_small.scala 348:12:freechips.rocketchip.system.DefaultRV32Config.fir@213281.4]
  wire [26:0] rem; // @[DivSqrtRecFN_small.scala 347:11:freechips.rocketchip.system.DefaultRV32Config.fir@213282.4]
  wire [24:0] bitMask; // @[DivSqrtRecFN_small.scala 349:27:freechips.rocketchip.system.DefaultRV32Config.fir@213283.4]
  wire  _T_92; // @[DivSqrtRecFN_small.scala 351:21:freechips.rocketchip.system.DefaultRV32Config.fir@213285.4]
  wire [25:0] _T_93; // @[DivSqrtRecFN_small.scala 351:47:freechips.rocketchip.system.DefaultRV32Config.fir@213286.4]
  wire [25:0] _T_94; // @[DivSqrtRecFN_small.scala 351:12:freechips.rocketchip.system.DefaultRV32Config.fir@213287.4]
  wire  _T_95; // @[DivSqrtRecFN_small.scala 352:21:freechips.rocketchip.system.DefaultRV32Config.fir@213288.4]
  wire [24:0] _T_96; // @[DivSqrtRecFN_small.scala 352:12:freechips.rocketchip.system.DefaultRV32Config.fir@213289.4]
  wire [25:0] _GEN_18; // @[DivSqrtRecFN_small.scala 351:73:freechips.rocketchip.system.DefaultRV32Config.fir@213290.4]
  wire [25:0] _T_97; // @[DivSqrtRecFN_small.scala 351:73:freechips.rocketchip.system.DefaultRV32Config.fir@213290.4]
  wire [25:0] _T_99; // @[DivSqrtRecFN_small.scala 353:12:freechips.rocketchip.system.DefaultRV32Config.fir@213292.4]
  wire [25:0] _T_100; // @[DivSqrtRecFN_small.scala 352:73:freechips.rocketchip.system.DefaultRV32Config.fir@213293.4]
  wire  _T_102; // @[DivSqrtRecFN_small.scala 354:26:freechips.rocketchip.system.DefaultRV32Config.fir@213295.4]
  wire  _T_103; // @[DivSqrtRecFN_small.scala 354:23:freechips.rocketchip.system.DefaultRV32Config.fir@213296.4]
  wire [23:0] _T_104; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213297.4]
  wire [24:0] _T_105; // @[DivSqrtRecFN_small.scala 354:56:freechips.rocketchip.system.DefaultRV32Config.fir@213298.4]
  wire [24:0] _T_106; // @[DivSqrtRecFN_small.scala 354:12:freechips.rocketchip.system.DefaultRV32Config.fir@213299.4]
  wire [25:0] _GEN_19; // @[DivSqrtRecFN_small.scala 353:73:freechips.rocketchip.system.DefaultRV32Config.fir@213300.4]
  wire [25:0] _T_107; // @[DivSqrtRecFN_small.scala 353:73:freechips.rocketchip.system.DefaultRV32Config.fir@213300.4]
  wire  _T_109; // @[DivSqrtRecFN_small.scala 355:23:freechips.rocketchip.system.DefaultRV32Config.fir@213302.4]
  wire [26:0] _T_110; // @[DivSqrtRecFN_small.scala 355:44:freechips.rocketchip.system.DefaultRV32Config.fir@213303.4]
  wire [26:0] _GEN_20; // @[DivSqrtRecFN_small.scala 355:48:freechips.rocketchip.system.DefaultRV32Config.fir@213304.4]
  wire [26:0] _T_111; // @[DivSqrtRecFN_small.scala 355:48:freechips.rocketchip.system.DefaultRV32Config.fir@213304.4]
  wire [26:0] _T_112; // @[DivSqrtRecFN_small.scala 355:12:freechips.rocketchip.system.DefaultRV32Config.fir@213305.4]
  wire [26:0] _GEN_21; // @[DivSqrtRecFN_small.scala 354:73:freechips.rocketchip.system.DefaultRV32Config.fir@213306.4]
  wire [26:0] trialTerm; // @[DivSqrtRecFN_small.scala 354:73:freechips.rocketchip.system.DefaultRV32Config.fir@213306.4]
  wire [27:0] _T_113; // @[DivSqrtRecFN_small.scala 356:24:freechips.rocketchip.system.DefaultRV32Config.fir@213307.4]
  wire [27:0] _T_114; // @[DivSqrtRecFN_small.scala 356:41:freechips.rocketchip.system.DefaultRV32Config.fir@213308.4]
  wire [27:0] trialRem; // @[DivSqrtRecFN_small.scala 356:29:freechips.rocketchip.system.DefaultRV32Config.fir@213311.4]
  wire  newBit; // @[DivSqrtRecFN_small.scala 357:23:freechips.rocketchip.system.DefaultRV32Config.fir@213312.4]
  wire  _T_118; // @[DivSqrtRecFN_small.scala 359:41:freechips.rocketchip.system.DefaultRV32Config.fir@213314.4]
  wire  _T_119; // @[DivSqrtRecFN_small.scala 359:34:freechips.rocketchip.system.DefaultRV32Config.fir@213315.4]
  wire  _T_120; // @[DivSqrtRecFN_small.scala 359:31:freechips.rocketchip.system.DefaultRV32Config.fir@213316.4]
  wire [27:0] _T_121; // @[DivSqrtRecFN_small.scala 360:39:freechips.rocketchip.system.DefaultRV32Config.fir@213318.6]
  wire [27:0] _T_122; // @[DivSqrtRecFN_small.scala 360:21:freechips.rocketchip.system.DefaultRV32Config.fir@213319.6]
  wire [27:0] _GEN_10; // @[DivSqrtRecFN_small.scala 359:58:freechips.rocketchip.system.DefaultRV32Config.fir@213317.4]
  wire  _T_124; // @[DivSqrtRecFN_small.scala 362:45:freechips.rocketchip.system.DefaultRV32Config.fir@213323.4]
  wire  _T_125; // @[DivSqrtRecFN_small.scala 362:31:freechips.rocketchip.system.DefaultRV32Config.fir@213324.4]
  wire  _T_126; // @[DivSqrtRecFN_small.scala 363:35:freechips.rocketchip.system.DefaultRV32Config.fir@213326.6]
  wire [25:0] _T_129; // @[DivSqrtRecFN_small.scala 365:47:freechips.rocketchip.system.DefaultRV32Config.fir@213330.6]
  wire [25:0] _T_130; // @[DivSqrtRecFN_small.scala 365:16:freechips.rocketchip.system.DefaultRV32Config.fir@213331.6]
  wire  _T_131; // @[DivSqrtRecFN_small.scala 366:25:freechips.rocketchip.system.DefaultRV32Config.fir@213332.6]
  wire [24:0] _T_132; // @[DivSqrtRecFN_small.scala 366:16:freechips.rocketchip.system.DefaultRV32Config.fir@213333.6]
  wire [25:0] _GEN_22; // @[DivSqrtRecFN_small.scala 365:71:freechips.rocketchip.system.DefaultRV32Config.fir@213334.6]
  wire [25:0] _T_133; // @[DivSqrtRecFN_small.scala 365:71:freechips.rocketchip.system.DefaultRV32Config.fir@213334.6]
  wire [23:0] _T_135; // @[DivSqrtRecFN_small.scala 367:47:freechips.rocketchip.system.DefaultRV32Config.fir@213336.6]
  wire [23:0] _T_136; // @[DivSqrtRecFN_small.scala 367:16:freechips.rocketchip.system.DefaultRV32Config.fir@213337.6]
  wire [25:0] _GEN_23; // @[DivSqrtRecFN_small.scala 366:71:freechips.rocketchip.system.DefaultRV32Config.fir@213338.6]
  wire [25:0] _T_137; // @[DivSqrtRecFN_small.scala 366:71:freechips.rocketchip.system.DefaultRV32Config.fir@213338.6]
  wire [25:0] _GEN_24; // @[DivSqrtRecFN_small.scala 368:48:freechips.rocketchip.system.DefaultRV32Config.fir@213340.6]
  wire [25:0] _T_139; // @[DivSqrtRecFN_small.scala 368:48:freechips.rocketchip.system.DefaultRV32Config.fir@213340.6]
  wire [25:0] _T_140; // @[DivSqrtRecFN_small.scala 368:16:freechips.rocketchip.system.DefaultRV32Config.fir@213341.6]
  wire [25:0] _T_141; // @[DivSqrtRecFN_small.scala 367:71:freechips.rocketchip.system.DefaultRV32Config.fir@213342.6]
  wire  _T_146; // @[DivSqrtRecFN_small.scala 379:39:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  wire [26:0] _GEN_25; // @[DivSqrtRecFN_small.scala 385:35:freechips.rocketchip.system.DefaultRV32Config.fir@213363.4]
  assign _T = io_a_isZero & io_b_isZero; // @[DivSqrtRecFN_small.scala 251:24:freechips.rocketchip.system.DefaultRV32Config.fir@213151.4]
  assign _T_1 = io_a_isInf & io_b_isInf; // @[DivSqrtRecFN_small.scala 251:59:freechips.rocketchip.system.DefaultRV32Config.fir@213152.4]
  assign notSigNaNIn_invalidExc_S_div = _T | _T_1; // @[DivSqrtRecFN_small.scala 251:42:freechips.rocketchip.system.DefaultRV32Config.fir@213153.4]
  assign _T_2 = ~io_a_isNaN; // @[DivSqrtRecFN_small.scala 253:9:freechips.rocketchip.system.DefaultRV32Config.fir@213154.4]
  assign _T_3 = ~io_a_isZero; // @[DivSqrtRecFN_small.scala 253:27:freechips.rocketchip.system.DefaultRV32Config.fir@213155.4]
  assign _T_4 = _T_2 & _T_3; // @[DivSqrtRecFN_small.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@213156.4]
  assign notSigNaNIn_invalidExc_S_sqrt = _T_4 & io_a_sign; // @[DivSqrtRecFN_small.scala 253:43:freechips.rocketchip.system.DefaultRV32Config.fir@213157.4]
  assign _T_6 = ~io_a_sig[22]; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@213159.4]
  assign _T_7 = io_a_isNaN & _T_6; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@213160.4]
  assign _T_8 = _T_7 | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 256:38:freechips.rocketchip.system.DefaultRV32Config.fir@213161.4]
  assign _T_13 = ~io_b_sig[22]; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@213166.4]
  assign _T_14 = io_b_isNaN & _T_13; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@213167.4]
  assign _T_15 = _T_7 | _T_14; // @[DivSqrtRecFN_small.scala 257:38:freechips.rocketchip.system.DefaultRV32Config.fir@213168.4]
  assign _T_16 = _T_15 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 257:66:freechips.rocketchip.system.DefaultRV32Config.fir@213169.4]
  assign _T_18 = ~io_a_isInf; // @[DivSqrtRecFN_small.scala 259:36:freechips.rocketchip.system.DefaultRV32Config.fir@213171.4]
  assign _T_19 = _T_2 & _T_18; // @[DivSqrtRecFN_small.scala 259:33:freechips.rocketchip.system.DefaultRV32Config.fir@213172.4]
  assign _T_20 = _T_19 & io_b_isZero; // @[DivSqrtRecFN_small.scala 259:51:freechips.rocketchip.system.DefaultRV32Config.fir@213173.4]
  assign _T_21 = _T_16 | _T_20; // @[DivSqrtRecFN_small.scala 258:46:freechips.rocketchip.system.DefaultRV32Config.fir@213174.4]
  assign _T_22 = io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@213176.4]
  assign _T_23 = io_a_isNaN | io_b_isNaN; // @[DivSqrtRecFN_small.scala 264:26:freechips.rocketchip.system.DefaultRV32Config.fir@213177.4]
  assign _T_24 = _T_23 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 264:42:freechips.rocketchip.system.DefaultRV32Config.fir@213178.4]
  assign _T_25 = io_a_isInf | io_b_isZero; // @[DivSqrtRecFN_small.scala 266:63:freechips.rocketchip.system.DefaultRV32Config.fir@213180.4]
  assign _T_26 = io_a_isZero | io_b_isInf; // @[DivSqrtRecFN_small.scala 267:64:freechips.rocketchip.system.DefaultRV32Config.fir@213182.4]
  assign _T_27 = ~io_sqrtOp; // @[DivSqrtRecFN_small.scala 268:33:freechips.rocketchip.system.DefaultRV32Config.fir@213184.4]
  assign _T_28 = _T_27 & io_b_sign; // @[DivSqrtRecFN_small.scala 268:45:freechips.rocketchip.system.DefaultRV32Config.fir@213185.4]
  assign sign_S = io_a_sign ^ _T_28; // @[DivSqrtRecFN_small.scala 268:30:freechips.rocketchip.system.DefaultRV32Config.fir@213186.4]
  assign _T_29 = io_a_isNaN | io_a_isInf; // @[DivSqrtRecFN_small.scala 270:39:freechips.rocketchip.system.DefaultRV32Config.fir@213187.4]
  assign specialCaseA_S = _T_29 | io_a_isZero; // @[DivSqrtRecFN_small.scala 270:55:freechips.rocketchip.system.DefaultRV32Config.fir@213188.4]
  assign _T_30 = io_b_isNaN | io_b_isInf; // @[DivSqrtRecFN_small.scala 271:39:freechips.rocketchip.system.DefaultRV32Config.fir@213189.4]
  assign specialCaseB_S = _T_30 | io_b_isZero; // @[DivSqrtRecFN_small.scala 271:55:freechips.rocketchip.system.DefaultRV32Config.fir@213190.4]
  assign _T_31 = ~specialCaseA_S; // @[DivSqrtRecFN_small.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@213191.4]
  assign _T_32 = ~specialCaseB_S; // @[DivSqrtRecFN_small.scala 272:48:freechips.rocketchip.system.DefaultRV32Config.fir@213192.4]
  assign normalCase_S_div = _T_31 & _T_32; // @[DivSqrtRecFN_small.scala 272:45:freechips.rocketchip.system.DefaultRV32Config.fir@213193.4]
  assign _T_34 = ~io_a_sign; // @[DivSqrtRecFN_small.scala 273:49:freechips.rocketchip.system.DefaultRV32Config.fir@213195.4]
  assign normalCase_S_sqrt = _T_31 & _T_34; // @[DivSqrtRecFN_small.scala 273:46:freechips.rocketchip.system.DefaultRV32Config.fir@213196.4]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[DivSqrtRecFN_small.scala 274:27:freechips.rocketchip.system.DefaultRV32Config.fir@213197.4]
  assign _T_37 = ~io_b_sExp[7:0]; // @[DivSqrtRecFN_small.scala 278:40:freechips.rocketchip.system.DefaultRV32Config.fir@213200.4]
  assign _T_39 = {io_b_sExp[8],_T_37}; // @[DivSqrtRecFN_small.scala 278:71:freechips.rocketchip.system.DefaultRV32Config.fir@213202.4]
  assign _GEN_13 = {{1{_T_39[8]}},_T_39}; // @[DivSqrtRecFN_small.scala 277:21:freechips.rocketchip.system.DefaultRV32Config.fir@213203.4]
  assign sExpQuot_S_div = $signed(io_a_sExp) + $signed(_GEN_13); // @[DivSqrtRecFN_small.scala 277:21:freechips.rocketchip.system.DefaultRV32Config.fir@213203.4]
  assign _T_40 = 11'sh1c0 <= $signed(sExpQuot_S_div); // @[DivSqrtRecFN_small.scala 281:48:freechips.rocketchip.system.DefaultRV32Config.fir@213204.4]
  assign _T_42 = _T_40 ? 4'h6 : sExpQuot_S_div[9:6]; // @[DivSqrtRecFN_small.scala 281:16:freechips.rocketchip.system.DefaultRV32Config.fir@213206.4]
  assign sSatExpQuot_S_div = {_T_42,sExpQuot_S_div[5:0]}; // @[DivSqrtRecFN_small.scala 286:11:freechips.rocketchip.system.DefaultRV32Config.fir@213209.4]
  assign _T_46 = ~io_a_sExp[0]; // @[DivSqrtRecFN_small.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@213211.4]
  assign evenSqrt_S = io_sqrtOp & _T_46; // @[DivSqrtRecFN_small.scala 288:32:freechips.rocketchip.system.DefaultRV32Config.fir@213212.4]
  assign oddSqrt_S = io_sqrtOp & io_a_sExp[0]; // @[DivSqrtRecFN_small.scala 289:32:freechips.rocketchip.system.DefaultRV32Config.fir@213214.4]
  assign idle = cycleNum[0]; // @[DivSqrtRecFN_small.scala 293:24:freechips.rocketchip.system.DefaultRV32Config.fir@213215.4]
  assign inReady = idle | cycleNum[1]; // @[DivSqrtRecFN_small.scala 294:24:freechips.rocketchip.system.DefaultRV32Config.fir@213217.4]
  assign entering = inReady & io_inValid; // @[DivSqrtRecFN_small.scala 295:28:freechips.rocketchip.system.DefaultRV32Config.fir@213218.4]
  assign entering_normalCase = entering & normalCase_S; // @[DivSqrtRecFN_small.scala 296:40:freechips.rocketchip.system.DefaultRV32Config.fir@213219.4]
  assign skipCycle2 = cycleNum[3] & sigX_Z[25]; // @[DivSqrtRecFN_small.scala 298:34:freechips.rocketchip.system.DefaultRV32Config.fir@213222.4]
  assign _T_51 = ~idle; // @[DivSqrtRecFN_small.scala 300:11:freechips.rocketchip.system.DefaultRV32Config.fir@213223.4]
  assign _T_52 = _T_51 | entering; // @[DivSqrtRecFN_small.scala 300:18:freechips.rocketchip.system.DefaultRV32Config.fir@213224.4]
  assign _T_53 = ~normalCase_S; // @[DivSqrtRecFN_small.scala 302:28:freechips.rocketchip.system.DefaultRV32Config.fir@213226.6]
  assign _T_54 = entering & _T_53; // @[DivSqrtRecFN_small.scala 302:26:freechips.rocketchip.system.DefaultRV32Config.fir@213227.6]
  assign _T_55 = _T_54 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 302:16:freechips.rocketchip.system.DefaultRV32Config.fir@213228.6]
  assign _T_57 = io_a_sExp[0] ? 26'h1000000 : 26'h2000000; // @[DivSqrtRecFN_small.scala 305:24:freechips.rocketchip.system.DefaultRV32Config.fir@213230.6]
  assign _T_58 = io_sqrtOp ? {{1'd0}, _T_57} : 27'h4000000; // @[DivSqrtRecFN_small.scala 304:20:freechips.rocketchip.system.DefaultRV32Config.fir@213231.6]
  assign _T_59 = entering_normalCase ? _T_58 : 27'h0; // @[DivSqrtRecFN_small.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@213232.6]
  assign _GEN_14 = {{25'd0}, _T_55}; // @[DivSqrtRecFN_small.scala 302:59:freechips.rocketchip.system.DefaultRV32Config.fir@213233.6]
  assign _T_60 = _GEN_14 | _T_59; // @[DivSqrtRecFN_small.scala 302:59:freechips.rocketchip.system.DefaultRV32Config.fir@213233.6]
  assign _T_61 = ~entering; // @[DivSqrtRecFN_small.scala 310:17:freechips.rocketchip.system.DefaultRV32Config.fir@213234.6]
  assign _T_62 = ~skipCycle2; // @[DivSqrtRecFN_small.scala 310:31:freechips.rocketchip.system.DefaultRV32Config.fir@213235.6]
  assign _T_63 = _T_61 & _T_62; // @[DivSqrtRecFN_small.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@213236.6]
  assign _T_65 = _T_63 ? cycleNum[26:1] : 26'h0; // @[DivSqrtRecFN_small.scala 310:16:freechips.rocketchip.system.DefaultRV32Config.fir@213238.6]
  assign _GEN_15 = {{1'd0}, _T_65}; // @[DivSqrtRecFN_small.scala 309:15:freechips.rocketchip.system.DefaultRV32Config.fir@213239.6]
  assign _T_66 = _T_60 | _GEN_15; // @[DivSqrtRecFN_small.scala 309:15:freechips.rocketchip.system.DefaultRV32Config.fir@213239.6]
  assign _T_67 = skipCycle2 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 311:16:freechips.rocketchip.system.DefaultRV32Config.fir@213240.6]
  assign _GEN_16 = {{25'd0}, _T_67}; // @[DivSqrtRecFN_small.scala 310:63:freechips.rocketchip.system.DefaultRV32Config.fir@213241.6]
  assign _T_68 = _T_66 | _GEN_16; // @[DivSqrtRecFN_small.scala 310:63:freechips.rocketchip.system.DefaultRV32Config.fir@213241.6]
  assign _T_69 = io_a_sExp[9:1]; // @[DivSqrtRecFN_small.scala 329:29:freechips.rocketchip.system.DefaultRV32Config.fir@213254.6]
  assign _T_70 = $signed(_T_69) + 9'sh80; // @[DivSqrtRecFN_small.scala 329:34:freechips.rocketchip.system.DefaultRV32Config.fir@213255.6]
  assign _T_73 = entering_normalCase & _T_27; // @[DivSqrtRecFN_small.scala 334:31:freechips.rocketchip.system.DefaultRV32Config.fir@213261.4]
  assign _T_75 = ~oddSqrt_S; // @[DivSqrtRecFN_small.scala 341:24:freechips.rocketchip.system.DefaultRV32Config.fir@213266.4]
  assign _T_76 = inReady & _T_75; // @[DivSqrtRecFN_small.scala 341:21:freechips.rocketchip.system.DefaultRV32Config.fir@213267.4]
  assign _T_77 = {io_a_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 341:47:freechips.rocketchip.system.DefaultRV32Config.fir@213268.4]
  assign _T_78 = _T_76 ? _T_77 : 26'h0; // @[DivSqrtRecFN_small.scala 341:12:freechips.rocketchip.system.DefaultRV32Config.fir@213269.4]
  assign _T_79 = inReady & oddSqrt_S; // @[DivSqrtRecFN_small.scala 342:21:freechips.rocketchip.system.DefaultRV32Config.fir@213270.4]
  assign _T_82 = io_a_sig[23:22] - 2'h1; // @[DivSqrtRecFN_small.scala 343:56:freechips.rocketchip.system.DefaultRV32Config.fir@213273.4]
  assign _T_84 = {io_a_sig[21:0], 3'h0}; // @[DivSqrtRecFN_small.scala 344:44:freechips.rocketchip.system.DefaultRV32Config.fir@213275.4]
  assign _T_85 = {_T_82,_T_84}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213276.4]
  assign _T_86 = _T_79 ? _T_85 : 27'h0; // @[DivSqrtRecFN_small.scala 342:12:freechips.rocketchip.system.DefaultRV32Config.fir@213277.4]
  assign _GEN_17 = {{1'd0}, _T_78}; // @[DivSqrtRecFN_small.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@213278.4]
  assign _T_87 = _GEN_17 | _T_86; // @[DivSqrtRecFN_small.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@213278.4]
  assign _T_88 = ~inReady; // @[DivSqrtRecFN_small.scala 348:13:freechips.rocketchip.system.DefaultRV32Config.fir@213279.4]
  assign _T_89 = {rem_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 348:29:freechips.rocketchip.system.DefaultRV32Config.fir@213280.4]
  assign _T_90 = _T_88 ? _T_89 : 27'h0; // @[DivSqrtRecFN_small.scala 348:12:freechips.rocketchip.system.DefaultRV32Config.fir@213281.4]
  assign rem = _T_87 | _T_90; // @[DivSqrtRecFN_small.scala 347:11:freechips.rocketchip.system.DefaultRV32Config.fir@213282.4]
  assign bitMask = cycleNum[26:2]; // @[DivSqrtRecFN_small.scala 349:27:freechips.rocketchip.system.DefaultRV32Config.fir@213283.4]
  assign _T_92 = inReady & _T_27; // @[DivSqrtRecFN_small.scala 351:21:freechips.rocketchip.system.DefaultRV32Config.fir@213285.4]
  assign _T_93 = {io_b_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 351:47:freechips.rocketchip.system.DefaultRV32Config.fir@213286.4]
  assign _T_94 = _T_92 ? _T_93 : 26'h0; // @[DivSqrtRecFN_small.scala 351:12:freechips.rocketchip.system.DefaultRV32Config.fir@213287.4]
  assign _T_95 = inReady & evenSqrt_S; // @[DivSqrtRecFN_small.scala 352:21:freechips.rocketchip.system.DefaultRV32Config.fir@213288.4]
  assign _T_96 = _T_95 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 352:12:freechips.rocketchip.system.DefaultRV32Config.fir@213289.4]
  assign _GEN_18 = {{1'd0}, _T_96}; // @[DivSqrtRecFN_small.scala 351:73:freechips.rocketchip.system.DefaultRV32Config.fir@213290.4]
  assign _T_97 = _T_94 | _GEN_18; // @[DivSqrtRecFN_small.scala 351:73:freechips.rocketchip.system.DefaultRV32Config.fir@213290.4]
  assign _T_99 = _T_79 ? 26'h2800000 : 26'h0; // @[DivSqrtRecFN_small.scala 353:12:freechips.rocketchip.system.DefaultRV32Config.fir@213292.4]
  assign _T_100 = _T_97 | _T_99; // @[DivSqrtRecFN_small.scala 352:73:freechips.rocketchip.system.DefaultRV32Config.fir@213293.4]
  assign _T_102 = ~sqrtOp_Z; // @[DivSqrtRecFN_small.scala 354:26:freechips.rocketchip.system.DefaultRV32Config.fir@213295.4]
  assign _T_103 = _T_88 & _T_102; // @[DivSqrtRecFN_small.scala 354:23:freechips.rocketchip.system.DefaultRV32Config.fir@213296.4]
  assign _T_104 = {1'h1,fractB_Z}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213297.4]
  assign _T_105 = {_T_104, 1'h0}; // @[DivSqrtRecFN_small.scala 354:56:freechips.rocketchip.system.DefaultRV32Config.fir@213298.4]
  assign _T_106 = _T_103 ? _T_105 : 25'h0; // @[DivSqrtRecFN_small.scala 354:12:freechips.rocketchip.system.DefaultRV32Config.fir@213299.4]
  assign _GEN_19 = {{1'd0}, _T_106}; // @[DivSqrtRecFN_small.scala 353:73:freechips.rocketchip.system.DefaultRV32Config.fir@213300.4]
  assign _T_107 = _T_100 | _GEN_19; // @[DivSqrtRecFN_small.scala 353:73:freechips.rocketchip.system.DefaultRV32Config.fir@213300.4]
  assign _T_109 = _T_88 & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 355:23:freechips.rocketchip.system.DefaultRV32Config.fir@213302.4]
  assign _T_110 = {sigX_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 355:44:freechips.rocketchip.system.DefaultRV32Config.fir@213303.4]
  assign _GEN_20 = {{2'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 355:48:freechips.rocketchip.system.DefaultRV32Config.fir@213304.4]
  assign _T_111 = _T_110 | _GEN_20; // @[DivSqrtRecFN_small.scala 355:48:freechips.rocketchip.system.DefaultRV32Config.fir@213304.4]
  assign _T_112 = _T_109 ? _T_111 : 27'h0; // @[DivSqrtRecFN_small.scala 355:12:freechips.rocketchip.system.DefaultRV32Config.fir@213305.4]
  assign _GEN_21 = {{1'd0}, _T_107}; // @[DivSqrtRecFN_small.scala 354:73:freechips.rocketchip.system.DefaultRV32Config.fir@213306.4]
  assign trialTerm = _GEN_21 | _T_112; // @[DivSqrtRecFN_small.scala 354:73:freechips.rocketchip.system.DefaultRV32Config.fir@213306.4]
  assign _T_113 = {1'b0,$signed(rem)}; // @[DivSqrtRecFN_small.scala 356:24:freechips.rocketchip.system.DefaultRV32Config.fir@213307.4]
  assign _T_114 = {1'b0,$signed(trialTerm)}; // @[DivSqrtRecFN_small.scala 356:41:freechips.rocketchip.system.DefaultRV32Config.fir@213308.4]
  assign trialRem = $signed(_T_113) - $signed(_T_114); // @[DivSqrtRecFN_small.scala 356:29:freechips.rocketchip.system.DefaultRV32Config.fir@213311.4]
  assign newBit = 28'sh0 <= $signed(trialRem); // @[DivSqrtRecFN_small.scala 357:23:freechips.rocketchip.system.DefaultRV32Config.fir@213312.4]
  assign _T_118 = idle | cycleNum[2]; // @[DivSqrtRecFN_small.scala 359:41:freechips.rocketchip.system.DefaultRV32Config.fir@213314.4]
  assign _T_119 = ~_T_118; // @[DivSqrtRecFN_small.scala 359:34:freechips.rocketchip.system.DefaultRV32Config.fir@213315.4]
  assign _T_120 = entering_normalCase | _T_119; // @[DivSqrtRecFN_small.scala 359:31:freechips.rocketchip.system.DefaultRV32Config.fir@213316.4]
  assign _T_121 = $signed(_T_113) - $signed(_T_114); // @[DivSqrtRecFN_small.scala 360:39:freechips.rocketchip.system.DefaultRV32Config.fir@213318.6]
  assign _T_122 = newBit ? _T_121 : {{1'd0}, rem}; // @[DivSqrtRecFN_small.scala 360:21:freechips.rocketchip.system.DefaultRV32Config.fir@213319.6]
  assign _GEN_10 = _T_120 ? _T_122 : {{2'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 359:58:freechips.rocketchip.system.DefaultRV32Config.fir@213317.4]
  assign _T_124 = _T_88 & newBit; // @[DivSqrtRecFN_small.scala 362:45:freechips.rocketchip.system.DefaultRV32Config.fir@213323.4]
  assign _T_125 = entering_normalCase | _T_124; // @[DivSqrtRecFN_small.scala 362:31:freechips.rocketchip.system.DefaultRV32Config.fir@213324.4]
  assign _T_126 = $signed(trialRem) != 28'sh0; // @[DivSqrtRecFN_small.scala 363:35:freechips.rocketchip.system.DefaultRV32Config.fir@213326.6]
  assign _T_129 = {newBit, 25'h0}; // @[DivSqrtRecFN_small.scala 365:47:freechips.rocketchip.system.DefaultRV32Config.fir@213330.6]
  assign _T_130 = _T_92 ? _T_129 : 26'h0; // @[DivSqrtRecFN_small.scala 365:16:freechips.rocketchip.system.DefaultRV32Config.fir@213331.6]
  assign _T_131 = inReady & io_sqrtOp; // @[DivSqrtRecFN_small.scala 366:25:freechips.rocketchip.system.DefaultRV32Config.fir@213332.6]
  assign _T_132 = _T_131 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 366:16:freechips.rocketchip.system.DefaultRV32Config.fir@213333.6]
  assign _GEN_22 = {{1'd0}, _T_132}; // @[DivSqrtRecFN_small.scala 365:71:freechips.rocketchip.system.DefaultRV32Config.fir@213334.6]
  assign _T_133 = _T_130 | _GEN_22; // @[DivSqrtRecFN_small.scala 365:71:freechips.rocketchip.system.DefaultRV32Config.fir@213334.6]
  assign _T_135 = {newBit, 23'h0}; // @[DivSqrtRecFN_small.scala 367:47:freechips.rocketchip.system.DefaultRV32Config.fir@213336.6]
  assign _T_136 = _T_79 ? _T_135 : 24'h0; // @[DivSqrtRecFN_small.scala 367:16:freechips.rocketchip.system.DefaultRV32Config.fir@213337.6]
  assign _GEN_23 = {{2'd0}, _T_136}; // @[DivSqrtRecFN_small.scala 366:71:freechips.rocketchip.system.DefaultRV32Config.fir@213338.6]
  assign _T_137 = _T_133 | _GEN_23; // @[DivSqrtRecFN_small.scala 366:71:freechips.rocketchip.system.DefaultRV32Config.fir@213338.6]
  assign _GEN_24 = {{1'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 368:48:freechips.rocketchip.system.DefaultRV32Config.fir@213340.6]
  assign _T_139 = sigX_Z | _GEN_24; // @[DivSqrtRecFN_small.scala 368:48:freechips.rocketchip.system.DefaultRV32Config.fir@213340.6]
  assign _T_140 = _T_88 ? _T_139 : 26'h0; // @[DivSqrtRecFN_small.scala 368:16:freechips.rocketchip.system.DefaultRV32Config.fir@213341.6]
  assign _T_141 = _T_137 | _T_140; // @[DivSqrtRecFN_small.scala 367:71:freechips.rocketchip.system.DefaultRV32Config.fir@213342.6]
  assign _T_146 = ~isNaN_Z; // @[DivSqrtRecFN_small.scala 379:39:freechips.rocketchip.system.DefaultRV32Config.fir@213354.4]
  assign _GEN_25 = {{26'd0}, notZeroRem_Z}; // @[DivSqrtRecFN_small.scala 385:35:freechips.rocketchip.system.DefaultRV32Config.fir@213363.4]
  assign io_inReady = idle | cycleNum[1]; // @[DivSqrtRecFN_small.scala 314:16:freechips.rocketchip.system.DefaultRV32Config.fir@213244.4]
  assign io_rawOutValid_div = cycleNum[1] & _T_102; // @[DivSqrtRecFN_small.scala 375:25:freechips.rocketchip.system.DefaultRV32Config.fir@213348.4]
  assign io_rawOutValid_sqrt = cycleNum[1] & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 376:25:freechips.rocketchip.system.DefaultRV32Config.fir@213350.4]
  assign io_roundingModeOut = roundingMode_Z; // @[DivSqrtRecFN_small.scala 377:25:freechips.rocketchip.system.DefaultRV32Config.fir@213351.4]
  assign io_invalidExc = majorExc_Z & isNaN_Z; // @[DivSqrtRecFN_small.scala 378:22:freechips.rocketchip.system.DefaultRV32Config.fir@213353.4]
  assign io_infiniteExc = majorExc_Z & _T_146; // @[DivSqrtRecFN_small.scala 379:22:freechips.rocketchip.system.DefaultRV32Config.fir@213356.4]
  assign io_rawOut_isNaN = isNaN_Z; // @[DivSqrtRecFN_small.scala 380:22:freechips.rocketchip.system.DefaultRV32Config.fir@213357.4]
  assign io_rawOut_isInf = isInf_Z; // @[DivSqrtRecFN_small.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@213358.4]
  assign io_rawOut_isZero = isZero_Z; // @[DivSqrtRecFN_small.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@213359.4]
  assign io_rawOut_sign = sign_Z; // @[DivSqrtRecFN_small.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@213360.4]
  assign io_rawOut_sExp = sExp_Z; // @[DivSqrtRecFN_small.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@213361.4]
  assign io_rawOut_sig = _T_110 | _GEN_25; // @[DivSqrtRecFN_small.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@213364.4]
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
  cycleNum = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  sqrtOp_Z = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  majorExc_Z = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  isNaN_Z = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  isInf_Z = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  isZero_Z = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_Z = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sExp_Z = _RAND_7[9:0];
  _RAND_8 = {1{`RANDOM}};
  fractB_Z = _RAND_8[22:0];
  _RAND_9 = {1{`RANDOM}};
  roundingMode_Z = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  rem_Z = _RAND_10[25:0];
  _RAND_11 = {1{`RANDOM}};
  notZeroRem_Z = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  sigX_Z = _RAND_12[25:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 27'h1;
    end else if (_T_52) begin
      cycleNum <= _T_68;
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        majorExc_Z <= _T_8;
      end else begin
        majorExc_Z <= _T_21;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaN_Z <= _T_22;
      end else begin
        isNaN_Z <= _T_24;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isInf_Z <= io_a_isInf;
      end else begin
        isInf_Z <= _T_25;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= io_a_isZero;
      end else begin
        isZero_Z <= _T_26;
      end
    end
    if (entering) begin
      sign_Z <= sign_S;
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        sExp_Z <= _T_70;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_73) begin
      fractB_Z <= io_b_sig[22:0];
    end
    if (entering_normalCase) begin
      roundingMode_Z <= io_roundingMode;
    end
    rem_Z <= _GEN_10[25:0];
    if (_T_125) begin
      notZeroRem_Z <= _T_126;
    end
    if (_T_125) begin
      sigX_Z <= _T_141;
    end
  end
endmodule
