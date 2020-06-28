module TLMonitor_49( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227365.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227366.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227367.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [1:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [9:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [16:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [1:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
  input  [9:0]  io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227368.4]
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@228638.4]
  wire  _T_10; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@227385.6]
  wire [4:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@227391.6]
  wire [1:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@227393.6]
  wire [16:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@227394.6]
  wire [16:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@227394.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@227395.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@227398.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@227400.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@227401.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@227404.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227406.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227407.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227409.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227410.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@227413.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227414.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227415.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227416.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227417.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227418.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227419.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227420.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227421.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227422.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227423.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227424.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227425.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@227428.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@227451.6]
  wire [16:0] _T_72; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@227454.8]
  wire [17:0] _T_73; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@227455.8]
  wire [17:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@227457.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@227458.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227463.8]
  wire  _T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227476.8]
  wire  _T_87; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227477.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227484.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227485.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227491.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227492.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@227497.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227499.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227500.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@227505.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@227506.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227508.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227509.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@227514.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227516.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227517.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@227523.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@227577.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227579.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227580.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@227603.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@227606.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@227614.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227617.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227618.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@227637.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227639.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227640.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@227645.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227647.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227648.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@227662.6]
  wire  _T_209; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@227710.6]
  wire [3:0] _T_231; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@227749.8]
  wire [3:0] _T_232; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@227750.8]
  wire  _T_233; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@227751.8]
  wire  _T_235; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227753.8]
  wire  _T_236; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227754.8]
  wire  _T_237; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@227760.6]
  wire  _T_255; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@227791.8]
  wire  _T_257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227793.8]
  wire  _T_258; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227794.8]
  wire  _T_263; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@227808.6]
  wire  _T_281; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@227839.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227841.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227842.8]
  wire  _T_289; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@227856.6]
  wire  _T_307; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@227887.8]
  wire  _T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227889.8]
  wire  _T_310; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227890.8]
  wire  _T_329; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@227928.6]
  wire  _T_335; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@227937.8]
  wire  _T_336; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@227938.8]
  wire  _T_477; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228230.4]
  reg  _T_486; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@228239.4]
  wire  _T_488; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228241.4]
  wire  _T_489; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228242.4]
  reg [2:0] _T_497; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  reg [2:0] _T_498; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  reg [1:0] _T_499; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  reg [9:0] _T_500; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@228256.4]
  reg [16:0] _T_501; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@228257.4]
  wire  _T_502; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@228258.4]
  wire  _T_503; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@228259.4]
  wire  _T_504; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@228261.6]
  wire  _T_506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228263.6]
  wire  _T_507; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228264.6]
  wire  _T_508; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@228269.6]
  wire  _T_510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228271.6]
  wire  _T_511; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228272.6]
  wire  _T_512; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@228277.6]
  wire  _T_514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228279.6]
  wire  _T_515; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228280.6]
  wire  _T_516; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@228285.6]
  wire  _T_518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228287.6]
  wire  _T_519; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228288.6]
  wire  _T_520; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@228293.6]
  wire  _T_522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228295.6]
  wire  _T_523; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228296.6]
  wire  _T_525; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@228303.4]
  wire  _T_526; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228311.4]
  reg  _T_534; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@228319.4]
  wire  _T_536; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228321.4]
  wire  _T_537; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228322.4]
  reg [1:0] _T_547; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@228335.4]
  reg [9:0] _T_548; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@228336.4]
  wire  _T_551; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@228339.4]
  wire  _T_552; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@228340.4]
  wire  _T_561; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@228358.6]
  wire  _T_563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228360.6]
  wire  _T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228361.6]
  wire  _T_565; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@228366.6]
  wire  _T_567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228368.6]
  wire  _T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228369.6]
  wire  _T_578; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@228392.4]
  reg [607:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@228401.4]
  reg [2431:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@228402.4]
  reg [2431:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@228403.4]
  reg  _T_588; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@228413.4]
  wire  _T_590; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228415.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228416.4]
  reg  _T_606; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@228435.4]
  wire  _T_608; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228437.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228438.4]
  wire [11:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@228457.4]
  wire [12:0] _T_616; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@228457.4]
  wire [2431:0] _T_617; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@228458.4]
  wire [15:0] _T_621; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@228462.4]
  wire [2431:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@228463.4]
  wire [2431:0] _T_622; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@228463.4]
  wire [2431:0] _T_623; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@228464.4]
  wire [2431:0] _T_625; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@228469.4]
  wire [2431:0] _T_630; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@228474.4]
  wire [2431:0] _T_631; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@228475.4]
  wire  _T_635; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@228500.4]
  wire [1023:0] _T_637; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@228503.6]
  wire [3:0] _T_638; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@228505.6]
  wire [3:0] _T_639; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@228506.6]
  wire [2:0] _T_640; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@228508.6]
  wire [2:0] _T_641; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@228509.6]
  wire [11:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@228511.6]
  wire [12:0] _T_642; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@228511.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire [8194:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@228512.6]
  wire [8194:0] _T_643; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@228512.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire [8193:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@228515.6]
  wire [8193:0] _T_645; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@228515.6]
  wire [607:0] _T_646; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@228517.6]
  wire  _T_648; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@228519.6]
  wire  _T_650; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228521.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228522.6]
  wire [1023:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire [8194:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire [8193:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire  _T_654; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@228536.4]
  wire [1023:0] _T_658; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@228541.6]
  wire [8206:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@228548.6]
  wire [8206:0] _T_664; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@228548.6]
  wire [1023:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  wire [8206:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  wire  _T_671; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@228558.4]
  wire [607:0] _T_675; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@228563.6]
  wire  _T_677; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@228565.6]
  wire  _T_678; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@228566.6]
  wire  _T_679; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@228567.6]
  wire  _T_680; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@228568.6]
  wire  _T_681; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@228569.6]
  wire  _T_682; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@228570.6]
  wire  _T_684; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228572.6]
  wire  _T_685; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228573.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228455.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228456.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@228465.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire  _T_687; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  wire  _T_689; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  wire  _T_690; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@228582.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire  _T_691; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  wire  _T_692; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  wire  _T_693; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@228585.6]
  wire  _T_694; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@228586.6]
  wire  _T_695; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@228587.6]
  wire  _T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228589.6]
  wire  _T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228590.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228466.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228467.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@228476.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@228595.6]
  wire  _T_699; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@228595.6]
  wire  _T_701; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@228597.6]
  wire  _T_702; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@228598.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228600.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228601.6]
  wire  _T_707; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@228608.4]
  wire  _T_708; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@228609.4]
  wire  _T_710; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@228611.4]
  wire  _T_713; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@228615.6]
  wire  _T_714; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@228616.6]
  wire  _T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228618.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228619.6]
  wire [607:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228449.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228450.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@228504.6]
  wire [607:0] _T_718; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@228625.4]
  wire [607:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228528.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228529.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@228542.6]
  wire [607:0] _T_719; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@228626.4]
  wire [607:0] _T_720; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@228627.4]
  wire [2431:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228451.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228452.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@228513.6]
  wire [2431:0] _T_721; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@228629.4]
  wire [2431:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228530.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228531.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@228549.6]
  wire [2431:0] _T_722; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@228630.4]
  wire [2431:0] _T_723; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@228631.4]
  wire [2431:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228453.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228454.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@228516.6]
  wire [2431:0] _T_724; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@228633.4]
  wire [2431:0] _T_726; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@228635.4]
  reg [31:0] _T_727; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@228637.4]
  wire  _T_728; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@228640.4]
  wire  _T_729; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@228641.4]
  wire  _T_730; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@228642.4]
  wire  _T_731; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@228643.4]
  wire  _T_732; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@228644.4]
  wire  _T_733; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@228645.4]
  wire  _T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228647.4]
  wire  _T_736; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228648.4]
  wire [31:0] _T_738; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@228654.4]
  wire  _T_741; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@228658.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227465.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227537.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227620.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227676.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227724.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227774.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227822.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227870.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@228638.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@227385.6]
  assign _T_14 = 5'h3 << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@227391.6]
  assign _T_16 = ~_T_14[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@227393.6]
  assign _GEN_56 = {{15'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@227394.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@227394.6]
  assign _T_18 = _T_17 == 17'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@227395.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@227398.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@227400.6]
  assign _T_24 = io_in_a_bits_size >= 2'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@227401.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@227404.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227406.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227407.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227409.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227410.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@227413.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227414.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227415.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227416.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227417.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227418.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227419.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227420.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227421.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227422.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@227423.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@227424.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@227425.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@227428.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@227451.6]
  assign _T_72 = io_in_a_bits_address ^ 17'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@227454.8]
  assign _T_73 = {1'b0,$signed(_T_72)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@227455.8]
  assign _T_75 = $signed(_T_73) & -18'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@227457.8]
  assign _T_76 = $signed(_T_75) == 18'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@227458.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227463.8]
  assign _T_86 = _T_10 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227476.8]
  assign _T_87 = ~_T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227477.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227484.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227485.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227491.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227492.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@227497.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227499.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227500.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@227505.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@227506.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227508.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227509.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@227514.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227516.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227517.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@227523.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@227577.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227579.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227580.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@227603.6]
  assign _T_152 = io_in_a_bits_size <= 2'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@227606.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@227614.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227617.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227618.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@227637.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227639.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227640.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@227645.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227647.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227648.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@227662.6]
  assign _T_209 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@227710.6]
  assign _T_231 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@227749.8]
  assign _T_232 = io_in_a_bits_mask & _T_231; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@227750.8]
  assign _T_233 = _T_232 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@227751.8]
  assign _T_235 = _T_233 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227753.8]
  assign _T_236 = ~_T_235; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227754.8]
  assign _T_237 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@227760.6]
  assign _T_255 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@227791.8]
  assign _T_257 = _T_255 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227793.8]
  assign _T_258 = ~_T_257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227794.8]
  assign _T_263 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@227808.6]
  assign _T_281 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@227839.8]
  assign _T_283 = _T_281 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227841.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227842.8]
  assign _T_289 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@227856.6]
  assign _T_307 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@227887.8]
  assign _T_309 = _T_307 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227889.8]
  assign _T_310 = ~_T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227890.8]
  assign _T_329 = io_in_d_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@227928.6]
  assign _T_335 = _T_329 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@227937.8]
  assign _T_336 = ~_T_335; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@227938.8]
  assign _T_477 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228230.4]
  assign _T_488 = _T_486 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228241.4]
  assign _T_489 = ~_T_486; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228242.4]
  assign _T_502 = ~_T_489; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@228258.4]
  assign _T_503 = io_in_a_valid & _T_502; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@228259.4]
  assign _T_504 = io_in_a_bits_opcode == _T_497; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@228261.6]
  assign _T_506 = _T_504 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228263.6]
  assign _T_507 = ~_T_506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228264.6]
  assign _T_508 = io_in_a_bits_param == _T_498; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@228269.6]
  assign _T_510 = _T_508 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228271.6]
  assign _T_511 = ~_T_510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228272.6]
  assign _T_512 = io_in_a_bits_size == _T_499; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@228277.6]
  assign _T_514 = _T_512 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228279.6]
  assign _T_515 = ~_T_514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228280.6]
  assign _T_516 = io_in_a_bits_source == _T_500; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@228285.6]
  assign _T_518 = _T_516 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228287.6]
  assign _T_519 = ~_T_518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228288.6]
  assign _T_520 = io_in_a_bits_address == _T_501; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@228293.6]
  assign _T_522 = _T_520 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228295.6]
  assign _T_523 = ~_T_522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228296.6]
  assign _T_525 = _T_477 & _T_489; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@228303.4]
  assign _T_526 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228311.4]
  assign _T_536 = _T_534 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228321.4]
  assign _T_537 = ~_T_534; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228322.4]
  assign _T_551 = ~_T_537; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@228339.4]
  assign _T_552 = io_in_d_valid & _T_551; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@228340.4]
  assign _T_561 = io_in_d_bits_size == _T_547; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@228358.6]
  assign _T_563 = _T_561 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228360.6]
  assign _T_564 = ~_T_563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228361.6]
  assign _T_565 = io_in_d_bits_source == _T_548; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@228366.6]
  assign _T_567 = _T_565 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228368.6]
  assign _T_568 = ~_T_567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228369.6]
  assign _T_578 = _T_526 & _T_537; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@228392.4]
  assign _T_590 = _T_588 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228415.4]
  assign a_first = ~_T_588; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228416.4]
  assign _T_608 = _T_606 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@228437.4]
  assign d_first = ~_T_606; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@228438.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@228457.4]
  assign _T_616 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@228457.4]
  assign _T_617 = inflight_opcodes >> _T_616; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@228458.4]
  assign _T_621 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@228462.4]
  assign _GEN_58 = {{2416'd0}, _T_621}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@228463.4]
  assign _T_622 = _T_617 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@228463.4]
  assign _T_623 = {{1'd0}, _T_622[2431:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@228464.4]
  assign _T_625 = inflight_sizes >> _T_616; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@228469.4]
  assign _T_630 = _T_625 & _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@228474.4]
  assign _T_631 = {{1'd0}, _T_630[2431:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@228475.4]
  assign _T_635 = _T_477 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@228500.4]
  assign _T_637 = 1024'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@228503.6]
  assign _T_638 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@228505.6]
  assign _T_639 = _T_638 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@228506.6]
  assign _T_640 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@228508.6]
  assign _T_641 = _T_640 | 3'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@228509.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@228511.6]
  assign _T_642 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@228511.6]
  assign a_opcodes_set_interm = _T_635 ? _T_639 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _GEN_64 = {{8191'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@228512.6]
  assign _T_643 = _GEN_64 << _T_642; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@228512.6]
  assign a_sizes_set_interm = _T_635 ? _T_641 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _GEN_66 = {{8191'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@228515.6]
  assign _T_645 = _GEN_66 << _T_642; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@228515.6]
  assign _T_646 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@228517.6]
  assign _T_648 = ~_T_646[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@228519.6]
  assign _T_650 = _T_648 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228521.6]
  assign _T_651 = ~_T_650; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228522.6]
  assign _GEN_15 = _T_635 ? _T_637 : 1024'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _GEN_18 = _T_635 ? _T_643 : 8195'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _GEN_19 = _T_635 ? _T_645 : 8194'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _T_654 = _T_526 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@228536.4]
  assign _T_658 = 1024'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@228541.6]
  assign _GEN_68 = {{8191'd0}, _T_621}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@228548.6]
  assign _T_664 = _GEN_68 << _T_616; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@228548.6]
  assign _GEN_20 = _T_654 ? _T_658 : 1024'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  assign _GEN_21 = _T_654 ? _T_664 : 8207'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  assign _T_671 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@228558.4]
  assign _T_675 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@228563.6]
  assign _T_677 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@228565.6]
  assign _T_678 = io_in_a_valid & _T_677; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@228566.6]
  assign _T_679 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@228567.6]
  assign _T_680 = _T_678 & _T_679; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@228568.6]
  assign _T_681 = _T_680 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@228569.6]
  assign _T_682 = _T_675[0] | _T_681; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@228570.6]
  assign _T_684 = _T_682 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228572.6]
  assign _T_685 = ~_T_684; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228573.6]
  assign a_opcode_lookup = _T_623[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228455.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228456.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@228465.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _T_687 = 3'h1 == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@228579.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  assign _T_689 = 3'h1 == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@228581.6]
  assign _T_690 = _T_687 | _T_689; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@228582.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _T_691 = 3'h1 == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@228583.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  assign _T_692 = 3'h1 == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@228584.6]
  assign _T_693 = _T_691 | _T_692; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@228585.6]
  assign _T_694 = io_in_a_valid & _T_693; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@228586.6]
  assign _T_695 = _T_690 | _T_694; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@228587.6]
  assign _T_697 = _T_695 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228589.6]
  assign _T_698 = ~_T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228590.6]
  assign a_size_lookup = _T_631[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228466.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228467.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@228476.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@228595.6]
  assign _T_699 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@228595.6]
  assign _T_701 = io_in_a_valid & _T_679; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@228597.6]
  assign _T_702 = _T_699 | _T_701; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@228598.6]
  assign _T_704 = _T_702 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228600.6]
  assign _T_705 = ~_T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228601.6]
  assign _T_707 = _T_671 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@228608.4]
  assign _T_708 = _T_707 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@228609.4]
  assign _T_710 = _T_708 & _T_677; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@228611.4]
  assign _T_713 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@228615.6]
  assign _T_714 = _T_713 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@228616.6]
  assign _T_716 = _T_714 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228618.6]
  assign _T_717 = ~_T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228619.6]
  assign a_set = _GEN_15[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228449.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228450.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@228504.6]
  assign _T_718 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@228625.4]
  assign d_clr = _GEN_20[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228528.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228529.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@228542.6]
  assign _T_719 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@228626.4]
  assign _T_720 = _T_718 & _T_719; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@228627.4]
  assign a_opcodes_set = _GEN_18[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228451.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228452.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@228513.6]
  assign _T_721 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@228629.4]
  assign d_opcodes_clr = _GEN_21[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228530.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228531.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@228549.6]
  assign _T_722 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@228630.4]
  assign _T_723 = _T_721 & _T_722; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@228631.4]
  assign a_sizes_set = _GEN_19[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228453.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228454.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@228516.6]
  assign _T_724 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@228633.4]
  assign _T_726 = _T_724 & _T_722; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@228635.4]
  assign _T_728 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@228640.4]
  assign _T_729 = ~_T_728; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@228641.4]
  assign _T_730 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@228642.4]
  assign _T_731 = _T_729 | _T_730; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@228643.4]
  assign _T_732 = _T_727 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@228644.4]
  assign _T_733 = _T_731 | _T_732; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@228645.4]
  assign _T_735 = _T_733 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228647.4]
  assign _T_736 = ~_T_735; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228648.4]
  assign _T_738 = _T_727 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@228654.4]
  assign _T_741 = _T_477 | _T_526; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@228658.4]
  assign _GEN_72 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227465.10]
  assign _GEN_88 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227537.10]
  assign _GEN_106 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227620.10]
  assign _GEN_118 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227676.10]
  assign _GEN_128 = io_in_a_valid & _T_209; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227724.10]
  assign _GEN_138 = io_in_a_valid & _T_237; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227774.10]
  assign _GEN_148 = io_in_a_valid & _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227822.10]
  assign _GEN_158 = io_in_a_valid & _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227870.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227465.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227466.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227472.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227473.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227479.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227480.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227487.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227488.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227494.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227495.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227502.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227503.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227511.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227512.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227519.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227520.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227537.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227538.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227544.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227545.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227551.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227552.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227559.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227560.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227566.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227567.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227574.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227575.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227582.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227583.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227591.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227592.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227599.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227600.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227620.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227621.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227627.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227628.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227634.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227635.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227642.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227643.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227650.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227651.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227658.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227659.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227676.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227677.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227683.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227684.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227690.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227691.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227698.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227699.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227706.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227707.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227724.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227725.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227731.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227732.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227738.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227739.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227746.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227747.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227756.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227757.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227774.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227775.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227781.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227782.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227788.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227789.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227796.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227797.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227804.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227805.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227822.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227823.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227829.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227830.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227836.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227837.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227844.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227845.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227852.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227853.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227870.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227871.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227877.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227878.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227884.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227885.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227892.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227893.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227900.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227901.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227908.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@227909.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228134.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228135.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228266.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228267.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228274.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228275.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228282.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228283.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228290.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228291.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228298.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228299.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228363.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228364.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228371.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228372.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228524.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228525.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228575.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228576.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228592.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228593.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228603.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228604.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228621.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@228622.8]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228650.6]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@228651.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
