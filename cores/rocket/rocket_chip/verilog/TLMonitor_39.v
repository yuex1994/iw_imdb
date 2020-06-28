module TLMonitor_39( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95037.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95038.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95039.4]
  input        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [2:0] io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [8:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [3:0] io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [2:0] io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [1:0] io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input  [1:0] io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
  input        io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@95040.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@96295.4]
  wire [8:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@95059.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@95060.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@95097.6]
  wire  _T_56; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@95109.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@95115.8]
  wire  _T_62; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@95116.8]
  wire  _T_67; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95121.8]
  wire  _T_79; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95149.8]
  wire  _T_80; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95150.8]
  wire [3:0] _T_85; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@95163.8]
  wire  _T_86; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@95164.8]
  wire  _T_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95166.8]
  wire  _T_89; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95167.8]
  wire  _T_94; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@95181.6]
  wire  _T_136; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@95261.6]
  wire  _T_149; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95275.8]
  wire  _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95276.8]
  wire  _T_161; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@95303.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95305.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95306.8]
  wire  _T_169; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@95320.6]
  wire  _T_198; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@95371.6]
  wire  _T_229; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@95424.6]
  wire  _T_255; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@95472.6]
  wire  _T_281; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@95520.6]
  wire  _T_311; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@95578.6]
  wire  _T_313; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95580.6]
  wire  _T_314; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95581.6]
  wire  _T_318; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@95591.6]
  wire  _T_322; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@95600.8]
  wire  _T_324; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95602.8]
  wire  _T_325; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95603.8]
  wire  _T_326; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@95608.8]
  wire  _T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95610.8]
  wire  _T_329; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95611.8]
  wire  _T_330; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@95616.8]
  wire  _T_332; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95618.8]
  wire  _T_333; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95619.8]
  wire  _T_334; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@95624.8]
  wire  _T_336; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95626.8]
  wire  _T_337; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95627.8]
  wire  _T_338; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@95633.6]
  wire  _T_349; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@95657.8]
  wire  _T_351; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95659.8]
  wire  _T_352; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95660.8]
  wire  _T_353; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@95665.8]
  wire  _T_355; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95667.8]
  wire  _T_356; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95668.8]
  wire  _T_366; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@95691.6]
  wire  _T_386; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@95732.8]
  wire  _T_388; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95734.8]
  wire  _T_389; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95735.8]
  wire  _T_395; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@95750.6]
  wire  _T_412; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@95785.6]
  wire  _T_430; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@95821.6]
  wire  _T_462; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@95887.4]
  reg  _T_471; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@95896.4]
  wire  _T_473; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@95898.4]
  wire  _T_474; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@95899.4]
  reg [2:0] _T_482; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@95910.4]
  reg [8:0] _T_486; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@95914.4]
  wire  _T_487; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@95915.4]
  wire  _T_488; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@95916.4]
  wire  _T_489; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@95918.6]
  wire  _T_491; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95920.6]
  wire  _T_492; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95921.6]
  wire  _T_505; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@95950.6]
  wire  _T_507; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95952.6]
  wire  _T_508; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95953.6]
  wire  _T_510; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@95960.4]
  wire  _T_511; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@95968.4]
  reg  _T_519; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@95976.4]
  wire  _T_521; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@95978.4]
  wire  _T_522; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@95979.4]
  reg [2:0] _T_530; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@95990.4]
  reg [1:0] _T_531; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@95991.4]
  reg [1:0] _T_532; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@95992.4]
  reg  _T_534; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@95994.4]
  reg  _T_535; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@95995.4]
  wire  _T_536; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@95996.4]
  wire  _T_537; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@95997.4]
  wire  _T_538; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@95999.6]
  wire  _T_540; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96001.6]
  wire  _T_541; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96002.6]
  wire  _T_542; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@96007.6]
  wire  _T_544; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96009.6]
  wire  _T_545; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96010.6]
  wire  _T_546; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@96015.6]
  wire  _T_548; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96017.6]
  wire  _T_549; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96018.6]
  wire  _T_554; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@96031.6]
  wire  _T_556; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96033.6]
  wire  _T_557; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96034.6]
  wire  _T_558; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@96039.6]
  wire  _T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96041.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96042.6]
  wire  _T_563; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@96049.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@96058.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@96059.4]
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@96060.4]
  reg  _T_573; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@96070.4]
  wire  _T_575; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@96072.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@96073.4]
  reg  _T_591; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@96092.4]
  wire  _T_593; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@96094.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@96095.4]
  wire [15:0] _T_606; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@96119.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@96120.4]
  wire [15:0] _T_607; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@96120.4]
  wire [15:0] _T_608; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@96121.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@96131.4]
  wire [15:0] _T_615; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@96131.4]
  wire [15:0] _T_616; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@96132.4]
  wire  _T_620; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@96157.4]
  wire [3:0] _T_623; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@96162.6]
  wire [3:0] _T_624; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@96163.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  wire [18:0] _T_628; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@96169.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  wire [17:0] _T_630; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@96172.6]
  wire  _T_633; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@96176.6]
  wire  _T_635; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96178.6]
  wire  _T_636; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96179.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  wire  _T_639; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@96193.4]
  wire  _T_641; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@96195.4]
  wire  _T_642; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@96196.4]
  wire [30:0] _T_649; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@96205.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@96197.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@96197.4]
  wire  _T_656; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@96215.4]
  wire  _T_659; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@96218.4]
  wire  _T_664; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@96224.6]
  wire  _T_665; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@96225.6]
  wire  _T_666; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@96226.6]
  wire  _T_667; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@96227.6]
  wire  _T_669; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96229.6]
  wire  _T_670; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96230.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96112.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96113.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@96122.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire  _T_672; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  wire  _T_674; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  wire  _T_675; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@96239.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire  _T_676; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  wire  _T_677; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  wire  _T_678; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@96242.6]
  wire  _T_679; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@96243.6]
  wire  _T_680; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@96244.6]
  wire  _T_682; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96246.6]
  wire  _T_683; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96247.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96123.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96124.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@96133.4]
  wire [3:0] _GEN_60; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@96252.6]
  wire  _T_684; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@96252.6]
  wire  _T_687; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@96255.6]
  wire  _T_689; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96257.6]
  wire  _T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96258.6]
  wire  _T_692; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@96265.4]
  wire  _T_693; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@96266.4]
  wire  _T_697; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@96270.4]
  wire  _T_698; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@96272.6]
  wire  _T_699; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@96273.6]
  wire  _T_701; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96275.6]
  wire  _T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96276.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96106.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96107.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@96161.6]
  wire  _T_703; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@96282.4]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96185.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96186.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@96199.6]
  wire  _T_704; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@96283.4]
  wire  _T_705; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@96284.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96108.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96109.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@96170.6]
  wire [3:0] _T_706; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@96286.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96187.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96188.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@96206.6]
  wire [3:0] _T_707; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@96287.4]
  wire [3:0] _T_708; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@96288.4]
  wire [3:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96110.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96111.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@96173.6]
  wire [3:0] _T_709; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@96290.4]
  wire [3:0] _T_711; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@96292.4]
  reg [31:0] _T_712; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@96294.4]
  wire  _T_713; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@96297.4]
  wire  _T_714; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@96298.4]
  wire  _T_715; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@96299.4]
  wire  _T_716; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@96300.4]
  wire  _T_717; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@96301.4]
  wire  _T_718; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@96302.4]
  wire  _T_720; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96304.4]
  wire  _T_721; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96305.4]
  wire [31:0] _T_723; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@96311.4]
  wire  _T_726; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@96315.4]
  wire  _GEN_61; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95123.10]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95195.10]
  wire  _GEN_79; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95278.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95337.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95388.10]
  wire  _GEN_95; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95438.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95486.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95534.10]
  wire  _GEN_113; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95605.10]
  wire  _GEN_121; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95646.10]
  wire  _GEN_131; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95704.10]
  wire  _GEN_141; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95764.10]
  wire  _GEN_145; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95799.10]
  wire  _GEN_149; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95835.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@96295.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@95059.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@95060.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@95097.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@95109.6]
  assign _T_61 = $signed(_T_48) & -10'sh200; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@95115.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@95116.8]
  assign _T_67 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95121.8]
  assign _T_79 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95149.8]
  assign _T_80 = ~_T_79; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95150.8]
  assign _T_85 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@95163.8]
  assign _T_86 = _T_85 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@95164.8]
  assign _T_88 = _T_86 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95166.8]
  assign _T_89 = ~_T_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95167.8]
  assign _T_94 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@95181.6]
  assign _T_136 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@95261.6]
  assign _T_149 = _T_62 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95275.8]
  assign _T_150 = ~_T_149; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95276.8]
  assign _T_161 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@95303.8]
  assign _T_163 = _T_161 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95305.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95306.8]
  assign _T_169 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@95320.6]
  assign _T_198 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@95371.6]
  assign _T_229 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@95424.6]
  assign _T_255 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@95472.6]
  assign _T_281 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@95520.6]
  assign _T_311 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@95578.6]
  assign _T_313 = _T_311 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95580.6]
  assign _T_314 = ~_T_313; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95581.6]
  assign _T_318 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@95591.6]
  assign _T_322 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@95600.8]
  assign _T_324 = _T_322 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95602.8]
  assign _T_325 = ~_T_324; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95603.8]
  assign _T_326 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@95608.8]
  assign _T_328 = _T_326 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95610.8]
  assign _T_329 = ~_T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95611.8]
  assign _T_330 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@95616.8]
  assign _T_332 = _T_330 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95618.8]
  assign _T_333 = ~_T_332; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95619.8]
  assign _T_334 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@95624.8]
  assign _T_336 = _T_334 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95626.8]
  assign _T_337 = ~_T_336; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95627.8]
  assign _T_338 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@95633.6]
  assign _T_349 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@95657.8]
  assign _T_351 = _T_349 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95659.8]
  assign _T_352 = ~_T_351; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95660.8]
  assign _T_353 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@95665.8]
  assign _T_355 = _T_353 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95667.8]
  assign _T_356 = ~_T_355; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95668.8]
  assign _T_366 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@95691.6]
  assign _T_386 = _T_334 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@95732.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95734.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95735.8]
  assign _T_395 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@95750.6]
  assign _T_412 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@95785.6]
  assign _T_430 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@95821.6]
  assign _T_462 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@95887.4]
  assign _T_473 = _T_471 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@95898.4]
  assign _T_474 = ~_T_471; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@95899.4]
  assign _T_487 = ~_T_474; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@95915.4]
  assign _T_488 = io_in_a_valid & _T_487; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@95916.4]
  assign _T_489 = io_in_a_bits_opcode == _T_482; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@95918.6]
  assign _T_491 = _T_489 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95920.6]
  assign _T_492 = ~_T_491; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95921.6]
  assign _T_505 = io_in_a_bits_address == _T_486; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@95950.6]
  assign _T_507 = _T_505 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95952.6]
  assign _T_508 = ~_T_507; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95953.6]
  assign _T_510 = _T_462 & _T_474; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@95960.4]
  assign _T_511 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@95968.4]
  assign _T_521 = _T_519 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@95978.4]
  assign _T_522 = ~_T_519; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@95979.4]
  assign _T_536 = ~_T_522; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@95996.4]
  assign _T_537 = io_in_d_valid & _T_536; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@95997.4]
  assign _T_538 = io_in_d_bits_opcode == _T_530; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@95999.6]
  assign _T_540 = _T_538 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96001.6]
  assign _T_541 = ~_T_540; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96002.6]
  assign _T_542 = io_in_d_bits_param == _T_531; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@96007.6]
  assign _T_544 = _T_542 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96009.6]
  assign _T_545 = ~_T_544; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96010.6]
  assign _T_546 = io_in_d_bits_size == _T_532; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@96015.6]
  assign _T_548 = _T_546 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96017.6]
  assign _T_549 = ~_T_548; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96018.6]
  assign _T_554 = io_in_d_bits_sink == _T_534; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@96031.6]
  assign _T_556 = _T_554 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96033.6]
  assign _T_557 = ~_T_556; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96034.6]
  assign _T_558 = io_in_d_bits_denied == _T_535; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@96039.6]
  assign _T_560 = _T_558 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96041.6]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96042.6]
  assign _T_563 = _T_511 & _T_522; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@96049.4]
  assign _T_575 = _T_573 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@96072.4]
  assign a_first = ~_T_573; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@96073.4]
  assign _T_593 = _T_591 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@96094.4]
  assign d_first = ~_T_591; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@96095.4]
  assign _T_606 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@96119.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@96120.4]
  assign _T_607 = _GEN_56 & _T_606; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@96120.4]
  assign _T_608 = {{1'd0}, _T_607[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@96121.4]
  assign _GEN_58 = {{12'd0}, inflight_sizes}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@96131.4]
  assign _T_615 = _GEN_58 & _T_606; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@96131.4]
  assign _T_616 = {{1'd0}, _T_615[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@96132.4]
  assign _T_620 = _T_462 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@96157.4]
  assign _T_623 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@96162.6]
  assign _T_624 = _T_623 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@96163.6]
  assign a_opcodes_set_interm = _T_620 ? _T_624 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  assign _T_628 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@96169.6]
  assign a_sizes_set_interm = _T_620 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  assign _T_630 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@96172.6]
  assign _T_633 = ~inflight; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@96176.6]
  assign _T_635 = _T_633 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96178.6]
  assign _T_636 = ~_T_635; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96179.6]
  assign _GEN_15 = _T_620 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  assign _GEN_18 = _T_620 ? _T_628 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  assign _GEN_19 = _T_620 ? _T_630 : 18'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@96159.4]
  assign _T_639 = _T_511 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@96193.4]
  assign _T_641 = ~_T_318; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@96195.4]
  assign _T_642 = _T_639 & _T_641; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@96196.4]
  assign _T_649 = {{15'd0}, _T_606}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@96205.6]
  assign _GEN_20 = _T_642 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@96197.4]
  assign _GEN_21 = _T_642 ? _T_649 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@96197.4]
  assign _T_656 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@96215.4]
  assign _T_659 = _T_656 & _T_641; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@96218.4]
  assign _T_664 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@96224.6]
  assign _T_665 = io_in_a_valid & _T_664; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@96225.6]
  assign _T_666 = _T_665 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@96226.6]
  assign _T_667 = inflight | _T_666; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@96227.6]
  assign _T_669 = _T_667 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96229.6]
  assign _T_670 = ~_T_669; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96230.6]
  assign a_opcode_lookup = _T_608[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96112.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96113.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@96122.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _T_672 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@96236.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  assign _T_674 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@96238.6]
  assign _T_675 = _T_672 | _T_674; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@96239.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _T_676 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@96240.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  assign _T_677 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@96241.6]
  assign _T_678 = _T_676 | _T_677; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@96242.6]
  assign _T_679 = io_in_a_valid & _T_678; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@96243.6]
  assign _T_680 = _T_675 | _T_679; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@96244.6]
  assign _T_682 = _T_680 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96246.6]
  assign _T_683 = ~_T_682; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96247.6]
  assign a_size_lookup = _T_616[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96123.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96124.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@96133.4]
  assign _GEN_60 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@96252.6]
  assign _T_684 = _GEN_60 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@96252.6]
  assign _T_687 = _T_684 | _T_665; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@96255.6]
  assign _T_689 = _T_687 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96257.6]
  assign _T_690 = ~_T_689; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96258.6]
  assign _T_692 = _T_656 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@96265.4]
  assign _T_693 = _T_692 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@96266.4]
  assign _T_697 = _T_693 & _T_641; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@96270.4]
  assign _T_698 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@96272.6]
  assign _T_699 = _T_698 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@96273.6]
  assign _T_701 = _T_699 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96275.6]
  assign _T_702 = ~_T_701; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96276.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96106.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96107.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@96161.6]
  assign _T_703 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@96282.4]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96185.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96186.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@96199.6]
  assign _T_704 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@96283.4]
  assign _T_705 = _T_703 & _T_704; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@96284.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96108.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96109.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@96170.6]
  assign _T_706 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@96286.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96187.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96188.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@96206.6]
  assign _T_707 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@96287.4]
  assign _T_708 = _T_706 & _T_707; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@96288.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96110.4 :freechips.rocketchip.system.DefaultRV32Config.fir@96111.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@96173.6]
  assign _T_709 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@96290.4]
  assign _T_711 = _T_709 & _T_707; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@96292.4]
  assign _T_713 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@96297.4]
  assign _T_714 = ~_T_713; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@96298.4]
  assign _T_715 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@96299.4]
  assign _T_716 = _T_714 | _T_715; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@96300.4]
  assign _T_717 = _T_712 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@96301.4]
  assign _T_718 = _T_716 | _T_717; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@96302.4]
  assign _T_720 = _T_718 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96304.4]
  assign _T_721 = ~_T_720; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96305.4]
  assign _T_723 = _T_712 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@96311.4]
  assign _T_726 = _T_462 | _T_511; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@96315.4]
  assign _GEN_61 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95123.10]
  assign _GEN_69 = io_in_a_valid & _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95195.10]
  assign _GEN_79 = io_in_a_valid & _T_136; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95278.10]
  assign _GEN_85 = io_in_a_valid & _T_169; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95337.10]
  assign _GEN_91 = io_in_a_valid & _T_198; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95388.10]
  assign _GEN_95 = io_in_a_valid & _T_229; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95438.10]
  assign _GEN_101 = io_in_a_valid & _T_255; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95486.10]
  assign _GEN_107 = io_in_a_valid & _T_281; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95534.10]
  assign _GEN_113 = io_in_d_valid & _T_318; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95605.10]
  assign _GEN_121 = io_in_d_valid & _T_338; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95646.10]
  assign _GEN_131 = io_in_d_valid & _T_366; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95704.10]
  assign _GEN_141 = io_in_d_valid & _T_395; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95764.10]
  assign _GEN_145 = io_in_d_valid & _T_412; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95799.10]
  assign _GEN_149 = io_in_d_valid & _T_430; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95835.10]
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
  _T_471 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_482 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_486 = _RAND_2[8:0];
  _RAND_3 = {1{`RANDOM}};
  _T_519 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_530 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  _T_531 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  _T_532 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  _T_534 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_535 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  inflight = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  inflight_opcodes = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  inflight_sizes = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  _T_573 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_591 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_712 = _RAND_14[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_471 <= 1'h0;
    end else if (_T_462) begin
      if (_T_474) begin
        _T_471 <= 1'h0;
      end else begin
        _T_471 <= _T_473;
      end
    end
    if (_T_510) begin
      _T_482 <= io_in_a_bits_opcode;
    end
    if (_T_510) begin
      _T_486 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_519 <= 1'h0;
    end else if (_T_511) begin
      if (_T_522) begin
        _T_519 <= 1'h0;
      end else begin
        _T_519 <= _T_521;
      end
    end
    if (_T_563) begin
      _T_530 <= io_in_d_bits_opcode;
    end
    if (_T_563) begin
      _T_531 <= io_in_d_bits_param;
    end
    if (_T_563) begin
      _T_532 <= io_in_d_bits_size;
    end
    if (_T_563) begin
      _T_534 <= io_in_d_bits_sink;
    end
    if (_T_563) begin
      _T_535 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_705;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_708;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_711;
    end
    if (reset) begin
      _T_573 <= 1'h0;
    end else if (_T_462) begin
      if (a_first) begin
        _T_573 <= 1'h0;
      end else begin
        _T_573 <= _T_575;
      end
    end
    if (reset) begin
      _T_591 <= 1'h0;
    end else if (_T_511) begin
      if (d_first) begin
        _T_591 <= 1'h0;
      end else begin
        _T_591 <= _T_593;
      end
    end
    if (reset) begin
      _T_712 <= 32'h0;
    end else if (_T_726) begin
      _T_712 <= 32'h0;
    end else begin
      _T_712 <= _T_723;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95123.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95124.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95130.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95131.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95152.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95153.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_89) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_89) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95195.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95196.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95202.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95203.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95225.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95240.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95241.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_89) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95249.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_89) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95250.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95278.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95279.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95292.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95293.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95308.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95309.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95337.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95338.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95351.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95352.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95367.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95368.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95388.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95389.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95402.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95403.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95452.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95453.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95468.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95469.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95486.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95487.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95534.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95535.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95548.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95549.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95564.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95565.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_314) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95583.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_314) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95584.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95613.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95614.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95621.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95622.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_337) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_337) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_67) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95647.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95654.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95655.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_352) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95662.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_352) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95663.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_356) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_356) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95671.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95678.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95679.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95704.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_67) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95705.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95712.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95713.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_352) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_352) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_356) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95728.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_356) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95729.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95737.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95738.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95764.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95765.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95772.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95773.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95799.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95800.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95808.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_149 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95835.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_149 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95836.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_149 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_149 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@95844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_488 & _T_492) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95923.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_488 & _T_492) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95924.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_488 & _T_508) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95955.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_488 & _T_508) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@95956.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_541) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96004.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_541) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96005.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_545) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96012.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_545) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96013.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_549) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96020.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_549) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96021.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_557) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96036.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_557) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96037.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96044.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96045.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_620 & _T_636) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96181.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_620 & _T_636) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96182.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_670) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96232.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_670) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96233.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_683) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96249.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_683) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96250.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_690) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96260.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_690) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96261.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_697 & _T_702) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96278.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_697 & _T_702) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@96279.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_721) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96307.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_721) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@96308.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
