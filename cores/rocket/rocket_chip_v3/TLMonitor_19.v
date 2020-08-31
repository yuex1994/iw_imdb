module TLMonitor_19( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51738.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51739.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51740.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [27:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51741.4]
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
  reg [95:0] _RAND_14;
  reg [159:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@53411.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@51755.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@51763.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51768.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51769.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51770.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51778.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51779.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51780.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51781.6]
  wire [26:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@51783.6]
  wire [11:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@51785.6]
  wire [27:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@51786.6]
  wire [27:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@51786.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@51787.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@51790.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@51792.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@51793.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@51796.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51798.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51799.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51801.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51802.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@51805.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51806.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51807.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51808.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51809.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51810.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51811.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51812.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51813.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51814.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51815.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51816.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51817.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@51820.6]
  wire [28:0] _T_77; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51831.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@51886.6]
  wire [28:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51892.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51893.8]
  wire [27:0] _T_135; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51894.8]
  wire [28:0] _T_136; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51895.8]
  wire [28:0] _T_138; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51897.8]
  wire  _T_139; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51898.8]
  wire [27:0] _T_140; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51899.8]
  wire [28:0] _T_141; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51900.8]
  wire [28:0] _T_143; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51902.8]
  wire  _T_144; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51903.8]
  wire [27:0] _T_145; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51904.8]
  wire [28:0] _T_146; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51905.8]
  wire [28:0] _T_148; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51907.8]
  wire  _T_149; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51908.8]
  wire [27:0] _T_150; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51909.8]
  wire [28:0] _T_151; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51910.8]
  wire [28:0] _T_153; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51912.8]
  wire  _T_154; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51913.8]
  wire  _T_155; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@51914.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51922.8]
  wire  _T_184; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@51953.8]
  wire  _T_187; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@51956.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51966.8]
  wire  _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51967.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51973.8]
  wire  _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51974.8]
  wire  _T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51981.8]
  wire  _T_204; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51982.8]
  wire  _T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51988.8]
  wire  _T_207; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51989.8]
  wire  _T_208; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@51994.8]
  wire  _T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51996.8]
  wire  _T_211; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51997.8]
  wire [3:0] _T_212; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@52002.8]
  wire  _T_213; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@52003.8]
  wire  _T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52005.8]
  wire  _T_216; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52006.8]
  wire  _T_217; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@52011.8]
  wire  _T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52013.8]
  wire  _T_220; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52014.8]
  wire  _T_221; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@52020.6]
  wire  _T_305; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@52136.8]
  wire  _T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52138.8]
  wire  _T_308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52139.8]
  wire  _T_318; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@52162.6]
  wire  _T_320; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52165.8]
  wire  _T_328; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52173.8]
  wire  _T_330; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52175.8]
  wire  _T_353; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52198.8]
  wire  _T_354; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52199.8]
  wire  _T_355; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52200.8]
  wire  _T_356; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52201.8]
  wire  _T_358; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@52203.8]
  wire  _T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52205.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52206.8]
  wire  _T_368; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@52225.8]
  wire  _T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52227.8]
  wire  _T_371; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52228.8]
  wire  _T_372; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@52233.8]
  wire  _T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52235.8]
  wire  _T_375; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52236.8]
  wire  _T_380; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@52250.6]
  wire  _T_410; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52281.8]
  wire  _T_411; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52282.8]
  wire  _T_412; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52283.8]
  wire  _T_421; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@52292.8]
  wire  _T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52295.8]
  wire  _T_425; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52296.8]
  wire  _T_440; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@52332.6]
  wire [3:0] _T_496; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@52405.8]
  wire [3:0] _T_497; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@52406.8]
  wire  _T_498; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@52407.8]
  wire  _T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52409.8]
  wire  _T_501; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52410.8]
  wire  _T_502; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@52416.6]
  wire  _T_504; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52419.8]
  wire  _T_528; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52443.8]
  wire  _T_529; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52444.8]
  wire  _T_530; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52445.8]
  wire  _T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52456.8]
  wire  _T_542; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52457.8]
  wire  _T_549; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@52476.8]
  wire  _T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52478.8]
  wire  _T_552; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52479.8]
  wire  _T_557; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@52493.6]
  wire  _T_604; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@52553.8]
  wire  _T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52555.8]
  wire  _T_607; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52556.8]
  wire  _T_612; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@52570.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52610.8]
  wire  _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52611.8]
  wire  _T_659; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@52630.8]
  wire  _T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52632.8]
  wire  _T_662; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52633.8]
  wire  _T_671; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@52657.6]
  wire  _T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52659.6]
  wire  _T_674; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52660.6]
  wire  _T_678; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@52668.6]
  wire  _T_686; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@52676.6]
  wire  _T_691; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52681.6]
  wire  _T_692; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52682.6]
  wire  _T_693; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52683.6]
  wire  _T_695; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52691.6]
  wire  _T_696; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52692.6]
  wire  _T_697; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52693.6]
  wire  _T_698; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52694.6]
  wire  _T_700; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@52696.6]
  wire  _T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52699.8]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52700.8]
  wire  _T_704; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@52705.8]
  wire  _T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52707.8]
  wire  _T_707; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52708.8]
  wire  _T_708; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@52713.8]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52715.8]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52716.8]
  wire  _T_712; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@52721.8]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52723.8]
  wire  _T_715; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52724.8]
  wire  _T_716; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@52729.8]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52731.8]
  wire  _T_719; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52732.8]
  wire  _T_720; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@52738.6]
  wire  _T_731; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@52762.8]
  wire  _T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52764.8]
  wire  _T_734; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52765.8]
  wire  _T_735; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@52770.8]
  wire  _T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52772.8]
  wire  _T_738; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52773.8]
  wire  _T_748; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@52796.6]
  wire  _T_768; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@52837.8]
  wire  _T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52839.8]
  wire  _T_771; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52840.8]
  wire  _T_777; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@52855.6]
  wire  _T_794; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@52890.6]
  wire  _T_812; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@52926.6]
  wire  _T_844; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@52992.4]
  wire  _T_851; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@52999.4]
  reg [9:0] _T_853; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@53001.4]
  wire [9:0] _T_855; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53003.4]
  wire  _T_856; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53004.4]
  reg [2:0] _T_864; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@53015.4]
  reg [2:0] _T_865; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@53016.4]
  reg [3:0] _T_866; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@53017.4]
  reg [4:0] _T_867; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@53018.4]
  reg [27:0] _T_868; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@53019.4]
  wire  _T_869; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@53020.4]
  wire  _T_870; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@53021.4]
  wire  _T_871; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@53023.6]
  wire  _T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53025.6]
  wire  _T_874; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53026.6]
  wire  _T_875; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@53031.6]
  wire  _T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53033.6]
  wire  _T_878; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53034.6]
  wire  _T_879; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@53039.6]
  wire  _T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53041.6]
  wire  _T_882; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53042.6]
  wire  _T_883; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@53047.6]
  wire  _T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53049.6]
  wire  _T_886; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53050.6]
  wire  _T_887; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@53055.6]
  wire  _T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53057.6]
  wire  _T_890; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53058.6]
  wire  _T_892; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@53065.4]
  wire  _T_893; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@53073.4]
  wire [26:0] _T_895; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@53075.4]
  wire [11:0] _T_897; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@53077.4]
  reg [9:0] _T_901; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@53081.4]
  wire [9:0] _T_903; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53083.4]
  wire  _T_904; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53084.4]
  reg [2:0] _T_912; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@53095.4]
  reg [1:0] _T_913; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@53096.4]
  reg [3:0] _T_914; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@53097.4]
  reg [4:0] _T_915; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@53098.4]
  reg  _T_916; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@53099.4]
  reg  _T_917; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@53100.4]
  wire  _T_918; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@53101.4]
  wire  _T_919; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@53102.4]
  wire  _T_920; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@53104.6]
  wire  _T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53106.6]
  wire  _T_923; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53107.6]
  wire  _T_924; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@53112.6]
  wire  _T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53114.6]
  wire  _T_927; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53115.6]
  wire  _T_928; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@53120.6]
  wire  _T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53122.6]
  wire  _T_931; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53123.6]
  wire  _T_932; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@53128.6]
  wire  _T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53130.6]
  wire  _T_935; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53131.6]
  wire  _T_936; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@53136.6]
  wire  _T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53138.6]
  wire  _T_939; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53139.6]
  wire  _T_940; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@53144.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53146.6]
  wire  _T_943; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53147.6]
  wire  _T_945; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@53154.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@53163.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@53164.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@53165.4]
  reg [9:0] _T_955; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@53175.4]
  wire [9:0] _T_957; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53177.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53178.4]
  reg [9:0] _T_973; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@53197.4]
  wire [9:0] _T_975; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53199.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53200.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@53219.4]
  wire [7:0] _T_983; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@53219.4]
  wire [75:0] _T_984; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@53220.4]
  wire [15:0] _T_988; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@53224.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@53225.4]
  wire [75:0] _T_989; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@53225.4]
  wire [75:0] _T_990; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@53226.4]
  wire [7:0] _T_991; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@53230.4]
  wire [151:0] _T_992; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@53231.4]
  wire [15:0] _T_996; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@53235.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@53236.4]
  wire [151:0] _T_997; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@53236.4]
  wire [151:0] _T_998; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@53237.4]
  wire  _T_1002; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@53262.4]
  wire [31:0] _T_1004; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@53265.6]
  wire [3:0] _T_1005; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@53267.6]
  wire [3:0] _T_1006; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@53268.6]
  wire [4:0] _T_1007; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@53270.6]
  wire [4:0] _T_1008; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@53271.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@53273.6]
  wire [7:0] _T_1009; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@53273.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@53274.6]
  wire [258:0] _T_1010; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@53274.6]
  wire [7:0] _T_1011; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@53276.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@53277.6]
  wire [259:0] _T_1012; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@53277.6]
  wire [18:0] _T_1013; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@53279.6]
  wire  _T_1015; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@53281.6]
  wire  _T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53283.6]
  wire  _T_1018; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53284.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  wire  _T_1021; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@53298.4]
  wire  _T_1023; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@53300.4]
  wire  _T_1024; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@53301.4]
  wire [31:0] _T_1025; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@53303.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@53310.6]
  wire [270:0] _T_1031; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@53310.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@53317.6]
  wire [270:0] _T_1037; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@53317.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  wire  _T_1038; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@53320.4]
  wire  _T_1041; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@53323.4]
  wire [18:0] _T_1042; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@53325.6]
  wire  _T_1044; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@53327.6]
  wire  _T_1045; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@53328.6]
  wire  _T_1046; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@53329.6]
  wire  _T_1047; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@53330.6]
  wire  _T_1048; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@53331.6]
  wire  _T_1049; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@53332.6]
  wire  _T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53334.6]
  wire  _T_1052; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53335.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53217.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53218.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@53227.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire  _T_1054; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  wire  _T_1056; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  wire  _T_1057; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@53344.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire  _T_1058; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  wire  _T_1059; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  wire  _T_1060; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@53347.6]
  wire  _T_1061; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@53348.6]
  wire  _T_1062; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@53349.6]
  wire  _T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53351.6]
  wire  _T_1065; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53352.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53228.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53229.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@53238.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@53357.6]
  wire  _T_1066; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@53357.6]
  wire  _T_1068; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@53359.6]
  wire  _T_1069; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@53360.6]
  wire  _T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53362.6]
  wire  _T_1072; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53363.6]
  wire  _T_1074; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@53370.4]
  wire  _T_1075; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@53371.4]
  wire  _T_1077; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@53373.4]
  wire  _T_1079; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@53375.4]
  wire  _T_1080; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@53377.6]
  wire  _T_1081; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@53378.6]
  wire  _T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53380.6]
  wire  _T_1084; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53381.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53211.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53212.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@53266.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53290.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53291.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@53304.6]
  wire  _T_1085; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@53387.4]
  wire  _T_1086; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@53388.4]
  wire  _T_1087; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@53389.4]
  wire  _T_1088; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@53390.4]
  wire  _T_1090; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53392.4]
  wire  _T_1091; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53393.4]
  wire [18:0] _T_1092; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@53398.4]
  wire [18:0] _T_1093; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@53399.4]
  wire [18:0] _T_1094; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@53400.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53213.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53214.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@53275.6]
  wire [75:0] _T_1095; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@53402.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53292.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53293.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@53311.6]
  wire [75:0] _T_1096; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@53403.4]
  wire [75:0] _T_1097; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@53404.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53215.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53216.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@53278.6]
  wire [151:0] _T_1098; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@53406.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53294.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53295.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@53318.6]
  wire [151:0] _T_1099; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@53407.4]
  wire [151:0] _T_1100; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@53408.4]
  reg [31:0] _T_1101; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@53410.4]
  wire  _T_1102; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@53413.4]
  wire  _T_1103; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@53414.4]
  wire  _T_1104; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@53415.4]
  wire  _T_1105; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@53416.4]
  wire  _T_1106; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@53417.4]
  wire  _T_1107; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@53418.4]
  wire  _T_1109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53420.4]
  wire  _T_1110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53421.4]
  wire [31:0] _T_1112; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@53427.4]
  wire  _T_1115; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@53431.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51924.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52058.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52208.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52298.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52380.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52459.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52536.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52613.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52702.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52744.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52802.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52861.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52896.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52932.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@53411.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@51755.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@51763.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51768.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51769.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@51770.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51778.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51779.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51780.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@51781.6]
  assign _T_29 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@51783.6]
  assign _T_31 = ~_T_29[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@51785.6]
  assign _GEN_56 = {{16'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@51786.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@51786.6]
  assign _T_33 = _T_32 == 28'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@51787.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@51790.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@51792.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@51793.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@51796.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51798.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51799.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51801.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51802.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@51805.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51806.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51807.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51808.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51809.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51810.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51811.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51812.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51813.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51814.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@51815.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@51816.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@51817.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@51820.6]
  assign _T_77 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51831.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@51886.6]
  assign _T_133 = $signed(_T_77) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51892.8]
  assign _T_134 = $signed(_T_133) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51893.8]
  assign _T_135 = io_in_a_bits_address ^ 28'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51894.8]
  assign _T_136 = {1'b0,$signed(_T_135)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51895.8]
  assign _T_138 = $signed(_T_136) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51897.8]
  assign _T_139 = $signed(_T_138) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51898.8]
  assign _T_140 = io_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51899.8]
  assign _T_141 = {1'b0,$signed(_T_140)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51900.8]
  assign _T_143 = $signed(_T_141) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51902.8]
  assign _T_144 = $signed(_T_143) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51903.8]
  assign _T_145 = io_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51904.8]
  assign _T_146 = {1'b0,$signed(_T_145)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51905.8]
  assign _T_148 = $signed(_T_146) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51907.8]
  assign _T_149 = $signed(_T_148) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51908.8]
  assign _T_150 = io_in_a_bits_address ^ 28'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@51909.8]
  assign _T_151 = {1'b0,$signed(_T_150)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@51910.8]
  assign _T_153 = $signed(_T_151) & -29'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@51912.8]
  assign _T_154 = $signed(_T_153) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@51913.8]
  assign _T_155 = _T_134 | _T_139; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@51914.8]
  assign _T_163 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51922.8]
  assign _T_184 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@51953.8]
  assign _T_187 = _T_20 & _T_184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@51956.8]
  assign _T_196 = _T_187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51966.8]
  assign _T_197 = ~_T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51967.8]
  assign _T_199 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51973.8]
  assign _T_200 = ~_T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51974.8]
  assign _T_203 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51981.8]
  assign _T_204 = ~_T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51982.8]
  assign _T_206 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51988.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51989.8]
  assign _T_208 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@51994.8]
  assign _T_210 = _T_208 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51996.8]
  assign _T_211 = ~_T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51997.8]
  assign _T_212 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@52002.8]
  assign _T_213 = _T_212 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@52003.8]
  assign _T_215 = _T_213 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52005.8]
  assign _T_216 = ~_T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52006.8]
  assign _T_217 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@52011.8]
  assign _T_219 = _T_217 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52013.8]
  assign _T_220 = ~_T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52014.8]
  assign _T_221 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@52020.6]
  assign _T_305 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@52136.8]
  assign _T_307 = _T_305 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52138.8]
  assign _T_308 = ~_T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52139.8]
  assign _T_318 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@52162.6]
  assign _T_320 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52165.8]
  assign _T_328 = _T_320 & _T_139; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52173.8]
  assign _T_330 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52175.8]
  assign _T_353 = _T_134 | _T_144; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52198.8]
  assign _T_354 = _T_353 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52199.8]
  assign _T_355 = _T_354 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52200.8]
  assign _T_356 = _T_330 & _T_355; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52201.8]
  assign _T_358 = _T_328 | _T_356; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@52203.8]
  assign _T_360 = _T_358 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52205.8]
  assign _T_361 = ~_T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52206.8]
  assign _T_368 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@52225.8]
  assign _T_370 = _T_368 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52227.8]
  assign _T_371 = ~_T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52228.8]
  assign _T_372 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@52233.8]
  assign _T_374 = _T_372 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52235.8]
  assign _T_375 = ~_T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52236.8]
  assign _T_380 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@52250.6]
  assign _T_410 = _T_134 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52281.8]
  assign _T_411 = _T_410 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52282.8]
  assign _T_412 = _T_330 & _T_411; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52283.8]
  assign _T_421 = _T_328 | _T_412; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@52292.8]
  assign _T_424 = _T_421 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52295.8]
  assign _T_425 = ~_T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52296.8]
  assign _T_440 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@52332.6]
  assign _T_496 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@52405.8]
  assign _T_497 = io_in_a_bits_mask & _T_496; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@52406.8]
  assign _T_498 = _T_497 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@52407.8]
  assign _T_500 = _T_498 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52409.8]
  assign _T_501 = ~_T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52410.8]
  assign _T_502 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@52416.6]
  assign _T_504 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@52419.8]
  assign _T_528 = _T_155 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52443.8]
  assign _T_529 = _T_528 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@52444.8]
  assign _T_530 = _T_504 & _T_529; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@52445.8]
  assign _T_541 = _T_530 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52456.8]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52457.8]
  assign _T_549 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@52476.8]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52478.8]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52479.8]
  assign _T_557 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@52493.6]
  assign _T_604 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@52553.8]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52555.8]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52556.8]
  assign _T_612 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@52570.6]
  assign _T_651 = _T_328 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52610.8]
  assign _T_652 = ~_T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52611.8]
  assign _T_659 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@52630.8]
  assign _T_661 = _T_659 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52632.8]
  assign _T_662 = ~_T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52633.8]
  assign _T_671 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@52657.6]
  assign _T_673 = _T_671 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52659.6]
  assign _T_674 = ~_T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52660.6]
  assign _T_678 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@52668.6]
  assign _T_686 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@52676.6]
  assign _T_691 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52681.6]
  assign _T_692 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52682.6]
  assign _T_693 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@52683.6]
  assign _T_695 = _T_678 | _T_686; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52691.6]
  assign _T_696 = _T_695 | _T_691; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52692.6]
  assign _T_697 = _T_696 | _T_692; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52693.6]
  assign _T_698 = _T_697 | _T_693; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@52694.6]
  assign _T_700 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@52696.6]
  assign _T_702 = _T_698 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52699.8]
  assign _T_703 = ~_T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52700.8]
  assign _T_704 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@52705.8]
  assign _T_706 = _T_704 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52707.8]
  assign _T_707 = ~_T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52708.8]
  assign _T_708 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@52713.8]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52715.8]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52716.8]
  assign _T_712 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@52721.8]
  assign _T_714 = _T_712 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52723.8]
  assign _T_715 = ~_T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52724.8]
  assign _T_716 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@52729.8]
  assign _T_718 = _T_716 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52731.8]
  assign _T_719 = ~_T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52732.8]
  assign _T_720 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@52738.6]
  assign _T_731 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@52762.8]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52764.8]
  assign _T_734 = ~_T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52765.8]
  assign _T_735 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@52770.8]
  assign _T_737 = _T_735 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52772.8]
  assign _T_738 = ~_T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52773.8]
  assign _T_748 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@52796.6]
  assign _T_768 = _T_716 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@52837.8]
  assign _T_770 = _T_768 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52839.8]
  assign _T_771 = ~_T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52840.8]
  assign _T_777 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@52855.6]
  assign _T_794 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@52890.6]
  assign _T_812 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@52926.6]
  assign _T_844 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@52992.4]
  assign _T_851 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@52999.4]
  assign _T_855 = _T_853 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53003.4]
  assign _T_856 = _T_853 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53004.4]
  assign _T_869 = ~_T_856; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@53020.4]
  assign _T_870 = io_in_a_valid & _T_869; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@53021.4]
  assign _T_871 = io_in_a_bits_opcode == _T_864; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@53023.6]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53025.6]
  assign _T_874 = ~_T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53026.6]
  assign _T_875 = io_in_a_bits_param == _T_865; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@53031.6]
  assign _T_877 = _T_875 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53033.6]
  assign _T_878 = ~_T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53034.6]
  assign _T_879 = io_in_a_bits_size == _T_866; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@53039.6]
  assign _T_881 = _T_879 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53041.6]
  assign _T_882 = ~_T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53042.6]
  assign _T_883 = io_in_a_bits_source == _T_867; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@53047.6]
  assign _T_885 = _T_883 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53049.6]
  assign _T_886 = ~_T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53050.6]
  assign _T_887 = io_in_a_bits_address == _T_868; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@53055.6]
  assign _T_889 = _T_887 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53057.6]
  assign _T_890 = ~_T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53058.6]
  assign _T_892 = _T_844 & _T_856; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@53065.4]
  assign _T_893 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@53073.4]
  assign _T_895 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@53075.4]
  assign _T_897 = ~_T_895[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@53077.4]
  assign _T_903 = _T_901 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53083.4]
  assign _T_904 = _T_901 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53084.4]
  assign _T_918 = ~_T_904; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@53101.4]
  assign _T_919 = io_in_d_valid & _T_918; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@53102.4]
  assign _T_920 = io_in_d_bits_opcode == _T_912; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@53104.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53106.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53107.6]
  assign _T_924 = io_in_d_bits_param == _T_913; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@53112.6]
  assign _T_926 = _T_924 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53114.6]
  assign _T_927 = ~_T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53115.6]
  assign _T_928 = io_in_d_bits_size == _T_914; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@53120.6]
  assign _T_930 = _T_928 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53122.6]
  assign _T_931 = ~_T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53123.6]
  assign _T_932 = io_in_d_bits_source == _T_915; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@53128.6]
  assign _T_934 = _T_932 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53130.6]
  assign _T_935 = ~_T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53131.6]
  assign _T_936 = io_in_d_bits_sink == _T_916; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@53136.6]
  assign _T_938 = _T_936 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53138.6]
  assign _T_939 = ~_T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53139.6]
  assign _T_940 = io_in_d_bits_denied == _T_917; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@53144.6]
  assign _T_942 = _T_940 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53146.6]
  assign _T_943 = ~_T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53147.6]
  assign _T_945 = _T_893 & _T_904; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@53154.4]
  assign _T_957 = _T_955 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53177.4]
  assign a_first = _T_955 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53178.4]
  assign _T_975 = _T_973 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@53199.4]
  assign d_first = _T_973 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@53200.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@53219.4]
  assign _T_983 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@53219.4]
  assign _T_984 = inflight_opcodes >> _T_983; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@53220.4]
  assign _T_988 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@53224.4]
  assign _GEN_58 = {{60'd0}, _T_988}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@53225.4]
  assign _T_989 = _T_984 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@53225.4]
  assign _T_990 = {{1'd0}, _T_989[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@53226.4]
  assign _T_991 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@53230.4]
  assign _T_992 = inflight_sizes >> _T_991; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@53231.4]
  assign _T_996 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@53235.4]
  assign _GEN_60 = {{136'd0}, _T_996}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@53236.4]
  assign _T_997 = _T_992 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@53236.4]
  assign _T_998 = {{1'd0}, _T_997[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@53237.4]
  assign _T_1002 = _T_844 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@53262.4]
  assign _T_1004 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@53265.6]
  assign _T_1005 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@53267.6]
  assign _T_1006 = _T_1005 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@53268.6]
  assign _T_1007 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@53270.6]
  assign _T_1008 = _T_1007 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@53271.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@53273.6]
  assign _T_1009 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@53273.6]
  assign a_opcodes_set_interm = _T_1002 ? _T_1006 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@53274.6]
  assign _T_1010 = _GEN_63 << _T_1009; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@53274.6]
  assign _T_1011 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@53276.6]
  assign a_sizes_set_interm = _T_1002 ? _T_1008 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@53277.6]
  assign _T_1012 = _GEN_64 << _T_1011; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@53277.6]
  assign _T_1013 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@53279.6]
  assign _T_1015 = ~_T_1013[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@53281.6]
  assign _T_1017 = _T_1015 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53283.6]
  assign _T_1018 = ~_T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53284.6]
  assign _GEN_15 = _T_1002 ? _T_1004 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  assign _GEN_18 = _T_1002 ? _T_1010 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  assign _GEN_19 = _T_1002 ? _T_1012 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@53264.4]
  assign _T_1021 = _T_893 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@53298.4]
  assign _T_1023 = ~_T_700; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@53300.4]
  assign _T_1024 = _T_1021 & _T_1023; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@53301.4]
  assign _T_1025 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@53303.6]
  assign _GEN_66 = {{255'd0}, _T_988}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@53310.6]
  assign _T_1031 = _GEN_66 << _T_983; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@53310.6]
  assign _GEN_67 = {{255'd0}, _T_996}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@53317.6]
  assign _T_1037 = _GEN_67 << _T_991; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@53317.6]
  assign _GEN_20 = _T_1024 ? _T_1025 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  assign _GEN_21 = _T_1024 ? _T_1031 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  assign _GEN_22 = _T_1024 ? _T_1037 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@53302.4]
  assign _T_1038 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@53320.4]
  assign _T_1041 = _T_1038 & _T_1023; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@53323.4]
  assign _T_1042 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@53325.6]
  assign _T_1044 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@53327.6]
  assign _T_1045 = io_in_a_valid & _T_1044; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@53328.6]
  assign _T_1046 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@53329.6]
  assign _T_1047 = _T_1045 & _T_1046; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@53330.6]
  assign _T_1048 = _T_1047 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@53331.6]
  assign _T_1049 = _T_1042[0] | _T_1048; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@53332.6]
  assign _T_1051 = _T_1049 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53334.6]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53335.6]
  assign a_opcode_lookup = _T_990[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53217.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53218.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@53227.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _T_1054 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@53341.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  assign _T_1056 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@53343.6]
  assign _T_1057 = _T_1054 | _T_1056; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@53344.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _T_1058 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@53345.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  assign _T_1059 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@53346.6]
  assign _T_1060 = _T_1058 | _T_1059; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@53347.6]
  assign _T_1061 = io_in_a_valid & _T_1060; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@53348.6]
  assign _T_1062 = _T_1057 | _T_1061; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@53349.6]
  assign _T_1064 = _T_1062 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53351.6]
  assign _T_1065 = ~_T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53352.6]
  assign a_size_lookup = _T_998[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53228.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53229.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@53238.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@53357.6]
  assign _T_1066 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@53357.6]
  assign _T_1068 = io_in_a_valid & _T_1046; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@53359.6]
  assign _T_1069 = _T_1066 | _T_1068; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@53360.6]
  assign _T_1071 = _T_1069 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53362.6]
  assign _T_1072 = ~_T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53363.6]
  assign _T_1074 = _T_1038 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@53370.4]
  assign _T_1075 = _T_1074 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@53371.4]
  assign _T_1077 = _T_1075 & _T_1044; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@53373.4]
  assign _T_1079 = _T_1077 & _T_1023; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@53375.4]
  assign _T_1080 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@53377.6]
  assign _T_1081 = _T_1080 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@53378.6]
  assign _T_1083 = _T_1081 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53380.6]
  assign _T_1084 = ~_T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53381.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53211.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53212.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@53266.6]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53290.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53291.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@53304.6]
  assign _T_1085 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@53387.4]
  assign _T_1086 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@53388.4]
  assign _T_1087 = ~_T_1086; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@53389.4]
  assign _T_1088 = _T_1085 | _T_1087; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@53390.4]
  assign _T_1090 = _T_1088 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53392.4]
  assign _T_1091 = ~_T_1090; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53393.4]
  assign _T_1092 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@53398.4]
  assign _T_1093 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@53399.4]
  assign _T_1094 = _T_1092 & _T_1093; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@53400.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53213.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53214.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@53275.6]
  assign _T_1095 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@53402.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53292.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53293.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@53311.6]
  assign _T_1096 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@53403.4]
  assign _T_1097 = _T_1095 & _T_1096; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@53404.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53215.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53216.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@53278.6]
  assign _T_1098 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@53406.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53294.4 :freechips.rocketchip.system.DefaultRV32Config.fir@53295.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@53318.6]
  assign _T_1099 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@53407.4]
  assign _T_1100 = _T_1098 & _T_1099; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@53408.4]
  assign _T_1102 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@53413.4]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@53414.4]
  assign _T_1104 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@53415.4]
  assign _T_1105 = _T_1103 | _T_1104; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@53416.4]
  assign _T_1106 = _T_1101 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@53417.4]
  assign _T_1107 = _T_1105 | _T_1106; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@53418.4]
  assign _T_1109 = _T_1107 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53420.4]
  assign _T_1110 = ~_T_1109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53421.4]
  assign _T_1112 = _T_1101 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@53427.4]
  assign _T_1115 = _T_844 | _T_893; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@53431.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51924.10]
  assign _GEN_85 = io_in_a_valid & _T_221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52058.10]
  assign _GEN_103 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52208.10]
  assign _GEN_115 = io_in_a_valid & _T_380; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52298.10]
  assign _GEN_125 = io_in_a_valid & _T_440; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52380.10]
  assign _GEN_135 = io_in_a_valid & _T_502; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52459.10]
  assign _GEN_145 = io_in_a_valid & _T_557; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52536.10]
  assign _GEN_155 = io_in_a_valid & _T_612; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52613.10]
  assign _GEN_167 = io_in_d_valid & _T_700; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52702.10]
  assign _GEN_177 = io_in_d_valid & _T_720; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52744.10]
  assign _GEN_189 = io_in_d_valid & _T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52802.10]
  assign _GEN_201 = io_in_d_valid & _T_777; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52861.10]
  assign _GEN_207 = io_in_d_valid & _T_794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52896.10]
  assign _GEN_213 = io_in_d_valid & _T_812; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52932.10]
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
  _T_853 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_864 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_865 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_866 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_867 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_868 = _RAND_5[27:0];
  _RAND_6 = {1{`RANDOM}};
  _T_901 = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  _T_912 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_913 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_914 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_915 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  _T_916 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_917 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[18:0];
  _RAND_14 = {3{`RANDOM}};
  inflight_opcodes = _RAND_14[75:0];
  _RAND_15 = {5{`RANDOM}};
  inflight_sizes = _RAND_15[151:0];
  _RAND_16 = {1{`RANDOM}};
  _T_955 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  _T_973 = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  _T_1101 = _RAND_18[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_853 <= 10'h0;
    end else if (_T_844) begin
      if (_T_856) begin
        if (_T_851) begin
          _T_853 <= _T_31[11:2];
        end else begin
          _T_853 <= 10'h0;
        end
      end else begin
        _T_853 <= _T_855;
      end
    end
    if (_T_892) begin
      _T_864 <= io_in_a_bits_opcode;
    end
    if (_T_892) begin
      _T_865 <= io_in_a_bits_param;
    end
    if (_T_892) begin
      _T_866 <= io_in_a_bits_size;
    end
    if (_T_892) begin
      _T_867 <= io_in_a_bits_source;
    end
    if (_T_892) begin
      _T_868 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_901 <= 10'h0;
    end else if (_T_893) begin
      if (_T_904) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_901 <= _T_897[11:2];
        end else begin
          _T_901 <= 10'h0;
        end
      end else begin
        _T_901 <= _T_903;
      end
    end
    if (_T_945) begin
      _T_912 <= io_in_d_bits_opcode;
    end
    if (_T_945) begin
      _T_913 <= io_in_d_bits_param;
    end
    if (_T_945) begin
      _T_914 <= io_in_d_bits_size;
    end
    if (_T_945) begin
      _T_915 <= io_in_d_bits_source;
    end
    if (_T_945) begin
      _T_916 <= io_in_d_bits_sink;
    end
    if (_T_945) begin
      _T_917 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_1094;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_1097;
    end
    if (reset) begin
      inflight_sizes <= 152'h0;
    end else begin
      inflight_sizes <= _T_1100;
    end
    if (reset) begin
      _T_955 <= 10'h0;
    end else if (_T_844) begin
      if (a_first) begin
        if (_T_851) begin
          _T_955 <= _T_31[11:2];
        end else begin
          _T_955 <= 10'h0;
        end
      end else begin
        _T_955 <= _T_957;
      end
    end
    if (reset) begin
      _T_973 <= 10'h0;
    end else if (_T_893) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_973 <= _T_897[11:2];
        end else begin
          _T_973 <= 10'h0;
        end
      end else begin
        _T_973 <= _T_975;
      end
    end
    if (reset) begin
      _T_1101 <= 32'h0;
    end else if (_T_1115) begin
      _T_1101 <= 32'h0;
    end else begin
      _T_1101 <= _T_1112;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51924.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51925.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_197) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51969.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_197) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51970.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_204) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51984.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_204) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51985.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_211) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@51999.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_211) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52000.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_216) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52008.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_216) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52009.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_220) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52016.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52017.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52058.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52059.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_197) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_197) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52104.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52110.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52111.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_204) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52118.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_204) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52119.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52125.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52126.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_211) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52133.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_211) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52134.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_308) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52141.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_308) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52142.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_216) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52150.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_216) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52151.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_220) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52158.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_361) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_361) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52215.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52216.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52222.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52223.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_371) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52230.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_371) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52231.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_375) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52238.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_375) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52239.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_220) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52246.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52247.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52298.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_425) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52299.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52305.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52306.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_371) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52320.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_371) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52321.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_375) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52328.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_375) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52329.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52380.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_425) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52381.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52394.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52395.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_371) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52402.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_371) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52403.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_501) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52412.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_501) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52413.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_542) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52459.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_542) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52460.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52466.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52467.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52473.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52474.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_552) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_552) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_375) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52489.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_375) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52490.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_542) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52536.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_542) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52537.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52543.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52544.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52550.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52551.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_607) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52558.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_607) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52559.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_375) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52566.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_375) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52567.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_652) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52613.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_652) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52614.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_200) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52620.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_200) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52621.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52627.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52628.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_662) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52635.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_662) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52636.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_375) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52643.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_375) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52644.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_220) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52651.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@52652.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_674) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52662.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_674) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52663.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_707) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52710.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_707) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52711.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52718.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52719.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52726.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52727.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_719) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_719) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52744.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52745.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_163) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_707) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_707) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_734) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_734) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_738) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52775.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_738) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52776.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52783.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52784.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52802.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52803.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52809.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_163) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52810.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_707) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52817.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_707) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52818.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_734) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_734) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_738) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52833.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_738) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52834.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_771) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52842.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_771) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52843.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52861.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52862.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52869.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52870.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52877.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52878.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52896.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52897.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52904.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52905.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_771) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52913.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_771) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52914.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_703) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52932.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_703) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52933.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52940.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52941.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52948.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@52949.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_870 & _T_874) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53028.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_870 & _T_874) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53029.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_870 & _T_878) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53036.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_870 & _T_878) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53037.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_870 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53044.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_870 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53045.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_870 & _T_886) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53052.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_870 & _T_886) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53053.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_870 & _T_890) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53060.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_870 & _T_890) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53061.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53109.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_923) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53110.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53117.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_927) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53118.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_931) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53125.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_931) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53126.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_935) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53133.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_935) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53134.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_939) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53141.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_939) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53142.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_919 & _T_943) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53149.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_919 & _T_943) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53150.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1002 & _T_1018) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53286.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1002 & _T_1018) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53287.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1041 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53337.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1041 & _T_1052) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53338.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1041 & _T_1065) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53354.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1041 & _T_1065) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53355.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1041 & _T_1072) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53365.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1041 & _T_1072) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53366.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1079 & _T_1084) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53383.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1079 & _T_1084) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53384.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1091) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53395.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1091) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@53396.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1110) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53423.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@53424.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
