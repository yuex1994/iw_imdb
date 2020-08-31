module TLMonitor_20( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54302.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54303.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54304.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [13:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@54305.4]
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
  reg [159:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@55758.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@54319.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@54327.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54332.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54333.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54334.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54342.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54343.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54344.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54345.6]
  wire [26:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@54347.6]
  wire [11:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@54349.6]
  wire [13:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@54350.6]
  wire [13:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@54350.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@54351.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@54354.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@54356.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@54357.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@54360.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54362.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54363.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54365.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54366.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@54369.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54370.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54371.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54372.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54373.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54374.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54375.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54376.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54377.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54378.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54379.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54380.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54381.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@54384.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@54450.6]
  wire [13:0] _T_130; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@54453.8]
  wire [14:0] _T_131; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@54454.8]
  wire [14:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@54456.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@54457.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54462.8]
  wire  _T_160; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@54493.8]
  wire  _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54496.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54506.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54507.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54513.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54514.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54521.8]
  wire  _T_180; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54522.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54528.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54529.8]
  wire  _T_184; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@54534.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54536.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54537.8]
  wire [3:0] _T_188; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@54542.8]
  wire  _T_189; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@54543.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54545.8]
  wire  _T_192; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54546.8]
  wire  _T_193; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@54551.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54553.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54554.8]
  wire  _T_197; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@54560.6]
  wire  _T_257; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@54652.8]
  wire  _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54654.8]
  wire  _T_260; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54655.8]
  wire  _T_270; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@54678.6]
  wire  _T_272; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@54681.8]
  wire  _T_280; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@54689.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54692.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54693.8]
  wire  _T_291; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@54712.8]
  wire  _T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54714.8]
  wire  _T_294; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54715.8]
  wire  _T_295; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@54720.8]
  wire  _T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54722.8]
  wire  _T_298; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54723.8]
  wire  _T_303; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@54737.6]
  wire  _T_332; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@54788.6]
  wire [3:0] _T_357; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@54830.8]
  wire [3:0] _T_358; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@54831.8]
  wire  _T_359; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@54832.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54834.8]
  wire  _T_362; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54835.8]
  wire  _T_363; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@54841.6]
  wire  _T_365; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@54844.8]
  wire  _T_373; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@54852.8]
  wire  _T_376; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54855.8]
  wire  _T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54856.8]
  wire  _T_384; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@54875.8]
  wire  _T_386; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54877.8]
  wire  _T_387; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54878.8]
  wire  _T_392; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@54892.6]
  wire  _T_413; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@54926.8]
  wire  _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54928.8]
  wire  _T_416; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54929.8]
  wire  _T_421; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@54943.6]
  wire  _T_442; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@54977.8]
  wire  _T_444; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54979.8]
  wire  _T_445; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54980.8]
  wire  _T_454; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@55004.6]
  wire  _T_456; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55006.6]
  wire  _T_457; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55007.6]
  wire  _T_461; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@55015.6]
  wire  _T_469; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@55023.6]
  wire  _T_474; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55028.6]
  wire  _T_475; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55029.6]
  wire  _T_476; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55030.6]
  wire  _T_478; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55038.6]
  wire  _T_479; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55039.6]
  wire  _T_480; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55040.6]
  wire  _T_481; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55041.6]
  wire  _T_483; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@55043.6]
  wire  _T_485; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55046.8]
  wire  _T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55047.8]
  wire  _T_487; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@55052.8]
  wire  _T_489; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55054.8]
  wire  _T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55055.8]
  wire  _T_495; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@55068.8]
  wire  _T_497; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55070.8]
  wire  _T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55071.8]
  wire  _T_503; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@55085.6]
  wire  _T_531; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@55143.6]
  wire  _T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55186.8]
  wire  _T_554; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55187.8]
  wire  _T_560; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@55202.6]
  wire  _T_577; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@55237.6]
  wire  _T_595; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@55273.6]
  wire  _T_627; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@55339.4]
  wire  _T_634; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@55346.4]
  reg [9:0] _T_636; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@55348.4]
  wire [9:0] _T_638; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55350.4]
  wire  _T_639; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55351.4]
  reg [2:0] _T_647; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@55362.4]
  reg [2:0] _T_648; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@55363.4]
  reg [3:0] _T_649; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@55364.4]
  reg [4:0] _T_650; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@55365.4]
  reg [13:0] _T_651; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@55366.4]
  wire  _T_652; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@55367.4]
  wire  _T_653; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@55368.4]
  wire  _T_654; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@55370.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55372.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55373.6]
  wire  _T_658; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@55378.6]
  wire  _T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55380.6]
  wire  _T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55381.6]
  wire  _T_662; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@55386.6]
  wire  _T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55388.6]
  wire  _T_665; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55389.6]
  wire  _T_666; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@55394.6]
  wire  _T_668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55396.6]
  wire  _T_669; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55397.6]
  wire  _T_670; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@55402.6]
  wire  _T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55404.6]
  wire  _T_673; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55405.6]
  wire  _T_675; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@55412.4]
  wire  _T_676; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@55420.4]
  wire [26:0] _T_678; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@55422.4]
  wire [11:0] _T_680; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@55424.4]
  reg [9:0] _T_684; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@55428.4]
  wire [9:0] _T_686; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55430.4]
  wire  _T_687; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55431.4]
  reg [2:0] _T_695; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@55442.4]
  reg [3:0] _T_697; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@55444.4]
  reg [4:0] _T_698; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@55445.4]
  wire  _T_701; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@55448.4]
  wire  _T_702; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@55449.4]
  wire  _T_703; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@55451.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55453.6]
  wire  _T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55454.6]
  wire  _T_711; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@55467.6]
  wire  _T_713; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55469.6]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55470.6]
  wire  _T_715; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@55475.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55477.6]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55478.6]
  wire  _T_728; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@55501.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@55510.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@55511.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@55512.4]
  reg [9:0] _T_738; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@55522.4]
  wire [9:0] _T_740; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55524.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55525.4]
  reg [9:0] _T_756; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@55544.4]
  wire [9:0] _T_758; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55546.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55547.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@55566.4]
  wire [7:0] _T_766; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@55566.4]
  wire [75:0] _T_767; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@55567.4]
  wire [15:0] _T_771; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@55571.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@55572.4]
  wire [75:0] _T_772; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@55572.4]
  wire [75:0] _T_773; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@55573.4]
  wire [7:0] _T_774; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@55577.4]
  wire [151:0] _T_775; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@55578.4]
  wire [15:0] _T_779; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@55582.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@55583.4]
  wire [151:0] _T_780; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@55583.4]
  wire [151:0] _T_781; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@55584.4]
  wire  _T_785; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@55609.4]
  wire [31:0] _T_787; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@55612.6]
  wire [3:0] _T_788; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@55614.6]
  wire [3:0] _T_789; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@55615.6]
  wire [4:0] _T_790; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@55617.6]
  wire [4:0] _T_791; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@55618.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@55620.6]
  wire [7:0] _T_792; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@55620.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@55621.6]
  wire [258:0] _T_793; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@55621.6]
  wire [7:0] _T_794; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@55623.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@55624.6]
  wire [259:0] _T_795; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@55624.6]
  wire [18:0] _T_796; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@55626.6]
  wire  _T_798; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@55628.6]
  wire  _T_800; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55630.6]
  wire  _T_801; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55631.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  wire  _T_804; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@55645.4]
  wire  _T_806; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@55647.4]
  wire  _T_807; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@55648.4]
  wire [31:0] _T_808; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@55650.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@55657.6]
  wire [270:0] _T_814; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@55657.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@55664.6]
  wire [270:0] _T_820; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@55664.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  wire  _T_821; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@55667.4]
  wire  _T_824; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@55670.4]
  wire [18:0] _T_825; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@55672.6]
  wire  _T_827; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@55674.6]
  wire  _T_828; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@55675.6]
  wire  _T_829; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@55676.6]
  wire  _T_830; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@55677.6]
  wire  _T_831; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@55678.6]
  wire  _T_832; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@55679.6]
  wire  _T_834; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55681.6]
  wire  _T_835; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55682.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55564.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55565.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@55574.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire  _T_837; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  wire  _T_839; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  wire  _T_840; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@55691.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire  _T_841; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  wire  _T_842; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  wire  _T_843; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@55694.6]
  wire  _T_844; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@55695.6]
  wire  _T_845; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@55696.6]
  wire  _T_847; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55698.6]
  wire  _T_848; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55699.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55575.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55576.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@55585.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@55704.6]
  wire  _T_849; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@55704.6]
  wire  _T_851; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@55706.6]
  wire  _T_852; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@55707.6]
  wire  _T_854; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55709.6]
  wire  _T_855; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55710.6]
  wire  _T_857; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@55717.4]
  wire  _T_858; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@55718.4]
  wire  _T_860; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@55720.4]
  wire  _T_862; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@55722.4]
  wire  _T_863; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@55724.6]
  wire  _T_864; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@55725.6]
  wire  _T_866; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55727.6]
  wire  _T_867; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55728.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55558.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55559.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@55613.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55637.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55638.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@55651.6]
  wire  _T_868; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@55734.4]
  wire  _T_869; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@55735.4]
  wire  _T_870; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@55736.4]
  wire  _T_871; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@55737.4]
  wire  _T_873; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55739.4]
  wire  _T_874; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55740.4]
  wire [18:0] _T_875; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@55745.4]
  wire [18:0] _T_876; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@55746.4]
  wire [18:0] _T_877; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@55747.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55560.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55561.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@55622.6]
  wire [75:0] _T_878; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@55749.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55639.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55640.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@55658.6]
  wire [75:0] _T_879; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@55750.4]
  wire [75:0] _T_880; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@55751.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55562.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55563.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@55625.6]
  wire [151:0] _T_881; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@55753.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55641.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55642.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@55665.6]
  wire [151:0] _T_882; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@55754.4]
  wire [151:0] _T_883; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@55755.4]
  reg [31:0] _T_884; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@55757.4]
  wire  _T_885; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@55760.4]
  wire  _T_886; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@55761.4]
  wire  _T_887; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@55762.4]
  wire  _T_888; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@55763.4]
  wire  _T_889; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@55764.4]
  wire  _T_890; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@55765.4]
  wire  _T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55767.4]
  wire  _T_893; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55768.4]
  wire [31:0] _T_895; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@55774.4]
  wire  _T_898; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@55778.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54464.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54574.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54695.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54754.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54805.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54858.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54909.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54960.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55049.10]
  wire  _GEN_175; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55091.10]
  wire  _GEN_183; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55149.10]
  wire  _GEN_191; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55208.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55243.10]
  wire  _GEN_199; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55279.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@55758.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@54319.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@54327.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54332.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54333.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@54334.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54342.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54343.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54344.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@54345.6]
  assign _T_29 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@54347.6]
  assign _T_31 = ~_T_29[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@54349.6]
  assign _GEN_56 = {{2'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@54350.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@54350.6]
  assign _T_33 = _T_32 == 14'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@54351.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@54354.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@54356.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@54357.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@54360.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54362.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54363.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54365.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54366.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@54369.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54370.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54371.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54372.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54373.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54374.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54375.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54376.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54377.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54378.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@54379.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@54380.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@54381.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@54384.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@54450.6]
  assign _T_130 = io_in_a_bits_address ^ 14'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@54453.8]
  assign _T_131 = {1'b0,$signed(_T_130)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@54454.8]
  assign _T_133 = $signed(_T_131) & -15'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@54456.8]
  assign _T_134 = $signed(_T_133) == 15'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@54457.8]
  assign _T_139 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54462.8]
  assign _T_160 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@54493.8]
  assign _T_163 = _T_20 & _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54496.8]
  assign _T_172 = _T_163 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54506.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54507.8]
  assign _T_175 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54513.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54514.8]
  assign _T_179 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54521.8]
  assign _T_180 = ~_T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54522.8]
  assign _T_182 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54528.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54529.8]
  assign _T_184 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@54534.8]
  assign _T_186 = _T_184 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54536.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54537.8]
  assign _T_188 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@54542.8]
  assign _T_189 = _T_188 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@54543.8]
  assign _T_191 = _T_189 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54545.8]
  assign _T_192 = ~_T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54546.8]
  assign _T_193 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@54551.8]
  assign _T_195 = _T_193 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54553.8]
  assign _T_196 = ~_T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54554.8]
  assign _T_197 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@54560.6]
  assign _T_257 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@54652.8]
  assign _T_259 = _T_257 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54654.8]
  assign _T_260 = ~_T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54655.8]
  assign _T_270 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@54678.6]
  assign _T_272 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@54681.8]
  assign _T_280 = _T_272 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@54689.8]
  assign _T_283 = _T_280 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54692.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54693.8]
  assign _T_291 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@54712.8]
  assign _T_293 = _T_291 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54714.8]
  assign _T_294 = ~_T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54715.8]
  assign _T_295 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@54720.8]
  assign _T_297 = _T_295 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54722.8]
  assign _T_298 = ~_T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54723.8]
  assign _T_303 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@54737.6]
  assign _T_332 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@54788.6]
  assign _T_357 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@54830.8]
  assign _T_358 = io_in_a_bits_mask & _T_357; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@54831.8]
  assign _T_359 = _T_358 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@54832.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54834.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54835.8]
  assign _T_363 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@54841.6]
  assign _T_365 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@54844.8]
  assign _T_373 = _T_365 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@54852.8]
  assign _T_376 = _T_373 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54855.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54856.8]
  assign _T_384 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@54875.8]
  assign _T_386 = _T_384 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54877.8]
  assign _T_387 = ~_T_386; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54878.8]
  assign _T_392 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@54892.6]
  assign _T_413 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@54926.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54928.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54929.8]
  assign _T_421 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@54943.6]
  assign _T_442 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@54977.8]
  assign _T_444 = _T_442 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54979.8]
  assign _T_445 = ~_T_444; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54980.8]
  assign _T_454 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@55004.6]
  assign _T_456 = _T_454 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55006.6]
  assign _T_457 = ~_T_456; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55007.6]
  assign _T_461 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@55015.6]
  assign _T_469 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@55023.6]
  assign _T_474 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55028.6]
  assign _T_475 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55029.6]
  assign _T_476 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@55030.6]
  assign _T_478 = _T_461 | _T_469; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55038.6]
  assign _T_479 = _T_478 | _T_474; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55039.6]
  assign _T_480 = _T_479 | _T_475; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55040.6]
  assign _T_481 = _T_480 | _T_476; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@55041.6]
  assign _T_483 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@55043.6]
  assign _T_485 = _T_481 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55046.8]
  assign _T_486 = ~_T_485; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55047.8]
  assign _T_487 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@55052.8]
  assign _T_489 = _T_487 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55054.8]
  assign _T_490 = ~_T_489; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55055.8]
  assign _T_495 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@55068.8]
  assign _T_497 = _T_495 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55070.8]
  assign _T_498 = ~_T_497; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55071.8]
  assign _T_503 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@55085.6]
  assign _T_531 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@55143.6]
  assign _T_553 = io_in_d_bits_corrupt | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55186.8]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55187.8]
  assign _T_560 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@55202.6]
  assign _T_577 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@55237.6]
  assign _T_595 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@55273.6]
  assign _T_627 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@55339.4]
  assign _T_634 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@55346.4]
  assign _T_638 = _T_636 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55350.4]
  assign _T_639 = _T_636 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55351.4]
  assign _T_652 = ~_T_639; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@55367.4]
  assign _T_653 = io_in_a_valid & _T_652; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@55368.4]
  assign _T_654 = io_in_a_bits_opcode == _T_647; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@55370.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55372.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55373.6]
  assign _T_658 = io_in_a_bits_param == _T_648; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@55378.6]
  assign _T_660 = _T_658 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55380.6]
  assign _T_661 = ~_T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55381.6]
  assign _T_662 = io_in_a_bits_size == _T_649; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@55386.6]
  assign _T_664 = _T_662 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55388.6]
  assign _T_665 = ~_T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55389.6]
  assign _T_666 = io_in_a_bits_source == _T_650; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@55394.6]
  assign _T_668 = _T_666 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55396.6]
  assign _T_669 = ~_T_668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55397.6]
  assign _T_670 = io_in_a_bits_address == _T_651; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@55402.6]
  assign _T_672 = _T_670 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55404.6]
  assign _T_673 = ~_T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55405.6]
  assign _T_675 = _T_627 & _T_639; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@55412.4]
  assign _T_676 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@55420.4]
  assign _T_678 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@55422.4]
  assign _T_680 = ~_T_678[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@55424.4]
  assign _T_686 = _T_684 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55430.4]
  assign _T_687 = _T_684 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55431.4]
  assign _T_701 = ~_T_687; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@55448.4]
  assign _T_702 = io_in_d_valid & _T_701; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@55449.4]
  assign _T_703 = io_in_d_bits_opcode == _T_695; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@55451.6]
  assign _T_705 = _T_703 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55453.6]
  assign _T_706 = ~_T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55454.6]
  assign _T_711 = io_in_d_bits_size == _T_697; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@55467.6]
  assign _T_713 = _T_711 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55469.6]
  assign _T_714 = ~_T_713; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55470.6]
  assign _T_715 = io_in_d_bits_source == _T_698; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@55475.6]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55477.6]
  assign _T_718 = ~_T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55478.6]
  assign _T_728 = _T_676 & _T_687; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@55501.4]
  assign _T_740 = _T_738 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55524.4]
  assign a_first = _T_738 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55525.4]
  assign _T_758 = _T_756 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@55546.4]
  assign d_first = _T_756 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@55547.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@55566.4]
  assign _T_766 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@55566.4]
  assign _T_767 = inflight_opcodes >> _T_766; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@55567.4]
  assign _T_771 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@55571.4]
  assign _GEN_58 = {{60'd0}, _T_771}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@55572.4]
  assign _T_772 = _T_767 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@55572.4]
  assign _T_773 = {{1'd0}, _T_772[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@55573.4]
  assign _T_774 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@55577.4]
  assign _T_775 = inflight_sizes >> _T_774; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@55578.4]
  assign _T_779 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@55582.4]
  assign _GEN_60 = {{136'd0}, _T_779}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@55583.4]
  assign _T_780 = _T_775 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@55583.4]
  assign _T_781 = {{1'd0}, _T_780[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@55584.4]
  assign _T_785 = _T_627 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@55609.4]
  assign _T_787 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@55612.6]
  assign _T_788 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@55614.6]
  assign _T_789 = _T_788 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@55615.6]
  assign _T_790 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@55617.6]
  assign _T_791 = _T_790 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@55618.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@55620.6]
  assign _T_792 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@55620.6]
  assign a_opcodes_set_interm = _T_785 ? _T_789 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@55621.6]
  assign _T_793 = _GEN_63 << _T_792; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@55621.6]
  assign _T_794 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@55623.6]
  assign a_sizes_set_interm = _T_785 ? _T_791 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@55624.6]
  assign _T_795 = _GEN_64 << _T_794; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@55624.6]
  assign _T_796 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@55626.6]
  assign _T_798 = ~_T_796[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@55628.6]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55630.6]
  assign _T_801 = ~_T_800; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55631.6]
  assign _GEN_15 = _T_785 ? _T_787 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  assign _GEN_18 = _T_785 ? _T_793 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  assign _GEN_19 = _T_785 ? _T_795 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@55611.4]
  assign _T_804 = _T_676 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@55645.4]
  assign _T_806 = ~_T_483; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@55647.4]
  assign _T_807 = _T_804 & _T_806; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@55648.4]
  assign _T_808 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@55650.6]
  assign _GEN_66 = {{255'd0}, _T_771}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@55657.6]
  assign _T_814 = _GEN_66 << _T_766; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@55657.6]
  assign _GEN_67 = {{255'd0}, _T_779}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@55664.6]
  assign _T_820 = _GEN_67 << _T_774; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@55664.6]
  assign _GEN_20 = _T_807 ? _T_808 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  assign _GEN_21 = _T_807 ? _T_814 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  assign _GEN_22 = _T_807 ? _T_820 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@55649.4]
  assign _T_821 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@55667.4]
  assign _T_824 = _T_821 & _T_806; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@55670.4]
  assign _T_825 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@55672.6]
  assign _T_827 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@55674.6]
  assign _T_828 = io_in_a_valid & _T_827; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@55675.6]
  assign _T_829 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@55676.6]
  assign _T_830 = _T_828 & _T_829; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@55677.6]
  assign _T_831 = _T_830 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@55678.6]
  assign _T_832 = _T_825[0] | _T_831; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@55679.6]
  assign _T_834 = _T_832 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55681.6]
  assign _T_835 = ~_T_834; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55682.6]
  assign a_opcode_lookup = _T_773[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55564.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55565.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@55574.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _T_837 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@55688.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  assign _T_839 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@55690.6]
  assign _T_840 = _T_837 | _T_839; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@55691.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _T_841 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@55692.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  assign _T_842 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@55693.6]
  assign _T_843 = _T_841 | _T_842; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@55694.6]
  assign _T_844 = io_in_a_valid & _T_843; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@55695.6]
  assign _T_845 = _T_840 | _T_844; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@55696.6]
  assign _T_847 = _T_845 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55698.6]
  assign _T_848 = ~_T_847; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55699.6]
  assign a_size_lookup = _T_781[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55575.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55576.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@55585.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@55704.6]
  assign _T_849 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@55704.6]
  assign _T_851 = io_in_a_valid & _T_829; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@55706.6]
  assign _T_852 = _T_849 | _T_851; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@55707.6]
  assign _T_854 = _T_852 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55709.6]
  assign _T_855 = ~_T_854; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55710.6]
  assign _T_857 = _T_821 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@55717.4]
  assign _T_858 = _T_857 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@55718.4]
  assign _T_860 = _T_858 & _T_827; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@55720.4]
  assign _T_862 = _T_860 & _T_806; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@55722.4]
  assign _T_863 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@55724.6]
  assign _T_864 = _T_863 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@55725.6]
  assign _T_866 = _T_864 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55727.6]
  assign _T_867 = ~_T_866; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55728.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55558.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55559.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@55613.6]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55637.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55638.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@55651.6]
  assign _T_868 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@55734.4]
  assign _T_869 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@55735.4]
  assign _T_870 = ~_T_869; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@55736.4]
  assign _T_871 = _T_868 | _T_870; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@55737.4]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55739.4]
  assign _T_874 = ~_T_873; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55740.4]
  assign _T_875 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@55745.4]
  assign _T_876 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@55746.4]
  assign _T_877 = _T_875 & _T_876; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@55747.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55560.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55561.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@55622.6]
  assign _T_878 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@55749.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55639.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55640.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@55658.6]
  assign _T_879 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@55750.4]
  assign _T_880 = _T_878 & _T_879; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@55751.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55562.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55563.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@55625.6]
  assign _T_881 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@55753.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55641.4 :freechips.rocketchip.system.DefaultRV32Config.fir@55642.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@55665.6]
  assign _T_882 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@55754.4]
  assign _T_883 = _T_881 & _T_882; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@55755.4]
  assign _T_885 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@55760.4]
  assign _T_886 = ~_T_885; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@55761.4]
  assign _T_887 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@55762.4]
  assign _T_888 = _T_886 | _T_887; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@55763.4]
  assign _T_889 = _T_884 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@55764.4]
  assign _T_890 = _T_888 | _T_889; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@55765.4]
  assign _T_892 = _T_890 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55767.4]
  assign _T_893 = ~_T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55768.4]
  assign _T_895 = _T_884 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@55774.4]
  assign _T_898 = _T_627 | _T_676; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@55778.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54464.10]
  assign _GEN_85 = io_in_a_valid & _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54574.10]
  assign _GEN_103 = io_in_a_valid & _T_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54695.10]
  assign _GEN_115 = io_in_a_valid & _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54754.10]
  assign _GEN_125 = io_in_a_valid & _T_332; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54805.10]
  assign _GEN_135 = io_in_a_valid & _T_363; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54858.10]
  assign _GEN_145 = io_in_a_valid & _T_392; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54909.10]
  assign _GEN_155 = io_in_a_valid & _T_421; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54960.10]
  assign _GEN_167 = io_in_d_valid & _T_483; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55049.10]
  assign _GEN_175 = io_in_d_valid & _T_503; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55091.10]
  assign _GEN_183 = io_in_d_valid & _T_531; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55149.10]
  assign _GEN_191 = io_in_d_valid & _T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55208.10]
  assign _GEN_195 = io_in_d_valid & _T_577; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55243.10]
  assign _GEN_199 = io_in_d_valid & _T_595; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55279.10]
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
  _T_636 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_647 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_648 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_649 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_650 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_651 = _RAND_5[13:0];
  _RAND_6 = {1{`RANDOM}};
  _T_684 = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  _T_695 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_697 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  _T_698 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[18:0];
  _RAND_11 = {3{`RANDOM}};
  inflight_opcodes = _RAND_11[75:0];
  _RAND_12 = {5{`RANDOM}};
  inflight_sizes = _RAND_12[151:0];
  _RAND_13 = {1{`RANDOM}};
  _T_738 = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  _T_756 = _RAND_14[9:0];
  _RAND_15 = {1{`RANDOM}};
  _T_884 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_636 <= 10'h0;
    end else if (_T_627) begin
      if (_T_639) begin
        if (_T_634) begin
          _T_636 <= _T_31[11:2];
        end else begin
          _T_636 <= 10'h0;
        end
      end else begin
        _T_636 <= _T_638;
      end
    end
    if (_T_675) begin
      _T_647 <= io_in_a_bits_opcode;
    end
    if (_T_675) begin
      _T_648 <= io_in_a_bits_param;
    end
    if (_T_675) begin
      _T_649 <= io_in_a_bits_size;
    end
    if (_T_675) begin
      _T_650 <= io_in_a_bits_source;
    end
    if (_T_675) begin
      _T_651 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_684 <= 10'h0;
    end else if (_T_676) begin
      if (_T_687) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_684 <= _T_680[11:2];
        end else begin
          _T_684 <= 10'h0;
        end
      end else begin
        _T_684 <= _T_686;
      end
    end
    if (_T_728) begin
      _T_695 <= io_in_d_bits_opcode;
    end
    if (_T_728) begin
      _T_697 <= io_in_d_bits_size;
    end
    if (_T_728) begin
      _T_698 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_877;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_880;
    end
    if (reset) begin
      inflight_sizes <= 152'h0;
    end else begin
      inflight_sizes <= _T_883;
    end
    if (reset) begin
      _T_738 <= 10'h0;
    end else if (_T_627) begin
      if (a_first) begin
        if (_T_634) begin
          _T_738 <= _T_31[11:2];
        end else begin
          _T_738 <= 10'h0;
        end
      end else begin
        _T_738 <= _T_740;
      end
    end
    if (reset) begin
      _T_756 <= 10'h0;
    end else if (_T_676) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_756 <= _T_680[11:2];
        end else begin
          _T_756 <= 10'h0;
        end
      end else begin
        _T_756 <= _T_758;
      end
    end
    if (reset) begin
      _T_884 <= 32'h0;
    end else if (_T_898) begin
      _T_884 <= 32'h0;
    end else begin
      _T_884 <= _T_895;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54464.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54465.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54509.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54510.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54516.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54517.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54524.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54525.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54531.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54532.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54539.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54540.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54548.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54549.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54556.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54557.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54574.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54575.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54619.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54620.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54626.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54627.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54634.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54635.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54641.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54642.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54649.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54650.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54657.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54658.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54666.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54667.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54674.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54675.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54695.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54696.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54702.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54703.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54709.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54710.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54717.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54718.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54725.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54726.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54733.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54734.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54755.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54761.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54762.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54768.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54769.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54776.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54777.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54784.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54785.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54805.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54806.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54812.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54813.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54819.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54820.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54827.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54828.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54837.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54838.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54858.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_377) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54859.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54865.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54866.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54872.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54873.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_387) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54880.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_387) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54881.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54888.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54889.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54909.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_377) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54910.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54916.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54917.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54923.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54924.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_416) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54931.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_416) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54932.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54939.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54940.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54960.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54961.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54967.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54968.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54974.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54975.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_445) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54982.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_445) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54983.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54990.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54991.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54998.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@54999.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_457) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55009.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_457) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55010.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55049.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55050.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55081.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55082.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55091.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55092.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55098.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55099.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55106.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55107.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55130.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55131.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55149.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55150.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55156.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55157.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55164.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55165.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55189.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55190.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55225.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55243.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55244.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55260.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55261.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55279.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55280.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55295.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55296.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55375.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55376.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_661) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55383.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_661) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55384.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_665) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55391.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_665) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55392.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_669) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55399.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_669) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55400.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_673) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55407.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_673) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55408.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_706) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55456.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_706) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55457.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55472.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_714) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55473.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55480.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55481.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_785 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55633.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_785 & _T_801) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55634.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_835) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55684.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_835) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55685.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_848) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55701.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_848) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55702.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_855) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55712.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_855) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55713.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_862 & _T_867) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55730.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_862 & _T_867) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55731.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_874) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55742.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_874) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@55743.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_893) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55770.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_893) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@55771.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
