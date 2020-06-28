module TLMonitor_29( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70173.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70174.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70175.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [1:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input  [1:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@70176.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@71463.4]
  wire [12:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@70199.6]
  wire [5:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@70201.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@70202.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@70202.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@70203.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@70206.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@70208.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@70209.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@70212.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70214.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70215.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70217.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70218.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@70221.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70222.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70223.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70224.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70225.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70226.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70227.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70228.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70229.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70230.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70231.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70232.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70233.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@70236.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@70259.6]
  wire [31:0] _T_72; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@70262.8]
  wire [32:0] _T_73; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@70263.8]
  wire [32:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@70265.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@70266.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70271.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70292.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70293.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70299.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70300.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@70305.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70307.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70308.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@70313.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@70314.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70316.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70317.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@70322.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70324.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70325.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@70331.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@70385.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70387.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70388.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@70411.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@70414.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@70422.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70425.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70426.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@70445.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70447.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70448.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@70453.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70455.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70456.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@70470.6]
  wire  _T_212; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@70521.6]
  wire [3:0] _T_237; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@70563.8]
  wire [3:0] _T_238; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@70564.8]
  wire  _T_239; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@70565.8]
  wire  _T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70567.8]
  wire  _T_242; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70568.8]
  wire  _T_243; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@70574.6]
  wire  _T_261; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@70605.8]
  wire  _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70607.8]
  wire  _T_264; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70608.8]
  wire  _T_269; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@70622.6]
  wire  _T_287; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@70653.8]
  wire  _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70655.8]
  wire  _T_290; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70656.8]
  wire  _T_295; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@70670.6]
  wire  _T_313; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@70701.8]
  wire  _T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70703.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70704.8]
  wire  _T_325; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@70728.6]
  wire  _T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70730.6]
  wire  _T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70731.6]
  wire  _T_339; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@70748.6]
  wire  _T_343; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@70757.8]
  wire  _T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70759.8]
  wire  _T_346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70760.8]
  wire  _T_351; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@70773.8]
  wire  _T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70775.8]
  wire  _T_354; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70776.8]
  wire  _T_355; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@70781.8]
  wire  _T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70783.8]
  wire  _T_358; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70784.8]
  wire  _T_359; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@70790.6]
  wire  _T_387; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@70848.6]
  wire  _T_407; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@70889.8]
  wire  _T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70891.8]
  wire  _T_410; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70892.8]
  wire  _T_416; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@70907.6]
  wire  _T_433; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@70942.6]
  wire  _T_451; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@70978.6]
  wire  _T_483; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@71044.4]
  wire  _T_490; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@71051.4]
  reg [3:0] _T_492; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@71053.4]
  wire [3:0] _T_494; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71055.4]
  wire  _T_495; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71056.4]
  reg [2:0] _T_503; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@71067.4]
  reg [2:0] _T_504; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@71068.4]
  reg [2:0] _T_505; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@71069.4]
  reg [1:0] _T_506; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@71070.4]
  reg [31:0] _T_507; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@71071.4]
  wire  _T_508; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@71072.4]
  wire  _T_509; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@71073.4]
  wire  _T_510; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@71075.6]
  wire  _T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71077.6]
  wire  _T_513; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71078.6]
  wire  _T_514; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@71083.6]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71085.6]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71086.6]
  wire  _T_518; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@71091.6]
  wire  _T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71093.6]
  wire  _T_521; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71094.6]
  wire  _T_522; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@71099.6]
  wire  _T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71101.6]
  wire  _T_525; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71102.6]
  wire  _T_526; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@71107.6]
  wire  _T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71109.6]
  wire  _T_529; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71110.6]
  wire  _T_531; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@71117.4]
  wire  _T_532; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@71125.4]
  wire [12:0] _T_534; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@71127.4]
  wire [5:0] _T_536; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@71129.4]
  reg [3:0] _T_540; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@71133.4]
  wire [3:0] _T_542; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71135.4]
  wire  _T_543; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71136.4]
  reg [2:0] _T_551; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@71147.4]
  reg [2:0] _T_553; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@71149.4]
  reg [1:0] _T_554; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@71150.4]
  reg  _T_556; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@71152.4]
  wire  _T_557; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@71153.4]
  wire  _T_558; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@71154.4]
  wire  _T_559; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@71156.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71158.6]
  wire  _T_562; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71159.6]
  wire  _T_567; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@71172.6]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71174.6]
  wire  _T_570; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71175.6]
  wire  _T_571; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@71180.6]
  wire  _T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71182.6]
  wire  _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71183.6]
  wire  _T_579; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@71196.6]
  wire  _T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71198.6]
  wire  _T_582; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71199.6]
  wire  _T_584; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@71206.4]
  reg [3:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@71215.4]
  reg [15:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@71216.4]
  reg [15:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@71217.4]
  reg [3:0] _T_594; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@71227.4]
  wire [3:0] _T_596; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71229.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71230.4]
  reg [3:0] _T_612; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@71249.4]
  wire [3:0] _T_614; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71251.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71252.4]
  wire [3:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@71271.4]
  wire [4:0] _T_622; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@71271.4]
  wire [15:0] _T_623; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@71272.4]
  wire [15:0] _T_627; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@71276.4]
  wire [15:0] _T_628; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@71277.4]
  wire [15:0] _T_629; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@71278.4]
  wire [15:0] _T_631; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@71283.4]
  wire [15:0] _T_636; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@71288.4]
  wire [15:0] _T_637; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@71289.4]
  wire  _T_641; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@71314.4]
  wire [3:0] _T_643; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@71317.6]
  wire [3:0] _T_644; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@71319.6]
  wire [3:0] _T_645; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@71320.6]
  wire [3:0] _T_646; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@71322.6]
  wire [3:0] _T_647; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@71323.6]
  wire [3:0] _GEN_61; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@71325.6]
  wire [4:0] _T_648; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@71325.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  wire [34:0] _GEN_62; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@71326.6]
  wire [34:0] _T_649; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@71326.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  wire [34:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@71329.6]
  wire [34:0] _T_651; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@71329.6]
  wire [3:0] _T_652; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@71331.6]
  wire  _T_654; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@71333.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71335.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71336.6]
  wire [3:0] a_set; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  wire [34:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  wire [34:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  wire  _T_660; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@71350.4]
  wire  _T_662; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@71352.4]
  wire  _T_663; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@71353.4]
  wire [3:0] _T_664; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@71355.6]
  wire [46:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@71362.6]
  wire [46:0] _T_670; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@71362.6]
  wire [3:0] d_clr; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@71354.4]
  wire [46:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@71354.4]
  wire  _T_677; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@71372.4]
  wire  _T_680; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@71375.4]
  wire [3:0] _T_681; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@71377.6]
  wire  _T_683; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@71379.6]
  wire  _T_684; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@71380.6]
  wire  _T_685; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@71381.6]
  wire  _T_686; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@71382.6]
  wire  _T_687; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@71383.6]
  wire  _T_688; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@71384.6]
  wire  _T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71386.6]
  wire  _T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71387.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71269.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71270.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@71279.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire  _T_693; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  wire  _T_695; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  wire  _T_696; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@71396.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire  _T_697; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  wire  _T_698; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  wire  _T_699; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@71399.6]
  wire  _T_700; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@71400.6]
  wire  _T_701; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@71401.6]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71403.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71404.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71280.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71281.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@71290.4]
  wire [3:0] _GEN_69; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@71409.6]
  wire  _T_705; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@71409.6]
  wire  _T_707; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@71411.6]
  wire  _T_708; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@71412.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71414.6]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71415.6]
  wire  _T_713; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@71422.4]
  wire  _T_714; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@71423.4]
  wire  _T_716; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@71425.4]
  wire  _T_718; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@71427.4]
  wire  _T_719; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@71429.6]
  wire  _T_720; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@71430.6]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71432.6]
  wire  _T_723; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71433.6]
  wire  _T_724; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@71439.4]
  wire  _T_725; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@71440.4]
  wire  _T_726; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@71441.4]
  wire  _T_727; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@71442.4]
  wire  _T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71444.4]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71445.4]
  wire [3:0] _T_731; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@71450.4]
  wire [3:0] _T_732; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@71451.4]
  wire [3:0] _T_733; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@71452.4]
  wire [15:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71265.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71266.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@71327.6]
  wire [15:0] _T_734; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@71454.4]
  wire [15:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71344.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71345.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@71363.6]
  wire [15:0] _T_735; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@71455.4]
  wire [15:0] _T_736; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@71456.4]
  wire [15:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71267.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71268.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@71330.6]
  wire [15:0] _T_737; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@71458.4]
  wire [15:0] _T_739; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@71460.4]
  reg [31:0] _T_740; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@71462.4]
  wire  _T_741; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@71465.4]
  wire  _T_742; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@71466.4]
  wire  _T_743; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@71467.4]
  wire  _T_744; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@71468.4]
  wire  _T_745; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@71469.4]
  wire  _T_746; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@71470.4]
  wire  _T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71472.4]
  wire  _T_749; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71473.4]
  wire [31:0] _T_751; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@71479.4]
  wire  _T_754; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@71483.4]
  wire  _GEN_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70273.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70345.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70428.10]
  wire  _GEN_110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70487.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70538.10]
  wire  _GEN_126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70588.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70636.10]
  wire  _GEN_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70684.10]
  wire  _GEN_152; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70762.10]
  wire  _GEN_158; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70803.10]
  wire  _GEN_164; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70861.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70929.10]
  wire  _GEN_172; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70965.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71000.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@71463.4]
    .out(plusarg_reader_out)
  );
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@70199.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@70201.6]
  assign _GEN_56 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@70202.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@70202.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@70203.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@70206.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@70208.6]
  assign _T_24 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@70209.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@70212.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70214.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70215.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70217.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70218.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@70221.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70222.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70223.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70224.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70225.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70226.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70227.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70228.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70229.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70230.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@70231.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@70232.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@70233.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@70236.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@70259.6]
  assign _T_72 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@70262.8]
  assign _T_73 = {1'b0,$signed(_T_72)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@70263.8]
  assign _T_75 = $signed(_T_73) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@70265.8]
  assign _T_76 = $signed(_T_75) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@70266.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70271.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70292.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70293.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70299.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70300.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@70305.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70307.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70308.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@70313.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@70314.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70316.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70317.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@70322.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70324.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70325.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@70331.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@70385.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70387.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70388.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@70411.6]
  assign _T_152 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@70414.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@70422.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70425.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70426.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@70445.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70447.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70448.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@70453.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70455.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70456.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@70470.6]
  assign _T_212 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@70521.6]
  assign _T_237 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@70563.8]
  assign _T_238 = io_in_a_bits_mask & _T_237; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@70564.8]
  assign _T_239 = _T_238 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@70565.8]
  assign _T_241 = _T_239 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70567.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70568.8]
  assign _T_243 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@70574.6]
  assign _T_261 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@70605.8]
  assign _T_263 = _T_261 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70607.8]
  assign _T_264 = ~_T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70608.8]
  assign _T_269 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@70622.6]
  assign _T_287 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@70653.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70655.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70656.8]
  assign _T_295 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@70670.6]
  assign _T_313 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@70701.8]
  assign _T_315 = _T_313 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70703.8]
  assign _T_316 = ~_T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70704.8]
  assign _T_325 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@70728.6]
  assign _T_327 = _T_325 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70730.6]
  assign _T_328 = ~_T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70731.6]
  assign _T_339 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@70748.6]
  assign _T_343 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@70757.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70759.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70760.8]
  assign _T_351 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@70773.8]
  assign _T_353 = _T_351 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70775.8]
  assign _T_354 = ~_T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70776.8]
  assign _T_355 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@70781.8]
  assign _T_357 = _T_355 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70783.8]
  assign _T_358 = ~_T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70784.8]
  assign _T_359 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@70790.6]
  assign _T_387 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@70848.6]
  assign _T_407 = _T_355 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@70889.8]
  assign _T_409 = _T_407 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70891.8]
  assign _T_410 = ~_T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70892.8]
  assign _T_416 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@70907.6]
  assign _T_433 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@70942.6]
  assign _T_451 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@70978.6]
  assign _T_483 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@71044.4]
  assign _T_490 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@71051.4]
  assign _T_494 = _T_492 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71055.4]
  assign _T_495 = _T_492 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71056.4]
  assign _T_508 = ~_T_495; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@71072.4]
  assign _T_509 = io_in_a_valid & _T_508; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@71073.4]
  assign _T_510 = io_in_a_bits_opcode == _T_503; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@71075.6]
  assign _T_512 = _T_510 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71077.6]
  assign _T_513 = ~_T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71078.6]
  assign _T_514 = io_in_a_bits_param == _T_504; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@71083.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71085.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71086.6]
  assign _T_518 = io_in_a_bits_size == _T_505; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@71091.6]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71093.6]
  assign _T_521 = ~_T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71094.6]
  assign _T_522 = io_in_a_bits_source == _T_506; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@71099.6]
  assign _T_524 = _T_522 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71101.6]
  assign _T_525 = ~_T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71102.6]
  assign _T_526 = io_in_a_bits_address == _T_507; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@71107.6]
  assign _T_528 = _T_526 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71109.6]
  assign _T_529 = ~_T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71110.6]
  assign _T_531 = _T_483 & _T_495; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@71117.4]
  assign _T_532 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@71125.4]
  assign _T_534 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@71127.4]
  assign _T_536 = ~_T_534[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@71129.4]
  assign _T_542 = _T_540 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71135.4]
  assign _T_543 = _T_540 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71136.4]
  assign _T_557 = ~_T_543; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@71153.4]
  assign _T_558 = io_in_d_valid & _T_557; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@71154.4]
  assign _T_559 = io_in_d_bits_opcode == _T_551; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@71156.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71158.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71159.6]
  assign _T_567 = io_in_d_bits_size == _T_553; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@71172.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71174.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71175.6]
  assign _T_571 = io_in_d_bits_source == _T_554; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@71180.6]
  assign _T_573 = _T_571 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71182.6]
  assign _T_574 = ~_T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71183.6]
  assign _T_579 = io_in_d_bits_denied == _T_556; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@71196.6]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71198.6]
  assign _T_582 = ~_T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71199.6]
  assign _T_584 = _T_532 & _T_543; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@71206.4]
  assign _T_596 = _T_594 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71229.4]
  assign a_first = _T_594 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71230.4]
  assign _T_614 = _T_612 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@71251.4]
  assign d_first = _T_612 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@71252.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@71271.4]
  assign _T_622 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@71271.4]
  assign _T_623 = inflight_opcodes >> _T_622; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@71272.4]
  assign _T_627 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@71276.4]
  assign _T_628 = _T_623 & _T_627; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@71277.4]
  assign _T_629 = {{1'd0}, _T_628[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@71278.4]
  assign _T_631 = inflight_sizes >> _T_622; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@71283.4]
  assign _T_636 = _T_631 & _T_627; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@71288.4]
  assign _T_637 = {{1'd0}, _T_636[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@71289.4]
  assign _T_641 = _T_483 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@71314.4]
  assign _T_643 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@71317.6]
  assign _T_644 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@71319.6]
  assign _T_645 = _T_644 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@71320.6]
  assign _T_646 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@71322.6]
  assign _T_647 = _T_646 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@71323.6]
  assign _GEN_61 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@71325.6]
  assign _T_648 = {{1'd0}, _GEN_61}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@71325.6]
  assign a_opcodes_set_interm = _T_641 ? _T_645 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  assign _GEN_62 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@71326.6]
  assign _T_649 = _GEN_62 << _T_648; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@71326.6]
  assign a_sizes_set_interm = _T_641 ? _T_647 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  assign _GEN_64 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@71329.6]
  assign _T_651 = _GEN_64 << _T_648; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@71329.6]
  assign _T_652 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@71331.6]
  assign _T_654 = ~_T_652[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@71333.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71335.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71336.6]
  assign a_set = _T_641 ? _T_643 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  assign _GEN_18 = _T_641 ? _T_649 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  assign _GEN_19 = _T_641 ? _T_651 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@71316.4]
  assign _T_660 = _T_532 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@71350.4]
  assign _T_662 = ~_T_339; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@71352.4]
  assign _T_663 = _T_660 & _T_662; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@71353.4]
  assign _T_664 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@71355.6]
  assign _GEN_66 = {{31'd0}, _T_627}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@71362.6]
  assign _T_670 = _GEN_66 << _T_622; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@71362.6]
  assign d_clr = _T_663 ? _T_664 : 4'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@71354.4]
  assign _GEN_21 = _T_663 ? _T_670 : 47'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@71354.4]
  assign _T_677 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@71372.4]
  assign _T_680 = _T_677 & _T_662; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@71375.4]
  assign _T_681 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@71377.6]
  assign _T_683 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@71379.6]
  assign _T_684 = io_in_a_valid & _T_683; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@71380.6]
  assign _T_685 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@71381.6]
  assign _T_686 = _T_684 & _T_685; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@71382.6]
  assign _T_687 = _T_686 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@71383.6]
  assign _T_688 = _T_681[0] | _T_687; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@71384.6]
  assign _T_690 = _T_688 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71386.6]
  assign _T_691 = ~_T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71387.6]
  assign a_opcode_lookup = _T_629[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71269.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71270.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@71279.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _T_693 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@71393.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  assign _T_695 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@71395.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@71396.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _T_697 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@71397.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  assign _T_698 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@71398.6]
  assign _T_699 = _T_697 | _T_698; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@71399.6]
  assign _T_700 = io_in_a_valid & _T_699; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@71400.6]
  assign _T_701 = _T_696 | _T_700; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@71401.6]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71403.6]
  assign _T_704 = ~_T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71404.6]
  assign a_size_lookup = _T_637[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71280.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71281.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@71290.4]
  assign _GEN_69 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@71409.6]
  assign _T_705 = _GEN_69 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@71409.6]
  assign _T_707 = io_in_a_valid & _T_685; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@71411.6]
  assign _T_708 = _T_705 | _T_707; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@71412.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71414.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71415.6]
  assign _T_713 = _T_677 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@71422.4]
  assign _T_714 = _T_713 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@71423.4]
  assign _T_716 = _T_714 & _T_683; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@71425.4]
  assign _T_718 = _T_716 & _T_662; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@71427.4]
  assign _T_719 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@71429.6]
  assign _T_720 = _T_719 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@71430.6]
  assign _T_722 = _T_720 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71432.6]
  assign _T_723 = ~_T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71433.6]
  assign _T_724 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@71439.4]
  assign _T_725 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@71440.4]
  assign _T_726 = ~_T_725; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@71441.4]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@71442.4]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71444.4]
  assign _T_730 = ~_T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71445.4]
  assign _T_731 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@71450.4]
  assign _T_732 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@71451.4]
  assign _T_733 = _T_731 & _T_732; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@71452.4]
  assign a_opcodes_set = _GEN_18[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71265.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71266.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@71327.6]
  assign _T_734 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@71454.4]
  assign d_opcodes_clr = _GEN_21[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71344.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71345.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@71363.6]
  assign _T_735 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@71455.4]
  assign _T_736 = _T_734 & _T_735; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@71456.4]
  assign a_sizes_set = _GEN_19[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@71267.4 :freechips.rocketchip.system.DefaultRV32Config.fir@71268.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@71330.6]
  assign _T_737 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@71458.4]
  assign _T_739 = _T_737 & _T_735; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@71460.4]
  assign _T_741 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@71465.4]
  assign _T_742 = ~_T_741; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@71466.4]
  assign _T_743 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@71467.4]
  assign _T_744 = _T_742 | _T_743; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@71468.4]
  assign _T_745 = _T_740 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@71469.4]
  assign _T_746 = _T_744 | _T_745; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@71470.4]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71472.4]
  assign _T_749 = ~_T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71473.4]
  assign _T_751 = _T_740 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@71479.4]
  assign _T_754 = _T_483 | _T_532; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@71483.4]
  assign _GEN_70 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70273.10]
  assign _GEN_84 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70345.10]
  assign _GEN_100 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70428.10]
  assign _GEN_110 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70487.10]
  assign _GEN_118 = io_in_a_valid & _T_212; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70538.10]
  assign _GEN_126 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70588.10]
  assign _GEN_134 = io_in_a_valid & _T_269; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70636.10]
  assign _GEN_142 = io_in_a_valid & _T_295; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70684.10]
  assign _GEN_152 = io_in_d_valid & _T_339; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70762.10]
  assign _GEN_158 = io_in_d_valid & _T_359; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70803.10]
  assign _GEN_164 = io_in_d_valid & _T_387; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70861.10]
  assign _GEN_170 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70929.10]
  assign _GEN_172 = io_in_d_valid & _T_433; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70965.10]
  assign _GEN_174 = io_in_d_valid & _T_451; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71000.10]
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
  _T_492 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_503 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_504 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_505 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_506 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  _T_507 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_540 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_551 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_553 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  _T_554 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_556 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_opcodes = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  inflight_sizes = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  _T_594 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  _T_612 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  _T_740 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_492 <= 4'h0;
    end else if (_T_483) begin
      if (_T_495) begin
        if (_T_490) begin
          _T_492 <= _T_16[5:2];
        end else begin
          _T_492 <= 4'h0;
        end
      end else begin
        _T_492 <= _T_494;
      end
    end
    if (_T_531) begin
      _T_503 <= io_in_a_bits_opcode;
    end
    if (_T_531) begin
      _T_504 <= io_in_a_bits_param;
    end
    if (_T_531) begin
      _T_505 <= io_in_a_bits_size;
    end
    if (_T_531) begin
      _T_506 <= io_in_a_bits_source;
    end
    if (_T_531) begin
      _T_507 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_540 <= 4'h0;
    end else if (_T_532) begin
      if (_T_543) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_540 <= _T_536[5:2];
        end else begin
          _T_540 <= 4'h0;
        end
      end else begin
        _T_540 <= _T_542;
      end
    end
    if (_T_584) begin
      _T_551 <= io_in_d_bits_opcode;
    end
    if (_T_584) begin
      _T_553 <= io_in_d_bits_size;
    end
    if (_T_584) begin
      _T_554 <= io_in_d_bits_source;
    end
    if (_T_584) begin
      _T_556 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 4'h0;
    end else begin
      inflight <= _T_733;
    end
    if (reset) begin
      inflight_opcodes <= 16'h0;
    end else begin
      inflight_opcodes <= _T_736;
    end
    if (reset) begin
      inflight_sizes <= 16'h0;
    end else begin
      inflight_sizes <= _T_739;
    end
    if (reset) begin
      _T_594 <= 4'h0;
    end else if (_T_483) begin
      if (a_first) begin
        if (_T_490) begin
          _T_594 <= _T_16[5:2];
        end else begin
          _T_594 <= 4'h0;
        end
      end else begin
        _T_594 <= _T_596;
      end
    end
    if (reset) begin
      _T_612 <= 4'h0;
    end else if (_T_532) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_612 <= _T_536[5:2];
        end else begin
          _T_612 <= 4'h0;
        end
      end else begin
        _T_612 <= _T_614;
      end
    end
    if (reset) begin
      _T_740 <= 32'h0;
    end else if (_T_754) begin
      _T_740 <= 32'h0;
    end else begin
      _T_740 <= _T_751;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70280.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70281.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70295.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70296.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70302.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70303.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70310.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70311.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70319.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70320.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70327.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70328.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70345.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70346.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70352.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70353.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70367.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70368.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70374.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70375.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70382.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70383.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70390.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70391.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70399.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70400.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70407.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70408.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70428.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70429.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70466.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70467.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70487.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70488.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70501.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70502.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70509.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70510.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70517.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70518.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70538.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70539.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70552.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70553.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70560.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70561.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70570.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70571.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70588.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70589.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70602.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70603.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70610.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70611.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70618.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70619.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70650.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70651.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70658.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70659.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70666.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70667.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70684.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70685.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70698.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70699.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70706.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70707.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70714.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70715.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70722.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@70723.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70733.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70734.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70762.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70763.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70778.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70779.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70786.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70787.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70803.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70804.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70811.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70812.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70835.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70836.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70861.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70862.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70869.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70870.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70929.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70930.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@70966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71000.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71001.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71080.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71081.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71088.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71089.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71096.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71097.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71104.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71105.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71112.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71113.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71161.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71162.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71177.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71178.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71185.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71186.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71201.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71202.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71338.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71339.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71389.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71390.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71406.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71407.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71417.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71418.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71435.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71436.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71447.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@71448.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_749) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at MemoryBus.scala:46:50)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71475.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_749) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@71476.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
