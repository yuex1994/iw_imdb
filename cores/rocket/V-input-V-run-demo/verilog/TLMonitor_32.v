module TLMonitor_32( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76082.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76083.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76084.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [1:0]  io_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [31:0] io_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [4:0]  io_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [31:0] io_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input         io_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
  input  [1:0]  io_in_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76085.4]
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
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [95:0] _RAND_23;
  reg [95:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@78740.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76099.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76107.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76112.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76113.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76114.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76122.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76123.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76124.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76125.6]
  wire [12:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@76127.6]
  wire [5:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@76129.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@76130.6]
  wire [31:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@76130.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@76131.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@76134.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@76136.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@76137.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@76140.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76142.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76143.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76145.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76146.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@76149.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76150.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76151.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76152.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76153.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76154.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76155.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76156.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76157.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76158.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76159.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76160.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76161.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@76164.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@76230.6]
  wire  _T_130; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@76233.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@76236.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@76237.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@76239.8]
  wire  _T_137; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@76240.8]
  wire  _T_138; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@76241.8]
  wire  _T_141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76244.8]
  wire  _T_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76245.8]
  wire  _T_163; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@76276.8]
  wire  _T_166; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@76279.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76289.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76290.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76296.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76297.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76304.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76305.8]
  wire  _T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76311.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76312.8]
  wire  _T_187; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@76317.8]
  wire  _T_189; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76319.8]
  wire  _T_190; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76320.8]
  wire [3:0] _T_191; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@76325.8]
  wire  _T_192; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@76326.8]
  wire  _T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76328.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76329.8]
  wire  _T_196; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@76334.8]
  wire  _T_198; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76336.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76337.8]
  wire  _T_200; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@76343.6]
  wire  _T_263; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@76438.8]
  wire  _T_265; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76440.8]
  wire  _T_266; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76441.8]
  wire  _T_276; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@76464.6]
  wire  _T_297; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@76498.8]
  wire  _T_299; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76500.8]
  wire  _T_300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76501.8]
  wire  _T_301; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@76506.8]
  wire  _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76508.8]
  wire  _T_304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76509.8]
  wire  _T_309; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@76523.6]
  wire  _T_338; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@76574.6]
  wire [3:0] _T_363; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@76616.8]
  wire [3:0] _T_364; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@76617.8]
  wire  _T_365; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@76618.8]
  wire  _T_367; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76620.8]
  wire  _T_368; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76621.8]
  wire  _T_369; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@76627.6]
  wire  _T_380; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76639.8]
  wire  _T_387; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@76658.8]
  wire  _T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76660.8]
  wire  _T_390; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76661.8]
  wire  _T_395; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@76675.6]
  wire  _T_413; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@76706.8]
  wire  _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76708.8]
  wire  _T_416; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76709.8]
  wire  _T_421; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@76723.6]
  wire  _T_439; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@76754.8]
  wire  _T_441; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76756.8]
  wire  _T_442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76757.8]
  wire  _T_451; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@76781.6]
  wire  _T_453; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76783.6]
  wire  _T_454; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76784.6]
  wire  _T_458; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76792.6]
  wire  _T_466; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76800.6]
  wire  _T_471; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76805.6]
  wire  _T_472; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76806.6]
  wire  _T_473; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76807.6]
  wire  _T_475; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76815.6]
  wire  _T_476; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76816.6]
  wire  _T_477; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76817.6]
  wire  _T_478; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76818.6]
  wire  _T_480; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@76820.6]
  wire  _T_482; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76823.8]
  wire  _T_483; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76824.8]
  wire  _T_484; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@76829.8]
  wire  _T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76831.8]
  wire  _T_487; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76832.8]
  wire  _T_488; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@76837.8]
  wire  _T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76839.8]
  wire  _T_491; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76840.8]
  wire  _T_492; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@76845.8]
  wire  _T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76847.8]
  wire  _T_495; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76848.8]
  wire  _T_496; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@76853.8]
  wire  _T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76855.8]
  wire  _T_499; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76856.8]
  wire  _T_500; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@76862.6]
  wire  _T_511; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@76886.8]
  wire  _T_513; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76888.8]
  wire  _T_514; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76889.8]
  wire  _T_515; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@76894.8]
  wire  _T_517; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76896.8]
  wire  _T_518; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76897.8]
  wire  _T_528; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@76920.6]
  wire  _T_548; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@76961.8]
  wire  _T_550; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76963.8]
  wire  _T_551; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76964.8]
  wire  _T_557; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@76979.6]
  wire  _T_574; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@77014.6]
  wire  _T_592; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@77050.6]
  wire [31:0] _T_674; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@77160.6]
  wire [32:0] _T_675; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@77161.6]
  wire [32:0] _T_677; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@77163.6]
  wire  _T_678; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@77164.6]
  wire [31:0] _T_684; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77172.6]
  wire  _T_685; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@77173.6]
  wire  _T_786; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77293.8]
  wire  _T_787; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77294.8]
  wire  _T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77307.8]
  wire  _T_793; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77308.8]
  wire  _T_794; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@77313.8]
  wire  _T_796; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77315.8]
  wire  _T_797; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77316.8]
  wire  _T_945; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@77643.6]
  wire  _T_953; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@77651.6]
  wire  _T_958; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77656.6]
  wire  _T_959; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77657.6]
  wire  _T_960; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77658.6]
  wire  _T_962; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77666.6]
  wire  _T_963; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77667.6]
  wire  _T_964; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77668.6]
  wire  _T_965; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77669.6]
  wire [12:0] _T_967; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@77671.6]
  wire [5:0] _T_969; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@77673.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77674.6]
  wire [31:0] _T_970; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77674.6]
  wire  _T_971; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@77675.6]
  wire [31:0] _T_972; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@77676.6]
  wire [32:0] _T_973; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@77677.6]
  wire [32:0] _T_975; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@77679.6]
  wire  _T_976; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@77680.6]
  wire  _T_1039; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@77749.6]
  wire  _T_1041; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77752.8]
  wire  _T_1042; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77753.8]
  wire  _T_1044; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77759.8]
  wire  _T_1045; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77760.8]
  wire  _T_1046; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@77765.8]
  wire  _T_1048; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77767.8]
  wire  _T_1049; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77768.8]
  wire  _T_1051; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77774.8]
  wire  _T_1052; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77775.8]
  wire  _T_1053; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@77780.8]
  wire  _T_1055; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77782.8]
  wire  _T_1056; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77783.8]
  wire  _T_1057; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@77788.8]
  wire  _T_1059; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77790.8]
  wire  _T_1060; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77791.8]
  wire  _T_1061; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@77797.6]
  wire  _T_1079; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@77837.6]
  wire  _T_1081; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@77840.8]
  wire  _T_1089; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@77848.8]
  wire  _T_1092; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77851.8]
  wire  _T_1093; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77852.8]
  wire  _T_1114; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@77883.8]
  wire  _T_1117; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@77886.8]
  wire  _T_1126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77896.8]
  wire  _T_1127; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77897.8]
  wire  _T_1138; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@77924.8]
  wire  _T_1140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77926.8]
  wire  _T_1141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77927.8]
  wire  _T_1146; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@77941.6]
  wire  _T_1209; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@78037.6]
  wire  _T_1219; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@78060.8]
  wire  _T_1221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78062.8]
  wire  _T_1222; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78063.8]
  wire  _T_1227; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@78077.6]
  wire  _T_1241; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@78109.6]
  wire  _T_1263; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78160.4]
  wire  _T_1270; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@78167.4]
  reg [3:0] _T_1272; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78169.4]
  wire [3:0] _T_1274; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78171.4]
  wire  _T_1275; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78172.4]
  reg [2:0] _T_1283; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@78183.4]
  reg [2:0] _T_1284; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@78184.4]
  reg [2:0] _T_1285; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@78185.4]
  reg [4:0] _T_1286; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@78186.4]
  reg [31:0] _T_1287; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@78187.4]
  wire  _T_1288; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@78188.4]
  wire  _T_1289; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@78189.4]
  wire  _T_1290; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@78191.6]
  wire  _T_1292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78193.6]
  wire  _T_1293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78194.6]
  wire  _T_1294; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@78199.6]
  wire  _T_1296; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78201.6]
  wire  _T_1297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78202.6]
  wire  _T_1298; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@78207.6]
  wire  _T_1300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78209.6]
  wire  _T_1301; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78210.6]
  wire  _T_1302; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@78215.6]
  wire  _T_1304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78217.6]
  wire  _T_1305; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78218.6]
  wire  _T_1306; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@78223.6]
  wire  _T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78225.6]
  wire  _T_1309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78226.6]
  wire  _T_1311; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@78233.4]
  wire  _T_1312; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78241.4]
  wire [12:0] _T_1314; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@78243.4]
  wire [5:0] _T_1316; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@78245.4]
  reg [3:0] _T_1320; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78249.4]
  wire [3:0] _T_1322; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78251.4]
  wire  _T_1323; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78252.4]
  reg [2:0] _T_1331; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@78263.4]
  reg [1:0] _T_1332; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@78264.4]
  reg [2:0] _T_1333; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@78265.4]
  reg [4:0] _T_1334; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@78266.4]
  reg [1:0] _T_1335; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@78267.4]
  reg  _T_1336; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@78268.4]
  wire  _T_1337; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@78269.4]
  wire  _T_1338; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@78270.4]
  wire  _T_1339; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@78272.6]
  wire  _T_1341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78274.6]
  wire  _T_1342; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78275.6]
  wire  _T_1343; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@78280.6]
  wire  _T_1345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78282.6]
  wire  _T_1346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78283.6]
  wire  _T_1347; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@78288.6]
  wire  _T_1349; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78290.6]
  wire  _T_1350; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78291.6]
  wire  _T_1351; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@78296.6]
  wire  _T_1353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78298.6]
  wire  _T_1354; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78299.6]
  wire  _T_1355; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@78304.6]
  wire  _T_1357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78306.6]
  wire  _T_1358; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78307.6]
  wire  _T_1359; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@78312.6]
  wire  _T_1361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78314.6]
  wire  _T_1362; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78315.6]
  wire  _T_1364; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@78322.4]
  wire  _T_1365; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78331.4]
  reg [3:0] _T_1374; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78340.4]
  wire [3:0] _T_1376; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78342.4]
  wire  _T_1377; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78343.4]
  reg [1:0] _T_1386; // @[Monitor.scala 405:22:freechips.rocketchip.system.DefaultRV32Config.fir@78355.4]
  reg [31:0] _T_1389; // @[Monitor.scala 408:22:freechips.rocketchip.system.DefaultRV32Config.fir@78358.4]
  wire  _T_1390; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@78359.4]
  wire  _T_1391; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@78360.4]
  wire  _T_1396; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@78370.6]
  wire  _T_1398; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78372.6]
  wire  _T_1399; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78373.6]
  wire  _T_1408; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@78394.6]
  wire  _T_1410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78396.6]
  wire  _T_1411; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78397.6]
  wire  _T_1413; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@78404.4]
  wire  _T_1414; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78412.4]
  reg [3:0] _T_1422; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78420.4]
  wire [3:0] _T_1424; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78422.4]
  wire  _T_1425; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78423.4]
  reg [2:0] _T_1433; // @[Monitor.scala 509:22:freechips.rocketchip.system.DefaultRV32Config.fir@78434.4]
  reg [2:0] _T_1434; // @[Monitor.scala 510:22:freechips.rocketchip.system.DefaultRV32Config.fir@78435.4]
  reg [2:0] _T_1435; // @[Monitor.scala 511:22:freechips.rocketchip.system.DefaultRV32Config.fir@78436.4]
  reg [4:0] _T_1436; // @[Monitor.scala 512:22:freechips.rocketchip.system.DefaultRV32Config.fir@78437.4]
  reg [31:0] _T_1437; // @[Monitor.scala 513:22:freechips.rocketchip.system.DefaultRV32Config.fir@78438.4]
  wire  _T_1438; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@78439.4]
  wire  _T_1439; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@78440.4]
  wire  _T_1440; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@78442.6]
  wire  _T_1442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78444.6]
  wire  _T_1443; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78445.6]
  wire  _T_1444; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@78450.6]
  wire  _T_1446; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78452.6]
  wire  _T_1447; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78453.6]
  wire  _T_1448; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@78458.6]
  wire  _T_1450; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78460.6]
  wire  _T_1451; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78461.6]
  wire  _T_1452; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@78466.6]
  wire  _T_1454; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78468.6]
  wire  _T_1455; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78469.6]
  wire  _T_1456; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@78474.6]
  wire  _T_1458; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78476.6]
  wire  _T_1459; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78477.6]
  wire  _T_1461; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@78484.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@78492.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@78493.4]
  reg [75:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@78494.4]
  reg [3:0] _T_1471; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78504.4]
  wire [3:0] _T_1473; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78506.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78507.4]
  reg [3:0] _T_1489; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78526.4]
  wire [3:0] _T_1491; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78528.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78529.4]
  wire [6:0] _GEN_73; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@78548.4]
  wire [7:0] _T_1499; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@78548.4]
  wire [75:0] _T_1500; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@78549.4]
  wire [15:0] _T_1504; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@78553.4]
  wire [75:0] _GEN_74; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@78554.4]
  wire [75:0] _T_1505; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@78554.4]
  wire [75:0] _T_1506; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@78555.4]
  wire [75:0] _T_1508; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@78560.4]
  wire [75:0] _T_1513; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@78565.4]
  wire [75:0] _T_1514; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@78566.4]
  wire  _T_1518; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@78591.4]
  wire [31:0] _T_1520; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78594.6]
  wire [3:0] _T_1521; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@78596.6]
  wire [3:0] _T_1522; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@78597.6]
  wire [3:0] _T_1523; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@78599.6]
  wire [3:0] _T_1524; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@78600.6]
  wire [6:0] _GEN_79; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@78602.6]
  wire [7:0] _T_1525; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@78602.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  wire [258:0] _GEN_80; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@78603.6]
  wire [258:0] _T_1526; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@78603.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  wire [258:0] _GEN_82; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@78606.6]
  wire [258:0] _T_1528; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@78606.6]
  wire [18:0] _T_1529; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@78608.6]
  wire  _T_1531; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@78610.6]
  wire  _T_1533; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78612.6]
  wire  _T_1534; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78613.6]
  wire [31:0] _GEN_27; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  wire [258:0] _GEN_30; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  wire [258:0] _GEN_31; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  wire  _T_1537; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@78627.4]
  wire  _T_1539; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@78629.4]
  wire  _T_1540; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@78630.4]
  wire [31:0] _T_1541; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78632.6]
  wire [270:0] _GEN_84; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@78639.6]
  wire [270:0] _T_1547; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@78639.6]
  wire [31:0] _GEN_32; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@78631.4]
  wire [270:0] _GEN_33; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@78631.4]
  wire  _T_1554; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@78649.4]
  wire  _T_1557; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@78652.4]
  wire [18:0] _T_1558; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@78654.6]
  wire  _T_1560; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@78656.6]
  wire  _T_1561; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@78657.6]
  wire  _T_1562; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@78658.6]
  wire  _T_1563; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@78659.6]
  wire  _T_1564; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@78660.6]
  wire  _T_1565; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@78661.6]
  wire  _T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78663.6]
  wire  _T_1568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78664.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78546.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78547.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@78556.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire  _T_1570; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  wire  _T_1572; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  wire  _T_1573; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@78673.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire  _T_1574; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  wire  _T_1575; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  wire  _T_1576; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@78676.6]
  wire  _T_1577; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@78677.6]
  wire  _T_1578; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@78678.6]
  wire  _T_1580; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78680.6]
  wire  _T_1581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78681.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78557.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78558.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@78567.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@78686.6]
  wire  _T_1582; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@78686.6]
  wire  _T_1584; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@78688.6]
  wire  _T_1585; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@78689.6]
  wire  _T_1587; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78691.6]
  wire  _T_1588; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78692.6]
  wire  _T_1590; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@78699.4]
  wire  _T_1591; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@78700.4]
  wire  _T_1593; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@78702.4]
  wire  _T_1595; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@78704.4]
  wire  _T_1596; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@78706.6]
  wire  _T_1597; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@78707.6]
  wire  _T_1599; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78709.6]
  wire  _T_1600; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78710.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78540.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78541.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@78595.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78619.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78620.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@78633.6]
  wire  _T_1601; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@78716.4]
  wire  _T_1602; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@78717.4]
  wire  _T_1603; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@78718.4]
  wire  _T_1604; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@78719.4]
  wire  _T_1606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78721.4]
  wire  _T_1607; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78722.4]
  wire [18:0] _T_1608; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@78727.4]
  wire [18:0] _T_1609; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@78728.4]
  wire [18:0] _T_1610; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@78729.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78542.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78543.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@78604.6]
  wire [75:0] _T_1611; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@78731.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78621.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78622.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@78640.6]
  wire [75:0] _T_1612; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@78732.4]
  wire [75:0] _T_1613; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@78733.4]
  wire [75:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78544.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78545.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@78607.6]
  wire [75:0] _T_1614; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@78735.4]
  wire [75:0] _T_1616; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@78737.4]
  reg [31:0] _T_1617; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@78739.4]
  wire  _T_1618; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@78742.4]
  wire  _T_1619; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@78743.4]
  wire  _T_1620; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@78744.4]
  wire  _T_1621; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@78745.4]
  wire  _T_1622; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@78746.4]
  wire  _T_1623; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@78747.4]
  wire  _T_1625; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78749.4]
  wire  _T_1626; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78750.4]
  wire [31:0] _T_1628; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@78756.4]
  wire  _T_1631; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@78760.4]
  reg [3:0] _T_1632; // @[Monitor.scala 694:27:freechips.rocketchip.system.DefaultRV32Config.fir@78764.4]
  reg [3:0] _T_1641; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@78773.4]
  wire [3:0] _T_1643; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78775.4]
  wire  _T_1644; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78776.4]
  wire  _T_1654; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@78790.4]
  wire  _T_1657; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@78793.4]
  wire  _T_1658; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@78794.4]
  wire  _T_1659; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@78795.4]
  wire [3:0] _T_1660; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78797.6]
  wire [3:0] _T_1661; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@78799.6]
  wire  _T_1663; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@78801.6]
  wire  _T_1665; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78803.6]
  wire  _T_1666; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78804.6]
  wire [3:0] _GEN_69; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@78796.4]
  wire [3:0] _T_1671; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78816.6]
  wire [3:0] _T_1672; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@78818.6]
  wire [3:0] _T_1673; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@78819.6]
  wire  _T_1676; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78822.6]
  wire  _T_1677; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78823.6]
  wire [3:0] _GEN_70; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@78815.4]
  wire [3:0] _T_1678; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@78829.4]
  wire [3:0] _T_1679; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@78830.4]
  wire [3:0] _T_1680; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@78831.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76247.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76360.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76481.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76540.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76591.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76641.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76689.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76737.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76826.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76868.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76926.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76985.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77020.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77056.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77755.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77803.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77854.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77958.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78043.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78083.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78115.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@78740.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76099.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76107.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76112.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76113.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76114.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76122.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76123.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76124.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76125.6]
  assign _T_29 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@76127.6]
  assign _T_31 = ~_T_29[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@76129.6]
  assign _GEN_71 = {{26'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@76130.6]
  assign _T_32 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@76130.6]
  assign _T_33 = _T_32 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@76131.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@76134.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@76136.6]
  assign _T_39 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@76137.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@76140.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76142.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76143.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76145.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76146.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@76149.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76150.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76151.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76152.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76153.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76154.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76155.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76156.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76157.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76158.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@76159.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@76160.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@76161.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@76164.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@76230.6]
  assign _T_130 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@76233.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@76236.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@76237.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@76239.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@76240.8]
  assign _T_138 = _T_130 & _T_137; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@76241.8]
  assign _T_141 = _T_138 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76244.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76245.8]
  assign _T_163 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@76276.8]
  assign _T_166 = _T_20 & _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@76279.8]
  assign _T_175 = _T_166 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76289.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76290.8]
  assign _T_178 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76296.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76297.8]
  assign _T_182 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76304.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76305.8]
  assign _T_185 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76311.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76312.8]
  assign _T_187 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@76317.8]
  assign _T_189 = _T_187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76319.8]
  assign _T_190 = ~_T_189; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76320.8]
  assign _T_191 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@76325.8]
  assign _T_192 = _T_191 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@76326.8]
  assign _T_194 = _T_192 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76328.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76329.8]
  assign _T_196 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@76334.8]
  assign _T_198 = _T_196 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76336.8]
  assign _T_199 = ~_T_198; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76337.8]
  assign _T_200 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@76343.6]
  assign _T_263 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@76438.8]
  assign _T_265 = _T_263 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76440.8]
  assign _T_266 = ~_T_265; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76441.8]
  assign _T_276 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@76464.6]
  assign _T_297 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@76498.8]
  assign _T_299 = _T_297 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76500.8]
  assign _T_300 = ~_T_299; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76501.8]
  assign _T_301 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@76506.8]
  assign _T_303 = _T_301 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76508.8]
  assign _T_304 = ~_T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76509.8]
  assign _T_309 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@76523.6]
  assign _T_338 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@76574.6]
  assign _T_363 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@76616.8]
  assign _T_364 = io_in_a_bits_mask & _T_363; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@76617.8]
  assign _T_365 = _T_364 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@76618.8]
  assign _T_367 = _T_365 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76620.8]
  assign _T_368 = ~_T_367; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76621.8]
  assign _T_369 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@76627.6]
  assign _T_380 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76639.8]
  assign _T_387 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@76658.8]
  assign _T_389 = _T_387 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76660.8]
  assign _T_390 = ~_T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76661.8]
  assign _T_395 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@76675.6]
  assign _T_413 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@76706.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76708.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76709.8]
  assign _T_421 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@76723.6]
  assign _T_439 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@76754.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76756.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76757.8]
  assign _T_451 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@76781.6]
  assign _T_453 = _T_451 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76783.6]
  assign _T_454 = ~_T_453; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76784.6]
  assign _T_458 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76792.6]
  assign _T_466 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@76800.6]
  assign _T_471 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76805.6]
  assign _T_472 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76806.6]
  assign _T_473 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@76807.6]
  assign _T_475 = _T_458 | _T_466; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76815.6]
  assign _T_476 = _T_475 | _T_471; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76816.6]
  assign _T_477 = _T_476 | _T_472; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76817.6]
  assign _T_478 = _T_477 | _T_473; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@76818.6]
  assign _T_480 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@76820.6]
  assign _T_482 = _T_478 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76823.8]
  assign _T_483 = ~_T_482; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76824.8]
  assign _T_484 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@76829.8]
  assign _T_486 = _T_484 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76831.8]
  assign _T_487 = ~_T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76832.8]
  assign _T_488 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@76837.8]
  assign _T_490 = _T_488 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76839.8]
  assign _T_491 = ~_T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76840.8]
  assign _T_492 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@76845.8]
  assign _T_494 = _T_492 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76847.8]
  assign _T_495 = ~_T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76848.8]
  assign _T_496 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@76853.8]
  assign _T_498 = _T_496 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76855.8]
  assign _T_499 = ~_T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76856.8]
  assign _T_500 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@76862.6]
  assign _T_511 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@76886.8]
  assign _T_513 = _T_511 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76888.8]
  assign _T_514 = ~_T_513; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76889.8]
  assign _T_515 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@76894.8]
  assign _T_517 = _T_515 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76896.8]
  assign _T_518 = ~_T_517; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76897.8]
  assign _T_528 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@76920.6]
  assign _T_548 = _T_496 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@76961.8]
  assign _T_550 = _T_548 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76963.8]
  assign _T_551 = ~_T_550; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76964.8]
  assign _T_557 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@76979.6]
  assign _T_574 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@77014.6]
  assign _T_592 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@77050.6]
  assign _T_674 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@77160.6]
  assign _T_675 = {1'b0,$signed(_T_674)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@77161.6]
  assign _T_677 = $signed(_T_675) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@77163.6]
  assign _T_678 = $signed(_T_677) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@77164.6]
  assign _T_684 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77172.6]
  assign _T_685 = _T_684 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@77173.6]
  assign _T_786 = _T_678 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77293.8]
  assign _T_787 = ~_T_786; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77294.8]
  assign _T_792 = _T_685 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77307.8]
  assign _T_793 = ~_T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77308.8]
  assign _T_794 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@77313.8]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77315.8]
  assign _T_797 = ~_T_796; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77316.8]
  assign _T_945 = io_in_c_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@77643.6]
  assign _T_953 = io_in_c_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@77651.6]
  assign _T_958 = io_in_c_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77656.6]
  assign _T_959 = io_in_c_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77657.6]
  assign _T_960 = io_in_c_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@77658.6]
  assign _T_962 = _T_945 | _T_953; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77666.6]
  assign _T_963 = _T_962 | _T_958; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77667.6]
  assign _T_964 = _T_963 | _T_959; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77668.6]
  assign _T_965 = _T_964 | _T_960; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@77669.6]
  assign _T_967 = 13'h3f << io_in_c_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@77671.6]
  assign _T_969 = ~_T_967[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@77673.6]
  assign _GEN_72 = {{26'd0}, _T_969}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77674.6]
  assign _T_970 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@77674.6]
  assign _T_971 = _T_970 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@77675.6]
  assign _T_972 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@77676.6]
  assign _T_973 = {1'b0,$signed(_T_972)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@77677.6]
  assign _T_975 = $signed(_T_973) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@77679.6]
  assign _T_976 = $signed(_T_975) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@77680.6]
  assign _T_1039 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@77749.6]
  assign _T_1041 = _T_976 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77752.8]
  assign _T_1042 = ~_T_1041; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77753.8]
  assign _T_1044 = _T_965 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77759.8]
  assign _T_1045 = ~_T_1044; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77760.8]
  assign _T_1046 = io_in_c_bits_size >= 3'h2; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@77765.8]
  assign _T_1048 = _T_1046 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77767.8]
  assign _T_1049 = ~_T_1048; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77768.8]
  assign _T_1051 = _T_971 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77774.8]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77775.8]
  assign _T_1053 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@77780.8]
  assign _T_1055 = _T_1053 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77782.8]
  assign _T_1056 = ~_T_1055; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77783.8]
  assign _T_1057 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@77788.8]
  assign _T_1059 = _T_1057 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77790.8]
  assign _T_1060 = ~_T_1059; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77791.8]
  assign _T_1061 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@77797.6]
  assign _T_1079 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@77837.6]
  assign _T_1081 = io_in_c_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@77840.8]
  assign _T_1089 = _T_1081 & _T_976; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@77848.8]
  assign _T_1092 = _T_1089 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77851.8]
  assign _T_1093 = ~_T_1092; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77852.8]
  assign _T_1114 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@77883.8]
  assign _T_1117 = _T_958 & _T_1114; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@77886.8]
  assign _T_1126 = _T_1117 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77896.8]
  assign _T_1127 = ~_T_1126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77897.8]
  assign _T_1138 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@77924.8]
  assign _T_1140 = _T_1138 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77926.8]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77927.8]
  assign _T_1146 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@77941.6]
  assign _T_1209 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@78037.6]
  assign _T_1219 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@78060.8]
  assign _T_1221 = _T_1219 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78062.8]
  assign _T_1222 = ~_T_1221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78063.8]
  assign _T_1227 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@78077.6]
  assign _T_1241 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@78109.6]
  assign _T_1263 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78160.4]
  assign _T_1270 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@78167.4]
  assign _T_1274 = _T_1272 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78171.4]
  assign _T_1275 = _T_1272 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78172.4]
  assign _T_1288 = ~_T_1275; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@78188.4]
  assign _T_1289 = io_in_a_valid & _T_1288; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@78189.4]
  assign _T_1290 = io_in_a_bits_opcode == _T_1283; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@78191.6]
  assign _T_1292 = _T_1290 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78193.6]
  assign _T_1293 = ~_T_1292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78194.6]
  assign _T_1294 = io_in_a_bits_param == _T_1284; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@78199.6]
  assign _T_1296 = _T_1294 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78201.6]
  assign _T_1297 = ~_T_1296; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78202.6]
  assign _T_1298 = io_in_a_bits_size == _T_1285; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@78207.6]
  assign _T_1300 = _T_1298 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78209.6]
  assign _T_1301 = ~_T_1300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78210.6]
  assign _T_1302 = io_in_a_bits_source == _T_1286; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@78215.6]
  assign _T_1304 = _T_1302 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78217.6]
  assign _T_1305 = ~_T_1304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78218.6]
  assign _T_1306 = io_in_a_bits_address == _T_1287; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@78223.6]
  assign _T_1308 = _T_1306 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78225.6]
  assign _T_1309 = ~_T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78226.6]
  assign _T_1311 = _T_1263 & _T_1275; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@78233.4]
  assign _T_1312 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78241.4]
  assign _T_1314 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@78243.4]
  assign _T_1316 = ~_T_1314[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@78245.4]
  assign _T_1322 = _T_1320 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78251.4]
  assign _T_1323 = _T_1320 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78252.4]
  assign _T_1337 = ~_T_1323; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@78269.4]
  assign _T_1338 = io_in_d_valid & _T_1337; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@78270.4]
  assign _T_1339 = io_in_d_bits_opcode == _T_1331; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@78272.6]
  assign _T_1341 = _T_1339 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78274.6]
  assign _T_1342 = ~_T_1341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78275.6]
  assign _T_1343 = io_in_d_bits_param == _T_1332; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@78280.6]
  assign _T_1345 = _T_1343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78282.6]
  assign _T_1346 = ~_T_1345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78283.6]
  assign _T_1347 = io_in_d_bits_size == _T_1333; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@78288.6]
  assign _T_1349 = _T_1347 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78290.6]
  assign _T_1350 = ~_T_1349; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78291.6]
  assign _T_1351 = io_in_d_bits_source == _T_1334; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@78296.6]
  assign _T_1353 = _T_1351 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78298.6]
  assign _T_1354 = ~_T_1353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78299.6]
  assign _T_1355 = io_in_d_bits_sink == _T_1335; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@78304.6]
  assign _T_1357 = _T_1355 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78306.6]
  assign _T_1358 = ~_T_1357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78307.6]
  assign _T_1359 = io_in_d_bits_denied == _T_1336; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@78312.6]
  assign _T_1361 = _T_1359 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78314.6]
  assign _T_1362 = ~_T_1361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78315.6]
  assign _T_1364 = _T_1312 & _T_1323; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@78322.4]
  assign _T_1365 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78331.4]
  assign _T_1376 = _T_1374 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78342.4]
  assign _T_1377 = _T_1374 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78343.4]
  assign _T_1390 = ~_T_1377; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@78359.4]
  assign _T_1391 = io_in_b_valid & _T_1390; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@78360.4]
  assign _T_1396 = io_in_b_bits_param == _T_1386; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@78370.6]
  assign _T_1398 = _T_1396 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78372.6]
  assign _T_1399 = ~_T_1398; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78373.6]
  assign _T_1408 = io_in_b_bits_address == _T_1389; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@78394.6]
  assign _T_1410 = _T_1408 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78396.6]
  assign _T_1411 = ~_T_1410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78397.6]
  assign _T_1413 = _T_1365 & _T_1377; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@78404.4]
  assign _T_1414 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78412.4]
  assign _T_1424 = _T_1422 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78422.4]
  assign _T_1425 = _T_1422 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78423.4]
  assign _T_1438 = ~_T_1425; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@78439.4]
  assign _T_1439 = io_in_c_valid & _T_1438; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@78440.4]
  assign _T_1440 = io_in_c_bits_opcode == _T_1433; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@78442.6]
  assign _T_1442 = _T_1440 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78444.6]
  assign _T_1443 = ~_T_1442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78445.6]
  assign _T_1444 = io_in_c_bits_param == _T_1434; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@78450.6]
  assign _T_1446 = _T_1444 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78452.6]
  assign _T_1447 = ~_T_1446; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78453.6]
  assign _T_1448 = io_in_c_bits_size == _T_1435; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@78458.6]
  assign _T_1450 = _T_1448 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78460.6]
  assign _T_1451 = ~_T_1450; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78461.6]
  assign _T_1452 = io_in_c_bits_source == _T_1436; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@78466.6]
  assign _T_1454 = _T_1452 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78468.6]
  assign _T_1455 = ~_T_1454; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78469.6]
  assign _T_1456 = io_in_c_bits_address == _T_1437; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@78474.6]
  assign _T_1458 = _T_1456 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78476.6]
  assign _T_1459 = ~_T_1458; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78477.6]
  assign _T_1461 = _T_1414 & _T_1425; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@78484.4]
  assign _T_1473 = _T_1471 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78506.4]
  assign a_first = _T_1471 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78507.4]
  assign _T_1491 = _T_1489 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78528.4]
  assign d_first = _T_1489 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78529.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@78548.4]
  assign _T_1499 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@78548.4]
  assign _T_1500 = inflight_opcodes >> _T_1499; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@78549.4]
  assign _T_1504 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@78553.4]
  assign _GEN_74 = {{60'd0}, _T_1504}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@78554.4]
  assign _T_1505 = _T_1500 & _GEN_74; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@78554.4]
  assign _T_1506 = {{1'd0}, _T_1505[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@78555.4]
  assign _T_1508 = inflight_sizes >> _T_1499; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@78560.4]
  assign _T_1513 = _T_1508 & _GEN_74; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@78565.4]
  assign _T_1514 = {{1'd0}, _T_1513[75:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@78566.4]
  assign _T_1518 = _T_1263 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@78591.4]
  assign _T_1520 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78594.6]
  assign _T_1521 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@78596.6]
  assign _T_1522 = _T_1521 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@78597.6]
  assign _T_1523 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@78599.6]
  assign _T_1524 = _T_1523 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@78600.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@78602.6]
  assign _T_1525 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@78602.6]
  assign a_opcodes_set_interm = _T_1518 ? _T_1522 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  assign _GEN_80 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@78603.6]
  assign _T_1526 = _GEN_80 << _T_1525; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@78603.6]
  assign a_sizes_set_interm = _T_1518 ? _T_1524 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  assign _GEN_82 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@78606.6]
  assign _T_1528 = _GEN_82 << _T_1525; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@78606.6]
  assign _T_1529 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@78608.6]
  assign _T_1531 = ~_T_1529[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@78610.6]
  assign _T_1533 = _T_1531 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78612.6]
  assign _T_1534 = ~_T_1533; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78613.6]
  assign _GEN_27 = _T_1518 ? _T_1520 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  assign _GEN_30 = _T_1518 ? _T_1526 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  assign _GEN_31 = _T_1518 ? _T_1528 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@78593.4]
  assign _T_1537 = _T_1312 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@78627.4]
  assign _T_1539 = ~_T_480; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@78629.4]
  assign _T_1540 = _T_1537 & _T_1539; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@78630.4]
  assign _T_1541 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78632.6]
  assign _GEN_84 = {{255'd0}, _T_1504}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@78639.6]
  assign _T_1547 = _GEN_84 << _T_1499; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@78639.6]
  assign _GEN_32 = _T_1540 ? _T_1541 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@78631.4]
  assign _GEN_33 = _T_1540 ? _T_1547 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@78631.4]
  assign _T_1554 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@78649.4]
  assign _T_1557 = _T_1554 & _T_1539; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@78652.4]
  assign _T_1558 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@78654.6]
  assign _T_1560 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@78656.6]
  assign _T_1561 = io_in_a_valid & _T_1560; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@78657.6]
  assign _T_1562 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@78658.6]
  assign _T_1563 = _T_1561 & _T_1562; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@78659.6]
  assign _T_1564 = _T_1563 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@78660.6]
  assign _T_1565 = _T_1558[0] | _T_1564; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@78661.6]
  assign _T_1567 = _T_1565 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78663.6]
  assign _T_1568 = ~_T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78664.6]
  assign a_opcode_lookup = _T_1506[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78546.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78547.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@78556.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _T_1570 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@78670.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  assign _T_1572 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@78672.6]
  assign _T_1573 = _T_1570 | _T_1572; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@78673.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _T_1574 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@78674.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  assign _T_1575 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@78675.6]
  assign _T_1576 = _T_1574 | _T_1575; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@78676.6]
  assign _T_1577 = io_in_a_valid & _T_1576; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@78677.6]
  assign _T_1578 = _T_1573 | _T_1577; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@78678.6]
  assign _T_1580 = _T_1578 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78680.6]
  assign _T_1581 = ~_T_1580; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78681.6]
  assign a_size_lookup = _T_1514[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78557.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78558.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@78567.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@78686.6]
  assign _T_1582 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@78686.6]
  assign _T_1584 = io_in_a_valid & _T_1562; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@78688.6]
  assign _T_1585 = _T_1582 | _T_1584; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@78689.6]
  assign _T_1587 = _T_1585 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78691.6]
  assign _T_1588 = ~_T_1587; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78692.6]
  assign _T_1590 = _T_1554 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@78699.4]
  assign _T_1591 = _T_1590 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@78700.4]
  assign _T_1593 = _T_1591 & _T_1560; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@78702.4]
  assign _T_1595 = _T_1593 & _T_1539; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@78704.4]
  assign _T_1596 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@78706.6]
  assign _T_1597 = _T_1596 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@78707.6]
  assign _T_1599 = _T_1597 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78709.6]
  assign _T_1600 = ~_T_1599; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78710.6]
  assign a_set = _GEN_27[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78540.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78541.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@78595.6]
  assign d_clr = _GEN_32[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78619.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78620.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@78633.6]
  assign _T_1601 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@78716.4]
  assign _T_1602 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@78717.4]
  assign _T_1603 = ~_T_1602; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@78718.4]
  assign _T_1604 = _T_1601 | _T_1603; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@78719.4]
  assign _T_1606 = _T_1604 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78721.4]
  assign _T_1607 = ~_T_1606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78722.4]
  assign _T_1608 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@78727.4]
  assign _T_1609 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@78728.4]
  assign _T_1610 = _T_1608 & _T_1609; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@78729.4]
  assign a_opcodes_set = _GEN_30[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78542.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78543.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@78604.6]
  assign _T_1611 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@78731.4]
  assign d_opcodes_clr = _GEN_33[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78621.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78622.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@78640.6]
  assign _T_1612 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@78732.4]
  assign _T_1613 = _T_1611 & _T_1612; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@78733.4]
  assign a_sizes_set = _GEN_31[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78544.4 :freechips.rocketchip.system.DefaultRV32Config.fir@78545.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@78607.6]
  assign _T_1614 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@78735.4]
  assign _T_1616 = _T_1614 & _T_1612; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@78737.4]
  assign _T_1618 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@78742.4]
  assign _T_1619 = ~_T_1618; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@78743.4]
  assign _T_1620 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@78744.4]
  assign _T_1621 = _T_1619 | _T_1620; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@78745.4]
  assign _T_1622 = _T_1617 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@78746.4]
  assign _T_1623 = _T_1621 | _T_1622; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@78747.4]
  assign _T_1625 = _T_1623 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78749.4]
  assign _T_1626 = ~_T_1625; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78750.4]
  assign _T_1628 = _T_1617 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@78756.4]
  assign _T_1631 = _T_1263 | _T_1312; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@78760.4]
  assign _T_1643 = _T_1641 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@78775.4]
  assign _T_1644 = _T_1641 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@78776.4]
  assign _T_1654 = _T_1312 & _T_1644; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@78790.4]
  assign _T_1657 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@78793.4]
  assign _T_1658 = io_in_d_bits_opcode[2] & _T_1657; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@78794.4]
  assign _T_1659 = _T_1654 & _T_1658; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@78795.4]
  assign _T_1660 = 4'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78797.6]
  assign _T_1661 = _T_1632 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@78799.6]
  assign _T_1663 = ~_T_1661[0]; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@78801.6]
  assign _T_1665 = _T_1663 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78803.6]
  assign _T_1666 = ~_T_1665; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78804.6]
  assign _GEN_69 = _T_1659 ? _T_1660 : 4'h0; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@78796.4]
  assign _T_1671 = 4'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@78816.6]
  assign _T_1672 = _GEN_69 | _T_1632; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@78818.6]
  assign _T_1673 = _T_1672 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@78819.6]
  assign _T_1676 = _T_1673[0] | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78822.6]
  assign _T_1677 = ~_T_1676; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78823.6]
  assign _GEN_70 = io_in_e_valid ? _T_1671 : 4'h0; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@78815.4]
  assign _T_1678 = _T_1632 | _GEN_69; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@78829.4]
  assign _T_1679 = ~_GEN_70; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@78830.4]
  assign _T_1680 = _T_1678 & _T_1679; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@78831.4]
  assign _GEN_88 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76247.10]
  assign _GEN_104 = io_in_a_valid & _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76360.10]
  assign _GEN_122 = io_in_a_valid & _T_276; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76481.10]
  assign _GEN_134 = io_in_a_valid & _T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76540.10]
  assign _GEN_144 = io_in_a_valid & _T_338; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76591.10]
  assign _GEN_154 = io_in_a_valid & _T_369; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76641.10]
  assign _GEN_164 = io_in_a_valid & _T_395; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76689.10]
  assign _GEN_174 = io_in_a_valid & _T_421; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76737.10]
  assign _GEN_186 = io_in_d_valid & _T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76826.10]
  assign _GEN_196 = io_in_d_valid & _T_500; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76868.10]
  assign _GEN_206 = io_in_d_valid & _T_528; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76926.10]
  assign _GEN_216 = io_in_d_valid & _T_557; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76985.10]
  assign _GEN_222 = io_in_d_valid & _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77020.10]
  assign _GEN_228 = io_in_d_valid & _T_592; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77056.10]
  assign _GEN_234 = io_in_c_valid & _T_1039; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77755.10]
  assign _GEN_246 = io_in_c_valid & _T_1061; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77803.10]
  assign _GEN_256 = io_in_c_valid & _T_1079; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77854.10]
  assign _GEN_270 = io_in_c_valid & _T_1146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77958.10]
  assign _GEN_282 = io_in_c_valid & _T_1209; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78043.10]
  assign _GEN_292 = io_in_c_valid & _T_1227; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78083.10]
  assign _GEN_300 = io_in_c_valid & _T_1241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78115.10]
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
  _T_1272 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_1283 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_1284 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_1285 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_1286 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_1287 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_1320 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_1331 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_1332 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_1333 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  _T_1334 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  _T_1335 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  _T_1336 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_1374 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  _T_1386 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  _T_1389 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  _T_1422 = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  _T_1433 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  _T_1434 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  _T_1435 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  _T_1436 = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  _T_1437 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  inflight = _RAND_22[18:0];
  _RAND_23 = {3{`RANDOM}};
  inflight_opcodes = _RAND_23[75:0];
  _RAND_24 = {3{`RANDOM}};
  inflight_sizes = _RAND_24[75:0];
  _RAND_25 = {1{`RANDOM}};
  _T_1471 = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  _T_1489 = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  _T_1617 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  _T_1632 = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  _T_1641 = _RAND_29[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1272 <= 4'h0;
    end else if (_T_1263) begin
      if (_T_1275) begin
        if (_T_1270) begin
          _T_1272 <= _T_31[5:2];
        end else begin
          _T_1272 <= 4'h0;
        end
      end else begin
        _T_1272 <= _T_1274;
      end
    end
    if (_T_1311) begin
      _T_1283 <= io_in_a_bits_opcode;
    end
    if (_T_1311) begin
      _T_1284 <= io_in_a_bits_param;
    end
    if (_T_1311) begin
      _T_1285 <= io_in_a_bits_size;
    end
    if (_T_1311) begin
      _T_1286 <= io_in_a_bits_source;
    end
    if (_T_1311) begin
      _T_1287 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1320 <= 4'h0;
    end else if (_T_1312) begin
      if (_T_1323) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1320 <= _T_1316[5:2];
        end else begin
          _T_1320 <= 4'h0;
        end
      end else begin
        _T_1320 <= _T_1322;
      end
    end
    if (_T_1364) begin
      _T_1331 <= io_in_d_bits_opcode;
    end
    if (_T_1364) begin
      _T_1332 <= io_in_d_bits_param;
    end
    if (_T_1364) begin
      _T_1333 <= io_in_d_bits_size;
    end
    if (_T_1364) begin
      _T_1334 <= io_in_d_bits_source;
    end
    if (_T_1364) begin
      _T_1335 <= io_in_d_bits_sink;
    end
    if (_T_1364) begin
      _T_1336 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1374 <= 4'h0;
    end else if (_T_1365) begin
      if (_T_1377) begin
        _T_1374 <= 4'h0;
      end else begin
        _T_1374 <= _T_1376;
      end
    end
    if (_T_1413) begin
      _T_1386 <= io_in_b_bits_param;
    end
    if (_T_1413) begin
      _T_1389 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1422 <= 4'h0;
    end else if (_T_1414) begin
      if (_T_1425) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1422 <= _T_969[5:2];
        end else begin
          _T_1422 <= 4'h0;
        end
      end else begin
        _T_1422 <= _T_1424;
      end
    end
    if (_T_1461) begin
      _T_1433 <= io_in_c_bits_opcode;
    end
    if (_T_1461) begin
      _T_1434 <= io_in_c_bits_param;
    end
    if (_T_1461) begin
      _T_1435 <= io_in_c_bits_size;
    end
    if (_T_1461) begin
      _T_1436 <= io_in_c_bits_source;
    end
    if (_T_1461) begin
      _T_1437 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_1610;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_1613;
    end
    if (reset) begin
      inflight_sizes <= 76'h0;
    end else begin
      inflight_sizes <= _T_1616;
    end
    if (reset) begin
      _T_1471 <= 4'h0;
    end else if (_T_1263) begin
      if (a_first) begin
        if (_T_1270) begin
          _T_1471 <= _T_31[5:2];
        end else begin
          _T_1471 <= 4'h0;
        end
      end else begin
        _T_1471 <= _T_1473;
      end
    end
    if (reset) begin
      _T_1489 <= 4'h0;
    end else if (_T_1312) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1489 <= _T_1316[5:2];
        end else begin
          _T_1489 <= 4'h0;
        end
      end else begin
        _T_1489 <= _T_1491;
      end
    end
    if (reset) begin
      _T_1617 <= 32'h0;
    end else if (_T_1631) begin
      _T_1617 <= 32'h0;
    end else begin
      _T_1617 <= _T_1628;
    end
    if (reset) begin
      _T_1632 <= 4'h0;
    end else begin
      _T_1632 <= _T_1680;
    end
    if (reset) begin
      _T_1641 <= 4'h0;
    end else if (_T_1312) begin
      if (_T_1644) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1641 <= _T_1316[5:2];
        end else begin
          _T_1641 <= 4'h0;
        end
      end else begin
        _T_1641 <= _T_1643;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76247.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76248.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76292.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76293.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76299.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76300.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76307.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76308.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76314.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76315.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_190) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76322.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_190) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76323.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76331.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76332.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_199) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76339.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_199) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76340.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76360.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76361.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76405.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76406.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76412.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76413.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76420.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76421.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76427.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76428.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_190) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_190) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_266) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76443.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_266) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76444.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76452.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76453.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_199) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76460.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_199) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76461.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76488.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76489.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76495.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76496.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_300) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76503.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_300) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76504.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_304) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76511.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_304) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76512.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_199) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76519.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_199) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76520.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76540.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76541.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76547.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76548.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76554.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76555.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_300) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76562.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_300) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76563.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_304) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76570.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_304) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76571.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76591.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76592.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76598.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76599.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_300) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76613.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_300) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76614.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_368) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76623.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_368) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76624.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_380) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76641.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_380) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76642.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76648.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76649.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76655.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76656.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_390) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76663.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_390) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76664.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_304) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76671.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_304) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76672.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_380) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76689.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_380) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76690.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76696.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76697.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76703.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76704.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_416) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_416) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_304) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76719.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_304) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76720.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_380) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76737.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_380) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76738.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76744.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76745.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_442) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_304) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_304) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_199) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76775.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_199) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@76776.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_454) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76786.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_454) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76787.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76826.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76827.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_487) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76834.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_487) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76835.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_491) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76842.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_491) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76843.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_495) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76850.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_495) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76851.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_499) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76858.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_499) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76859.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76868.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76869.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_487) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76883.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_487) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76884.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_514) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76891.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_514) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76892.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_518) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76899.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_518) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76900.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_495) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76907.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_495) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76908.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76926.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76927.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_487) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76941.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_487) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76942.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_514) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76949.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_514) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76950.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_518) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_518) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_551) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76966.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_551) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76967.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76985.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76986.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_491) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76993.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_491) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@76994.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_495) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_495) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77020.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77021.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_491) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77028.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_491) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77029.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_551) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_551) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77038.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_483) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77056.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_483) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77057.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_491) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77064.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_491) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77065.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_495) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77072.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_495) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@77073.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_787) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77296.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_787) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77297.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77310.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_793) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77311.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77318.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_797) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77319.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1042) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77755.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1042) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77756.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77762.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77763.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1049) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77770.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1049) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77771.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77777.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77778.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1056) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1056) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_1060) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_1060) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_1042) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77803.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_1042) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77804.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77810.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77811.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_1049) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77818.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_1049) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77819.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_1056) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77833.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_1056) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77834.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1093) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77854.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1093) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77855.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1127) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77899.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1127) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77900.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77906.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77907.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1049) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77914.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1049) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77915.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77921.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77922.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1141) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77929.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1141) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77930.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1060) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77937.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1060) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77938.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1093) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77958.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1093) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@77959.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1127) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78003.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1127) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78004.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78010.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78011.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1049) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78018.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1049) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78019.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78025.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78026.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1141) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78033.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1141) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78034.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1042) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78043.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1042) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78044.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78050.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78051.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1222) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1222) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1060) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1060) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_1042) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78083.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_1042) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78084.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78090.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78091.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78097.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78098.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_1222) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78105.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_1222) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78106.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1042) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78115.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1042) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78116.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1045) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78122.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1045) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78123.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78129.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1222) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78137.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1222) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78138.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1060) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78145.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1060) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78146.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1289 & _T_1293) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78196.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1289 & _T_1293) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78197.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1289 & _T_1297) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78204.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1289 & _T_1297) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78205.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1289 & _T_1301) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78212.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1289 & _T_1301) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78213.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1289 & _T_1305) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78220.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1289 & _T_1305) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78221.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1289 & _T_1309) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78228.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1289 & _T_1309) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78229.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78277.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78278.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78285.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78286.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1350) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78293.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1350) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78294.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78301.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78302.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1358) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78309.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1358) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78310.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1338 & _T_1362) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78317.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1338 & _T_1362) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78318.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1391 & _T_1399) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78375.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1391 & _T_1399) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78376.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1391 & _T_1411) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78399.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1391 & _T_1411) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78400.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1443) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78447.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1443) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78448.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1447) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78455.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1447) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78456.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1451) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78463.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1451) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78464.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1455) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78471.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1455) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78472.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1459) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78479.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1459) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78480.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1518 & _T_1534) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78615.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1518 & _T_1534) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78616.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1557 & _T_1568) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78666.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1557 & _T_1568) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78667.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1557 & _T_1581) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78683.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1557 & _T_1581) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78684.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1557 & _T_1588) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78694.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1557 & _T_1588) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78695.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1595 & _T_1600) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78712.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1595 & _T_1600) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78713.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1607) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78724.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1607) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78725.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1626) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78752.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1626) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78753.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1659 & _T_1666) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78806.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1659 & _T_1666) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@78807.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1677) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at BankedL2Params.scala:58:27)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78825.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1677) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@78826.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
