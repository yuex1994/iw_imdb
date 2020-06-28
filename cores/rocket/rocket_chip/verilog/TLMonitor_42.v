module TLMonitor_42( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101650.2]
  input          clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101651.4]
  input          reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101652.4]
  input          io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [2:0]   io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [127:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [3:0]   io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [2:0]   io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [1:0]   io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input  [1:0]   io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
  input          io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@101653.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@102917.4]
  wire [127:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@101672.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@101673.6]
  wire [128:0] _T_48; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@101710.6]
  wire  _T_56; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@101722.6]
  wire [128:0] _T_64; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@101731.8]
  wire  _T_65; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@101732.8]
  wire  _T_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101736.8]
  wire  _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101737.8]
  wire  _T_73; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101744.8]
  wire  _T_82; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101765.8]
  wire  _T_83; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101766.8]
  wire [3:0] _T_88; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@101779.8]
  wire  _T_89; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@101780.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101782.8]
  wire  _T_92; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101783.8]
  wire  _T_97; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@101797.6]
  wire  _T_142; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@101880.6]
  wire  _T_167; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@101922.8]
  wire  _T_169; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101924.8]
  wire  _T_170; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101925.8]
  wire  _T_175; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@101939.6]
  wire  _T_204; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@101990.6]
  wire  _T_235; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@102043.6]
  wire  _T_261; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@102091.6]
  wire  _T_287; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@102139.6]
  wire  _T_320; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@102200.6]
  wire  _T_322; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102202.6]
  wire  _T_323; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102203.6]
  wire  _T_324; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@102208.6]
  wire  _T_326; // @[Monitor.scala 303:31:freechips.rocketchip.system.DefaultRV32Config.fir@102212.6]
  wire  _T_327; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@102213.6]
  wire  _T_329; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102216.8]
  wire  _T_330; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102217.8]
  wire  _T_331; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@102222.8]
  wire  _T_333; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102224.8]
  wire  _T_334; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102225.8]
  wire  _T_335; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@102230.8]
  wire  _T_337; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102232.8]
  wire  _T_338; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102233.8]
  wire  _T_339; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@102238.8]
  wire  _T_341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102240.8]
  wire  _T_342; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102241.8]
  wire  _T_343; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@102246.8]
  wire  _T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102248.8]
  wire  _T_346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102249.8]
  wire  _T_347; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@102255.6]
  wire  _T_352; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102265.8]
  wire  _T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102266.8]
  wire  _T_358; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@102279.8]
  wire  _T_360; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102281.8]
  wire  _T_361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102282.8]
  wire  _T_362; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@102287.8]
  wire  _T_364; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102289.8]
  wire  _T_365; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102290.8]
  wire  _T_375; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@102313.6]
  wire  _T_395; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@102354.8]
  wire  _T_397; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102356.8]
  wire  _T_398; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102357.8]
  wire  _T_404; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@102372.6]
  wire  _T_421; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@102407.6]
  wire  _T_439; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@102443.6]
  wire  _T_471; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@102509.4]
  reg  _T_480; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@102518.4]
  wire  _T_482; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102520.4]
  wire  _T_483; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102521.4]
  reg [2:0] _T_491; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@102532.4]
  reg [127:0] _T_495; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@102536.4]
  wire  _T_496; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@102537.4]
  wire  _T_497; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@102538.4]
  wire  _T_498; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@102540.6]
  wire  _T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102542.6]
  wire  _T_501; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102543.6]
  wire  _T_514; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@102572.6]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102574.6]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102575.6]
  wire  _T_519; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@102582.4]
  wire  _T_520; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@102590.4]
  reg  _T_528; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@102598.4]
  wire  _T_530; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102600.4]
  wire  _T_531; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102601.4]
  reg [2:0] _T_539; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@102612.4]
  reg [1:0] _T_540; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@102613.4]
  reg [1:0] _T_541; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@102614.4]
  reg  _T_542; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@102615.4]
  reg  _T_543; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@102616.4]
  reg  _T_544; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@102617.4]
  wire  _T_545; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@102618.4]
  wire  _T_546; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@102619.4]
  wire  _T_547; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@102621.6]
  wire  _T_549; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102623.6]
  wire  _T_550; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102624.6]
  wire  _T_551; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@102629.6]
  wire  _T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102631.6]
  wire  _T_554; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102632.6]
  wire  _T_555; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@102637.6]
  wire  _T_557; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102639.6]
  wire  _T_558; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102640.6]
  wire  _T_559; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@102645.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102647.6]
  wire  _T_562; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102648.6]
  wire  _T_563; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@102653.6]
  wire  _T_565; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102655.6]
  wire  _T_566; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102656.6]
  wire  _T_567; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@102661.6]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102663.6]
  wire  _T_570; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102664.6]
  wire  _T_572; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@102671.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@102680.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@102681.4]
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@102682.4]
  reg  _T_582; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@102692.4]
  wire  _T_584; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102694.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102695.4]
  reg  _T_600; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@102714.4]
  wire  _T_602; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102716.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102717.4]
  wire [2:0] _GEN_56; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@102736.4]
  wire [3:0] _T_610; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@102736.4]
  wire [3:0] _T_611; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@102737.4]
  wire [15:0] _T_615; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@102741.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@102742.4]
  wire [15:0] _T_616; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@102742.4]
  wire [15:0] _T_617; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@102743.4]
  wire [3:0] _T_619; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@102748.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@102753.4]
  wire [15:0] _T_624; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@102753.4]
  wire [15:0] _T_625; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@102754.4]
  wire  _T_629; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@102779.4]
  wire [3:0] _T_632; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@102784.6]
  wire [3:0] _T_633; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@102785.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  wire [18:0] _T_637; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@102791.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  wire [17:0] _T_639; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@102794.6]
  wire  _T_642; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@102798.6]
  wire  _T_644; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102800.6]
  wire  _T_645; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102801.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  wire  _T_648; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@102815.4]
  wire  _T_650; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@102817.4]
  wire  _T_651; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@102818.4]
  wire [1:0] _T_652; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@102820.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@102827.6]
  wire [30:0] _T_658; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@102827.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@102819.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@102819.4]
  wire  _T_665; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@102837.4]
  wire  _T_668; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@102840.4]
  wire  _T_669; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@102842.6]
  wire  _T_672; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@102845.6]
  wire  _T_673; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@102846.6]
  wire  _T_674; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@102847.6]
  wire  _T_675; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@102848.6]
  wire  _T_676; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@102849.6]
  wire  _T_678; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102851.6]
  wire  _T_679; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102852.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102734.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102735.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@102744.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire  _T_681; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  wire  _T_683; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  wire  _T_684; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@102861.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire  _T_685; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  wire  _T_686; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  wire  _T_687; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@102864.6]
  wire  _T_688; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@102865.6]
  wire  _T_689; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@102866.6]
  wire  _T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102868.6]
  wire  _T_692; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102869.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102745.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102746.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@102755.4]
  wire [3:0] _GEN_66; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@102874.6]
  wire  _T_693; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@102874.6]
  wire  _T_695; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@102876.6]
  wire  _T_696; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@102877.6]
  wire  _T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102879.6]
  wire  _T_699; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102880.6]
  wire  _T_701; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@102887.4]
  wire  _T_702; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@102888.4]
  wire  _T_704; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@102890.4]
  wire  _T_706; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@102892.4]
  wire  _T_707; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@102894.6]
  wire  _T_708; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@102895.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102897.6]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102898.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102728.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102729.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@102783.6]
  wire  _T_712; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@102904.4]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102807.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102808.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@102821.6]
  wire  _T_713; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@102905.4]
  wire  _T_714; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@102906.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102730.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102731.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@102792.6]
  wire [3:0] _T_715; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@102908.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102809.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102810.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@102828.6]
  wire [3:0] _T_716; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@102909.4]
  wire [3:0] _T_717; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@102910.4]
  wire [3:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102732.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102733.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@102795.6]
  wire [3:0] _T_718; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@102912.4]
  wire [3:0] _T_720; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@102914.4]
  reg [31:0] _T_721; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@102916.4]
  wire  _T_722; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@102919.4]
  wire  _T_723; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@102920.4]
  wire  _T_724; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@102921.4]
  wire  _T_725; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@102922.4]
  wire  _T_726; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@102923.4]
  wire  _T_727; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@102924.4]
  wire  _T_729; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102926.4]
  wire  _T_730; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102927.4]
  wire [31:0] _T_732; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@102933.4]
  wire  _T_735; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@102937.4]
  wire  _GEN_67; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101739.10]
  wire  _GEN_75; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101814.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101897.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101956.10]
  wire  _GEN_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102007.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102057.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102105.10]
  wire  _GEN_113; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102156.10]
  wire  _GEN_119; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102219.10]
  wire  _GEN_129; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102261.10]
  wire  _GEN_141; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102319.10]
  wire  _GEN_153; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102378.10]
  wire  _GEN_159; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102413.10]
  wire  _GEN_165; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102449.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@102917.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 128'h3; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@101672.6]
  assign _T_11 = _T_10 == 128'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@101673.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@101710.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@101722.6]
  assign _T_64 = $signed(_T_48) & -129'sh100000000000000000000000000000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@101731.8]
  assign _T_65 = $signed(_T_64) == 129'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@101732.8]
  assign _T_69 = _T_65 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101736.8]
  assign _T_70 = ~_T_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101737.8]
  assign _T_73 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101744.8]
  assign _T_82 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101765.8]
  assign _T_83 = ~_T_82; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101766.8]
  assign _T_88 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@101779.8]
  assign _T_89 = _T_88 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@101780.8]
  assign _T_91 = _T_89 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101782.8]
  assign _T_92 = ~_T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101783.8]
  assign _T_97 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@101797.6]
  assign _T_142 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@101880.6]
  assign _T_167 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@101922.8]
  assign _T_169 = _T_167 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101924.8]
  assign _T_170 = ~_T_169; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101925.8]
  assign _T_175 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@101939.6]
  assign _T_204 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@101990.6]
  assign _T_235 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@102043.6]
  assign _T_261 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@102091.6]
  assign _T_287 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@102139.6]
  assign _T_320 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@102200.6]
  assign _T_322 = _T_320 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102202.6]
  assign _T_323 = ~_T_322; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102203.6]
  assign _T_324 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@102208.6]
  assign _T_326 = io_in_d_bits_sink < 1'h1; // @[Monitor.scala 303:31:freechips.rocketchip.system.DefaultRV32Config.fir@102212.6]
  assign _T_327 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@102213.6]
  assign _T_329 = _T_324 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102216.8]
  assign _T_330 = ~_T_329; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102217.8]
  assign _T_331 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@102222.8]
  assign _T_333 = _T_331 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102224.8]
  assign _T_334 = ~_T_333; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102225.8]
  assign _T_335 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@102230.8]
  assign _T_337 = _T_335 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102232.8]
  assign _T_338 = ~_T_337; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102233.8]
  assign _T_339 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@102238.8]
  assign _T_341 = _T_339 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102240.8]
  assign _T_342 = ~_T_341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102241.8]
  assign _T_343 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@102246.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102248.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102249.8]
  assign _T_347 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@102255.6]
  assign _T_352 = _T_326 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102265.8]
  assign _T_353 = ~_T_352; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102266.8]
  assign _T_358 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@102279.8]
  assign _T_360 = _T_358 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102281.8]
  assign _T_361 = ~_T_360; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102282.8]
  assign _T_362 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@102287.8]
  assign _T_364 = _T_362 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102289.8]
  assign _T_365 = ~_T_364; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102290.8]
  assign _T_375 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@102313.6]
  assign _T_395 = _T_343 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@102354.8]
  assign _T_397 = _T_395 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102356.8]
  assign _T_398 = ~_T_397; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102357.8]
  assign _T_404 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@102372.6]
  assign _T_421 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@102407.6]
  assign _T_439 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@102443.6]
  assign _T_471 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@102509.4]
  assign _T_482 = _T_480 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102520.4]
  assign _T_483 = ~_T_480; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102521.4]
  assign _T_496 = ~_T_483; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@102537.4]
  assign _T_497 = io_in_a_valid & _T_496; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@102538.4]
  assign _T_498 = io_in_a_bits_opcode == _T_491; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@102540.6]
  assign _T_500 = _T_498 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102542.6]
  assign _T_501 = ~_T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102543.6]
  assign _T_514 = io_in_a_bits_address == _T_495; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@102572.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102574.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102575.6]
  assign _T_519 = _T_471 & _T_483; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@102582.4]
  assign _T_520 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@102590.4]
  assign _T_530 = _T_528 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102600.4]
  assign _T_531 = ~_T_528; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102601.4]
  assign _T_545 = ~_T_531; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@102618.4]
  assign _T_546 = io_in_d_valid & _T_545; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@102619.4]
  assign _T_547 = io_in_d_bits_opcode == _T_539; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@102621.6]
  assign _T_549 = _T_547 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102623.6]
  assign _T_550 = ~_T_549; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102624.6]
  assign _T_551 = io_in_d_bits_param == _T_540; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@102629.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102631.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102632.6]
  assign _T_555 = io_in_d_bits_size == _T_541; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@102637.6]
  assign _T_557 = _T_555 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102639.6]
  assign _T_558 = ~_T_557; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102640.6]
  assign _T_559 = io_in_d_bits_source == _T_542; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@102645.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102647.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102648.6]
  assign _T_563 = io_in_d_bits_sink == _T_543; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@102653.6]
  assign _T_565 = _T_563 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102655.6]
  assign _T_566 = ~_T_565; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102656.6]
  assign _T_567 = io_in_d_bits_denied == _T_544; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@102661.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102663.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102664.6]
  assign _T_572 = _T_520 & _T_531; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@102671.4]
  assign _T_584 = _T_582 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102694.4]
  assign a_first = ~_T_582; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102695.4]
  assign _T_602 = _T_600 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@102716.4]
  assign d_first = ~_T_600; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@102717.4]
  assign _GEN_56 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@102736.4]
  assign _T_610 = {{1'd0}, _GEN_56}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@102736.4]
  assign _T_611 = inflight_opcodes >> _T_610; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@102737.4]
  assign _T_615 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@102741.4]
  assign _GEN_57 = {{12'd0}, _T_611}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@102742.4]
  assign _T_616 = _GEN_57 & _T_615; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@102742.4]
  assign _T_617 = {{1'd0}, _T_616[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@102743.4]
  assign _T_619 = inflight_sizes >> _T_610; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@102748.4]
  assign _GEN_60 = {{12'd0}, _T_619}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@102753.4]
  assign _T_624 = _GEN_60 & _T_615; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@102753.4]
  assign _T_625 = {{1'd0}, _T_624[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@102754.4]
  assign _T_629 = _T_471 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@102779.4]
  assign _T_632 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@102784.6]
  assign _T_633 = _T_632 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@102785.6]
  assign a_opcodes_set_interm = _T_629 ? _T_633 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  assign _T_637 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@102791.6]
  assign a_sizes_set_interm = _T_629 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  assign _T_639 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@102794.6]
  assign _T_642 = ~inflight; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@102798.6]
  assign _T_644 = _T_642 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102800.6]
  assign _T_645 = ~_T_644; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102801.6]
  assign _GEN_15 = _T_629 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  assign _GEN_18 = _T_629 ? _T_637 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  assign _GEN_19 = _T_629 ? _T_639 : 18'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@102781.4]
  assign _T_648 = _T_520 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@102815.4]
  assign _T_650 = ~_T_327; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@102817.4]
  assign _T_651 = _T_648 & _T_650; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@102818.4]
  assign _T_652 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@102820.6]
  assign _GEN_63 = {{15'd0}, _T_615}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@102827.6]
  assign _T_658 = _GEN_63 << _T_610; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@102827.6]
  assign _GEN_20 = _T_651 ? _T_652 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@102819.4]
  assign _GEN_21 = _T_651 ? _T_658 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@102819.4]
  assign _T_665 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@102837.4]
  assign _T_668 = _T_665 & _T_650; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@102840.4]
  assign _T_669 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@102842.6]
  assign _T_672 = io_in_a_valid & _T_324; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@102845.6]
  assign _T_673 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@102846.6]
  assign _T_674 = _T_672 & _T_673; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@102847.6]
  assign _T_675 = _T_674 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@102848.6]
  assign _T_676 = _T_669 | _T_675; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@102849.6]
  assign _T_678 = _T_676 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102851.6]
  assign _T_679 = ~_T_678; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102852.6]
  assign a_opcode_lookup = _T_617[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102734.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102735.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@102744.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _T_681 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@102858.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  assign _T_683 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@102860.6]
  assign _T_684 = _T_681 | _T_683; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@102861.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _T_685 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@102862.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  assign _T_686 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@102863.6]
  assign _T_687 = _T_685 | _T_686; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@102864.6]
  assign _T_688 = io_in_a_valid & _T_687; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@102865.6]
  assign _T_689 = _T_684 | _T_688; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@102866.6]
  assign _T_691 = _T_689 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102868.6]
  assign _T_692 = ~_T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102869.6]
  assign a_size_lookup = _T_625[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102745.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102746.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@102755.4]
  assign _GEN_66 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@102874.6]
  assign _T_693 = _GEN_66 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@102874.6]
  assign _T_695 = io_in_a_valid & _T_673; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@102876.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@102877.6]
  assign _T_698 = _T_696 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102879.6]
  assign _T_699 = ~_T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102880.6]
  assign _T_701 = _T_665 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@102887.4]
  assign _T_702 = _T_701 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@102888.4]
  assign _T_704 = _T_702 & _T_324; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@102890.4]
  assign _T_706 = _T_704 & _T_650; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@102892.4]
  assign _T_707 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@102894.6]
  assign _T_708 = _T_707 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@102895.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102897.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102898.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102728.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102729.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@102783.6]
  assign _T_712 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@102904.4]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102807.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102808.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@102821.6]
  assign _T_713 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@102905.4]
  assign _T_714 = _T_712 & _T_713; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@102906.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102730.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102731.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@102792.6]
  assign _T_715 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@102908.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102809.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102810.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@102828.6]
  assign _T_716 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@102909.4]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@102910.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102732.4 :freechips.rocketchip.system.DefaultRV32Config.fir@102733.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@102795.6]
  assign _T_718 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@102912.4]
  assign _T_720 = _T_718 & _T_716; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@102914.4]
  assign _T_722 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@102919.4]
  assign _T_723 = ~_T_722; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@102920.4]
  assign _T_724 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@102921.4]
  assign _T_725 = _T_723 | _T_724; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@102922.4]
  assign _T_726 = _T_721 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@102923.4]
  assign _T_727 = _T_725 | _T_726; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@102924.4]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102926.4]
  assign _T_730 = ~_T_729; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102927.4]
  assign _T_732 = _T_721 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@102933.4]
  assign _T_735 = _T_471 | _T_520; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@102937.4]
  assign _GEN_67 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101739.10]
  assign _GEN_75 = io_in_a_valid & _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101814.10]
  assign _GEN_85 = io_in_a_valid & _T_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101897.10]
  assign _GEN_91 = io_in_a_valid & _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101956.10]
  assign _GEN_97 = io_in_a_valid & _T_204; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102007.10]
  assign _GEN_101 = io_in_a_valid & _T_235; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102057.10]
  assign _GEN_107 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102105.10]
  assign _GEN_113 = io_in_a_valid & _T_287; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102156.10]
  assign _GEN_119 = io_in_d_valid & _T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102219.10]
  assign _GEN_129 = io_in_d_valid & _T_347; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102261.10]
  assign _GEN_141 = io_in_d_valid & _T_375; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102319.10]
  assign _GEN_153 = io_in_d_valid & _T_404; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102378.10]
  assign _GEN_159 = io_in_d_valid & _T_421; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102413.10]
  assign _GEN_165 = io_in_d_valid & _T_439; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102449.10]
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
  _T_480 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_491 = _RAND_1[2:0];
  _RAND_2 = {4{`RANDOM}};
  _T_495 = _RAND_2[127:0];
  _RAND_3 = {1{`RANDOM}};
  _T_528 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_539 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  _T_540 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  _T_541 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  _T_542 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_543 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_544 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight_opcodes = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_sizes = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  _T_582 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_600 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_721 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_480 <= 1'h0;
    end else if (_T_471) begin
      if (_T_483) begin
        _T_480 <= 1'h0;
      end else begin
        _T_480 <= _T_482;
      end
    end
    if (_T_519) begin
      _T_491 <= io_in_a_bits_opcode;
    end
    if (_T_519) begin
      _T_495 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_528 <= 1'h0;
    end else if (_T_520) begin
      if (_T_531) begin
        _T_528 <= 1'h0;
      end else begin
        _T_528 <= _T_530;
      end
    end
    if (_T_572) begin
      _T_539 <= io_in_d_bits_opcode;
    end
    if (_T_572) begin
      _T_540 <= io_in_d_bits_param;
    end
    if (_T_572) begin
      _T_541 <= io_in_d_bits_size;
    end
    if (_T_572) begin
      _T_542 <= io_in_d_bits_source;
    end
    if (_T_572) begin
      _T_543 <= io_in_d_bits_sink;
    end
    if (_T_572) begin
      _T_544 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_714;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_717;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_720;
    end
    if (reset) begin
      _T_582 <= 1'h0;
    end else if (_T_471) begin
      if (a_first) begin
        _T_582 <= 1'h0;
      end else begin
        _T_582 <= _T_584;
      end
    end
    if (reset) begin
      _T_600 <= 1'h0;
    end else if (_T_520) begin
      if (d_first) begin
        _T_600 <= 1'h0;
      end else begin
        _T_600 <= _T_602;
      end
    end
    if (reset) begin
      _T_721 <= 32'h0;
    end else if (_T_735) begin
      _T_721 <= 32'h0;
    end else begin
      _T_721 <= _T_732;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101739.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101740.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101768.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101769.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_92) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_92) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101814.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101815.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101821.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101822.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101859.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101860.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_92) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101868.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_92) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101869.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101897.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101898.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101911.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101912.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101927.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101928.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101956.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101957.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101970.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101971.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101986.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@101987.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102007.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102008.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102021.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102022.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102087.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102088.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102105.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102106.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102119.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102120.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102135.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102136.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102156.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102157.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102170.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102171.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102186.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102187.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_323) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102205.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_323) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102206.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102219.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102220.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102227.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102228.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102235.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102236.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102243.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102244.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102251.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102252.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102261.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102262.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102268.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_353) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102269.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102276.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102277.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_361) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102284.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_361) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102285.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102292.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_365) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102293.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102300.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102301.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102319.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102320.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102326.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_353) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102327.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102334.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102335.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_361) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_361) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_365) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102359.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102360.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102378.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102379.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102386.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102387.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102394.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102395.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102413.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102414.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102421.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102422.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_398) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_497 & _T_501) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102545.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_497 & _T_501) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102546.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_497 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102577.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_497 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102578.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_550) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102626.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_550) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102627.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102634.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102635.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_558) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102642.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_558) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102643.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102650.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102651.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_566) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102658.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_566) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102659.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102666.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102667.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102803.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102804.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_679) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102854.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_679) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102855.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_692) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102871.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_692) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102872.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_699) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102882.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_699) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102883.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_706 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102900.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_706 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@102901.8]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102929.6]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@102930.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
