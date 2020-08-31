module TLMonitor_26( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64807.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64808.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64809.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [16:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
  input  [4:0]  io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@64810.4]
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
  reg [95:0] _RAND_10;
  reg [95:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@66237.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@64824.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@64832.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64837.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64838.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64839.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64847.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64848.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64849.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64850.6]
  wire [12:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@64852.6]
  wire [5:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@64854.6]
  wire [16:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@64855.6]
  wire [16:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@64855.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@64856.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@64859.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@64861.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@64862.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@64865.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64867.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64868.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64870.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64871.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@64874.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64875.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64876.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64877.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64878.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64879.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64880.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64881.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64882.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64883.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64884.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64885.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64886.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@64889.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@64955.6]
  wire [16:0] _T_130; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@64958.8]
  wire [17:0] _T_131; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@64959.8]
  wire [17:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@64961.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@64962.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64967.8]
  wire  _T_160; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@64998.8]
  wire  _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@65001.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65011.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65012.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65018.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65019.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65026.8]
  wire  _T_180; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65027.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65033.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65034.8]
  wire  _T_184; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@65039.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65041.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65042.8]
  wire [3:0] _T_188; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@65047.8]
  wire  _T_189; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@65048.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65050.8]
  wire  _T_192; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65051.8]
  wire  _T_193; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@65056.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65058.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65059.8]
  wire  _T_197; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@65065.6]
  wire  _T_257; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@65157.8]
  wire  _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65159.8]
  wire  _T_260; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65160.8]
  wire  _T_270; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@65183.6]
  wire  _T_272; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@65186.8]
  wire  _T_280; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@65194.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65197.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65198.8]
  wire  _T_291; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@65217.8]
  wire  _T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65219.8]
  wire  _T_294; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65220.8]
  wire  _T_295; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@65225.8]
  wire  _T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65227.8]
  wire  _T_298; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65228.8]
  wire  _T_303; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@65242.6]
  wire  _T_329; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@65290.6]
  wire [3:0] _T_351; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@65329.8]
  wire [3:0] _T_352; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@65330.8]
  wire  _T_353; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@65331.8]
  wire  _T_355; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65333.8]
  wire  _T_356; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65334.8]
  wire  _T_357; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@65340.6]
  wire  _T_375; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@65371.8]
  wire  _T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65373.8]
  wire  _T_378; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65374.8]
  wire  _T_383; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@65388.6]
  wire  _T_401; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@65419.8]
  wire  _T_403; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65421.8]
  wire  _T_404; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65422.8]
  wire  _T_409; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@65436.6]
  wire  _T_427; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@65467.8]
  wire  _T_429; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65469.8]
  wire  _T_430; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65470.8]
  wire  _T_446; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@65505.6]
  wire  _T_454; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@65513.6]
  wire  _T_459; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65518.6]
  wire  _T_460; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65519.6]
  wire  _T_461; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65520.6]
  wire  _T_463; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65528.6]
  wire  _T_464; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65529.6]
  wire  _T_465; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65530.6]
  wire  _T_466; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65531.6]
  wire  _T_470; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65536.8]
  wire  _T_471; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65537.8]
  wire  _T_612; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@65829.4]
  reg [3:0] _T_621; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@65838.4]
  wire [3:0] _T_623; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@65840.4]
  wire  _T_624; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@65841.4]
  reg [2:0] _T_632; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@65852.4]
  reg [2:0] _T_633; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@65853.4]
  reg [2:0] _T_634; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@65854.4]
  reg [4:0] _T_635; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@65855.4]
  reg [16:0] _T_636; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@65856.4]
  wire  _T_637; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@65857.4]
  wire  _T_638; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@65858.4]
  wire  _T_639; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@65860.6]
  wire  _T_641; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65862.6]
  wire  _T_642; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65863.6]
  wire  _T_643; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@65868.6]
  wire  _T_645; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65870.6]
  wire  _T_646; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65871.6]
  wire  _T_647; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@65876.6]
  wire  _T_649; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65878.6]
  wire  _T_650; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65879.6]
  wire  _T_651; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@65884.6]
  wire  _T_653; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65886.6]
  wire  _T_654; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65887.6]
  wire  _T_655; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@65892.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65894.6]
  wire  _T_658; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65895.6]
  wire  _T_660; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@65902.4]
  wire  _T_661; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@65910.4]
  wire [12:0] _T_663; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@65912.4]
  wire [5:0] _T_665; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@65914.4]
  reg [3:0] _T_669; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@65918.4]
  wire [3:0] _T_671; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@65920.4]
  wire  _T_672; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@65921.4]
  reg [2:0] _T_682; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@65934.4]
  reg [4:0] _T_683; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@65935.4]
  wire  _T_686; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@65938.4]
  wire  _T_687; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@65939.4]
  wire  _T_696; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@65957.6]
  wire  _T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65959.6]
  wire  _T_699; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65960.6]
  wire  _T_700; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@65965.6]
  wire  _T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65967.6]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65968.6]
  wire  _T_713; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@65991.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@66000.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@66001.4]
  reg [75:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@66002.4]
  reg [3:0] _T_723; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@66012.4]
  wire [3:0] _T_725; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@66014.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@66015.4]
  reg [3:0] _T_741; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@66034.4]
  wire [3:0] _T_743; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@66036.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@66037.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@66056.4]
  wire [7:0] _T_751; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@66056.4]
  wire [75:0] _T_752; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@66057.4]
  wire [15:0] _T_756; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@66061.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@66062.4]
  wire [75:0] _T_757; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@66062.4]
  wire [75:0] _T_758; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@66063.4]
  wire [75:0] _T_760; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@66068.4]
  wire [75:0] _T_765; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@66073.4]
  wire [75:0] _T_766; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@66074.4]
  wire  _T_770; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@66099.4]
  wire [31:0] _T_772; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@66102.6]
  wire [3:0] _T_773; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@66104.6]
  wire [3:0] _T_774; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@66105.6]
  wire [3:0] _T_775; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@66107.6]
  wire [3:0] _T_776; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@66108.6]
  wire [6:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@66110.6]
  wire [7:0] _T_777; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@66110.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  wire [258:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@66111.6]
  wire [258:0] _T_778; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@66111.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  wire [258:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@66114.6]
  wire [258:0] _T_780; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@66114.6]
  wire [18:0] _T_781; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@66116.6]
  wire  _T_783; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@66118.6]
  wire  _T_785; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66120.6]
  wire  _T_786; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66121.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  wire [258:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  wire  _T_789; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@66135.4]
  wire [31:0] _T_793; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@66140.6]
  wire [270:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@66147.6]
  wire [270:0] _T_799; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@66147.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@66139.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@66139.4]
  wire  _T_806; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@66157.4]
  wire [18:0] _T_810; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@66162.6]
  wire  _T_812; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@66164.6]
  wire  _T_813; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@66165.6]
  wire  _T_814; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@66166.6]
  wire  _T_815; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@66167.6]
  wire  _T_816; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@66168.6]
  wire  _T_817; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@66169.6]
  wire  _T_819; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66171.6]
  wire  _T_820; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66172.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66054.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66055.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@66064.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire  _T_822; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  wire  _T_824; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  wire  _T_825; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@66181.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire  _T_826; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  wire  _T_827; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  wire  _T_828; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@66184.6]
  wire  _T_829; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@66185.6]
  wire  _T_830; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@66186.6]
  wire  _T_832; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66188.6]
  wire  _T_833; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66189.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66065.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66066.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@66075.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@66194.6]
  wire  _T_834; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@66194.6]
  wire  _T_836; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@66196.6]
  wire  _T_837; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@66197.6]
  wire  _T_839; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66199.6]
  wire  _T_840; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66200.6]
  wire  _T_842; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@66207.4]
  wire  _T_843; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@66208.4]
  wire  _T_845; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@66210.4]
  wire  _T_848; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@66214.6]
  wire  _T_849; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@66215.6]
  wire  _T_851; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66217.6]
  wire  _T_852; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66218.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66048.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66049.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@66103.6]
  wire [18:0] _T_853; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@66224.4]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66127.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66128.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@66141.6]
  wire [18:0] _T_854; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@66225.4]
  wire [18:0] _T_855; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@66226.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66050.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66051.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@66112.6]
  wire [75:0] _T_856; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@66228.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66129.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66130.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@66148.6]
  wire [75:0] _T_857; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@66229.4]
  wire [75:0] _T_858; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@66230.4]
  wire [75:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66052.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66053.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@66115.6]
  wire [75:0] _T_859; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@66232.4]
  wire [75:0] _T_861; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@66234.4]
  reg [31:0] _T_862; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@66236.4]
  wire  _T_863; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@66239.4]
  wire  _T_864; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@66240.4]
  wire  _T_865; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@66241.4]
  wire  _T_866; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@66242.4]
  wire  _T_867; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@66243.4]
  wire  _T_868; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@66244.4]
  wire  _T_870; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66246.4]
  wire  _T_871; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66247.4]
  wire [31:0] _T_873; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@66253.4]
  wire  _T_876; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@66257.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64969.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65079.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65200.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65256.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65304.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65354.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65402.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65450.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@66237.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@64824.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@64832.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64837.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64838.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@64839.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64847.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64848.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64849.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@64850.6]
  assign _T_29 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@64852.6]
  assign _T_31 = ~_T_29[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@64854.6]
  assign _GEN_56 = {{11'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@64855.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@64855.6]
  assign _T_33 = _T_32 == 17'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@64856.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@64859.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@64861.6]
  assign _T_39 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@64862.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@64865.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64867.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64868.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64870.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64871.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@64874.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64875.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64876.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64877.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64878.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64879.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64880.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64881.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64882.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64883.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@64884.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@64885.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@64886.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@64889.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@64955.6]
  assign _T_130 = io_in_a_bits_address ^ 17'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@64958.8]
  assign _T_131 = {1'b0,$signed(_T_130)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@64959.8]
  assign _T_133 = $signed(_T_131) & -18'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@64961.8]
  assign _T_134 = $signed(_T_133) == 18'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@64962.8]
  assign _T_139 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64967.8]
  assign _T_160 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@64998.8]
  assign _T_163 = _T_20 & _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@65001.8]
  assign _T_172 = _T_163 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65011.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65012.8]
  assign _T_175 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65018.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65019.8]
  assign _T_179 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65026.8]
  assign _T_180 = ~_T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65027.8]
  assign _T_182 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65033.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65034.8]
  assign _T_184 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@65039.8]
  assign _T_186 = _T_184 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65041.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65042.8]
  assign _T_188 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@65047.8]
  assign _T_189 = _T_188 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@65048.8]
  assign _T_191 = _T_189 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65050.8]
  assign _T_192 = ~_T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65051.8]
  assign _T_193 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@65056.8]
  assign _T_195 = _T_193 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65058.8]
  assign _T_196 = ~_T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65059.8]
  assign _T_197 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@65065.6]
  assign _T_257 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@65157.8]
  assign _T_259 = _T_257 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65159.8]
  assign _T_260 = ~_T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65160.8]
  assign _T_270 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@65183.6]
  assign _T_272 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@65186.8]
  assign _T_280 = _T_272 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@65194.8]
  assign _T_283 = _T_280 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65197.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65198.8]
  assign _T_291 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@65217.8]
  assign _T_293 = _T_291 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65219.8]
  assign _T_294 = ~_T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65220.8]
  assign _T_295 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@65225.8]
  assign _T_297 = _T_295 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65227.8]
  assign _T_298 = ~_T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65228.8]
  assign _T_303 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@65242.6]
  assign _T_329 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@65290.6]
  assign _T_351 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@65329.8]
  assign _T_352 = io_in_a_bits_mask & _T_351; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@65330.8]
  assign _T_353 = _T_352 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@65331.8]
  assign _T_355 = _T_353 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65333.8]
  assign _T_356 = ~_T_355; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65334.8]
  assign _T_357 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@65340.6]
  assign _T_375 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@65371.8]
  assign _T_377 = _T_375 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65373.8]
  assign _T_378 = ~_T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65374.8]
  assign _T_383 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@65388.6]
  assign _T_401 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@65419.8]
  assign _T_403 = _T_401 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65421.8]
  assign _T_404 = ~_T_403; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65422.8]
  assign _T_409 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@65436.6]
  assign _T_427 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@65467.8]
  assign _T_429 = _T_427 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65469.8]
  assign _T_430 = ~_T_429; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65470.8]
  assign _T_446 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@65505.6]
  assign _T_454 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@65513.6]
  assign _T_459 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65518.6]
  assign _T_460 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65519.6]
  assign _T_461 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@65520.6]
  assign _T_463 = _T_446 | _T_454; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65528.6]
  assign _T_464 = _T_463 | _T_459; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65529.6]
  assign _T_465 = _T_464 | _T_460; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65530.6]
  assign _T_466 = _T_465 | _T_461; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@65531.6]
  assign _T_470 = _T_466 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65536.8]
  assign _T_471 = ~_T_470; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65537.8]
  assign _T_612 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@65829.4]
  assign _T_623 = _T_621 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@65840.4]
  assign _T_624 = _T_621 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@65841.4]
  assign _T_637 = ~_T_624; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@65857.4]
  assign _T_638 = io_in_a_valid & _T_637; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@65858.4]
  assign _T_639 = io_in_a_bits_opcode == _T_632; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@65860.6]
  assign _T_641 = _T_639 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65862.6]
  assign _T_642 = ~_T_641; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65863.6]
  assign _T_643 = io_in_a_bits_param == _T_633; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@65868.6]
  assign _T_645 = _T_643 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65870.6]
  assign _T_646 = ~_T_645; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65871.6]
  assign _T_647 = io_in_a_bits_size == _T_634; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@65876.6]
  assign _T_649 = _T_647 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65878.6]
  assign _T_650 = ~_T_649; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65879.6]
  assign _T_651 = io_in_a_bits_source == _T_635; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@65884.6]
  assign _T_653 = _T_651 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65886.6]
  assign _T_654 = ~_T_653; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65887.6]
  assign _T_655 = io_in_a_bits_address == _T_636; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@65892.6]
  assign _T_657 = _T_655 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65894.6]
  assign _T_658 = ~_T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65895.6]
  assign _T_660 = _T_612 & _T_624; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@65902.4]
  assign _T_661 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@65910.4]
  assign _T_663 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@65912.4]
  assign _T_665 = ~_T_663[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@65914.4]
  assign _T_671 = _T_669 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@65920.4]
  assign _T_672 = _T_669 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@65921.4]
  assign _T_686 = ~_T_672; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@65938.4]
  assign _T_687 = io_in_d_valid & _T_686; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@65939.4]
  assign _T_696 = io_in_d_bits_size == _T_682; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@65957.6]
  assign _T_698 = _T_696 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65959.6]
  assign _T_699 = ~_T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65960.6]
  assign _T_700 = io_in_d_bits_source == _T_683; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@65965.6]
  assign _T_702 = _T_700 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65967.6]
  assign _T_703 = ~_T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65968.6]
  assign _T_713 = _T_661 & _T_672; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@65991.4]
  assign _T_725 = _T_723 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@66014.4]
  assign a_first = _T_723 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@66015.4]
  assign _T_743 = _T_741 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@66036.4]
  assign d_first = _T_741 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@66037.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@66056.4]
  assign _T_751 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@66056.4]
  assign _T_752 = inflight_opcodes >> _T_751; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@66057.4]
  assign _T_756 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@66061.4]
  assign _GEN_58 = {{60'd0}, _T_756}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@66062.4]
  assign _T_757 = _T_752 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@66062.4]
  assign _T_758 = {{1'd0}, _T_757[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@66063.4]
  assign _T_760 = inflight_sizes >> _T_751; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@66068.4]
  assign _T_765 = _T_760 & _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@66073.4]
  assign _T_766 = {{1'd0}, _T_765[75:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@66074.4]
  assign _T_770 = _T_612 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@66099.4]
  assign _T_772 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@66102.6]
  assign _T_773 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@66104.6]
  assign _T_774 = _T_773 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@66105.6]
  assign _T_775 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@66107.6]
  assign _T_776 = _T_775 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@66108.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@66110.6]
  assign _T_777 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@66110.6]
  assign a_opcodes_set_interm = _T_770 ? _T_774 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  assign _GEN_64 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@66111.6]
  assign _T_778 = _GEN_64 << _T_777; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@66111.6]
  assign a_sizes_set_interm = _T_770 ? _T_776 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  assign _GEN_66 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@66114.6]
  assign _T_780 = _GEN_66 << _T_777; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@66114.6]
  assign _T_781 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@66116.6]
  assign _T_783 = ~_T_781[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@66118.6]
  assign _T_785 = _T_783 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66120.6]
  assign _T_786 = ~_T_785; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66121.6]
  assign _GEN_15 = _T_770 ? _T_772 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  assign _GEN_18 = _T_770 ? _T_778 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  assign _GEN_19 = _T_770 ? _T_780 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@66101.4]
  assign _T_789 = _T_661 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@66135.4]
  assign _T_793 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@66140.6]
  assign _GEN_68 = {{255'd0}, _T_756}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@66147.6]
  assign _T_799 = _GEN_68 << _T_751; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@66147.6]
  assign _GEN_20 = _T_789 ? _T_793 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@66139.4]
  assign _GEN_21 = _T_789 ? _T_799 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@66139.4]
  assign _T_806 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@66157.4]
  assign _T_810 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@66162.6]
  assign _T_812 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@66164.6]
  assign _T_813 = io_in_a_valid & _T_812; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@66165.6]
  assign _T_814 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@66166.6]
  assign _T_815 = _T_813 & _T_814; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@66167.6]
  assign _T_816 = _T_815 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@66168.6]
  assign _T_817 = _T_810[0] | _T_816; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@66169.6]
  assign _T_819 = _T_817 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66171.6]
  assign _T_820 = ~_T_819; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66172.6]
  assign a_opcode_lookup = _T_758[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66054.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66055.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@66064.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _T_822 = 3'h1 == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@66178.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  assign _T_824 = 3'h1 == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@66180.6]
  assign _T_825 = _T_822 | _T_824; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@66181.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _T_826 = 3'h1 == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@66182.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  assign _T_827 = 3'h1 == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@66183.6]
  assign _T_828 = _T_826 | _T_827; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@66184.6]
  assign _T_829 = io_in_a_valid & _T_828; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@66185.6]
  assign _T_830 = _T_825 | _T_829; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@66186.6]
  assign _T_832 = _T_830 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66188.6]
  assign _T_833 = ~_T_832; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66189.6]
  assign a_size_lookup = _T_766[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66065.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66066.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@66075.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@66194.6]
  assign _T_834 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@66194.6]
  assign _T_836 = io_in_a_valid & _T_814; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@66196.6]
  assign _T_837 = _T_834 | _T_836; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@66197.6]
  assign _T_839 = _T_837 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66199.6]
  assign _T_840 = ~_T_839; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66200.6]
  assign _T_842 = _T_806 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@66207.4]
  assign _T_843 = _T_842 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@66208.4]
  assign _T_845 = _T_843 & _T_812; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@66210.4]
  assign _T_848 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@66214.6]
  assign _T_849 = _T_848 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@66215.6]
  assign _T_851 = _T_849 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66217.6]
  assign _T_852 = ~_T_851; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66218.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66048.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66049.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@66103.6]
  assign _T_853 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@66224.4]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66127.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66128.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@66141.6]
  assign _T_854 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@66225.4]
  assign _T_855 = _T_853 & _T_854; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@66226.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66050.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66051.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@66112.6]
  assign _T_856 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@66228.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66129.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66130.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@66148.6]
  assign _T_857 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@66229.4]
  assign _T_858 = _T_856 & _T_857; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@66230.4]
  assign a_sizes_set = _GEN_19[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66052.4 :freechips.rocketchip.system.DefaultRV32Config.fir@66053.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@66115.6]
  assign _T_859 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@66232.4]
  assign _T_861 = _T_859 & _T_857; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@66234.4]
  assign _T_863 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@66239.4]
  assign _T_864 = ~_T_863; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@66240.4]
  assign _T_865 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@66241.4]
  assign _T_866 = _T_864 | _T_865; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@66242.4]
  assign _T_867 = _T_862 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@66243.4]
  assign _T_868 = _T_866 | _T_867; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@66244.4]
  assign _T_870 = _T_868 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66246.4]
  assign _T_871 = ~_T_870; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66247.4]
  assign _T_873 = _T_862 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@66253.4]
  assign _T_876 = _T_612 | _T_661; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@66257.4]
  assign _GEN_72 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64969.10]
  assign _GEN_88 = io_in_a_valid & _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65079.10]
  assign _GEN_106 = io_in_a_valid & _T_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65200.10]
  assign _GEN_118 = io_in_a_valid & _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65256.10]
  assign _GEN_128 = io_in_a_valid & _T_329; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65304.10]
  assign _GEN_138 = io_in_a_valid & _T_357; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65354.10]
  assign _GEN_148 = io_in_a_valid & _T_383; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65402.10]
  assign _GEN_158 = io_in_a_valid & _T_409; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65450.10]
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
  _T_621 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_632 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_633 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_634 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_635 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_636 = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  _T_669 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_682 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_683 = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  inflight = _RAND_9[18:0];
  _RAND_10 = {3{`RANDOM}};
  inflight_opcodes = _RAND_10[75:0];
  _RAND_11 = {3{`RANDOM}};
  inflight_sizes = _RAND_11[75:0];
  _RAND_12 = {1{`RANDOM}};
  _T_723 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  _T_741 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  _T_862 = _RAND_14[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_621 <= 4'h0;
    end else if (_T_612) begin
      if (_T_624) begin
        _T_621 <= 4'h0;
      end else begin
        _T_621 <= _T_623;
      end
    end
    if (_T_660) begin
      _T_632 <= io_in_a_bits_opcode;
    end
    if (_T_660) begin
      _T_633 <= io_in_a_bits_param;
    end
    if (_T_660) begin
      _T_634 <= io_in_a_bits_size;
    end
    if (_T_660) begin
      _T_635 <= io_in_a_bits_source;
    end
    if (_T_660) begin
      _T_636 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_669 <= 4'h0;
    end else if (_T_661) begin
      if (_T_672) begin
        _T_669 <= _T_665[5:2];
      end else begin
        _T_669 <= _T_671;
      end
    end
    if (_T_713) begin
      _T_682 <= io_in_d_bits_size;
    end
    if (_T_713) begin
      _T_683 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_855;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_858;
    end
    if (reset) begin
      inflight_sizes <= 76'h0;
    end else begin
      inflight_sizes <= _T_861;
    end
    if (reset) begin
      _T_723 <= 4'h0;
    end else if (_T_612) begin
      if (a_first) begin
        _T_723 <= 4'h0;
      end else begin
        _T_723 <= _T_725;
      end
    end
    if (reset) begin
      _T_741 <= 4'h0;
    end else if (_T_661) begin
      if (d_first) begin
        _T_741 <= _T_665[5:2];
      end else begin
        _T_741 <= _T_743;
      end
    end
    if (reset) begin
      _T_862 <= 32'h0;
    end else if (_T_876) begin
      _T_862 <= 32'h0;
    end else begin
      _T_862 <= _T_873;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64969.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@64970.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65014.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65015.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65021.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65022.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65029.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65030.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65036.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65037.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65044.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65045.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65053.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65054.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65061.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65062.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65079.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65080.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65124.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65125.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65131.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65132.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65139.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65140.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65146.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65147.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65154.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65155.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65162.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65163.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65171.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65172.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65179.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65180.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65200.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65201.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65207.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65208.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65214.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65215.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65222.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65223.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65230.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65231.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65238.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65239.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65256.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65257.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65263.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65264.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65270.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65271.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65278.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65279.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65286.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65287.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65304.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65305.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65311.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65312.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65318.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65319.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65326.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65327.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_356) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65336.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_356) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65337.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65354.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65355.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65361.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65362.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65368.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65369.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_378) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65376.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_378) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65377.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65384.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65385.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65402.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65403.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65409.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65410.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65416.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_404) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65424.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_404) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65425.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65432.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65433.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65450.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65451.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65457.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65458.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65464.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65465.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65472.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_430) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65473.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65480.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65481.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65488.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65489.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_471) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65733.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_471) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65734.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_638 & _T_642) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65865.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_638 & _T_642) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65866.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_638 & _T_646) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65873.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_638 & _T_646) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65874.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_638 & _T_650) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65881.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_638 & _T_650) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65882.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_638 & _T_654) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65889.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_638 & _T_654) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65890.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_638 & _T_658) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65897.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_638 & _T_658) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@65898.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_687 & _T_699) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65962.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_687 & _T_699) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65963.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_687 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65970.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_687 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@65971.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_770 & _T_786) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66123.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_770 & _T_786) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66124.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_806 & _T_820) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66174.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_806 & _T_820) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66175.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_806 & _T_833) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66191.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_806 & _T_833) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66192.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_806 & _T_840) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66202.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_806 & _T_840) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66203.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_845 & _T_852) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66220.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_845 & _T_852) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@66221.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_871) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66249.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_871) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66250.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
