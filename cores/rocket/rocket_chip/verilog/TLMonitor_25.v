module TLMonitor_25( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63034.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63035.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63036.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [11:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
  input  [4:0]  io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63037.4]
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
  reg [95:0] _RAND_11;
  reg [95:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@64470.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63051.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63059.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63064.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63065.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63066.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63074.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63075.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63076.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63077.6]
  wire [12:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@63079.6]
  wire [5:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@63081.6]
  wire [11:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@63082.6]
  wire [11:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@63082.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@63083.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@63086.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@63088.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@63089.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@63092.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63094.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63095.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63097.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63098.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@63101.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63102.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63103.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63104.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63105.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63106.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63107.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63108.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63109.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63110.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63111.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63112.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63113.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@63116.6]
  wire [12:0] _T_77; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@63127.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@63182.6]
  wire [12:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@63188.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@63189.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63194.8]
  wire  _T_160; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@63225.8]
  wire  _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@63228.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63238.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63239.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63245.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63246.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63253.8]
  wire  _T_180; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63254.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63260.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63261.8]
  wire  _T_184; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@63266.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63268.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63269.8]
  wire [3:0] _T_188; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@63274.8]
  wire  _T_189; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@63275.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63277.8]
  wire  _T_192; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63278.8]
  wire  _T_193; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@63283.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63285.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63286.8]
  wire  _T_197; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@63292.6]
  wire  _T_257; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@63384.8]
  wire  _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63386.8]
  wire  _T_260; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63387.8]
  wire  _T_270; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@63410.6]
  wire  _T_272; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@63413.8]
  wire  _T_280; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@63421.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63424.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63425.8]
  wire  _T_291; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@63444.8]
  wire  _T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63446.8]
  wire  _T_294; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63447.8]
  wire  _T_295; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@63452.8]
  wire  _T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63454.8]
  wire  _T_298; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63455.8]
  wire  _T_303; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@63469.6]
  wire  _T_332; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@63520.6]
  wire [3:0] _T_357; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@63562.8]
  wire [3:0] _T_358; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@63563.8]
  wire  _T_359; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@63564.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63566.8]
  wire  _T_362; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63567.8]
  wire  _T_363; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@63573.6]
  wire  _T_381; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@63604.8]
  wire  _T_383; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63606.8]
  wire  _T_384; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63607.8]
  wire  _T_389; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@63621.6]
  wire  _T_407; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@63652.8]
  wire  _T_409; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63654.8]
  wire  _T_410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63655.8]
  wire  _T_415; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@63669.6]
  wire  _T_433; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@63700.8]
  wire  _T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63702.8]
  wire  _T_436; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63703.8]
  wire  _T_445; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@63727.6]
  wire  _T_447; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63729.6]
  wire  _T_448; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63730.6]
  wire  _T_452; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63738.6]
  wire  _T_460; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63746.6]
  wire  _T_465; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63751.6]
  wire  _T_466; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63752.6]
  wire  _T_467; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63753.6]
  wire  _T_469; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63761.6]
  wire  _T_470; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63762.6]
  wire  _T_471; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63763.6]
  wire  _T_472; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63764.6]
  wire  _T_474; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@63766.6]
  wire  _T_476; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63769.8]
  wire  _T_477; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63770.8]
  wire  _T_478; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@63775.8]
  wire  _T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63777.8]
  wire  _T_481; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63778.8]
  wire  _T_494; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@63808.6]
  wire  _T_522; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@63866.6]
  wire  _T_551; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@63925.6]
  wire  _T_568; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@63960.6]
  wire  _T_586; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@63996.6]
  wire  _T_618; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@64062.4]
  wire  _T_625; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@64069.4]
  reg [3:0] _T_627; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@64071.4]
  wire [3:0] _T_629; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64073.4]
  wire  _T_630; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64074.4]
  reg [2:0] _T_638; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@64085.4]
  reg [2:0] _T_639; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@64086.4]
  reg [2:0] _T_640; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@64087.4]
  reg [4:0] _T_641; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@64088.4]
  reg [11:0] _T_642; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@64089.4]
  wire  _T_643; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@64090.4]
  wire  _T_644; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@64091.4]
  wire  _T_645; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@64093.6]
  wire  _T_647; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64095.6]
  wire  _T_648; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64096.6]
  wire  _T_649; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@64101.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64103.6]
  wire  _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64104.6]
  wire  _T_653; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@64109.6]
  wire  _T_655; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64111.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64112.6]
  wire  _T_657; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@64117.6]
  wire  _T_659; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64119.6]
  wire  _T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64120.6]
  wire  _T_661; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@64125.6]
  wire  _T_663; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64127.6]
  wire  _T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64128.6]
  wire  _T_666; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@64135.4]
  wire  _T_667; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@64143.4]
  wire [12:0] _T_669; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@64145.4]
  wire [5:0] _T_671; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@64147.4]
  reg [3:0] _T_675; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@64151.4]
  wire [3:0] _T_677; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64153.4]
  wire  _T_678; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64154.4]
  reg [2:0] _T_686; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@64165.4]
  reg [2:0] _T_688; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@64167.4]
  reg [4:0] _T_689; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@64168.4]
  wire  _T_692; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@64171.4]
  wire  _T_693; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@64172.4]
  wire  _T_694; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@64174.6]
  wire  _T_696; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64176.6]
  wire  _T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64177.6]
  wire  _T_702; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@64190.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64192.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64193.6]
  wire  _T_706; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@64198.6]
  wire  _T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64200.6]
  wire  _T_709; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64201.6]
  wire  _T_719; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@64224.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@64233.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@64234.4]
  reg [75:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@64235.4]
  reg [3:0] _T_729; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@64245.4]
  wire [3:0] _T_731; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64247.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64248.4]
  reg [3:0] _T_747; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@64267.4]
  wire [3:0] _T_749; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64269.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64270.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@64289.4]
  wire [7:0] _T_757; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@64289.4]
  wire [75:0] _T_758; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@64290.4]
  wire [15:0] _T_762; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@64294.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@64295.4]
  wire [75:0] _T_763; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@64295.4]
  wire [75:0] _T_764; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@64296.4]
  wire [75:0] _T_766; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@64301.4]
  wire [75:0] _T_771; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@64306.4]
  wire [75:0] _T_772; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@64307.4]
  wire  _T_776; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@64332.4]
  wire [31:0] _T_778; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@64335.6]
  wire [3:0] _T_779; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@64337.6]
  wire [3:0] _T_780; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@64338.6]
  wire [3:0] _T_781; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@64340.6]
  wire [3:0] _T_782; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@64341.6]
  wire [6:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@64343.6]
  wire [7:0] _T_783; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@64343.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  wire [258:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@64344.6]
  wire [258:0] _T_784; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@64344.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  wire [258:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@64347.6]
  wire [258:0] _T_786; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@64347.6]
  wire [18:0] _T_787; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@64349.6]
  wire  _T_789; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@64351.6]
  wire  _T_791; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64353.6]
  wire  _T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64354.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  wire [258:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  wire  _T_795; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@64368.4]
  wire  _T_797; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@64370.4]
  wire  _T_798; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@64371.4]
  wire [31:0] _T_799; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@64373.6]
  wire [270:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@64380.6]
  wire [270:0] _T_805; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@64380.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@64372.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@64372.4]
  wire  _T_812; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@64390.4]
  wire  _T_815; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@64393.4]
  wire [18:0] _T_816; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@64395.6]
  wire  _T_818; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@64397.6]
  wire  _T_819; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@64398.6]
  wire  _T_820; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@64399.6]
  wire  _T_821; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@64400.6]
  wire  _T_822; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@64401.6]
  wire  _T_823; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@64402.6]
  wire  _T_825; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64404.6]
  wire  _T_826; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64405.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64287.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64288.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@64297.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire  _T_828; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  wire  _T_830; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  wire  _T_831; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@64414.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire  _T_832; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  wire  _T_833; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  wire  _T_834; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@64417.6]
  wire  _T_835; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@64418.6]
  wire  _T_836; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@64419.6]
  wire  _T_838; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64421.6]
  wire  _T_839; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64422.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64298.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64299.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@64308.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@64427.6]
  wire  _T_840; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@64427.6]
  wire  _T_842; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@64429.6]
  wire  _T_843; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@64430.6]
  wire  _T_845; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64432.6]
  wire  _T_846; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64433.6]
  wire  _T_848; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@64440.4]
  wire  _T_849; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@64441.4]
  wire  _T_851; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@64443.4]
  wire  _T_853; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@64445.4]
  wire  _T_854; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@64447.6]
  wire  _T_855; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@64448.6]
  wire  _T_857; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64450.6]
  wire  _T_858; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64451.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64281.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64282.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@64336.6]
  wire [18:0] _T_859; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@64457.4]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64360.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64361.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@64374.6]
  wire [18:0] _T_860; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@64458.4]
  wire [18:0] _T_861; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@64459.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64283.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64284.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@64345.6]
  wire [75:0] _T_862; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@64461.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64362.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64363.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@64381.6]
  wire [75:0] _T_863; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@64462.4]
  wire [75:0] _T_864; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@64463.4]
  wire [75:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64285.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64286.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@64348.6]
  wire [75:0] _T_865; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@64465.4]
  wire [75:0] _T_867; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@64467.4]
  reg [31:0] _T_868; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@64469.4]
  wire  _T_869; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@64472.4]
  wire  _T_870; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@64473.4]
  wire  _T_871; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@64474.4]
  wire  _T_872; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@64475.4]
  wire  _T_873; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@64476.4]
  wire  _T_874; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@64477.4]
  wire  _T_876; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64479.4]
  wire  _T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64480.4]
  wire [31:0] _T_879; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@64486.4]
  wire  _T_882; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@64490.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63196.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63306.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63427.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63486.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63537.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63587.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63635.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63683.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63772.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63814.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63872.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63931.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63966.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64002.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@64470.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63051.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63059.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63064.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63065.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63066.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63074.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63075.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63076.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63077.6]
  assign _T_29 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@63079.6]
  assign _T_31 = ~_T_29[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@63081.6]
  assign _GEN_56 = {{6'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@63082.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@63082.6]
  assign _T_33 = _T_32 == 12'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@63083.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@63086.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@63088.6]
  assign _T_39 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@63089.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@63092.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63094.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63095.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63097.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63098.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@63101.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63102.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63103.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63104.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63105.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63106.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63107.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63108.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63109.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63110.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@63111.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@63112.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@63113.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@63116.6]
  assign _T_77 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@63127.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@63182.6]
  assign _T_133 = $signed(_T_77) & -13'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@63188.8]
  assign _T_134 = $signed(_T_133) == 13'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@63189.8]
  assign _T_139 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63194.8]
  assign _T_160 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@63225.8]
  assign _T_163 = _T_20 & _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@63228.8]
  assign _T_172 = _T_163 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63238.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63239.8]
  assign _T_175 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63245.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63246.8]
  assign _T_179 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63253.8]
  assign _T_180 = ~_T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63254.8]
  assign _T_182 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63260.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63261.8]
  assign _T_184 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@63266.8]
  assign _T_186 = _T_184 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63268.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63269.8]
  assign _T_188 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@63274.8]
  assign _T_189 = _T_188 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@63275.8]
  assign _T_191 = _T_189 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63277.8]
  assign _T_192 = ~_T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63278.8]
  assign _T_193 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@63283.8]
  assign _T_195 = _T_193 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63285.8]
  assign _T_196 = ~_T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63286.8]
  assign _T_197 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@63292.6]
  assign _T_257 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@63384.8]
  assign _T_259 = _T_257 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63386.8]
  assign _T_260 = ~_T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63387.8]
  assign _T_270 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@63410.6]
  assign _T_272 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@63413.8]
  assign _T_280 = _T_272 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@63421.8]
  assign _T_283 = _T_280 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63424.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63425.8]
  assign _T_291 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@63444.8]
  assign _T_293 = _T_291 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63446.8]
  assign _T_294 = ~_T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63447.8]
  assign _T_295 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@63452.8]
  assign _T_297 = _T_295 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63454.8]
  assign _T_298 = ~_T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63455.8]
  assign _T_303 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@63469.6]
  assign _T_332 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@63520.6]
  assign _T_357 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@63562.8]
  assign _T_358 = io_in_a_bits_mask & _T_357; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@63563.8]
  assign _T_359 = _T_358 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@63564.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63566.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63567.8]
  assign _T_363 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@63573.6]
  assign _T_381 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@63604.8]
  assign _T_383 = _T_381 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63606.8]
  assign _T_384 = ~_T_383; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63607.8]
  assign _T_389 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@63621.6]
  assign _T_407 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@63652.8]
  assign _T_409 = _T_407 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63654.8]
  assign _T_410 = ~_T_409; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63655.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@63669.6]
  assign _T_433 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@63700.8]
  assign _T_435 = _T_433 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63702.8]
  assign _T_436 = ~_T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63703.8]
  assign _T_445 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@63727.6]
  assign _T_447 = _T_445 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63729.6]
  assign _T_448 = ~_T_447; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63730.6]
  assign _T_452 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63738.6]
  assign _T_460 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@63746.6]
  assign _T_465 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63751.6]
  assign _T_466 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63752.6]
  assign _T_467 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@63753.6]
  assign _T_469 = _T_452 | _T_460; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63761.6]
  assign _T_470 = _T_469 | _T_465; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63762.6]
  assign _T_471 = _T_470 | _T_466; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63763.6]
  assign _T_472 = _T_471 | _T_467; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@63764.6]
  assign _T_474 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@63766.6]
  assign _T_476 = _T_472 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63769.8]
  assign _T_477 = ~_T_476; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63770.8]
  assign _T_478 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@63775.8]
  assign _T_480 = _T_478 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63777.8]
  assign _T_481 = ~_T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63778.8]
  assign _T_494 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@63808.6]
  assign _T_522 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@63866.6]
  assign _T_551 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@63925.6]
  assign _T_568 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@63960.6]
  assign _T_586 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@63996.6]
  assign _T_618 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@64062.4]
  assign _T_625 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@64069.4]
  assign _T_629 = _T_627 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64073.4]
  assign _T_630 = _T_627 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64074.4]
  assign _T_643 = ~_T_630; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@64090.4]
  assign _T_644 = io_in_a_valid & _T_643; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@64091.4]
  assign _T_645 = io_in_a_bits_opcode == _T_638; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@64093.6]
  assign _T_647 = _T_645 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64095.6]
  assign _T_648 = ~_T_647; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64096.6]
  assign _T_649 = io_in_a_bits_param == _T_639; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@64101.6]
  assign _T_651 = _T_649 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64103.6]
  assign _T_652 = ~_T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64104.6]
  assign _T_653 = io_in_a_bits_size == _T_640; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@64109.6]
  assign _T_655 = _T_653 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64111.6]
  assign _T_656 = ~_T_655; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64112.6]
  assign _T_657 = io_in_a_bits_source == _T_641; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@64117.6]
  assign _T_659 = _T_657 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64119.6]
  assign _T_660 = ~_T_659; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64120.6]
  assign _T_661 = io_in_a_bits_address == _T_642; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@64125.6]
  assign _T_663 = _T_661 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64127.6]
  assign _T_664 = ~_T_663; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64128.6]
  assign _T_666 = _T_618 & _T_630; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@64135.4]
  assign _T_667 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@64143.4]
  assign _T_669 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@64145.4]
  assign _T_671 = ~_T_669[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@64147.4]
  assign _T_677 = _T_675 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64153.4]
  assign _T_678 = _T_675 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64154.4]
  assign _T_692 = ~_T_678; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@64171.4]
  assign _T_693 = io_in_d_valid & _T_692; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@64172.4]
  assign _T_694 = io_in_d_bits_opcode == _T_686; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@64174.6]
  assign _T_696 = _T_694 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64176.6]
  assign _T_697 = ~_T_696; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64177.6]
  assign _T_702 = io_in_d_bits_size == _T_688; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@64190.6]
  assign _T_704 = _T_702 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64192.6]
  assign _T_705 = ~_T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64193.6]
  assign _T_706 = io_in_d_bits_source == _T_689; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@64198.6]
  assign _T_708 = _T_706 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64200.6]
  assign _T_709 = ~_T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64201.6]
  assign _T_719 = _T_667 & _T_678; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@64224.4]
  assign _T_731 = _T_729 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64247.4]
  assign a_first = _T_729 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64248.4]
  assign _T_749 = _T_747 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@64269.4]
  assign d_first = _T_747 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@64270.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@64289.4]
  assign _T_757 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@64289.4]
  assign _T_758 = inflight_opcodes >> _T_757; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@64290.4]
  assign _T_762 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@64294.4]
  assign _GEN_58 = {{60'd0}, _T_762}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@64295.4]
  assign _T_763 = _T_758 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@64295.4]
  assign _T_764 = {{1'd0}, _T_763[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@64296.4]
  assign _T_766 = inflight_sizes >> _T_757; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@64301.4]
  assign _T_771 = _T_766 & _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@64306.4]
  assign _T_772 = {{1'd0}, _T_771[75:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@64307.4]
  assign _T_776 = _T_618 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@64332.4]
  assign _T_778 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@64335.6]
  assign _T_779 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@64337.6]
  assign _T_780 = _T_779 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@64338.6]
  assign _T_781 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@64340.6]
  assign _T_782 = _T_781 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@64341.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@64343.6]
  assign _T_783 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@64343.6]
  assign a_opcodes_set_interm = _T_776 ? _T_780 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  assign _GEN_64 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@64344.6]
  assign _T_784 = _GEN_64 << _T_783; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@64344.6]
  assign a_sizes_set_interm = _T_776 ? _T_782 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  assign _GEN_66 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@64347.6]
  assign _T_786 = _GEN_66 << _T_783; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@64347.6]
  assign _T_787 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@64349.6]
  assign _T_789 = ~_T_787[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@64351.6]
  assign _T_791 = _T_789 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64353.6]
  assign _T_792 = ~_T_791; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64354.6]
  assign _GEN_15 = _T_776 ? _T_778 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  assign _GEN_18 = _T_776 ? _T_784 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  assign _GEN_19 = _T_776 ? _T_786 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@64334.4]
  assign _T_795 = _T_667 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@64368.4]
  assign _T_797 = ~_T_474; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@64370.4]
  assign _T_798 = _T_795 & _T_797; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@64371.4]
  assign _T_799 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@64373.6]
  assign _GEN_68 = {{255'd0}, _T_762}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@64380.6]
  assign _T_805 = _GEN_68 << _T_757; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@64380.6]
  assign _GEN_20 = _T_798 ? _T_799 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@64372.4]
  assign _GEN_21 = _T_798 ? _T_805 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@64372.4]
  assign _T_812 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@64390.4]
  assign _T_815 = _T_812 & _T_797; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@64393.4]
  assign _T_816 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@64395.6]
  assign _T_818 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@64397.6]
  assign _T_819 = io_in_a_valid & _T_818; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@64398.6]
  assign _T_820 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@64399.6]
  assign _T_821 = _T_819 & _T_820; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@64400.6]
  assign _T_822 = _T_821 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@64401.6]
  assign _T_823 = _T_816[0] | _T_822; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@64402.6]
  assign _T_825 = _T_823 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64404.6]
  assign _T_826 = ~_T_825; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64405.6]
  assign a_opcode_lookup = _T_764[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64287.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64288.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@64297.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _T_828 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@64411.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  assign _T_830 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@64413.6]
  assign _T_831 = _T_828 | _T_830; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@64414.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _T_832 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@64415.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  assign _T_833 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@64416.6]
  assign _T_834 = _T_832 | _T_833; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@64417.6]
  assign _T_835 = io_in_a_valid & _T_834; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@64418.6]
  assign _T_836 = _T_831 | _T_835; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@64419.6]
  assign _T_838 = _T_836 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64421.6]
  assign _T_839 = ~_T_838; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64422.6]
  assign a_size_lookup = _T_772[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64298.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64299.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@64308.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@64427.6]
  assign _T_840 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@64427.6]
  assign _T_842 = io_in_a_valid & _T_820; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@64429.6]
  assign _T_843 = _T_840 | _T_842; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@64430.6]
  assign _T_845 = _T_843 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64432.6]
  assign _T_846 = ~_T_845; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64433.6]
  assign _T_848 = _T_812 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@64440.4]
  assign _T_849 = _T_848 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@64441.4]
  assign _T_851 = _T_849 & _T_818; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@64443.4]
  assign _T_853 = _T_851 & _T_797; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@64445.4]
  assign _T_854 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@64447.6]
  assign _T_855 = _T_854 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@64448.6]
  assign _T_857 = _T_855 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64450.6]
  assign _T_858 = ~_T_857; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64451.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64281.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64282.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@64336.6]
  assign _T_859 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@64457.4]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64360.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64361.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@64374.6]
  assign _T_860 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@64458.4]
  assign _T_861 = _T_859 & _T_860; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@64459.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64283.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64284.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@64345.6]
  assign _T_862 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@64461.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64362.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64363.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@64381.6]
  assign _T_863 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@64462.4]
  assign _T_864 = _T_862 & _T_863; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@64463.4]
  assign a_sizes_set = _GEN_19[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64285.4 :freechips.rocketchip.system.DefaultRV32Config.fir@64286.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@64348.6]
  assign _T_865 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@64465.4]
  assign _T_867 = _T_865 & _T_863; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@64467.4]
  assign _T_869 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@64472.4]
  assign _T_870 = ~_T_869; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@64473.4]
  assign _T_871 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@64474.4]
  assign _T_872 = _T_870 | _T_871; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@64475.4]
  assign _T_873 = _T_868 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@64476.4]
  assign _T_874 = _T_872 | _T_873; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@64477.4]
  assign _T_876 = _T_874 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64479.4]
  assign _T_877 = ~_T_876; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64480.4]
  assign _T_879 = _T_868 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@64486.4]
  assign _T_882 = _T_618 | _T_667; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@64490.4]
  assign _GEN_72 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63196.10]
  assign _GEN_88 = io_in_a_valid & _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63306.10]
  assign _GEN_106 = io_in_a_valid & _T_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63427.10]
  assign _GEN_118 = io_in_a_valid & _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63486.10]
  assign _GEN_128 = io_in_a_valid & _T_332; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63537.10]
  assign _GEN_138 = io_in_a_valid & _T_363; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63587.10]
  assign _GEN_148 = io_in_a_valid & _T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63635.10]
  assign _GEN_158 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63683.10]
  assign _GEN_170 = io_in_d_valid & _T_474; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63772.10]
  assign _GEN_174 = io_in_d_valid & _T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63814.10]
  assign _GEN_180 = io_in_d_valid & _T_522; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63872.10]
  assign _GEN_186 = io_in_d_valid & _T_551; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63931.10]
  assign _GEN_188 = io_in_d_valid & _T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63966.10]
  assign _GEN_190 = io_in_d_valid & _T_586; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64002.10]
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
  _T_627 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_638 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_639 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_640 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_641 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_642 = _RAND_5[11:0];
  _RAND_6 = {1{`RANDOM}};
  _T_675 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_686 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_688 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  _T_689 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[18:0];
  _RAND_11 = {3{`RANDOM}};
  inflight_opcodes = _RAND_11[75:0];
  _RAND_12 = {3{`RANDOM}};
  inflight_sizes = _RAND_12[75:0];
  _RAND_13 = {1{`RANDOM}};
  _T_729 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  _T_747 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  _T_868 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_627 <= 4'h0;
    end else if (_T_618) begin
      if (_T_630) begin
        if (_T_625) begin
          _T_627 <= _T_31[5:2];
        end else begin
          _T_627 <= 4'h0;
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
      _T_675 <= 4'h0;
    end else if (_T_667) begin
      if (_T_678) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_675 <= _T_671[5:2];
        end else begin
          _T_675 <= 4'h0;
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
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_861;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_864;
    end
    if (reset) begin
      inflight_sizes <= 76'h0;
    end else begin
      inflight_sizes <= _T_867;
    end
    if (reset) begin
      _T_729 <= 4'h0;
    end else if (_T_618) begin
      if (a_first) begin
        if (_T_625) begin
          _T_729 <= _T_31[5:2];
        end else begin
          _T_729 <= 4'h0;
        end
      end else begin
        _T_729 <= _T_731;
      end
    end
    if (reset) begin
      _T_747 <= 4'h0;
    end else if (_T_667) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_747 <= _T_671[5:2];
        end else begin
          _T_747 <= 4'h0;
        end
      end else begin
        _T_747 <= _T_749;
      end
    end
    if (reset) begin
      _T_868 <= 32'h0;
    end else if (_T_882) begin
      _T_868 <= 32'h0;
    end else begin
      _T_868 <= _T_879;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63241.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63242.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63248.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63249.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63256.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63257.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63263.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63264.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63271.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63272.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63280.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63281.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63288.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63289.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63351.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63352.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63358.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63359.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63373.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63374.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63381.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63382.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_260) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_260) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63398.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63399.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63406.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63407.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63427.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63428.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63434.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63435.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63441.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63442.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63486.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63487.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63493.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63494.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63537.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63538.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63544.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63545.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63551.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63552.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63559.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63560.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63569.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63570.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63587.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63588.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63594.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63595.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63601.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63602.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_384) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63609.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_384) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63610.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63617.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63618.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63635.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63636.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63642.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63643.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63649.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63650.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63657.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_410) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63658.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63665.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63666.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63683.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63684.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63690.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63691.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63697.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63698.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_436) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63705.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_436) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63706.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63713.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63714.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63721.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@63722.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63732.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63733.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63772.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63773.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63780.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63781.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63814.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63815.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63821.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63822.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63829.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63830.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63872.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63873.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63879.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63880.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_481) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63887.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_481) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63888.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63931.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63932.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63966.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@63967.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_477) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64002.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_477) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64003.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64098.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64099.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64106.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64107.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64114.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64115.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64122.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64123.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64130.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64131.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64179.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64180.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64195.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64196.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64203.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64204.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64356.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64357.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64407.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64408.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64424.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64425.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64435.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64436.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64453.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@64454.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_877) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64482.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_877) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64483.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
