module TLMonitor_49( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225660.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225661.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225662.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [1:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [9:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [16:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [1:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
  input  [9:0]  io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225663.4]
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
  reg [607:0] _RAND_9;
  reg [2431:0] _RAND_10;
  reg [2431:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@226933.4]
  wire  _T_10; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@225680.6]
  wire [4:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@225686.6]
  wire [1:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@225688.6]
  wire [16:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@225689.6]
  wire [16:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@225689.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@225690.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@225693.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@225695.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@225696.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@225699.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225701.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225702.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225704.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225705.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@225708.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225709.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225710.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225711.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225712.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225713.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225714.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225715.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225716.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225717.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225718.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225719.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225720.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225723.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@225746.6]
  wire [16:0] _T_72; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@225749.8]
  wire [17:0] _T_73; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@225750.8]
  wire [17:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@225752.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@225753.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225758.8]
  wire  _T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225771.8]
  wire  _T_87; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225772.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225779.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225780.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225786.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225787.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@225792.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225794.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225795.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@225800.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@225801.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225803.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225804.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@225809.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225811.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225812.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@225818.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@225872.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225874.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225875.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@225898.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@225901.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@225909.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225912.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225913.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@225932.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225934.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225935.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@225940.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225942.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225943.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@225957.6]
  wire  _T_209; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@226005.6]
  wire [3:0] _T_231; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@226044.8]
  wire [3:0] _T_232; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@226045.8]
  wire  _T_233; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@226046.8]
  wire  _T_235; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226048.8]
  wire  _T_236; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226049.8]
  wire  _T_237; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@226055.6]
  wire  _T_255; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@226086.8]
  wire  _T_257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226088.8]
  wire  _T_258; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226089.8]
  wire  _T_263; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@226103.6]
  wire  _T_281; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@226134.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226136.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226137.8]
  wire  _T_289; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@226151.6]
  wire  _T_307; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@226182.8]
  wire  _T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226184.8]
  wire  _T_310; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226185.8]
  wire  _T_329; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@226223.6]
  wire  _T_335; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226232.8]
  wire  _T_336; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226233.8]
  wire  _T_477; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@226525.4]
  reg  _T_486; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@226534.4]
  wire  _T_488; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226536.4]
  wire  _T_489; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226537.4]
  reg [2:0] _T_497; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@226548.4]
  reg [2:0] _T_498; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@226549.4]
  reg [1:0] _T_499; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@226550.4]
  reg [9:0] _T_500; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@226551.4]
  reg [16:0] _T_501; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@226552.4]
  wire  _T_502; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@226553.4]
  wire  _T_503; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@226554.4]
  wire  _T_504; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@226556.6]
  wire  _T_506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226558.6]
  wire  _T_507; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226559.6]
  wire  _T_508; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@226564.6]
  wire  _T_510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226566.6]
  wire  _T_511; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226567.6]
  wire  _T_512; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@226572.6]
  wire  _T_514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226574.6]
  wire  _T_515; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226575.6]
  wire  _T_516; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@226580.6]
  wire  _T_518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226582.6]
  wire  _T_519; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226583.6]
  wire  _T_520; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@226588.6]
  wire  _T_522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226590.6]
  wire  _T_523; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226591.6]
  wire  _T_525; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@226598.4]
  wire  _T_526; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@226606.4]
  reg  _T_534; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@226614.4]
  wire  _T_536; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226616.4]
  wire  _T_537; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226617.4]
  reg [1:0] _T_547; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@226630.4]
  reg [9:0] _T_548; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@226631.4]
  wire  _T_551; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@226634.4]
  wire  _T_552; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@226635.4]
  wire  _T_561; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@226653.6]
  wire  _T_563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226655.6]
  wire  _T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226656.6]
  wire  _T_565; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@226661.6]
  wire  _T_567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226663.6]
  wire  _T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226664.6]
  wire  _T_578; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@226687.4]
  reg [607:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@226696.4]
  reg [2431:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@226697.4]
  reg [2431:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@226698.4]
  reg  _T_588; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@226708.4]
  wire  _T_590; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226710.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226711.4]
  reg  _T_606; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@226730.4]
  wire  _T_608; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226732.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226733.4]
  wire [11:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@226752.4]
  wire [12:0] _T_616; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@226752.4]
  wire [2431:0] _T_617; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@226753.4]
  wire [15:0] _T_621; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@226757.4]
  wire [2431:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@226758.4]
  wire [2431:0] _T_622; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@226758.4]
  wire [2431:0] _T_623; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@226759.4]
  wire [2431:0] _T_625; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@226764.4]
  wire [2431:0] _T_630; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@226769.4]
  wire [2431:0] _T_631; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@226770.4]
  wire  _T_635; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@226795.4]
  wire [1023:0] _T_637; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@226798.6]
  wire [3:0] _T_638; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@226800.6]
  wire [3:0] _T_639; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@226801.6]
  wire [2:0] _T_640; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@226803.6]
  wire [2:0] _T_641; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@226804.6]
  wire [11:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@226806.6]
  wire [12:0] _T_642; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@226806.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  wire [8194:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@226807.6]
  wire [8194:0] _T_643; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@226807.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  wire [8193:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@226810.6]
  wire [8193:0] _T_645; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@226810.6]
  wire [607:0] _T_646; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@226812.6]
  wire  _T_648; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@226814.6]
  wire  _T_650; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226816.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226817.6]
  wire [1023:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  wire [8194:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  wire [8193:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  wire  _T_654; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@226831.4]
  wire [1023:0] _T_658; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@226836.6]
  wire [8206:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@226843.6]
  wire [8206:0] _T_664; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@226843.6]
  wire [1023:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@226835.4]
  wire [8206:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@226835.4]
  wire  _T_671; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@226853.4]
  wire [607:0] _T_675; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@226858.6]
  wire  _T_677; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@226860.6]
  wire  _T_678; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@226861.6]
  wire  _T_679; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@226862.6]
  wire  _T_680; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@226863.6]
  wire  _T_681; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@226864.6]
  wire  _T_682; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@226865.6]
  wire  _T_684; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226867.6]
  wire  _T_685; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226868.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226750.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226751.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@226760.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire  _T_687; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  wire  _T_689; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  wire  _T_690; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@226877.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire  _T_691; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  wire  _T_692; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  wire  _T_693; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@226880.6]
  wire  _T_694; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@226881.6]
  wire  _T_695; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@226882.6]
  wire  _T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226884.6]
  wire  _T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226885.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226761.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226762.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@226771.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@226890.6]
  wire  _T_699; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@226890.6]
  wire  _T_701; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@226892.6]
  wire  _T_702; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@226893.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226895.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226896.6]
  wire  _T_707; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@226903.4]
  wire  _T_708; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@226904.4]
  wire  _T_710; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@226906.4]
  wire  _T_713; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@226910.6]
  wire  _T_714; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@226911.6]
  wire  _T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226913.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226914.6]
  wire [607:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226744.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226745.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@226799.6]
  wire [607:0] _T_718; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@226920.4]
  wire [607:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226823.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226824.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@226837.6]
  wire [607:0] _T_719; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@226921.4]
  wire [607:0] _T_720; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@226922.4]
  wire [2431:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226746.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226747.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@226808.6]
  wire [2431:0] _T_721; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@226924.4]
  wire [2431:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226825.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226826.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@226844.6]
  wire [2431:0] _T_722; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@226925.4]
  wire [2431:0] _T_723; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@226926.4]
  wire [2431:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226748.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226749.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@226811.6]
  wire [2431:0] _T_724; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@226928.4]
  wire [2431:0] _T_726; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@226930.4]
  reg [31:0] _T_727; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@226932.4]
  wire  _T_728; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@226935.4]
  wire  _T_729; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@226936.4]
  wire  _T_730; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@226937.4]
  wire  _T_731; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@226938.4]
  wire  _T_732; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@226939.4]
  wire  _T_733; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@226940.4]
  wire  _T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226942.4]
  wire  _T_736; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226943.4]
  wire [31:0] _T_738; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@226949.4]
  wire  _T_741; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@226953.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225760.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225832.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225915.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225971.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226019.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226069.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226117.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226165.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@226933.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@225680.6]
  assign _T_14 = 5'h3 << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@225686.6]
  assign _T_16 = ~_T_14[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@225688.6]
  assign _GEN_56 = {{15'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@225689.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@225689.6]
  assign _T_18 = _T_17 == 17'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@225690.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@225693.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@225695.6]
  assign _T_24 = io_in_a_bits_size >= 2'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@225696.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@225699.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225701.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225702.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225704.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225705.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@225708.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225709.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225710.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225711.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225712.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225713.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225714.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225715.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225716.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225717.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@225718.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@225719.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@225720.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@225723.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@225746.6]
  assign _T_72 = io_in_a_bits_address ^ 17'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@225749.8]
  assign _T_73 = {1'b0,$signed(_T_72)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@225750.8]
  assign _T_75 = $signed(_T_73) & -18'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@225752.8]
  assign _T_76 = $signed(_T_75) == 18'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@225753.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225758.8]
  assign _T_86 = _T_10 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225771.8]
  assign _T_87 = ~_T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225772.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225779.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225780.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225786.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225787.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@225792.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225794.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225795.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@225800.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@225801.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225803.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225804.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@225809.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225811.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225812.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@225818.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@225872.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225874.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225875.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@225898.6]
  assign _T_152 = io_in_a_bits_size <= 2'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@225901.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@225909.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225912.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225913.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@225932.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225934.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225935.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@225940.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225942.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225943.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@225957.6]
  assign _T_209 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@226005.6]
  assign _T_231 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@226044.8]
  assign _T_232 = io_in_a_bits_mask & _T_231; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@226045.8]
  assign _T_233 = _T_232 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@226046.8]
  assign _T_235 = _T_233 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226048.8]
  assign _T_236 = ~_T_235; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226049.8]
  assign _T_237 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@226055.6]
  assign _T_255 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@226086.8]
  assign _T_257 = _T_255 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226088.8]
  assign _T_258 = ~_T_257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226089.8]
  assign _T_263 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@226103.6]
  assign _T_281 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@226134.8]
  assign _T_283 = _T_281 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226136.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226137.8]
  assign _T_289 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@226151.6]
  assign _T_307 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@226182.8]
  assign _T_309 = _T_307 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226184.8]
  assign _T_310 = ~_T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226185.8]
  assign _T_329 = io_in_d_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@226223.6]
  assign _T_335 = _T_329 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226232.8]
  assign _T_336 = ~_T_335; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226233.8]
  assign _T_477 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@226525.4]
  assign _T_488 = _T_486 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226536.4]
  assign _T_489 = ~_T_486; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226537.4]
  assign _T_502 = ~_T_489; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@226553.4]
  assign _T_503 = io_in_a_valid & _T_502; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@226554.4]
  assign _T_504 = io_in_a_bits_opcode == _T_497; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@226556.6]
  assign _T_506 = _T_504 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226558.6]
  assign _T_507 = ~_T_506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226559.6]
  assign _T_508 = io_in_a_bits_param == _T_498; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@226564.6]
  assign _T_510 = _T_508 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226566.6]
  assign _T_511 = ~_T_510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226567.6]
  assign _T_512 = io_in_a_bits_size == _T_499; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@226572.6]
  assign _T_514 = _T_512 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226574.6]
  assign _T_515 = ~_T_514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226575.6]
  assign _T_516 = io_in_a_bits_source == _T_500; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@226580.6]
  assign _T_518 = _T_516 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226582.6]
  assign _T_519 = ~_T_518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226583.6]
  assign _T_520 = io_in_a_bits_address == _T_501; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@226588.6]
  assign _T_522 = _T_520 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226590.6]
  assign _T_523 = ~_T_522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226591.6]
  assign _T_525 = _T_477 & _T_489; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@226598.4]
  assign _T_526 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@226606.4]
  assign _T_536 = _T_534 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226616.4]
  assign _T_537 = ~_T_534; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226617.4]
  assign _T_551 = ~_T_537; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@226634.4]
  assign _T_552 = io_in_d_valid & _T_551; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@226635.4]
  assign _T_561 = io_in_d_bits_size == _T_547; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@226653.6]
  assign _T_563 = _T_561 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226655.6]
  assign _T_564 = ~_T_563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226656.6]
  assign _T_565 = io_in_d_bits_source == _T_548; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@226661.6]
  assign _T_567 = _T_565 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226663.6]
  assign _T_568 = ~_T_567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226664.6]
  assign _T_578 = _T_526 & _T_537; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@226687.4]
  assign _T_590 = _T_588 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226710.4]
  assign a_first = ~_T_588; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226711.4]
  assign _T_608 = _T_606 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@226732.4]
  assign d_first = ~_T_606; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@226733.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@226752.4]
  assign _T_616 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@226752.4]
  assign _T_617 = inflight_opcodes >> _T_616; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@226753.4]
  assign _T_621 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@226757.4]
  assign _GEN_58 = {{2416'd0}, _T_621}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@226758.4]
  assign _T_622 = _T_617 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@226758.4]
  assign _T_623 = {{1'd0}, _T_622[2431:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@226759.4]
  assign _T_625 = inflight_sizes >> _T_616; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@226764.4]
  assign _T_630 = _T_625 & _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@226769.4]
  assign _T_631 = {{1'd0}, _T_630[2431:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@226770.4]
  assign _T_635 = _T_477 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@226795.4]
  assign _T_637 = 1024'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@226798.6]
  assign _T_638 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@226800.6]
  assign _T_639 = _T_638 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@226801.6]
  assign _T_640 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@226803.6]
  assign _T_641 = _T_640 | 3'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@226804.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@226806.6]
  assign _T_642 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@226806.6]
  assign a_opcodes_set_interm = _T_635 ? _T_639 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  assign _GEN_64 = {{8191'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@226807.6]
  assign _T_643 = _GEN_64 << _T_642; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@226807.6]
  assign a_sizes_set_interm = _T_635 ? _T_641 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  assign _GEN_66 = {{8191'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@226810.6]
  assign _T_645 = _GEN_66 << _T_642; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@226810.6]
  assign _T_646 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@226812.6]
  assign _T_648 = ~_T_646[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@226814.6]
  assign _T_650 = _T_648 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226816.6]
  assign _T_651 = ~_T_650; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226817.6]
  assign _GEN_15 = _T_635 ? _T_637 : 1024'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  assign _GEN_18 = _T_635 ? _T_643 : 8195'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  assign _GEN_19 = _T_635 ? _T_645 : 8194'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@226797.4]
  assign _T_654 = _T_526 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@226831.4]
  assign _T_658 = 1024'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@226836.6]
  assign _GEN_68 = {{8191'd0}, _T_621}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@226843.6]
  assign _T_664 = _GEN_68 << _T_616; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@226843.6]
  assign _GEN_20 = _T_654 ? _T_658 : 1024'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@226835.4]
  assign _GEN_21 = _T_654 ? _T_664 : 8207'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@226835.4]
  assign _T_671 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@226853.4]
  assign _T_675 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@226858.6]
  assign _T_677 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@226860.6]
  assign _T_678 = io_in_a_valid & _T_677; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@226861.6]
  assign _T_679 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@226862.6]
  assign _T_680 = _T_678 & _T_679; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@226863.6]
  assign _T_681 = _T_680 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@226864.6]
  assign _T_682 = _T_675[0] | _T_681; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@226865.6]
  assign _T_684 = _T_682 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226867.6]
  assign _T_685 = ~_T_684; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226868.6]
  assign a_opcode_lookup = _T_623[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226750.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226751.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@226760.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _T_687 = 3'h1 == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@226874.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  assign _T_689 = 3'h1 == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@226876.6]
  assign _T_690 = _T_687 | _T_689; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@226877.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _T_691 = 3'h1 == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@226878.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  assign _T_692 = 3'h1 == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@226879.6]
  assign _T_693 = _T_691 | _T_692; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@226880.6]
  assign _T_694 = io_in_a_valid & _T_693; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@226881.6]
  assign _T_695 = _T_690 | _T_694; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@226882.6]
  assign _T_697 = _T_695 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226884.6]
  assign _T_698 = ~_T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226885.6]
  assign a_size_lookup = _T_631[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226761.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226762.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@226771.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@226890.6]
  assign _T_699 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@226890.6]
  assign _T_701 = io_in_a_valid & _T_679; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@226892.6]
  assign _T_702 = _T_699 | _T_701; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@226893.6]
  assign _T_704 = _T_702 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226895.6]
  assign _T_705 = ~_T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226896.6]
  assign _T_707 = _T_671 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@226903.4]
  assign _T_708 = _T_707 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@226904.4]
  assign _T_710 = _T_708 & _T_677; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@226906.4]
  assign _T_713 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@226910.6]
  assign _T_714 = _T_713 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@226911.6]
  assign _T_716 = _T_714 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226913.6]
  assign _T_717 = ~_T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226914.6]
  assign a_set = _GEN_15[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226744.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226745.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@226799.6]
  assign _T_718 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@226920.4]
  assign d_clr = _GEN_20[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226823.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226824.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@226837.6]
  assign _T_719 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@226921.4]
  assign _T_720 = _T_718 & _T_719; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@226922.4]
  assign a_opcodes_set = _GEN_18[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226746.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226747.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@226808.6]
  assign _T_721 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@226924.4]
  assign d_opcodes_clr = _GEN_21[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226825.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226826.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@226844.6]
  assign _T_722 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@226925.4]
  assign _T_723 = _T_721 & _T_722; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@226926.4]
  assign a_sizes_set = _GEN_19[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226748.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226749.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@226811.6]
  assign _T_724 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@226928.4]
  assign _T_726 = _T_724 & _T_722; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@226930.4]
  assign _T_728 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@226935.4]
  assign _T_729 = ~_T_728; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@226936.4]
  assign _T_730 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@226937.4]
  assign _T_731 = _T_729 | _T_730; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@226938.4]
  assign _T_732 = _T_727 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@226939.4]
  assign _T_733 = _T_731 | _T_732; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@226940.4]
  assign _T_735 = _T_733 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226942.4]
  assign _T_736 = ~_T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226943.4]
  assign _T_738 = _T_727 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@226949.4]
  assign _T_741 = _T_477 | _T_526; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@226953.4]
  assign _GEN_72 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225760.10]
  assign _GEN_88 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225832.10]
  assign _GEN_106 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225915.10]
  assign _GEN_118 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225971.10]
  assign _GEN_128 = io_in_a_valid & _T_209; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226019.10]
  assign _GEN_138 = io_in_a_valid & _T_237; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226069.10]
  assign _GEN_148 = io_in_a_valid & _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226117.10]
  assign _GEN_158 = io_in_a_valid & _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226165.10]
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
  _T_486 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_497 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_498 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_499 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  _T_500 = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  _T_501 = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  _T_534 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_547 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  _T_548 = _RAND_8[9:0];
  _RAND_9 = {19{`RANDOM}};
  inflight = _RAND_9[607:0];
  _RAND_10 = {76{`RANDOM}};
  inflight_opcodes = _RAND_10[2431:0];
  _RAND_11 = {76{`RANDOM}};
  inflight_sizes = _RAND_11[2431:0];
  _RAND_12 = {1{`RANDOM}};
  _T_588 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_606 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_727 = _RAND_14[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_486 <= 1'h0;
    end else if (_T_477) begin
      if (_T_489) begin
        _T_486 <= 1'h0;
      end else begin
        _T_486 <= _T_488;
      end
    end
    if (_T_525) begin
      _T_497 <= io_in_a_bits_opcode;
    end
    if (_T_525) begin
      _T_498 <= io_in_a_bits_param;
    end
    if (_T_525) begin
      _T_499 <= io_in_a_bits_size;
    end
    if (_T_525) begin
      _T_500 <= io_in_a_bits_source;
    end
    if (_T_525) begin
      _T_501 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_534 <= 1'h0;
    end else if (_T_526) begin
      if (_T_537) begin
        _T_534 <= 1'h0;
      end else begin
        _T_534 <= _T_536;
      end
    end
    if (_T_578) begin
      _T_547 <= io_in_d_bits_size;
    end
    if (_T_578) begin
      _T_548 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 608'h0;
    end else begin
      inflight <= _T_720;
    end
    if (reset) begin
      inflight_opcodes <= 2432'h0;
    end else begin
      inflight_opcodes <= _T_723;
    end
    if (reset) begin
      inflight_sizes <= 2432'h0;
    end else begin
      inflight_sizes <= _T_726;
    end
    if (reset) begin
      _T_588 <= 1'h0;
    end else if (_T_477) begin
      if (a_first) begin
        _T_588 <= 1'h0;
      end else begin
        _T_588 <= _T_590;
      end
    end
    if (reset) begin
      _T_606 <= 1'h0;
    end else if (_T_526) begin
      if (d_first) begin
        _T_606 <= 1'h0;
      end else begin
        _T_606 <= _T_608;
      end
    end
    if (reset) begin
      _T_727 <= 32'h0;
    end else if (_T_741) begin
      _T_727 <= 32'h0;
    end else begin
      _T_727 <= _T_738;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225760.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225761.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225782.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225783.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225789.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225790.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225797.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225798.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225806.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225807.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225814.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225815.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225832.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225833.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225839.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225840.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225854.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225855.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225861.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225862.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225869.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225870.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_140) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225877.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_140) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225878.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225886.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225887.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225915.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225916.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225922.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225923.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225929.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225930.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225937.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225938.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225945.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225946.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225953.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225954.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225971.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225972.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225978.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225979.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225985.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225986.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225993.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@225994.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226019.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226020.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226026.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226027.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226033.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226034.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226041.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226042.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_236) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226051.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_236) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226052.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226069.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226070.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226076.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226077.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226083.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226084.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226091.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226092.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226099.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226100.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226117.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226118.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226124.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226125.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226131.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226132.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226139.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226140.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226147.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226148.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226165.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226166.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226179.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226180.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_310) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_310) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226195.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226196.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226203.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226204.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_336) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226429.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_336) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226430.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_503 & _T_507) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226561.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_503 & _T_507) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226562.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_503 & _T_511) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226569.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_503 & _T_511) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226570.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_503 & _T_515) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226577.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_503 & _T_515) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226578.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_503 & _T_519) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226585.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_503 & _T_519) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226586.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_503 & _T_523) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226593.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_503 & _T_523) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226594.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_552 & _T_564) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226658.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_552 & _T_564) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226659.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_552 & _T_568) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226666.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_552 & _T_568) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226667.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226819.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226820.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_671 & _T_685) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226870.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_671 & _T_685) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226871.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_671 & _T_698) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226887.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_671 & _T_698) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226888.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_671 & _T_705) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226898.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_671 & _T_705) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226899.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_710 & _T_717) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226916.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_710 & _T_717) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@226917.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_736) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226945.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_736) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@226946.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
