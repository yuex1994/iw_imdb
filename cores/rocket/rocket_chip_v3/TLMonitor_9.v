module TLMonitor_9( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27334.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27335.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27336.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [30:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@27337.4]
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
  reg [95:0] _RAND_12;
  reg [159:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@28781.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@27351.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@27359.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27364.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27365.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27366.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27374.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27375.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27376.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27377.6]
  wire [22:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@27379.6]
  wire [7:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@27381.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@27382.6]
  wire [30:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@27382.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@27383.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27386.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@27388.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@27389.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@27392.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27394.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27395.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27397.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27398.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@27401.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27402.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27403.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27404.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27405.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27406.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27407.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27408.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27409.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27410.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27411.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27412.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27413.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27416.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@27482.6]
  wire [30:0] _T_130; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@27485.8]
  wire [31:0] _T_131; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@27486.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@27488.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@27489.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27494.8]
  wire  _T_160; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@27525.8]
  wire  _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@27528.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27538.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27539.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27545.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27546.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27553.8]
  wire  _T_180; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27554.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27560.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27561.8]
  wire  _T_184; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@27566.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27568.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27569.8]
  wire [3:0] _T_188; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@27574.8]
  wire  _T_189; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@27575.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27577.8]
  wire  _T_192; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27578.8]
  wire  _T_193; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@27583.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27585.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27586.8]
  wire  _T_197; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@27592.6]
  wire  _T_257; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@27684.8]
  wire  _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27686.8]
  wire  _T_260; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27687.8]
  wire  _T_270; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@27710.6]
  wire  _T_272; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@27713.8]
  wire  _T_280; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@27721.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27724.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27725.8]
  wire  _T_291; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@27744.8]
  wire  _T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27746.8]
  wire  _T_294; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27747.8]
  wire  _T_295; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@27752.8]
  wire  _T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27754.8]
  wire  _T_298; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27755.8]
  wire  _T_303; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@27769.6]
  wire  _T_305; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@27772.8]
  wire  _T_313; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@27780.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27783.8]
  wire  _T_317; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27784.8]
  wire  _T_332; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@27820.6]
  wire [3:0] _T_357; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@27862.8]
  wire [3:0] _T_358; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@27863.8]
  wire  _T_359; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@27864.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27866.8]
  wire  _T_362; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27867.8]
  wire  _T_363; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@27873.6]
  wire  _T_381; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@27904.8]
  wire  _T_383; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27906.8]
  wire  _T_384; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27907.8]
  wire  _T_389; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@27921.6]
  wire  _T_407; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@27952.8]
  wire  _T_409; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27954.8]
  wire  _T_410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27955.8]
  wire  _T_415; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@27969.6]
  wire  _T_433; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@28000.8]
  wire  _T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28002.8]
  wire  _T_436; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28003.8]
  wire  _T_445; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@28027.6]
  wire  _T_447; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28029.6]
  wire  _T_448; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28030.6]
  wire  _T_452; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@28038.6]
  wire  _T_460; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@28046.6]
  wire  _T_465; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28051.6]
  wire  _T_466; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28052.6]
  wire  _T_467; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28053.6]
  wire  _T_469; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28061.6]
  wire  _T_470; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28062.6]
  wire  _T_471; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28063.6]
  wire  _T_472; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28064.6]
  wire  _T_474; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@28066.6]
  wire  _T_476; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28069.8]
  wire  _T_477; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28070.8]
  wire  _T_478; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@28075.8]
  wire  _T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28077.8]
  wire  _T_481; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28078.8]
  wire  _T_486; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@28091.8]
  wire  _T_488; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28093.8]
  wire  _T_489; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28094.8]
  wire  _T_490; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@28099.8]
  wire  _T_492; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28101.8]
  wire  _T_493; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28102.8]
  wire  _T_494; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@28108.6]
  wire  _T_522; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@28166.6]
  wire  _T_542; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@28207.8]
  wire  _T_544; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28209.8]
  wire  _T_545; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28210.8]
  wire  _T_551; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@28225.6]
  wire  _T_568; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@28260.6]
  wire  _T_586; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@28296.6]
  wire  _T_618; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@28362.4]
  wire  _T_625; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@28369.4]
  reg [5:0] _T_627; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@28371.4]
  wire [5:0] _T_629; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28373.4]
  wire  _T_630; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28374.4]
  reg [2:0] _T_638; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@28385.4]
  reg [2:0] _T_639; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@28386.4]
  reg [3:0] _T_640; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@28387.4]
  reg [4:0] _T_641; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@28388.4]
  reg [30:0] _T_642; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@28389.4]
  wire  _T_643; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@28390.4]
  wire  _T_644; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@28391.4]
  wire  _T_645; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@28393.6]
  wire  _T_647; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28395.6]
  wire  _T_648; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28396.6]
  wire  _T_649; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@28401.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28403.6]
  wire  _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28404.6]
  wire  _T_653; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@28409.6]
  wire  _T_655; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28411.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28412.6]
  wire  _T_657; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@28417.6]
  wire  _T_659; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28419.6]
  wire  _T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28420.6]
  wire  _T_661; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@28425.6]
  wire  _T_663; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28427.6]
  wire  _T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28428.6]
  wire  _T_666; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@28435.4]
  wire  _T_667; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@28443.4]
  wire [22:0] _T_669; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@28445.4]
  wire [7:0] _T_671; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@28447.4]
  reg [5:0] _T_675; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@28451.4]
  wire [5:0] _T_677; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28453.4]
  wire  _T_678; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28454.4]
  reg [2:0] _T_686; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@28465.4]
  reg [3:0] _T_688; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@28467.4]
  reg [4:0] _T_689; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@28468.4]
  reg  _T_691; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@28470.4]
  wire  _T_692; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@28471.4]
  wire  _T_693; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@28472.4]
  wire  _T_694; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@28474.6]
  wire  _T_696; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28476.6]
  wire  _T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28477.6]
  wire  _T_702; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@28490.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28492.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28493.6]
  wire  _T_706; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@28498.6]
  wire  _T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28500.6]
  wire  _T_709; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28501.6]
  wire  _T_714; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@28514.6]
  wire  _T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28516.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28517.6]
  wire  _T_719; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@28524.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@28533.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@28534.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@28535.4]
  reg [5:0] _T_729; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@28545.4]
  wire [5:0] _T_731; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28547.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28548.4]
  reg [5:0] _T_747; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@28567.4]
  wire [5:0] _T_749; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28569.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28570.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@28589.4]
  wire [7:0] _T_757; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@28589.4]
  wire [75:0] _T_758; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@28590.4]
  wire [15:0] _T_762; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@28594.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@28595.4]
  wire [75:0] _T_763; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@28595.4]
  wire [75:0] _T_764; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@28596.4]
  wire [7:0] _T_765; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@28600.4]
  wire [151:0] _T_766; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@28601.4]
  wire [15:0] _T_770; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@28605.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@28606.4]
  wire [151:0] _T_771; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@28606.4]
  wire [151:0] _T_772; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@28607.4]
  wire  _T_776; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@28632.4]
  wire [31:0] _T_778; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@28635.6]
  wire [3:0] _T_779; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@28637.6]
  wire [3:0] _T_780; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@28638.6]
  wire [4:0] _T_781; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@28640.6]
  wire [4:0] _T_782; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@28641.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@28643.6]
  wire [7:0] _T_783; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@28643.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@28644.6]
  wire [258:0] _T_784; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@28644.6]
  wire [7:0] _T_785; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@28646.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@28647.6]
  wire [259:0] _T_786; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@28647.6]
  wire [18:0] _T_787; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@28649.6]
  wire  _T_789; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@28651.6]
  wire  _T_791; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28653.6]
  wire  _T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28654.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  wire  _T_795; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@28668.4]
  wire  _T_797; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@28670.4]
  wire  _T_798; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@28671.4]
  wire [31:0] _T_799; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@28673.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@28680.6]
  wire [270:0] _T_805; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@28680.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@28687.6]
  wire [270:0] _T_811; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@28687.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  wire  _T_812; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@28690.4]
  wire  _T_815; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@28693.4]
  wire [18:0] _T_816; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@28695.6]
  wire  _T_818; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@28697.6]
  wire  _T_819; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@28698.6]
  wire  _T_820; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@28699.6]
  wire  _T_821; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@28700.6]
  wire  _T_822; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@28701.6]
  wire  _T_823; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@28702.6]
  wire  _T_825; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28704.6]
  wire  _T_826; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28705.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28587.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28588.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@28597.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire  _T_828; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  wire  _T_830; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  wire  _T_831; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@28714.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire  _T_832; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  wire  _T_833; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  wire  _T_834; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@28717.6]
  wire  _T_835; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@28718.6]
  wire  _T_836; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@28719.6]
  wire  _T_838; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28721.6]
  wire  _T_839; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28722.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28598.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28599.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@28608.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@28727.6]
  wire  _T_840; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@28727.6]
  wire  _T_842; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@28729.6]
  wire  _T_843; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@28730.6]
  wire  _T_845; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28732.6]
  wire  _T_846; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28733.6]
  wire  _T_848; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@28740.4]
  wire  _T_849; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@28741.4]
  wire  _T_851; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@28743.4]
  wire  _T_853; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@28745.4]
  wire  _T_854; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@28747.6]
  wire  _T_855; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@28748.6]
  wire  _T_857; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28750.6]
  wire  _T_858; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28751.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28581.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28582.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@28636.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28660.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28661.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@28674.6]
  wire  _T_859; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@28757.4]
  wire  _T_860; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@28758.4]
  wire  _T_861; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@28759.4]
  wire  _T_862; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@28760.4]
  wire  _T_864; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28762.4]
  wire  _T_865; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28763.4]
  wire [18:0] _T_866; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@28768.4]
  wire [18:0] _T_867; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@28769.4]
  wire [18:0] _T_868; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@28770.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28583.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28584.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@28645.6]
  wire [75:0] _T_869; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@28772.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28662.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28663.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@28681.6]
  wire [75:0] _T_870; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@28773.4]
  wire [75:0] _T_871; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@28774.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28585.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28586.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@28648.6]
  wire [151:0] _T_872; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@28776.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28664.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28665.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@28688.6]
  wire [151:0] _T_873; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@28777.4]
  wire [151:0] _T_874; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@28778.4]
  reg [31:0] _T_875; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@28780.4]
  wire  _T_876; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@28783.4]
  wire  _T_877; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@28784.4]
  wire  _T_878; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@28785.4]
  wire  _T_879; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@28786.4]
  wire  _T_880; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@28787.4]
  wire  _T_881; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@28788.4]
  wire  _T_883; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28790.4]
  wire  _T_884; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28791.4]
  wire [31:0] _T_886; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@28797.4]
  wire  _T_889; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@28801.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27496.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27606.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27727.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27786.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27837.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27887.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27935.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27983.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28072.10]
  wire  _GEN_175; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28114.10]
  wire  _GEN_183; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28172.10]
  wire  _GEN_191; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28231.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28266.10]
  wire  _GEN_199; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28302.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@28781.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@27351.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@27359.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27364.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27365.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@27366.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27374.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27375.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27376.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@27377.6]
  assign _T_29 = 23'hff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@27379.6]
  assign _T_31 = ~_T_29[7:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@27381.6]
  assign _GEN_56 = {{23'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@27382.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@27382.6]
  assign _T_33 = _T_32 == 31'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@27383.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27386.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@27388.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@27389.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@27392.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27394.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27395.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27397.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27398.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@27401.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27402.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27403.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27404.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27405.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27406.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27407.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27408.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27409.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27410.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@27411.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@27412.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@27413.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27416.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@27482.6]
  assign _T_130 = io_in_a_bits_address ^ 31'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@27485.8]
  assign _T_131 = {1'b0,$signed(_T_130)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@27486.8]
  assign _T_133 = $signed(_T_131) & -32'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@27488.8]
  assign _T_134 = $signed(_T_133) == 32'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@27489.8]
  assign _T_139 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27494.8]
  assign _T_160 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@27525.8]
  assign _T_163 = _T_20 & _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@27528.8]
  assign _T_172 = _T_163 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27538.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27539.8]
  assign _T_175 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27545.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27546.8]
  assign _T_179 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27553.8]
  assign _T_180 = ~_T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27554.8]
  assign _T_182 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27560.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27561.8]
  assign _T_184 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@27566.8]
  assign _T_186 = _T_184 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27568.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27569.8]
  assign _T_188 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@27574.8]
  assign _T_189 = _T_188 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@27575.8]
  assign _T_191 = _T_189 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27577.8]
  assign _T_192 = ~_T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27578.8]
  assign _T_193 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@27583.8]
  assign _T_195 = _T_193 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27585.8]
  assign _T_196 = ~_T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27586.8]
  assign _T_197 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@27592.6]
  assign _T_257 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@27684.8]
  assign _T_259 = _T_257 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27686.8]
  assign _T_260 = ~_T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27687.8]
  assign _T_270 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@27710.6]
  assign _T_272 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@27713.8]
  assign _T_280 = _T_272 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@27721.8]
  assign _T_283 = _T_280 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27724.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27725.8]
  assign _T_291 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@27744.8]
  assign _T_293 = _T_291 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27746.8]
  assign _T_294 = ~_T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27747.8]
  assign _T_295 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@27752.8]
  assign _T_297 = _T_295 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27754.8]
  assign _T_298 = ~_T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27755.8]
  assign _T_303 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@27769.6]
  assign _T_305 = io_in_a_bits_size <= 4'h8; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@27772.8]
  assign _T_313 = _T_305 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@27780.8]
  assign _T_316 = _T_313 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27783.8]
  assign _T_317 = ~_T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27784.8]
  assign _T_332 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@27820.6]
  assign _T_357 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@27862.8]
  assign _T_358 = io_in_a_bits_mask & _T_357; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@27863.8]
  assign _T_359 = _T_358 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@27864.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27866.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27867.8]
  assign _T_363 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@27873.6]
  assign _T_381 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@27904.8]
  assign _T_383 = _T_381 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27906.8]
  assign _T_384 = ~_T_383; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27907.8]
  assign _T_389 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@27921.6]
  assign _T_407 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@27952.8]
  assign _T_409 = _T_407 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27954.8]
  assign _T_410 = ~_T_409; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27955.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@27969.6]
  assign _T_433 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@28000.8]
  assign _T_435 = _T_433 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28002.8]
  assign _T_436 = ~_T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28003.8]
  assign _T_445 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@28027.6]
  assign _T_447 = _T_445 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28029.6]
  assign _T_448 = ~_T_447; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28030.6]
  assign _T_452 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@28038.6]
  assign _T_460 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@28046.6]
  assign _T_465 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28051.6]
  assign _T_466 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28052.6]
  assign _T_467 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@28053.6]
  assign _T_469 = _T_452 | _T_460; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28061.6]
  assign _T_470 = _T_469 | _T_465; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28062.6]
  assign _T_471 = _T_470 | _T_466; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28063.6]
  assign _T_472 = _T_471 | _T_467; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@28064.6]
  assign _T_474 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@28066.6]
  assign _T_476 = _T_472 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28069.8]
  assign _T_477 = ~_T_476; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28070.8]
  assign _T_478 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@28075.8]
  assign _T_480 = _T_478 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28077.8]
  assign _T_481 = ~_T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28078.8]
  assign _T_486 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@28091.8]
  assign _T_488 = _T_486 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28093.8]
  assign _T_489 = ~_T_488; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28094.8]
  assign _T_490 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@28099.8]
  assign _T_492 = _T_490 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28101.8]
  assign _T_493 = ~_T_492; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28102.8]
  assign _T_494 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@28108.6]
  assign _T_522 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@28166.6]
  assign _T_542 = _T_490 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@28207.8]
  assign _T_544 = _T_542 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28209.8]
  assign _T_545 = ~_T_544; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28210.8]
  assign _T_551 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@28225.6]
  assign _T_568 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@28260.6]
  assign _T_586 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@28296.6]
  assign _T_618 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@28362.4]
  assign _T_625 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@28369.4]
  assign _T_629 = _T_627 - 6'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28373.4]
  assign _T_630 = _T_627 == 6'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28374.4]
  assign _T_643 = ~_T_630; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@28390.4]
  assign _T_644 = io_in_a_valid & _T_643; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@28391.4]
  assign _T_645 = io_in_a_bits_opcode == _T_638; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@28393.6]
  assign _T_647 = _T_645 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28395.6]
  assign _T_648 = ~_T_647; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28396.6]
  assign _T_649 = io_in_a_bits_param == _T_639; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@28401.6]
  assign _T_651 = _T_649 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28403.6]
  assign _T_652 = ~_T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28404.6]
  assign _T_653 = io_in_a_bits_size == _T_640; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@28409.6]
  assign _T_655 = _T_653 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28411.6]
  assign _T_656 = ~_T_655; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28412.6]
  assign _T_657 = io_in_a_bits_source == _T_641; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@28417.6]
  assign _T_659 = _T_657 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28419.6]
  assign _T_660 = ~_T_659; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28420.6]
  assign _T_661 = io_in_a_bits_address == _T_642; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@28425.6]
  assign _T_663 = _T_661 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28427.6]
  assign _T_664 = ~_T_663; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28428.6]
  assign _T_666 = _T_618 & _T_630; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@28435.4]
  assign _T_667 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@28443.4]
  assign _T_669 = 23'hff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@28445.4]
  assign _T_671 = ~_T_669[7:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@28447.4]
  assign _T_677 = _T_675 - 6'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28453.4]
  assign _T_678 = _T_675 == 6'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28454.4]
  assign _T_692 = ~_T_678; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@28471.4]
  assign _T_693 = io_in_d_valid & _T_692; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@28472.4]
  assign _T_694 = io_in_d_bits_opcode == _T_686; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@28474.6]
  assign _T_696 = _T_694 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28476.6]
  assign _T_697 = ~_T_696; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28477.6]
  assign _T_702 = io_in_d_bits_size == _T_688; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@28490.6]
  assign _T_704 = _T_702 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28492.6]
  assign _T_705 = ~_T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28493.6]
  assign _T_706 = io_in_d_bits_source == _T_689; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@28498.6]
  assign _T_708 = _T_706 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28500.6]
  assign _T_709 = ~_T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28501.6]
  assign _T_714 = io_in_d_bits_denied == _T_691; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@28514.6]
  assign _T_716 = _T_714 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28516.6]
  assign _T_717 = ~_T_716; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28517.6]
  assign _T_719 = _T_667 & _T_678; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@28524.4]
  assign _T_731 = _T_729 - 6'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28547.4]
  assign a_first = _T_729 == 6'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28548.4]
  assign _T_749 = _T_747 - 6'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@28569.4]
  assign d_first = _T_747 == 6'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@28570.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@28589.4]
  assign _T_757 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@28589.4]
  assign _T_758 = inflight_opcodes >> _T_757; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@28590.4]
  assign _T_762 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@28594.4]
  assign _GEN_58 = {{60'd0}, _T_762}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@28595.4]
  assign _T_763 = _T_758 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@28595.4]
  assign _T_764 = {{1'd0}, _T_763[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@28596.4]
  assign _T_765 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@28600.4]
  assign _T_766 = inflight_sizes >> _T_765; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@28601.4]
  assign _T_770 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@28605.4]
  assign _GEN_60 = {{136'd0}, _T_770}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@28606.4]
  assign _T_771 = _T_766 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@28606.4]
  assign _T_772 = {{1'd0}, _T_771[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@28607.4]
  assign _T_776 = _T_618 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@28632.4]
  assign _T_778 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@28635.6]
  assign _T_779 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@28637.6]
  assign _T_780 = _T_779 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@28638.6]
  assign _T_781 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@28640.6]
  assign _T_782 = _T_781 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@28641.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@28643.6]
  assign _T_783 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@28643.6]
  assign a_opcodes_set_interm = _T_776 ? _T_780 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@28644.6]
  assign _T_784 = _GEN_63 << _T_783; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@28644.6]
  assign _T_785 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@28646.6]
  assign a_sizes_set_interm = _T_776 ? _T_782 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@28647.6]
  assign _T_786 = _GEN_64 << _T_785; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@28647.6]
  assign _T_787 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@28649.6]
  assign _T_789 = ~_T_787[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@28651.6]
  assign _T_791 = _T_789 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28653.6]
  assign _T_792 = ~_T_791; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28654.6]
  assign _GEN_15 = _T_776 ? _T_778 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  assign _GEN_18 = _T_776 ? _T_784 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  assign _GEN_19 = _T_776 ? _T_786 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@28634.4]
  assign _T_795 = _T_667 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@28668.4]
  assign _T_797 = ~_T_474; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@28670.4]
  assign _T_798 = _T_795 & _T_797; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@28671.4]
  assign _T_799 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@28673.6]
  assign _GEN_66 = {{255'd0}, _T_762}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@28680.6]
  assign _T_805 = _GEN_66 << _T_757; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@28680.6]
  assign _GEN_67 = {{255'd0}, _T_770}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@28687.6]
  assign _T_811 = _GEN_67 << _T_765; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@28687.6]
  assign _GEN_20 = _T_798 ? _T_799 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  assign _GEN_21 = _T_798 ? _T_805 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  assign _GEN_22 = _T_798 ? _T_811 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@28672.4]
  assign _T_812 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@28690.4]
  assign _T_815 = _T_812 & _T_797; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@28693.4]
  assign _T_816 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@28695.6]
  assign _T_818 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@28697.6]
  assign _T_819 = io_in_a_valid & _T_818; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@28698.6]
  assign _T_820 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@28699.6]
  assign _T_821 = _T_819 & _T_820; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@28700.6]
  assign _T_822 = _T_821 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@28701.6]
  assign _T_823 = _T_816[0] | _T_822; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@28702.6]
  assign _T_825 = _T_823 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28704.6]
  assign _T_826 = ~_T_825; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28705.6]
  assign a_opcode_lookup = _T_764[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28587.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28588.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@28597.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _T_828 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@28711.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  assign _T_830 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@28713.6]
  assign _T_831 = _T_828 | _T_830; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@28714.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _T_832 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@28715.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  assign _T_833 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@28716.6]
  assign _T_834 = _T_832 | _T_833; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@28717.6]
  assign _T_835 = io_in_a_valid & _T_834; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@28718.6]
  assign _T_836 = _T_831 | _T_835; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@28719.6]
  assign _T_838 = _T_836 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28721.6]
  assign _T_839 = ~_T_838; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28722.6]
  assign a_size_lookup = _T_772[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28598.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28599.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@28608.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@28727.6]
  assign _T_840 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@28727.6]
  assign _T_842 = io_in_a_valid & _T_820; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@28729.6]
  assign _T_843 = _T_840 | _T_842; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@28730.6]
  assign _T_845 = _T_843 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28732.6]
  assign _T_846 = ~_T_845; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28733.6]
  assign _T_848 = _T_812 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@28740.4]
  assign _T_849 = _T_848 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@28741.4]
  assign _T_851 = _T_849 & _T_818; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@28743.4]
  assign _T_853 = _T_851 & _T_797; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@28745.4]
  assign _T_854 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@28747.6]
  assign _T_855 = _T_854 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@28748.6]
  assign _T_857 = _T_855 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28750.6]
  assign _T_858 = ~_T_857; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28751.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28581.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28582.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@28636.6]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28660.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28661.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@28674.6]
  assign _T_859 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@28757.4]
  assign _T_860 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@28758.4]
  assign _T_861 = ~_T_860; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@28759.4]
  assign _T_862 = _T_859 | _T_861; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@28760.4]
  assign _T_864 = _T_862 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28762.4]
  assign _T_865 = ~_T_864; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28763.4]
  assign _T_866 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@28768.4]
  assign _T_867 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@28769.4]
  assign _T_868 = _T_866 & _T_867; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@28770.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28583.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28584.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@28645.6]
  assign _T_869 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@28772.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28662.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28663.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@28681.6]
  assign _T_870 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@28773.4]
  assign _T_871 = _T_869 & _T_870; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@28774.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28585.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28586.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@28648.6]
  assign _T_872 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@28776.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@28664.4 :freechips.rocketchip.system.DefaultRV32Config.fir@28665.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@28688.6]
  assign _T_873 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@28777.4]
  assign _T_874 = _T_872 & _T_873; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@28778.4]
  assign _T_876 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@28783.4]
  assign _T_877 = ~_T_876; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@28784.4]
  assign _T_878 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@28785.4]
  assign _T_879 = _T_877 | _T_878; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@28786.4]
  assign _T_880 = _T_875 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@28787.4]
  assign _T_881 = _T_879 | _T_880; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@28788.4]
  assign _T_883 = _T_881 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28790.4]
  assign _T_884 = ~_T_883; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28791.4]
  assign _T_886 = _T_875 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@28797.4]
  assign _T_889 = _T_618 | _T_667; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@28801.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27496.10]
  assign _GEN_85 = io_in_a_valid & _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27606.10]
  assign _GEN_103 = io_in_a_valid & _T_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27727.10]
  assign _GEN_115 = io_in_a_valid & _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27786.10]
  assign _GEN_125 = io_in_a_valid & _T_332; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27837.10]
  assign _GEN_135 = io_in_a_valid & _T_363; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27887.10]
  assign _GEN_145 = io_in_a_valid & _T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27935.10]
  assign _GEN_155 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27983.10]
  assign _GEN_167 = io_in_d_valid & _T_474; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28072.10]
  assign _GEN_175 = io_in_d_valid & _T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28114.10]
  assign _GEN_183 = io_in_d_valid & _T_522; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28172.10]
  assign _GEN_191 = io_in_d_valid & _T_551; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28231.10]
  assign _GEN_195 = io_in_d_valid & _T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28266.10]
  assign _GEN_199 = io_in_d_valid & _T_586; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28302.10]
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
  _T_627 = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  _T_638 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_639 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_640 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_641 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_642 = _RAND_5[30:0];
  _RAND_6 = {1{`RANDOM}};
  _T_675 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  _T_686 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_688 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  _T_689 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  _T_691 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[18:0];
  _RAND_12 = {3{`RANDOM}};
  inflight_opcodes = _RAND_12[75:0];
  _RAND_13 = {5{`RANDOM}};
  inflight_sizes = _RAND_13[151:0];
  _RAND_14 = {1{`RANDOM}};
  _T_729 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  _T_747 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  _T_875 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_627 <= 6'h0;
    end else if (_T_618) begin
      if (_T_630) begin
        if (_T_625) begin
          _T_627 <= _T_31[7:2];
        end else begin
          _T_627 <= 6'h0;
        end
      end else begin
        _T_627 <= _T_629;
      end
    end
    if (_T_666) begin
      _T_638 <= io_in_a_bits_opcode;
    end
    if (_T_666) begin
      _T_639 <= io_in_a_bits_param;
    end
    if (_T_666) begin
      _T_640 <= io_in_a_bits_size;
    end
    if (_T_666) begin
      _T_641 <= io_in_a_bits_source;
    end
    if (_T_666) begin
      _T_642 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_675 <= 6'h0;
    end else if (_T_667) begin
      if (_T_678) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_675 <= _T_671[7:2];
        end else begin
          _T_675 <= 6'h0;
        end
      end else begin
        _T_675 <= _T_677;
      end
    end
    if (_T_719) begin
      _T_686 <= io_in_d_bits_opcode;
    end
    if (_T_719) begin
      _T_688 <= io_in_d_bits_size;
    end
    if (_T_719) begin
      _T_689 <= io_in_d_bits_source;
    end
    if (_T_719) begin
      _T_691 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_868;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_871;
    end
    if (reset) begin
      inflight_sizes <= 152'h0;
    end else begin
      inflight_sizes <= _T_874;
    end
    if (reset) begin
      _T_729 <= 6'h0;
    end else if (_T_618) begin
      if (a_first) begin
        if (_T_625) begin
          _T_729 <= _T_31[7:2];
        end else begin
          _T_729 <= 6'h0;
        end
      end else begin
        _T_729 <= _T_731;
      end
    end
    if (reset) begin
      _T_747 <= 6'h0;
    end else if (_T_667) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_747 <= _T_671[7:2];
        end else begin
          _T_747 <= 6'h0;
        end
      end else begin
        _T_747 <= _T_749;
      end
    end
    if (reset) begin
      _T_875 <= 32'h0;
    end else if (_T_889) begin
      _T_875 <= 32'h0;
    end else begin
      _T_875 <= _T_886;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27496.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27497.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27541.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27542.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27548.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27549.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27556.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27557.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27580.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27581.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27588.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27589.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27606.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27607.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27651.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27652.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27658.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27659.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27666.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27667.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27673.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27674.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_260) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27689.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_260) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27690.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27698.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27699.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27706.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27707.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27727.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27728.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27741.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27742.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27749.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27750.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27757.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27758.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27765.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27766.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_317) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27786.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_317) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27787.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27800.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27801.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27808.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27816.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27817.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_317) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27837.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_317) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27838.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27844.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27845.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27852.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27859.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27860.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27869.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27870.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27887.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27888.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27901.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27902.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_384) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27909.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_384) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27910.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27917.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27918.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27935.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27936.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27942.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27943.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27949.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27950.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_410) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27983.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27984.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27990.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27991.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27997.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@27998.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_436) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28005.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_436) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28006.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28013.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28014.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28021.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28022.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_448) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28032.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_448) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28033.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28072.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28073.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28080.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28081.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_489) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28096.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_489) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28097.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_493) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28104.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_493) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28105.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28114.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28115.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28121.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28122.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28129.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_489) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28153.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_489) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28154.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28179.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28180.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_545) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_545) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28231.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28232.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_489) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28247.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_489) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28248.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28266.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28267.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_545) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28283.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_545) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28284.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28302.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28303.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_489) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28318.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_489) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28319.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_648) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28398.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_648) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28399.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_652) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28406.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_652) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28407.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_656) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28414.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_656) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28415.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_660) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28422.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_660) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28423.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_664) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28430.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_664) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28431.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_693 & _T_697) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28479.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_693 & _T_697) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28480.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_693 & _T_705) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28495.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_693 & _T_705) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28496.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_693 & _T_709) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28503.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_693 & _T_709) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28504.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_693 & _T_717) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28519.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_693 & _T_717) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28520.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_776 & _T_792) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28656.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_776 & _T_792) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28657.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_815 & _T_826) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28707.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_815 & _T_826) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28708.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_815 & _T_839) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28724.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_815 & _T_839) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28725.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_815 & _T_846) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28735.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_815 & _T_846) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28736.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_853 & _T_858) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28753.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_853 & _T_858) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28754.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_865) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at Ports.scala:93:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28765.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_865) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@28766.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_884) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Ports.scala:93:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28793.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_884) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@28794.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
