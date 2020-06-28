module TLMonitor_6( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16410.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16411.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16412.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [1:0]  io_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [31:0] io_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [4:0]  io_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [31:0] io_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input         io_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
  input  [1:0]  io_in_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16413.4]
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@19068.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@16427.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@16435.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16440.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16441.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16442.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16450.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16451.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16452.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16453.6]
  wire [12:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@16455.6]
  wire [5:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@16457.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@16458.6]
  wire [31:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@16458.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@16459.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@16462.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@16464.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@16465.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@16468.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16470.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16471.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16473.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16474.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@16477.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16478.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16479.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16480.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16481.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16482.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16483.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16484.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16485.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16486.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16487.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16488.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16489.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@16492.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@16558.6]
  wire  _T_130; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@16561.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@16564.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@16565.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@16567.8]
  wire  _T_137; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@16568.8]
  wire  _T_138; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@16569.8]
  wire  _T_141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16572.8]
  wire  _T_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16573.8]
  wire  _T_163; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@16604.8]
  wire  _T_166; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@16607.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16617.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16618.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16624.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16625.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16632.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16633.8]
  wire  _T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16639.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16640.8]
  wire  _T_187; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@16645.8]
  wire  _T_189; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16647.8]
  wire  _T_190; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16648.8]
  wire [3:0] _T_191; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@16653.8]
  wire  _T_192; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@16654.8]
  wire  _T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16656.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16657.8]
  wire  _T_196; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@16662.8]
  wire  _T_198; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16664.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16665.8]
  wire  _T_200; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@16671.6]
  wire  _T_263; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@16766.8]
  wire  _T_265; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16768.8]
  wire  _T_266; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16769.8]
  wire  _T_276; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@16792.6]
  wire  _T_297; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@16826.8]
  wire  _T_299; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16828.8]
  wire  _T_300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16829.8]
  wire  _T_301; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@16834.8]
  wire  _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16836.8]
  wire  _T_304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16837.8]
  wire  _T_309; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@16851.6]
  wire  _T_338; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@16902.6]
  wire [3:0] _T_363; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@16944.8]
  wire [3:0] _T_364; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@16945.8]
  wire  _T_365; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@16946.8]
  wire  _T_367; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16948.8]
  wire  _T_368; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16949.8]
  wire  _T_369; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@16955.6]
  wire  _T_380; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16967.8]
  wire  _T_387; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@16986.8]
  wire  _T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16988.8]
  wire  _T_390; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16989.8]
  wire  _T_395; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@17003.6]
  wire  _T_413; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@17034.8]
  wire  _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17036.8]
  wire  _T_416; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17037.8]
  wire  _T_421; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@17051.6]
  wire  _T_439; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@17082.8]
  wire  _T_441; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17084.8]
  wire  _T_442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17085.8]
  wire  _T_451; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@17109.6]
  wire  _T_453; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17111.6]
  wire  _T_454; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17112.6]
  wire  _T_458; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17120.6]
  wire  _T_466; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17128.6]
  wire  _T_471; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17133.6]
  wire  _T_472; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17134.6]
  wire  _T_473; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17135.6]
  wire  _T_475; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17143.6]
  wire  _T_476; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17144.6]
  wire  _T_477; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17145.6]
  wire  _T_478; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17146.6]
  wire  _T_480; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@17148.6]
  wire  _T_482; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17151.8]
  wire  _T_483; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17152.8]
  wire  _T_484; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@17157.8]
  wire  _T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17159.8]
  wire  _T_487; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17160.8]
  wire  _T_488; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@17165.8]
  wire  _T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17167.8]
  wire  _T_491; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17168.8]
  wire  _T_492; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@17173.8]
  wire  _T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17175.8]
  wire  _T_495; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17176.8]
  wire  _T_496; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@17181.8]
  wire  _T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17183.8]
  wire  _T_499; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17184.8]
  wire  _T_500; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@17190.6]
  wire  _T_511; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@17214.8]
  wire  _T_513; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17216.8]
  wire  _T_514; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17217.8]
  wire  _T_515; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@17222.8]
  wire  _T_517; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17224.8]
  wire  _T_518; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17225.8]
  wire  _T_528; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@17248.6]
  wire  _T_548; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@17289.8]
  wire  _T_550; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17291.8]
  wire  _T_551; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17292.8]
  wire  _T_557; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@17307.6]
  wire  _T_574; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@17342.6]
  wire  _T_592; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@17378.6]
  wire [31:0] _T_674; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@17488.6]
  wire [32:0] _T_675; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@17489.6]
  wire [32:0] _T_677; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@17491.6]
  wire  _T_678; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@17492.6]
  wire [31:0] _T_684; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@17500.6]
  wire  _T_685; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@17501.6]
  wire  _T_786; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17621.8]
  wire  _T_787; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17622.8]
  wire  _T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17635.8]
  wire  _T_793; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17636.8]
  wire  _T_794; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@17641.8]
  wire  _T_796; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17643.8]
  wire  _T_797; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17644.8]
  wire  _T_945; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17971.6]
  wire  _T_953; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17979.6]
  wire  _T_958; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17984.6]
  wire  _T_959; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17985.6]
  wire  _T_960; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17986.6]
  wire  _T_962; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17994.6]
  wire  _T_963; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17995.6]
  wire  _T_964; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17996.6]
  wire  _T_965; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17997.6]
  wire [12:0] _T_967; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@17999.6]
  wire [5:0] _T_969; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@18001.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@18002.6]
  wire [31:0] _T_970; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@18002.6]
  wire  _T_971; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@18003.6]
  wire [31:0] _T_972; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@18004.6]
  wire [32:0] _T_973; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@18005.6]
  wire [32:0] _T_975; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@18007.6]
  wire  _T_976; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@18008.6]
  wire  _T_1039; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@18077.6]
  wire  _T_1041; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18080.8]
  wire  _T_1042; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18081.8]
  wire  _T_1044; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18087.8]
  wire  _T_1045; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18088.8]
  wire  _T_1046; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@18093.8]
  wire  _T_1048; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18095.8]
  wire  _T_1049; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18096.8]
  wire  _T_1051; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18102.8]
  wire  _T_1052; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18103.8]
  wire  _T_1053; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@18108.8]
  wire  _T_1055; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18110.8]
  wire  _T_1056; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18111.8]
  wire  _T_1057; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@18116.8]
  wire  _T_1059; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18118.8]
  wire  _T_1060; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18119.8]
  wire  _T_1061; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@18125.6]
  wire  _T_1079; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@18165.6]
  wire  _T_1081; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@18168.8]
  wire  _T_1089; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@18176.8]
  wire  _T_1092; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18179.8]
  wire  _T_1093; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18180.8]
  wire  _T_1114; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@18211.8]
  wire  _T_1117; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@18214.8]
  wire  _T_1126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18224.8]
  wire  _T_1127; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18225.8]
  wire  _T_1138; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@18252.8]
  wire  _T_1140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18254.8]
  wire  _T_1141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18255.8]
  wire  _T_1146; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@18269.6]
  wire  _T_1209; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@18365.6]
  wire  _T_1219; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@18388.8]
  wire  _T_1221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18390.8]
  wire  _T_1222; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18391.8]
  wire  _T_1227; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@18405.6]
  wire  _T_1241; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@18437.6]
  wire  _T_1263; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18488.4]
  wire  _T_1270; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@18495.4]
  reg [3:0] _T_1272; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18497.4]
  wire [3:0] _T_1274; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18499.4]
  wire  _T_1275; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18500.4]
  reg [2:0] _T_1283; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@18511.4]
  reg [2:0] _T_1284; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@18512.4]
  reg [2:0] _T_1285; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@18513.4]
  reg [4:0] _T_1286; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@18514.4]
  reg [31:0] _T_1287; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@18515.4]
  wire  _T_1288; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@18516.4]
  wire  _T_1289; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@18517.4]
  wire  _T_1290; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@18519.6]
  wire  _T_1292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18521.6]
  wire  _T_1293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18522.6]
  wire  _T_1294; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@18527.6]
  wire  _T_1296; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18529.6]
  wire  _T_1297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18530.6]
  wire  _T_1298; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@18535.6]
  wire  _T_1300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18537.6]
  wire  _T_1301; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18538.6]
  wire  _T_1302; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@18543.6]
  wire  _T_1304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18545.6]
  wire  _T_1305; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18546.6]
  wire  _T_1306; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@18551.6]
  wire  _T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18553.6]
  wire  _T_1309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18554.6]
  wire  _T_1311; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@18561.4]
  wire  _T_1312; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18569.4]
  wire [12:0] _T_1314; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@18571.4]
  wire [5:0] _T_1316; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@18573.4]
  reg [3:0] _T_1320; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18577.4]
  wire [3:0] _T_1322; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18579.4]
  wire  _T_1323; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18580.4]
  reg [2:0] _T_1331; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@18591.4]
  reg [1:0] _T_1332; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@18592.4]
  reg [2:0] _T_1333; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@18593.4]
  reg [4:0] _T_1334; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@18594.4]
  reg [1:0] _T_1335; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@18595.4]
  reg  _T_1336; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@18596.4]
  wire  _T_1337; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@18597.4]
  wire  _T_1338; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@18598.4]
  wire  _T_1339; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@18600.6]
  wire  _T_1341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18602.6]
  wire  _T_1342; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18603.6]
  wire  _T_1343; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@18608.6]
  wire  _T_1345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18610.6]
  wire  _T_1346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18611.6]
  wire  _T_1347; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@18616.6]
  wire  _T_1349; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18618.6]
  wire  _T_1350; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18619.6]
  wire  _T_1351; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@18624.6]
  wire  _T_1353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18626.6]
  wire  _T_1354; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18627.6]
  wire  _T_1355; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@18632.6]
  wire  _T_1357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18634.6]
  wire  _T_1358; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18635.6]
  wire  _T_1359; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@18640.6]
  wire  _T_1361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18642.6]
  wire  _T_1362; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18643.6]
  wire  _T_1364; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@18650.4]
  wire  _T_1365; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18659.4]
  reg [3:0] _T_1374; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18668.4]
  wire [3:0] _T_1376; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18670.4]
  wire  _T_1377; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18671.4]
  reg [1:0] _T_1386; // @[Monitor.scala 405:22:freechips.rocketchip.system.DefaultRV32Config.fir@18683.4]
  reg [31:0] _T_1389; // @[Monitor.scala 408:22:freechips.rocketchip.system.DefaultRV32Config.fir@18686.4]
  wire  _T_1390; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@18687.4]
  wire  _T_1391; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@18688.4]
  wire  _T_1396; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@18698.6]
  wire  _T_1398; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18700.6]
  wire  _T_1399; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18701.6]
  wire  _T_1408; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@18722.6]
  wire  _T_1410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18724.6]
  wire  _T_1411; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18725.6]
  wire  _T_1413; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@18732.4]
  wire  _T_1414; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18740.4]
  reg [3:0] _T_1422; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18748.4]
  wire [3:0] _T_1424; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18750.4]
  wire  _T_1425; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18751.4]
  reg [2:0] _T_1433; // @[Monitor.scala 509:22:freechips.rocketchip.system.DefaultRV32Config.fir@18762.4]
  reg [2:0] _T_1434; // @[Monitor.scala 510:22:freechips.rocketchip.system.DefaultRV32Config.fir@18763.4]
  reg [2:0] _T_1435; // @[Monitor.scala 511:22:freechips.rocketchip.system.DefaultRV32Config.fir@18764.4]
  reg [4:0] _T_1436; // @[Monitor.scala 512:22:freechips.rocketchip.system.DefaultRV32Config.fir@18765.4]
  reg [31:0] _T_1437; // @[Monitor.scala 513:22:freechips.rocketchip.system.DefaultRV32Config.fir@18766.4]
  wire  _T_1438; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@18767.4]
  wire  _T_1439; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@18768.4]
  wire  _T_1440; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@18770.6]
  wire  _T_1442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18772.6]
  wire  _T_1443; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18773.6]
  wire  _T_1444; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@18778.6]
  wire  _T_1446; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18780.6]
  wire  _T_1447; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18781.6]
  wire  _T_1448; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@18786.6]
  wire  _T_1450; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18788.6]
  wire  _T_1451; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18789.6]
  wire  _T_1452; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@18794.6]
  wire  _T_1454; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18796.6]
  wire  _T_1455; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18797.6]
  wire  _T_1456; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@18802.6]
  wire  _T_1458; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18804.6]
  wire  _T_1459; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18805.6]
  wire  _T_1461; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@18812.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@18820.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@18821.4]
  reg [75:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@18822.4]
  reg [3:0] _T_1471; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18832.4]
  wire [3:0] _T_1473; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18834.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18835.4]
  reg [3:0] _T_1489; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@18854.4]
  wire [3:0] _T_1491; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18856.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18857.4]
  wire [6:0] _GEN_73; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@18876.4]
  wire [7:0] _T_1499; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@18876.4]
  wire [75:0] _T_1500; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@18877.4]
  wire [15:0] _T_1504; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@18881.4]
  wire [75:0] _GEN_74; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@18882.4]
  wire [75:0] _T_1505; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@18882.4]
  wire [75:0] _T_1506; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@18883.4]
  wire [75:0] _T_1508; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@18888.4]
  wire [75:0] _T_1513; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@18893.4]
  wire [75:0] _T_1514; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@18894.4]
  wire  _T_1518; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@18919.4]
  wire [31:0] _T_1520; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@18922.6]
  wire [3:0] _T_1521; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@18924.6]
  wire [3:0] _T_1522; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@18925.6]
  wire [3:0] _T_1523; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@18927.6]
  wire [3:0] _T_1524; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@18928.6]
  wire [6:0] _GEN_79; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@18930.6]
  wire [7:0] _T_1525; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@18930.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  wire [258:0] _GEN_80; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@18931.6]
  wire [258:0] _T_1526; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@18931.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  wire [258:0] _GEN_82; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@18934.6]
  wire [258:0] _T_1528; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@18934.6]
  wire [18:0] _T_1529; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@18936.6]
  wire  _T_1531; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@18938.6]
  wire  _T_1533; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18940.6]
  wire  _T_1534; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18941.6]
  wire [31:0] _GEN_27; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  wire [258:0] _GEN_30; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  wire [258:0] _GEN_31; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  wire  _T_1537; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@18955.4]
  wire  _T_1539; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@18957.4]
  wire  _T_1540; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@18958.4]
  wire [31:0] _T_1541; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@18960.6]
  wire [270:0] _GEN_84; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@18967.6]
  wire [270:0] _T_1547; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@18967.6]
  wire [31:0] _GEN_32; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@18959.4]
  wire [270:0] _GEN_33; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@18959.4]
  wire  _T_1554; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@18977.4]
  wire  _T_1557; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@18980.4]
  wire [18:0] _T_1558; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@18982.6]
  wire  _T_1560; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@18984.6]
  wire  _T_1561; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@18985.6]
  wire  _T_1562; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@18986.6]
  wire  _T_1563; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@18987.6]
  wire  _T_1564; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@18988.6]
  wire  _T_1565; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@18989.6]
  wire  _T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18991.6]
  wire  _T_1568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18992.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18874.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18875.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@18884.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire  _T_1570; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  wire  _T_1572; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  wire  _T_1573; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@19001.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire  _T_1574; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  wire  _T_1575; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  wire  _T_1576; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@19004.6]
  wire  _T_1577; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@19005.6]
  wire  _T_1578; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@19006.6]
  wire  _T_1580; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19008.6]
  wire  _T_1581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19009.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18885.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18886.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@18895.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@19014.6]
  wire  _T_1582; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@19014.6]
  wire  _T_1584; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@19016.6]
  wire  _T_1585; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@19017.6]
  wire  _T_1587; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19019.6]
  wire  _T_1588; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19020.6]
  wire  _T_1590; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@19027.4]
  wire  _T_1591; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@19028.4]
  wire  _T_1593; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@19030.4]
  wire  _T_1595; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@19032.4]
  wire  _T_1596; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@19034.6]
  wire  _T_1597; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@19035.6]
  wire  _T_1599; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19037.6]
  wire  _T_1600; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19038.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18868.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18869.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@18923.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18947.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18948.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@18961.6]
  wire  _T_1601; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@19044.4]
  wire  _T_1602; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@19045.4]
  wire  _T_1603; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@19046.4]
  wire  _T_1604; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@19047.4]
  wire  _T_1606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19049.4]
  wire  _T_1607; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19050.4]
  wire [18:0] _T_1608; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@19055.4]
  wire [18:0] _T_1609; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@19056.4]
  wire [18:0] _T_1610; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@19057.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18870.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18871.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@18932.6]
  wire [75:0] _T_1611; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@19059.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18949.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18950.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@18968.6]
  wire [75:0] _T_1612; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@19060.4]
  wire [75:0] _T_1613; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@19061.4]
  wire [75:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18872.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18873.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@18935.6]
  wire [75:0] _T_1614; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@19063.4]
  wire [75:0] _T_1616; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@19065.4]
  reg [31:0] _T_1617; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@19067.4]
  wire  _T_1618; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@19070.4]
  wire  _T_1619; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@19071.4]
  wire  _T_1620; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@19072.4]
  wire  _T_1621; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@19073.4]
  wire  _T_1622; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@19074.4]
  wire  _T_1623; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@19075.4]
  wire  _T_1625; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19077.4]
  wire  _T_1626; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19078.4]
  wire [31:0] _T_1628; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@19084.4]
  wire  _T_1631; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@19088.4]
  reg [3:0] _T_1632; // @[Monitor.scala 694:27:freechips.rocketchip.system.DefaultRV32Config.fir@19092.4]
  reg [3:0] _T_1641; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@19101.4]
  wire [3:0] _T_1643; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@19103.4]
  wire  _T_1644; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@19104.4]
  wire  _T_1654; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@19118.4]
  wire  _T_1657; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@19121.4]
  wire  _T_1658; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@19122.4]
  wire  _T_1659; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@19123.4]
  wire [3:0] _T_1660; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@19125.6]
  wire [3:0] _T_1661; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@19127.6]
  wire  _T_1663; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@19129.6]
  wire  _T_1665; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19131.6]
  wire  _T_1666; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19132.6]
  wire [3:0] _GEN_69; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@19124.4]
  wire [3:0] _T_1671; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@19144.6]
  wire [3:0] _T_1672; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@19146.6]
  wire [3:0] _T_1673; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@19147.6]
  wire  _T_1676; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19150.6]
  wire  _T_1677; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19151.6]
  wire [3:0] _GEN_70; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@19143.4]
  wire [3:0] _T_1678; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@19157.4]
  wire [3:0] _T_1679; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@19158.4]
  wire [3:0] _T_1680; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@19159.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16575.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16688.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16809.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16868.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16919.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16969.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17017.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17065.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17154.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17196.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17254.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17313.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17348.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17384.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18083.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18131.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18182.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18286.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18371.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18411.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18443.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@19068.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@16427.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@16435.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16440.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16441.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@16442.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16450.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16451.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16452.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@16453.6]
  assign _T_29 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@16455.6]
  assign _T_31 = ~_T_29[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@16457.6]
  assign _GEN_71 = {{26'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@16458.6]
  assign _T_32 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@16458.6]
  assign _T_33 = _T_32 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@16459.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@16462.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@16464.6]
  assign _T_39 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@16465.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@16468.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16470.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16471.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16473.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16474.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@16477.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16478.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16479.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16480.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16481.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16482.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16483.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16484.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16485.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16486.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@16487.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@16488.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@16489.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@16492.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@16558.6]
  assign _T_130 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@16561.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@16564.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@16565.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@16567.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@16568.8]
  assign _T_138 = _T_130 & _T_137; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@16569.8]
  assign _T_141 = _T_138 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16572.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16573.8]
  assign _T_163 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@16604.8]
  assign _T_166 = _T_20 & _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@16607.8]
  assign _T_175 = _T_166 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16617.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16618.8]
  assign _T_178 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16624.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16625.8]
  assign _T_182 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16632.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16633.8]
  assign _T_185 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16639.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16640.8]
  assign _T_187 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@16645.8]
  assign _T_189 = _T_187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16647.8]
  assign _T_190 = ~_T_189; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16648.8]
  assign _T_191 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@16653.8]
  assign _T_192 = _T_191 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@16654.8]
  assign _T_194 = _T_192 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16656.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16657.8]
  assign _T_196 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@16662.8]
  assign _T_198 = _T_196 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16664.8]
  assign _T_199 = ~_T_198; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16665.8]
  assign _T_200 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@16671.6]
  assign _T_263 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@16766.8]
  assign _T_265 = _T_263 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16768.8]
  assign _T_266 = ~_T_265; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16769.8]
  assign _T_276 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@16792.6]
  assign _T_297 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@16826.8]
  assign _T_299 = _T_297 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16828.8]
  assign _T_300 = ~_T_299; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16829.8]
  assign _T_301 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@16834.8]
  assign _T_303 = _T_301 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16836.8]
  assign _T_304 = ~_T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16837.8]
  assign _T_309 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@16851.6]
  assign _T_338 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@16902.6]
  assign _T_363 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@16944.8]
  assign _T_364 = io_in_a_bits_mask & _T_363; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@16945.8]
  assign _T_365 = _T_364 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@16946.8]
  assign _T_367 = _T_365 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16948.8]
  assign _T_368 = ~_T_367; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16949.8]
  assign _T_369 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@16955.6]
  assign _T_380 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16967.8]
  assign _T_387 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@16986.8]
  assign _T_389 = _T_387 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16988.8]
  assign _T_390 = ~_T_389; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16989.8]
  assign _T_395 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@17003.6]
  assign _T_413 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@17034.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17036.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17037.8]
  assign _T_421 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@17051.6]
  assign _T_439 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@17082.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17084.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17085.8]
  assign _T_451 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@17109.6]
  assign _T_453 = _T_451 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17111.6]
  assign _T_454 = ~_T_453; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17112.6]
  assign _T_458 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17120.6]
  assign _T_466 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17128.6]
  assign _T_471 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17133.6]
  assign _T_472 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17134.6]
  assign _T_473 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17135.6]
  assign _T_475 = _T_458 | _T_466; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17143.6]
  assign _T_476 = _T_475 | _T_471; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17144.6]
  assign _T_477 = _T_476 | _T_472; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17145.6]
  assign _T_478 = _T_477 | _T_473; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17146.6]
  assign _T_480 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@17148.6]
  assign _T_482 = _T_478 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17151.8]
  assign _T_483 = ~_T_482; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17152.8]
  assign _T_484 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@17157.8]
  assign _T_486 = _T_484 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17159.8]
  assign _T_487 = ~_T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17160.8]
  assign _T_488 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@17165.8]
  assign _T_490 = _T_488 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17167.8]
  assign _T_491 = ~_T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17168.8]
  assign _T_492 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@17173.8]
  assign _T_494 = _T_492 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17175.8]
  assign _T_495 = ~_T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17176.8]
  assign _T_496 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@17181.8]
  assign _T_498 = _T_496 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17183.8]
  assign _T_499 = ~_T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17184.8]
  assign _T_500 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@17190.6]
  assign _T_511 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@17214.8]
  assign _T_513 = _T_511 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17216.8]
  assign _T_514 = ~_T_513; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17217.8]
  assign _T_515 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@17222.8]
  assign _T_517 = _T_515 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17224.8]
  assign _T_518 = ~_T_517; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17225.8]
  assign _T_528 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@17248.6]
  assign _T_548 = _T_496 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@17289.8]
  assign _T_550 = _T_548 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17291.8]
  assign _T_551 = ~_T_550; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17292.8]
  assign _T_557 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@17307.6]
  assign _T_574 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@17342.6]
  assign _T_592 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@17378.6]
  assign _T_674 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@17488.6]
  assign _T_675 = {1'b0,$signed(_T_674)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@17489.6]
  assign _T_677 = $signed(_T_675) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@17491.6]
  assign _T_678 = $signed(_T_677) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@17492.6]
  assign _T_684 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@17500.6]
  assign _T_685 = _T_684 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@17501.6]
  assign _T_786 = _T_678 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17621.8]
  assign _T_787 = ~_T_786; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17622.8]
  assign _T_792 = _T_685 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17635.8]
  assign _T_793 = ~_T_792; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17636.8]
  assign _T_794 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@17641.8]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17643.8]
  assign _T_797 = ~_T_796; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17644.8]
  assign _T_945 = io_in_c_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17971.6]
  assign _T_953 = io_in_c_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@17979.6]
  assign _T_958 = io_in_c_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17984.6]
  assign _T_959 = io_in_c_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17985.6]
  assign _T_960 = io_in_c_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@17986.6]
  assign _T_962 = _T_945 | _T_953; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17994.6]
  assign _T_963 = _T_962 | _T_958; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17995.6]
  assign _T_964 = _T_963 | _T_959; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17996.6]
  assign _T_965 = _T_964 | _T_960; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@17997.6]
  assign _T_967 = 13'h3f << io_in_c_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@17999.6]
  assign _T_969 = ~_T_967[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@18001.6]
  assign _GEN_72 = {{26'd0}, _T_969}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@18002.6]
  assign _T_970 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@18002.6]
  assign _T_971 = _T_970 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@18003.6]
  assign _T_972 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@18004.6]
  assign _T_973 = {1'b0,$signed(_T_972)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@18005.6]
  assign _T_975 = $signed(_T_973) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@18007.6]
  assign _T_976 = $signed(_T_975) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@18008.6]
  assign _T_1039 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@18077.6]
  assign _T_1041 = _T_976 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18080.8]
  assign _T_1042 = ~_T_1041; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18081.8]
  assign _T_1044 = _T_965 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18087.8]
  assign _T_1045 = ~_T_1044; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18088.8]
  assign _T_1046 = io_in_c_bits_size >= 3'h2; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@18093.8]
  assign _T_1048 = _T_1046 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18095.8]
  assign _T_1049 = ~_T_1048; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18096.8]
  assign _T_1051 = _T_971 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18102.8]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18103.8]
  assign _T_1053 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@18108.8]
  assign _T_1055 = _T_1053 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18110.8]
  assign _T_1056 = ~_T_1055; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18111.8]
  assign _T_1057 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@18116.8]
  assign _T_1059 = _T_1057 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18118.8]
  assign _T_1060 = ~_T_1059; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18119.8]
  assign _T_1061 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@18125.6]
  assign _T_1079 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@18165.6]
  assign _T_1081 = io_in_c_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@18168.8]
  assign _T_1089 = _T_1081 & _T_976; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@18176.8]
  assign _T_1092 = _T_1089 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18179.8]
  assign _T_1093 = ~_T_1092; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18180.8]
  assign _T_1114 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@18211.8]
  assign _T_1117 = _T_958 & _T_1114; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@18214.8]
  assign _T_1126 = _T_1117 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18224.8]
  assign _T_1127 = ~_T_1126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18225.8]
  assign _T_1138 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@18252.8]
  assign _T_1140 = _T_1138 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18254.8]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18255.8]
  assign _T_1146 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@18269.6]
  assign _T_1209 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@18365.6]
  assign _T_1219 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@18388.8]
  assign _T_1221 = _T_1219 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18390.8]
  assign _T_1222 = ~_T_1221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18391.8]
  assign _T_1227 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@18405.6]
  assign _T_1241 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@18437.6]
  assign _T_1263 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18488.4]
  assign _T_1270 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@18495.4]
  assign _T_1274 = _T_1272 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18499.4]
  assign _T_1275 = _T_1272 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18500.4]
  assign _T_1288 = ~_T_1275; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@18516.4]
  assign _T_1289 = io_in_a_valid & _T_1288; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@18517.4]
  assign _T_1290 = io_in_a_bits_opcode == _T_1283; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@18519.6]
  assign _T_1292 = _T_1290 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18521.6]
  assign _T_1293 = ~_T_1292; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18522.6]
  assign _T_1294 = io_in_a_bits_param == _T_1284; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@18527.6]
  assign _T_1296 = _T_1294 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18529.6]
  assign _T_1297 = ~_T_1296; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18530.6]
  assign _T_1298 = io_in_a_bits_size == _T_1285; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@18535.6]
  assign _T_1300 = _T_1298 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18537.6]
  assign _T_1301 = ~_T_1300; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18538.6]
  assign _T_1302 = io_in_a_bits_source == _T_1286; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@18543.6]
  assign _T_1304 = _T_1302 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18545.6]
  assign _T_1305 = ~_T_1304; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18546.6]
  assign _T_1306 = io_in_a_bits_address == _T_1287; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@18551.6]
  assign _T_1308 = _T_1306 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18553.6]
  assign _T_1309 = ~_T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18554.6]
  assign _T_1311 = _T_1263 & _T_1275; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@18561.4]
  assign _T_1312 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18569.4]
  assign _T_1314 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@18571.4]
  assign _T_1316 = ~_T_1314[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@18573.4]
  assign _T_1322 = _T_1320 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18579.4]
  assign _T_1323 = _T_1320 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18580.4]
  assign _T_1337 = ~_T_1323; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@18597.4]
  assign _T_1338 = io_in_d_valid & _T_1337; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@18598.4]
  assign _T_1339 = io_in_d_bits_opcode == _T_1331; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@18600.6]
  assign _T_1341 = _T_1339 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18602.6]
  assign _T_1342 = ~_T_1341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18603.6]
  assign _T_1343 = io_in_d_bits_param == _T_1332; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@18608.6]
  assign _T_1345 = _T_1343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18610.6]
  assign _T_1346 = ~_T_1345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18611.6]
  assign _T_1347 = io_in_d_bits_size == _T_1333; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@18616.6]
  assign _T_1349 = _T_1347 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18618.6]
  assign _T_1350 = ~_T_1349; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18619.6]
  assign _T_1351 = io_in_d_bits_source == _T_1334; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@18624.6]
  assign _T_1353 = _T_1351 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18626.6]
  assign _T_1354 = ~_T_1353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18627.6]
  assign _T_1355 = io_in_d_bits_sink == _T_1335; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@18632.6]
  assign _T_1357 = _T_1355 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18634.6]
  assign _T_1358 = ~_T_1357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18635.6]
  assign _T_1359 = io_in_d_bits_denied == _T_1336; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@18640.6]
  assign _T_1361 = _T_1359 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18642.6]
  assign _T_1362 = ~_T_1361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18643.6]
  assign _T_1364 = _T_1312 & _T_1323; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@18650.4]
  assign _T_1365 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18659.4]
  assign _T_1376 = _T_1374 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18670.4]
  assign _T_1377 = _T_1374 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18671.4]
  assign _T_1390 = ~_T_1377; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@18687.4]
  assign _T_1391 = io_in_b_valid & _T_1390; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@18688.4]
  assign _T_1396 = io_in_b_bits_param == _T_1386; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@18698.6]
  assign _T_1398 = _T_1396 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18700.6]
  assign _T_1399 = ~_T_1398; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18701.6]
  assign _T_1408 = io_in_b_bits_address == _T_1389; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@18722.6]
  assign _T_1410 = _T_1408 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18724.6]
  assign _T_1411 = ~_T_1410; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18725.6]
  assign _T_1413 = _T_1365 & _T_1377; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@18732.4]
  assign _T_1414 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@18740.4]
  assign _T_1424 = _T_1422 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18750.4]
  assign _T_1425 = _T_1422 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18751.4]
  assign _T_1438 = ~_T_1425; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@18767.4]
  assign _T_1439 = io_in_c_valid & _T_1438; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@18768.4]
  assign _T_1440 = io_in_c_bits_opcode == _T_1433; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@18770.6]
  assign _T_1442 = _T_1440 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18772.6]
  assign _T_1443 = ~_T_1442; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18773.6]
  assign _T_1444 = io_in_c_bits_param == _T_1434; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@18778.6]
  assign _T_1446 = _T_1444 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18780.6]
  assign _T_1447 = ~_T_1446; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18781.6]
  assign _T_1448 = io_in_c_bits_size == _T_1435; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@18786.6]
  assign _T_1450 = _T_1448 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18788.6]
  assign _T_1451 = ~_T_1450; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18789.6]
  assign _T_1452 = io_in_c_bits_source == _T_1436; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@18794.6]
  assign _T_1454 = _T_1452 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18796.6]
  assign _T_1455 = ~_T_1454; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18797.6]
  assign _T_1456 = io_in_c_bits_address == _T_1437; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@18802.6]
  assign _T_1458 = _T_1456 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18804.6]
  assign _T_1459 = ~_T_1458; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18805.6]
  assign _T_1461 = _T_1414 & _T_1425; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@18812.4]
  assign _T_1473 = _T_1471 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18834.4]
  assign a_first = _T_1471 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18835.4]
  assign _T_1491 = _T_1489 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@18856.4]
  assign d_first = _T_1489 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@18857.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@18876.4]
  assign _T_1499 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@18876.4]
  assign _T_1500 = inflight_opcodes >> _T_1499; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@18877.4]
  assign _T_1504 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@18881.4]
  assign _GEN_74 = {{60'd0}, _T_1504}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@18882.4]
  assign _T_1505 = _T_1500 & _GEN_74; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@18882.4]
  assign _T_1506 = {{1'd0}, _T_1505[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@18883.4]
  assign _T_1508 = inflight_sizes >> _T_1499; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@18888.4]
  assign _T_1513 = _T_1508 & _GEN_74; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@18893.4]
  assign _T_1514 = {{1'd0}, _T_1513[75:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@18894.4]
  assign _T_1518 = _T_1263 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@18919.4]
  assign _T_1520 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@18922.6]
  assign _T_1521 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@18924.6]
  assign _T_1522 = _T_1521 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@18925.6]
  assign _T_1523 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@18927.6]
  assign _T_1524 = _T_1523 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@18928.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@18930.6]
  assign _T_1525 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@18930.6]
  assign a_opcodes_set_interm = _T_1518 ? _T_1522 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  assign _GEN_80 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@18931.6]
  assign _T_1526 = _GEN_80 << _T_1525; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@18931.6]
  assign a_sizes_set_interm = _T_1518 ? _T_1524 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  assign _GEN_82 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@18934.6]
  assign _T_1528 = _GEN_82 << _T_1525; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@18934.6]
  assign _T_1529 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@18936.6]
  assign _T_1531 = ~_T_1529[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@18938.6]
  assign _T_1533 = _T_1531 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18940.6]
  assign _T_1534 = ~_T_1533; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18941.6]
  assign _GEN_27 = _T_1518 ? _T_1520 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  assign _GEN_30 = _T_1518 ? _T_1526 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  assign _GEN_31 = _T_1518 ? _T_1528 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@18921.4]
  assign _T_1537 = _T_1312 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@18955.4]
  assign _T_1539 = ~_T_480; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@18957.4]
  assign _T_1540 = _T_1537 & _T_1539; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@18958.4]
  assign _T_1541 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@18960.6]
  assign _GEN_84 = {{255'd0}, _T_1504}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@18967.6]
  assign _T_1547 = _GEN_84 << _T_1499; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@18967.6]
  assign _GEN_32 = _T_1540 ? _T_1541 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@18959.4]
  assign _GEN_33 = _T_1540 ? _T_1547 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@18959.4]
  assign _T_1554 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@18977.4]
  assign _T_1557 = _T_1554 & _T_1539; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@18980.4]
  assign _T_1558 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@18982.6]
  assign _T_1560 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@18984.6]
  assign _T_1561 = io_in_a_valid & _T_1560; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@18985.6]
  assign _T_1562 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@18986.6]
  assign _T_1563 = _T_1561 & _T_1562; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@18987.6]
  assign _T_1564 = _T_1563 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@18988.6]
  assign _T_1565 = _T_1558[0] | _T_1564; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@18989.6]
  assign _T_1567 = _T_1565 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18991.6]
  assign _T_1568 = ~_T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18992.6]
  assign a_opcode_lookup = _T_1506[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18874.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18875.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@18884.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _T_1570 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@18998.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  assign _T_1572 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@19000.6]
  assign _T_1573 = _T_1570 | _T_1572; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@19001.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _T_1574 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@19002.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  assign _T_1575 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@19003.6]
  assign _T_1576 = _T_1574 | _T_1575; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@19004.6]
  assign _T_1577 = io_in_a_valid & _T_1576; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@19005.6]
  assign _T_1578 = _T_1573 | _T_1577; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@19006.6]
  assign _T_1580 = _T_1578 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19008.6]
  assign _T_1581 = ~_T_1580; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19009.6]
  assign a_size_lookup = _T_1514[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18885.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18886.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@18895.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@19014.6]
  assign _T_1582 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@19014.6]
  assign _T_1584 = io_in_a_valid & _T_1562; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@19016.6]
  assign _T_1585 = _T_1582 | _T_1584; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@19017.6]
  assign _T_1587 = _T_1585 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19019.6]
  assign _T_1588 = ~_T_1587; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19020.6]
  assign _T_1590 = _T_1554 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@19027.4]
  assign _T_1591 = _T_1590 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@19028.4]
  assign _T_1593 = _T_1591 & _T_1560; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@19030.4]
  assign _T_1595 = _T_1593 & _T_1539; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@19032.4]
  assign _T_1596 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@19034.6]
  assign _T_1597 = _T_1596 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@19035.6]
  assign _T_1599 = _T_1597 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19037.6]
  assign _T_1600 = ~_T_1599; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19038.6]
  assign a_set = _GEN_27[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18868.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18869.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@18923.6]
  assign d_clr = _GEN_32[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18947.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18948.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@18961.6]
  assign _T_1601 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@19044.4]
  assign _T_1602 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@19045.4]
  assign _T_1603 = ~_T_1602; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@19046.4]
  assign _T_1604 = _T_1601 | _T_1603; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@19047.4]
  assign _T_1606 = _T_1604 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19049.4]
  assign _T_1607 = ~_T_1606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19050.4]
  assign _T_1608 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@19055.4]
  assign _T_1609 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@19056.4]
  assign _T_1610 = _T_1608 & _T_1609; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@19057.4]
  assign a_opcodes_set = _GEN_30[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18870.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18871.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@18932.6]
  assign _T_1611 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@19059.4]
  assign d_opcodes_clr = _GEN_33[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18949.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18950.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@18968.6]
  assign _T_1612 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@19060.4]
  assign _T_1613 = _T_1611 & _T_1612; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@19061.4]
  assign a_sizes_set = _GEN_31[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@18872.4 :freechips.rocketchip.system.DefaultRV32Config.fir@18873.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@18935.6]
  assign _T_1614 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@19063.4]
  assign _T_1616 = _T_1614 & _T_1612; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@19065.4]
  assign _T_1618 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@19070.4]
  assign _T_1619 = ~_T_1618; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@19071.4]
  assign _T_1620 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@19072.4]
  assign _T_1621 = _T_1619 | _T_1620; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@19073.4]
  assign _T_1622 = _T_1617 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@19074.4]
  assign _T_1623 = _T_1621 | _T_1622; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@19075.4]
  assign _T_1625 = _T_1623 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19077.4]
  assign _T_1626 = ~_T_1625; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19078.4]
  assign _T_1628 = _T_1617 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@19084.4]
  assign _T_1631 = _T_1263 | _T_1312; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@19088.4]
  assign _T_1643 = _T_1641 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@19103.4]
  assign _T_1644 = _T_1641 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@19104.4]
  assign _T_1654 = _T_1312 & _T_1644; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@19118.4]
  assign _T_1657 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@19121.4]
  assign _T_1658 = io_in_d_bits_opcode[2] & _T_1657; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@19122.4]
  assign _T_1659 = _T_1654 & _T_1658; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@19123.4]
  assign _T_1660 = 4'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@19125.6]
  assign _T_1661 = _T_1632 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@19127.6]
  assign _T_1663 = ~_T_1661[0]; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@19129.6]
  assign _T_1665 = _T_1663 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19131.6]
  assign _T_1666 = ~_T_1665; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19132.6]
  assign _GEN_69 = _T_1659 ? _T_1660 : 4'h0; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@19124.4]
  assign _T_1671 = 4'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@19144.6]
  assign _T_1672 = _GEN_69 | _T_1632; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@19146.6]
  assign _T_1673 = _T_1672 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@19147.6]
  assign _T_1676 = _T_1673[0] | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19150.6]
  assign _T_1677 = ~_T_1676; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19151.6]
  assign _GEN_70 = io_in_e_valid ? _T_1671 : 4'h0; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@19143.4]
  assign _T_1678 = _T_1632 | _GEN_69; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@19157.4]
  assign _T_1679 = ~_GEN_70; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@19158.4]
  assign _T_1680 = _T_1678 & _T_1679; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@19159.4]
  assign _GEN_88 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16575.10]
  assign _GEN_104 = io_in_a_valid & _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16688.10]
  assign _GEN_122 = io_in_a_valid & _T_276; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16809.10]
  assign _GEN_134 = io_in_a_valid & _T_309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16868.10]
  assign _GEN_144 = io_in_a_valid & _T_338; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16919.10]
  assign _GEN_154 = io_in_a_valid & _T_369; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16969.10]
  assign _GEN_164 = io_in_a_valid & _T_395; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17017.10]
  assign _GEN_174 = io_in_a_valid & _T_421; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17065.10]
  assign _GEN_186 = io_in_d_valid & _T_480; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17154.10]
  assign _GEN_196 = io_in_d_valid & _T_500; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17196.10]
  assign _GEN_206 = io_in_d_valid & _T_528; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17254.10]
  assign _GEN_216 = io_in_d_valid & _T_557; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17313.10]
  assign _GEN_222 = io_in_d_valid & _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17348.10]
  assign _GEN_228 = io_in_d_valid & _T_592; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17384.10]
  assign _GEN_234 = io_in_c_valid & _T_1039; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18083.10]
  assign _GEN_246 = io_in_c_valid & _T_1061; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18131.10]
  assign _GEN_256 = io_in_c_valid & _T_1079; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18182.10]
  assign _GEN_270 = io_in_c_valid & _T_1146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18286.10]
  assign _GEN_282 = io_in_c_valid & _T_1209; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18371.10]
  assign _GEN_292 = io_in_c_valid & _T_1227; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18411.10]
  assign _GEN_300 = io_in_c_valid & _T_1241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18443.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16575.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16576.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16620.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16621.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16627.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16628.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16635.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16636.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16642.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16643.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16650.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16651.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16659.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16660.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16667.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16668.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16688.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16689.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16733.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16734.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16740.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16741.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16748.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16749.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16755.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16756.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16763.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16764.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16771.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16772.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16780.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16781.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16788.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16789.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16809.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16810.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16816.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16817.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16823.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16824.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16831.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16832.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16839.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16840.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16847.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16848.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16868.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16869.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16875.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16876.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16882.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16883.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16890.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16891.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16898.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16899.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16919.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16920.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16926.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16927.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16933.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16934.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16941.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16942.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16951.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16952.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16969.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16970.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16976.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16977.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16983.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16984.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16991.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16992.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16999.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17000.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17017.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17018.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17024.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17025.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17031.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17032.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17039.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17040.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17047.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17048.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17065.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17066.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17072.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17073.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17079.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17080.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17087.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17088.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17095.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17096.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17103.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17104.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17114.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17115.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17154.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17155.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17162.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17163.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17170.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17171.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17178.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17179.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17186.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17187.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17196.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17197.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17211.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17212.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17219.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17220.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17227.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17228.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17235.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17236.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17254.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17255.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17269.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17270.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17277.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17278.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17285.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17286.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17294.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17295.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17313.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17314.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17321.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17322.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17329.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17330.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17348.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17349.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17356.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17357.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17365.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17366.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17384.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17385.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17392.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17393.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17400.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@17401.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17624.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17625.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17638.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17639.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17646.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@17647.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18083.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18084.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18090.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18091.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18098.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18099.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18105.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18106.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18113.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18114.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18121.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18122.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18131.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18132.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18138.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18139.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18146.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18147.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18153.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18154.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18161.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18162.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18182.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18183.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18227.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18228.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18234.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18235.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18242.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18243.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18249.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18250.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18257.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18258.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18265.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18266.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18286.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18287.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18331.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18332.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18338.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18339.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18346.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18347.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18353.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18354.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18361.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18362.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18371.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18372.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18378.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18379.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18385.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18386.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18393.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18394.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18401.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18402.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18411.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18412.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18418.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18419.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18425.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18426.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18433.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18434.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18443.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18444.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18450.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18451.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18457.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18458.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18465.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18466.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18473.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18474.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18524.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18525.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18532.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18533.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18540.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18541.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18548.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18549.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18556.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18557.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18605.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18606.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18613.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18614.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18621.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18622.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18629.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18630.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18637.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18638.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18645.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18646.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18703.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18704.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18727.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18728.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18775.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18776.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18783.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18784.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18791.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18792.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18799.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18800.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18807.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18808.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18943.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@18944.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18994.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@18995.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19011.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19012.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19022.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19023.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19040.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19041.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19052.6]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19053.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19080.6]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19081.6]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19134.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@19135.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19153.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@19154.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
