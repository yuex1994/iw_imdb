module TLMonitor_44( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106043.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106044.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106045.4]
  input        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [2:0] io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [2:0] io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [1:0] io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [8:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [3:0] io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [2:0] io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input  [1:0] io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
  input        io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106046.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@107541.4]
  wire  _T_4; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@106057.6]
  wire [4:0] _T_7; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@106062.6]
  wire [1:0] _T_9; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@106064.6]
  wire [8:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@106065.6]
  wire [8:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@106065.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@106066.6]
  wire [1:0] _T_14; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@106069.6]
  wire [1:0] _T_16; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@106071.6]
  wire  _T_17; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@106072.6]
  wire  _T_20; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@106075.6]
  wire  _T_22; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106077.6]
  wire  _T_23; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106078.6]
  wire  _T_25; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106080.6]
  wire  _T_26; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106081.6]
  wire  _T_29; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@106084.6]
  wire  _T_30; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106085.6]
  wire  _T_31; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106086.6]
  wire  _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106087.6]
  wire  _T_33; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106088.6]
  wire  _T_34; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106089.6]
  wire  _T_35; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106090.6]
  wire  _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106091.6]
  wire  _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106092.6]
  wire  _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106093.6]
  wire  _T_39; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106094.6]
  wire  _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106095.6]
  wire  _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106096.6]
  wire [3:0] _T_44; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@106099.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106103.6]
  wire  _T_56; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@106115.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106121.8]
  wire  _T_62; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106122.8]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106123.8]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106124.8]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106126.8]
  wire  _T_67; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106127.8]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106128.8]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106129.8]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106131.8]
  wire  _T_72; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106132.8]
  wire [8:0] _T_73; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106133.8]
  wire [9:0] _T_74; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106134.8]
  wire [9:0] _T_76; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106136.8]
  wire  _T_77; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106137.8]
  wire [8:0] _T_78; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106138.8]
  wire [9:0] _T_79; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106139.8]
  wire [9:0] _T_81; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106141.8]
  wire  _T_82; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106142.8]
  wire [8:0] _T_83; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106143.8]
  wire [9:0] _T_84; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106144.8]
  wire [9:0] _T_86; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106146.8]
  wire  _T_87; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106147.8]
  wire  _T_88; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106148.8]
  wire  _T_89; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106149.8]
  wire  _T_90; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106150.8]
  wire  _T_91; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106151.8]
  wire  _T_92; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106152.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106157.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106170.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106171.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106178.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106179.8]
  wire  _T_109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106185.8]
  wire  _T_110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106186.8]
  wire  _T_111; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@106191.8]
  wire  _T_113; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106193.8]
  wire  _T_114; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106194.8]
  wire [3:0] _T_115; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@106199.8]
  wire  _T_116; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@106200.8]
  wire  _T_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106202.8]
  wire  _T_119; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106203.8]
  wire  _T_120; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@106208.8]
  wire  _T_122; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106210.8]
  wire  _T_123; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106211.8]
  wire  _T_124; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@106217.6]
  wire  _T_183; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@106301.8]
  wire  _T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106303.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106304.8]
  wire  _T_196; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@106327.6]
  wire  _T_198; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@106330.8]
  wire  _T_236; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@106368.8]
  wire  _T_239; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106371.8]
  wire  _T_240; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106372.8]
  wire  _T_247; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@106391.8]
  wire  _T_249; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106393.8]
  wire  _T_250; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106394.8]
  wire  _T_251; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@106399.8]
  wire  _T_253; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106401.8]
  wire  _T_254; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106402.8]
  wire  _T_259; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@106416.6]
  wire  _T_318; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@106497.6]
  wire [3:0] _T_373; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@106569.8]
  wire [3:0] _T_374; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@106570.8]
  wire  _T_375; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@106571.8]
  wire  _T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106573.8]
  wire  _T_378; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106574.8]
  wire  _T_379; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@106580.6]
  wire  _T_427; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@106641.8]
  wire  _T_429; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106643.8]
  wire  _T_430; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106644.8]
  wire  _T_435; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@106658.6]
  wire  _T_483; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@106719.8]
  wire  _T_485; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106721.8]
  wire  _T_486; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106722.8]
  wire  _T_491; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@106736.6]
  wire  _T_539; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@106797.8]
  wire  _T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106799.8]
  wire  _T_542; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106800.8]
  wire  _T_551; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@106824.6]
  wire  _T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106826.6]
  wire  _T_554; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106827.6]
  wire  _T_555; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@106832.6]
  wire  _T_558; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@106837.6]
  wire  _T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106840.8]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106841.8]
  wire  _T_562; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@106846.8]
  wire  _T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106848.8]
  wire  _T_565; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106849.8]
  wire  _T_578; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@106879.6]
  wire  _T_606; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@106937.6]
  wire  _T_635; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@106996.6]
  wire  _T_652; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@107031.6]
  wire  _T_670; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@107067.6]
  wire  _T_702; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@107133.4]
  reg  _T_711; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@107142.4]
  wire  _T_713; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107144.4]
  wire  _T_714; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107145.4]
  reg [2:0] _T_722; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@107156.4]
  reg [2:0] _T_723; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@107157.4]
  reg [1:0] _T_724; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@107158.4]
  reg  _T_725; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@107159.4]
  reg [8:0] _T_726; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@107160.4]
  wire  _T_727; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@107161.4]
  wire  _T_728; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@107162.4]
  wire  _T_729; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@107164.6]
  wire  _T_731; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107166.6]
  wire  _T_732; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107167.6]
  wire  _T_733; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@107172.6]
  wire  _T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107174.6]
  wire  _T_736; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107175.6]
  wire  _T_737; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@107180.6]
  wire  _T_739; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107182.6]
  wire  _T_740; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107183.6]
  wire  _T_741; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@107188.6]
  wire  _T_743; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107190.6]
  wire  _T_744; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107191.6]
  wire  _T_745; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@107196.6]
  wire  _T_747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107198.6]
  wire  _T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107199.6]
  wire  _T_750; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@107206.4]
  wire  _T_751; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@107214.4]
  reg  _T_759; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@107222.4]
  wire  _T_761; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107224.4]
  wire  _T_762; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107225.4]
  reg [2:0] _T_770; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@107236.4]
  reg [1:0] _T_772; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@107238.4]
  reg  _T_773; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@107239.4]
  wire  _T_776; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@107242.4]
  wire  _T_777; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@107243.4]
  wire  _T_778; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@107245.6]
  wire  _T_780; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107247.6]
  wire  _T_781; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107248.6]
  wire  _T_786; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@107261.6]
  wire  _T_788; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107263.6]
  wire  _T_789; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107264.6]
  wire  _T_790; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@107269.6]
  wire  _T_792; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107271.6]
  wire  _T_793; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107272.6]
  wire  _T_803; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@107295.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@107304.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@107305.4]
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@107306.4]
  reg  _T_813; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@107316.4]
  wire  _T_815; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107318.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107319.4]
  reg  _T_831; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@107338.4]
  wire  _T_833; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107340.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107341.4]
  wire [2:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@107360.4]
  wire [3:0] _T_841; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@107360.4]
  wire [3:0] _T_842; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@107361.4]
  wire [15:0] _T_846; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@107365.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@107366.4]
  wire [15:0] _T_847; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@107366.4]
  wire [15:0] _T_848; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@107367.4]
  wire [3:0] _T_850; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@107372.4]
  wire [15:0] _GEN_61; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@107377.4]
  wire [15:0] _T_855; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@107377.4]
  wire [15:0] _T_856; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@107378.4]
  wire  _T_860; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@107403.4]
  wire [1:0] _T_862; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@107406.6]
  wire [3:0] _T_863; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@107408.6]
  wire [3:0] _T_864; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@107409.6]
  wire [2:0] _T_865; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@107411.6]
  wire [2:0] _T_866; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@107412.6]
  wire [2:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@107414.6]
  wire [3:0] _T_867; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@107414.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  wire [18:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@107415.6]
  wire [18:0] _T_868; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@107415.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  wire [17:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@107418.6]
  wire [17:0] _T_870; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@107418.6]
  wire  _T_871; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@107420.6]
  wire  _T_873; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@107422.6]
  wire  _T_875; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107424.6]
  wire  _T_876; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107425.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  wire  _T_879; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@107439.4]
  wire  _T_881; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@107441.4]
  wire  _T_882; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@107442.4]
  wire [1:0] _T_883; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@107444.6]
  wire [30:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@107451.6]
  wire [30:0] _T_889; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@107451.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@107443.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@107443.4]
  wire  _T_896; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@107461.4]
  wire  _T_899; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@107464.4]
  wire  _T_900; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@107466.6]
  wire  _T_902; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@107468.6]
  wire  _T_903; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@107469.6]
  wire  _T_904; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@107470.6]
  wire  _T_905; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@107471.6]
  wire  _T_906; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@107472.6]
  wire  _T_907; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@107473.6]
  wire  _T_909; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107475.6]
  wire  _T_910; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107476.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107358.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107359.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@107368.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire  _T_912; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  wire  _T_914; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  wire  _T_915; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@107485.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire  _T_916; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  wire  _T_917; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  wire  _T_918; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@107488.6]
  wire  _T_919; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@107489.6]
  wire  _T_920; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@107490.6]
  wire  _T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107492.6]
  wire  _T_923; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107493.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107369.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107370.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@107379.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@107498.6]
  wire  _T_924; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@107498.6]
  wire  _T_926; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@107500.6]
  wire  _T_927; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@107501.6]
  wire  _T_929; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107503.6]
  wire  _T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107504.6]
  wire  _T_932; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@107511.4]
  wire  _T_933; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@107512.4]
  wire  _T_935; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@107514.4]
  wire  _T_937; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@107516.4]
  wire  _T_938; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@107518.6]
  wire  _T_939; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@107519.6]
  wire  _T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107521.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107522.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107352.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107353.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@107407.6]
  wire  _T_943; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@107528.4]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107431.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107432.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@107445.6]
  wire  _T_944; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@107529.4]
  wire  _T_945; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@107530.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107354.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107355.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@107416.6]
  wire [3:0] _T_946; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@107532.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107433.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107434.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@107452.6]
  wire [3:0] _T_947; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@107533.4]
  wire [3:0] _T_948; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@107534.4]
  wire [3:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107356.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107357.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@107419.6]
  wire [3:0] _T_949; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@107536.4]
  wire [3:0] _T_951; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@107538.4]
  reg [31:0] _T_952; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@107540.4]
  wire  _T_953; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@107543.4]
  wire  _T_954; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@107544.4]
  wire  _T_955; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@107545.4]
  wire  _T_956; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@107546.4]
  wire  _T_957; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@107547.4]
  wire  _T_958; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@107548.4]
  wire  _T_960; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107550.4]
  wire  _T_961; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107551.4]
  wire [31:0] _T_963; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@107557.4]
  wire  _T_966; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@107561.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106159.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106261.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106374.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106463.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106544.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106624.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106702.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106780.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106843.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106885.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106943.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107002.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107037.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107073.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@107541.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = ~io_in_a_bits_source; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@106057.6]
  assign _T_7 = 5'h3 << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@106062.6]
  assign _T_9 = ~_T_7[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@106064.6]
  assign _GEN_56 = {{7'd0}, _T_9}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@106065.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@106065.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@106066.6]
  assign _T_14 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@106069.6]
  assign _T_16 = _T_14 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@106071.6]
  assign _T_17 = io_in_a_bits_size >= 2'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@106072.6]
  assign _T_20 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@106075.6]
  assign _T_22 = _T_16[1] & _T_20; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106077.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106078.6]
  assign _T_25 = _T_16[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106080.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106081.6]
  assign _T_29 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@106084.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106085.6]
  assign _T_31 = _T_16[0] & _T_30; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106086.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106087.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106088.6]
  assign _T_34 = _T_16[0] & _T_33; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106089.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106090.6]
  assign _T_36 = io_in_a_bits_address[1] & _T_29; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106091.6]
  assign _T_37 = _T_16[0] & _T_36; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106092.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106093.6]
  assign _T_39 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@106094.6]
  assign _T_40 = _T_16[0] & _T_39; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@106095.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@106096.6]
  assign _T_44 = {_T_41,_T_38,_T_35,_T_32}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@106099.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106103.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@106115.6]
  assign _T_61 = $signed(_T_48) & -10'sh40; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106121.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106122.8]
  assign _T_63 = io_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106123.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106124.8]
  assign _T_66 = $signed(_T_64) & -10'sh4; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106126.8]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106127.8]
  assign _T_68 = io_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106128.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106129.8]
  assign _T_71 = $signed(_T_69) & -10'sh18; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106131.8]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106132.8]
  assign _T_73 = io_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106133.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106134.8]
  assign _T_76 = $signed(_T_74) & -10'sh20; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106136.8]
  assign _T_77 = $signed(_T_76) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106137.8]
  assign _T_78 = io_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106138.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106139.8]
  assign _T_81 = $signed(_T_79) & -10'sh80; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106141.8]
  assign _T_82 = $signed(_T_81) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106142.8]
  assign _T_83 = io_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@106143.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@106144.8]
  assign _T_86 = $signed(_T_84) & -10'sh100; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@106146.8]
  assign _T_87 = $signed(_T_86) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@106147.8]
  assign _T_88 = _T_62 | _T_67; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106148.8]
  assign _T_89 = _T_88 | _T_72; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106149.8]
  assign _T_90 = _T_89 | _T_77; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106150.8]
  assign _T_91 = _T_90 | _T_82; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106151.8]
  assign _T_92 = _T_91 | _T_87; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@106152.8]
  assign _T_97 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106157.8]
  assign _T_102 = _T_4 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106170.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106171.8]
  assign _T_106 = _T_17 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106178.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106179.8]
  assign _T_109 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106185.8]
  assign _T_110 = ~_T_109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106186.8]
  assign _T_111 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@106191.8]
  assign _T_113 = _T_111 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106193.8]
  assign _T_114 = ~_T_113; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106194.8]
  assign _T_115 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@106199.8]
  assign _T_116 = _T_115 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@106200.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106202.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106203.8]
  assign _T_120 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@106208.8]
  assign _T_122 = _T_120 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106210.8]
  assign _T_123 = ~_T_122; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106211.8]
  assign _T_124 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@106217.6]
  assign _T_183 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@106301.8]
  assign _T_185 = _T_183 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106303.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106304.8]
  assign _T_196 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@106327.6]
  assign _T_198 = io_in_a_bits_size <= 2'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@106330.8]
  assign _T_236 = _T_198 & _T_92; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@106368.8]
  assign _T_239 = _T_236 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106371.8]
  assign _T_240 = ~_T_239; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106372.8]
  assign _T_247 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@106391.8]
  assign _T_249 = _T_247 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106393.8]
  assign _T_250 = ~_T_249; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106394.8]
  assign _T_251 = io_in_a_bits_mask == _T_44; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@106399.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106401.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106402.8]
  assign _T_259 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@106416.6]
  assign _T_318 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@106497.6]
  assign _T_373 = ~_T_44; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@106569.8]
  assign _T_374 = io_in_a_bits_mask & _T_373; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@106570.8]
  assign _T_375 = _T_374 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@106571.8]
  assign _T_377 = _T_375 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106573.8]
  assign _T_378 = ~_T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106574.8]
  assign _T_379 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@106580.6]
  assign _T_427 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@106641.8]
  assign _T_429 = _T_427 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106643.8]
  assign _T_430 = ~_T_429; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106644.8]
  assign _T_435 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@106658.6]
  assign _T_483 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@106719.8]
  assign _T_485 = _T_483 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106721.8]
  assign _T_486 = ~_T_485; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106722.8]
  assign _T_491 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@106736.6]
  assign _T_539 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@106797.8]
  assign _T_541 = _T_539 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106799.8]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106800.8]
  assign _T_551 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@106824.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106826.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106827.6]
  assign _T_555 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@106832.6]
  assign _T_558 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@106837.6]
  assign _T_560 = _T_555 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106840.8]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106841.8]
  assign _T_562 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@106846.8]
  assign _T_564 = _T_562 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106848.8]
  assign _T_565 = ~_T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106849.8]
  assign _T_578 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@106879.6]
  assign _T_606 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@106937.6]
  assign _T_635 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@106996.6]
  assign _T_652 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@107031.6]
  assign _T_670 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@107067.6]
  assign _T_702 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@107133.4]
  assign _T_713 = _T_711 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107144.4]
  assign _T_714 = ~_T_711; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107145.4]
  assign _T_727 = ~_T_714; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@107161.4]
  assign _T_728 = io_in_a_valid & _T_727; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@107162.4]
  assign _T_729 = io_in_a_bits_opcode == _T_722; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@107164.6]
  assign _T_731 = _T_729 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107166.6]
  assign _T_732 = ~_T_731; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107167.6]
  assign _T_733 = io_in_a_bits_param == _T_723; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@107172.6]
  assign _T_735 = _T_733 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107174.6]
  assign _T_736 = ~_T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107175.6]
  assign _T_737 = io_in_a_bits_size == _T_724; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@107180.6]
  assign _T_739 = _T_737 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107182.6]
  assign _T_740 = ~_T_739; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107183.6]
  assign _T_741 = io_in_a_bits_source == _T_725; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@107188.6]
  assign _T_743 = _T_741 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107190.6]
  assign _T_744 = ~_T_743; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107191.6]
  assign _T_745 = io_in_a_bits_address == _T_726; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@107196.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107198.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107199.6]
  assign _T_750 = _T_702 & _T_714; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@107206.4]
  assign _T_751 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@107214.4]
  assign _T_761 = _T_759 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107224.4]
  assign _T_762 = ~_T_759; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107225.4]
  assign _T_776 = ~_T_762; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@107242.4]
  assign _T_777 = io_in_d_valid & _T_776; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@107243.4]
  assign _T_778 = io_in_d_bits_opcode == _T_770; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@107245.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107247.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107248.6]
  assign _T_786 = io_in_d_bits_size == _T_772; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@107261.6]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107263.6]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107264.6]
  assign _T_790 = io_in_d_bits_source == _T_773; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@107269.6]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107271.6]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107272.6]
  assign _T_803 = _T_751 & _T_762; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@107295.4]
  assign _T_815 = _T_813 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107318.4]
  assign a_first = ~_T_813; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107319.4]
  assign _T_833 = _T_831 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@107340.4]
  assign d_first = ~_T_831; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@107341.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@107360.4]
  assign _T_841 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@107360.4]
  assign _T_842 = inflight_opcodes >> _T_841; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@107361.4]
  assign _T_846 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@107365.4]
  assign _GEN_58 = {{12'd0}, _T_842}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@107366.4]
  assign _T_847 = _GEN_58 & _T_846; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@107366.4]
  assign _T_848 = {{1'd0}, _T_847[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@107367.4]
  assign _T_850 = inflight_sizes >> _T_841; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@107372.4]
  assign _GEN_61 = {{12'd0}, _T_850}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@107377.4]
  assign _T_855 = _GEN_61 & _T_846; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@107377.4]
  assign _T_856 = {{1'd0}, _T_855[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@107378.4]
  assign _T_860 = _T_702 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@107403.4]
  assign _T_862 = 2'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@107406.6]
  assign _T_863 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@107408.6]
  assign _T_864 = _T_863 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@107409.6]
  assign _T_865 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@107411.6]
  assign _T_866 = _T_865 | 3'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@107412.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@107414.6]
  assign _T_867 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@107414.6]
  assign a_opcodes_set_interm = _T_860 ? _T_864 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  assign _GEN_64 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@107415.6]
  assign _T_868 = _GEN_64 << _T_867; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@107415.6]
  assign a_sizes_set_interm = _T_860 ? _T_866 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  assign _GEN_66 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@107418.6]
  assign _T_870 = _GEN_66 << _T_867; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@107418.6]
  assign _T_871 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@107420.6]
  assign _T_873 = ~_T_871; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@107422.6]
  assign _T_875 = _T_873 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107424.6]
  assign _T_876 = ~_T_875; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107425.6]
  assign _GEN_15 = _T_860 ? _T_862 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  assign _GEN_18 = _T_860 ? _T_868 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  assign _GEN_19 = _T_860 ? _T_870 : 18'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@107405.4]
  assign _T_879 = _T_751 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@107439.4]
  assign _T_881 = ~_T_558; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@107441.4]
  assign _T_882 = _T_879 & _T_881; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@107442.4]
  assign _T_883 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@107444.6]
  assign _GEN_68 = {{15'd0}, _T_846}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@107451.6]
  assign _T_889 = _GEN_68 << _T_841; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@107451.6]
  assign _GEN_20 = _T_882 ? _T_883 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@107443.4]
  assign _GEN_21 = _T_882 ? _T_889 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@107443.4]
  assign _T_896 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@107461.4]
  assign _T_899 = _T_896 & _T_881; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@107464.4]
  assign _T_900 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@107466.6]
  assign _T_902 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@107468.6]
  assign _T_903 = io_in_a_valid & _T_902; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@107469.6]
  assign _T_904 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@107470.6]
  assign _T_905 = _T_903 & _T_904; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@107471.6]
  assign _T_906 = _T_905 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@107472.6]
  assign _T_907 = _T_900 | _T_906; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@107473.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107475.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107476.6]
  assign a_opcode_lookup = _T_848[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107358.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107359.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@107368.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _T_912 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@107482.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  assign _T_914 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@107484.6]
  assign _T_915 = _T_912 | _T_914; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@107485.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _T_916 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@107486.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  assign _T_917 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@107487.6]
  assign _T_918 = _T_916 | _T_917; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@107488.6]
  assign _T_919 = io_in_a_valid & _T_918; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@107489.6]
  assign _T_920 = _T_915 | _T_919; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@107490.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107492.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107493.6]
  assign a_size_lookup = _T_856[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107369.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107370.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@107379.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@107498.6]
  assign _T_924 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@107498.6]
  assign _T_926 = io_in_a_valid & _T_904; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@107500.6]
  assign _T_927 = _T_924 | _T_926; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@107501.6]
  assign _T_929 = _T_927 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107503.6]
  assign _T_930 = ~_T_929; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107504.6]
  assign _T_932 = _T_896 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@107511.4]
  assign _T_933 = _T_932 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@107512.4]
  assign _T_935 = _T_933 & _T_902; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@107514.4]
  assign _T_937 = _T_935 & _T_881; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@107516.4]
  assign _T_938 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@107518.6]
  assign _T_939 = _T_938 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@107519.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107521.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107522.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107352.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107353.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@107407.6]
  assign _T_943 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@107528.4]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107431.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107432.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@107445.6]
  assign _T_944 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@107529.4]
  assign _T_945 = _T_943 & _T_944; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@107530.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107354.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107355.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@107416.6]
  assign _T_946 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@107532.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107433.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107434.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@107452.6]
  assign _T_947 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@107533.4]
  assign _T_948 = _T_946 & _T_947; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@107534.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107356.4 :freechips.rocketchip.system.DefaultRV32Config.fir@107357.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@107419.6]
  assign _T_949 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@107536.4]
  assign _T_951 = _T_949 & _T_947; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@107538.4]
  assign _T_953 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@107543.4]
  assign _T_954 = ~_T_953; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@107544.4]
  assign _T_955 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@107545.4]
  assign _T_956 = _T_954 | _T_955; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@107546.4]
  assign _T_957 = _T_952 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@107547.4]
  assign _T_958 = _T_956 | _T_957; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@107548.4]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107550.4]
  assign _T_961 = ~_T_960; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107551.4]
  assign _T_963 = _T_952 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@107557.4]
  assign _T_966 = _T_702 | _T_751; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@107561.4]
  assign _GEN_72 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106159.10]
  assign _GEN_88 = io_in_a_valid & _T_124; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106261.10]
  assign _GEN_106 = io_in_a_valid & _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106374.10]
  assign _GEN_118 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106463.10]
  assign _GEN_128 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106544.10]
  assign _GEN_138 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106624.10]
  assign _GEN_148 = io_in_a_valid & _T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106702.10]
  assign _GEN_158 = io_in_a_valid & _T_491; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106780.10]
  assign _GEN_170 = io_in_d_valid & _T_558; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106843.10]
  assign _GEN_174 = io_in_d_valid & _T_578; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106885.10]
  assign _GEN_180 = io_in_d_valid & _T_606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106943.10]
  assign _GEN_186 = io_in_d_valid & _T_635; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107002.10]
  assign _GEN_188 = io_in_d_valid & _T_652; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107037.10]
  assign _GEN_190 = io_in_d_valid & _T_670; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107073.10]
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
  _T_711 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_722 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_723 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_724 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  _T_725 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_726 = _RAND_5[8:0];
  _RAND_6 = {1{`RANDOM}};
  _T_759 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_770 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_772 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_773 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight_opcodes = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_sizes = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  _T_813 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_831 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_952 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_711 <= 1'h0;
    end else if (_T_702) begin
      if (_T_714) begin
        _T_711 <= 1'h0;
      end else begin
        _T_711 <= _T_713;
      end
    end
    if (_T_750) begin
      _T_722 <= io_in_a_bits_opcode;
    end
    if (_T_750) begin
      _T_723 <= io_in_a_bits_param;
    end
    if (_T_750) begin
      _T_724 <= io_in_a_bits_size;
    end
    if (_T_750) begin
      _T_725 <= io_in_a_bits_source;
    end
    if (_T_750) begin
      _T_726 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_759 <= 1'h0;
    end else if (_T_751) begin
      if (_T_762) begin
        _T_759 <= 1'h0;
      end else begin
        _T_759 <= _T_761;
      end
    end
    if (_T_803) begin
      _T_770 <= io_in_d_bits_opcode;
    end
    if (_T_803) begin
      _T_772 <= io_in_d_bits_size;
    end
    if (_T_803) begin
      _T_773 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_945;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_948;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_951;
    end
    if (reset) begin
      _T_813 <= 1'h0;
    end else if (_T_702) begin
      if (a_first) begin
        _T_813 <= 1'h0;
      end else begin
        _T_813 <= _T_815;
      end
    end
    if (reset) begin
      _T_831 <= 1'h0;
    end else if (_T_751) begin
      if (d_first) begin
        _T_831 <= 1'h0;
      end else begin
        _T_831 <= _T_833;
      end
    end
    if (reset) begin
      _T_952 <= 32'h0;
    end else if (_T_966) begin
      _T_952 <= 32'h0;
    end else begin
      _T_952 <= _T_963;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106159.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106160.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106166.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106167.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106173.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106174.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106181.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106182.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106188.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106189.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_114) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_114) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106205.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106206.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106213.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106214.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106261.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106262.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106268.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106269.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106275.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106276.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106283.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106284.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106290.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106291.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_114) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106298.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_114) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106299.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106315.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106316.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106323.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106324.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106374.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106375.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106381.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106382.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106388.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106389.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106396.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106397.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106404.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106405.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106412.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106413.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106463.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106464.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106470.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106471.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106477.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106478.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106485.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106486.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106493.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106494.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106544.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106545.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106551.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106552.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106558.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106559.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106566.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106567.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_378) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106576.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_378) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106577.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106624.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106625.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106631.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106632.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106638.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106639.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_430) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106647.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106654.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106655.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106709.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106710.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106716.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106717.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106724.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_486) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106725.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106732.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106733.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106780.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106781.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106787.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106788.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106794.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106795.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_542) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106802.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_542) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106803.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106810.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106811.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106818.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@106819.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106829.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106830.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106852.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106885.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106886.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106892.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106893.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106900.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106901.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106943.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106944.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106950.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106951.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106958.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@106959.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107002.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107003.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107038.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107169.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107170.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_736) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107177.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_736) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107178.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_740) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107185.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_740) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107186.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_744) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107193.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_744) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107194.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107201.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107202.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107250.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107251.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107266.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107267.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107274.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107275.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107427.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107428.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107478.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107479.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107495.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107496.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107506.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107507.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107524.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@107525.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_961) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107553.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_961) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107554.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
