module TLMonitor_17( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46098.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46099.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46100.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [27:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@46101.4]
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@47760.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@46115.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@46123.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46128.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46129.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46130.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46138.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46139.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46140.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46141.6]
  wire [26:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@46143.6]
  wire [11:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@46145.6]
  wire [27:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@46146.6]
  wire [27:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@46146.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@46147.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@46150.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@46152.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@46153.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@46156.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46158.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46159.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46161.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46162.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@46165.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46166.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46167.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46168.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46169.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46170.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46171.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46172.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46173.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46174.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46175.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46176.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46177.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@46180.6]
  wire [28:0] _T_77; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46191.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@46246.6]
  wire [28:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46252.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46253.8]
  wire [27:0] _T_135; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46254.8]
  wire [28:0] _T_136; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46255.8]
  wire [28:0] _T_138; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46257.8]
  wire  _T_139; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46258.8]
  wire [27:0] _T_140; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46259.8]
  wire [28:0] _T_141; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46260.8]
  wire [28:0] _T_143; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46262.8]
  wire  _T_144; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46263.8]
  wire [27:0] _T_145; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46264.8]
  wire [28:0] _T_146; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46265.8]
  wire [28:0] _T_148; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46267.8]
  wire  _T_149; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46268.8]
  wire [27:0] _T_150; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46269.8]
  wire [28:0] _T_151; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46270.8]
  wire [28:0] _T_153; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46272.8]
  wire  _T_154; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46273.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46282.8]
  wire  _T_184; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@46313.8]
  wire  _T_187; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@46316.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46326.8]
  wire  _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46327.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46333.8]
  wire  _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46334.8]
  wire  _T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46341.8]
  wire  _T_204; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46342.8]
  wire  _T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46348.8]
  wire  _T_207; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46349.8]
  wire  _T_208; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@46354.8]
  wire  _T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46356.8]
  wire  _T_211; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46357.8]
  wire [3:0] _T_212; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@46362.8]
  wire  _T_213; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@46363.8]
  wire  _T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46365.8]
  wire  _T_216; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46366.8]
  wire  _T_217; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@46371.8]
  wire  _T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46373.8]
  wire  _T_220; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46374.8]
  wire  _T_221; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@46380.6]
  wire  _T_305; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@46496.8]
  wire  _T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46498.8]
  wire  _T_308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46499.8]
  wire  _T_318; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@46522.6]
  wire  _T_320; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46525.8]
  wire  _T_328; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46533.8]
  wire  _T_330; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46535.8]
  wire  _T_353; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46558.8]
  wire  _T_354; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46559.8]
  wire  _T_355; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46560.8]
  wire  _T_356; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46561.8]
  wire  _T_358; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@46563.8]
  wire  _T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46565.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46566.8]
  wire  _T_368; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@46585.8]
  wire  _T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46587.8]
  wire  _T_371; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46588.8]
  wire  _T_372; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@46593.8]
  wire  _T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46595.8]
  wire  _T_375; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46596.8]
  wire  _T_380; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@46610.6]
  wire  _T_410; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46641.8]
  wire  _T_411; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46642.8]
  wire  _T_412; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46643.8]
  wire  _T_421; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@46652.8]
  wire  _T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46655.8]
  wire  _T_425; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46656.8]
  wire  _T_440; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@46692.6]
  wire [3:0] _T_496; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@46765.8]
  wire [3:0] _T_497; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@46766.8]
  wire  _T_498; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@46767.8]
  wire  _T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46769.8]
  wire  _T_501; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46770.8]
  wire  _T_502; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@46776.6]
  wire  _T_504; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46779.8]
  wire  _T_512; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46787.8]
  wire  _T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46816.8]
  wire  _T_542; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46817.8]
  wire  _T_549; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@46836.8]
  wire  _T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46838.8]
  wire  _T_552; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46839.8]
  wire  _T_557; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@46853.6]
  wire  _T_604; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@46913.8]
  wire  _T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46915.8]
  wire  _T_607; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46916.8]
  wire  _T_612; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@46930.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46970.8]
  wire  _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46971.8]
  wire  _T_659; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@46990.8]
  wire  _T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46992.8]
  wire  _T_662; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46993.8]
  wire  _T_671; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@47017.6]
  wire  _T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47019.6]
  wire  _T_674; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47020.6]
  wire  _T_678; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@47028.6]
  wire  _T_686; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@47036.6]
  wire  _T_691; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47041.6]
  wire  _T_692; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47042.6]
  wire  _T_693; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47043.6]
  wire  _T_695; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47051.6]
  wire  _T_696; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47052.6]
  wire  _T_697; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47053.6]
  wire  _T_698; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47054.6]
  wire  _T_700; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@47056.6]
  wire  _T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47059.8]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47060.8]
  wire  _T_704; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@47065.8]
  wire  _T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47067.8]
  wire  _T_707; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47068.8]
  wire  _T_708; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@47073.8]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47075.8]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47076.8]
  wire  _T_712; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@47081.8]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47083.8]
  wire  _T_715; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47084.8]
  wire  _T_716; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@47089.8]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47091.8]
  wire  _T_719; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47092.8]
  wire  _T_720; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@47098.6]
  wire  _T_731; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@47122.8]
  wire  _T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47124.8]
  wire  _T_734; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47125.8]
  wire  _T_735; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@47130.8]
  wire  _T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47132.8]
  wire  _T_738; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47133.8]
  wire  _T_748; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@47156.6]
  wire  _T_768; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@47197.8]
  wire  _T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47199.8]
  wire  _T_771; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47200.8]
  wire  _T_777; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@47215.6]
  wire  _T_794; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@47250.6]
  wire  _T_812; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@47286.6]
  wire  _T_844; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@47352.4]
  wire  _T_851; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@47359.4]
  reg [9:0] _T_853; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@47361.4]
  wire [9:0] _T_855; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47363.4]
  wire  _T_856; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47364.4]
  reg [2:0] _T_864; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@47375.4]
  reg [2:0] _T_865; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@47376.4]
  reg [3:0] _T_866; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@47377.4]
  reg [4:0] _T_867; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@47378.4]
  reg [27:0] _T_868; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@47379.4]
  wire  _T_869; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@47380.4]
  wire  _T_870; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@47381.4]
  wire  _T_871; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@47383.6]
  wire  _T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47385.6]
  wire  _T_874; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47386.6]
  wire  _T_875; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@47391.6]
  wire  _T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47393.6]
  wire  _T_878; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47394.6]
  wire  _T_879; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@47399.6]
  wire  _T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47401.6]
  wire  _T_882; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47402.6]
  wire  _T_883; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@47407.6]
  wire  _T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47409.6]
  wire  _T_886; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47410.6]
  wire  _T_887; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@47415.6]
  wire  _T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47417.6]
  wire  _T_890; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47418.6]
  wire  _T_892; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@47425.4]
  wire  _T_893; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@47433.4]
  wire [26:0] _T_895; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@47435.4]
  wire [11:0] _T_897; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@47437.4]
  reg [9:0] _T_901; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@47441.4]
  wire [9:0] _T_903; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47443.4]
  wire  _T_904; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47444.4]
  reg [2:0] _T_912; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@47455.4]
  reg [1:0] _T_913; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@47456.4]
  reg [3:0] _T_914; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@47457.4]
  reg [4:0] _T_915; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@47458.4]
  reg  _T_916; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@47459.4]
  reg  _T_917; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@47460.4]
  wire  _T_918; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@47461.4]
  wire  _T_919; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@47462.4]
  wire  _T_920; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@47464.6]
  wire  _T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47466.6]
  wire  _T_923; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47467.6]
  wire  _T_924; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@47472.6]
  wire  _T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47474.6]
  wire  _T_927; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47475.6]
  wire  _T_928; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@47480.6]
  wire  _T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47482.6]
  wire  _T_931; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47483.6]
  wire  _T_932; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@47488.6]
  wire  _T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47490.6]
  wire  _T_935; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47491.6]
  wire  _T_936; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@47496.6]
  wire  _T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47498.6]
  wire  _T_939; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47499.6]
  wire  _T_940; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@47504.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47506.6]
  wire  _T_943; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47507.6]
  wire  _T_945; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@47514.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@47523.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@47524.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@47525.4]
  reg [9:0] _T_955; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@47535.4]
  wire [9:0] _T_957; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47537.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47538.4]
  reg [9:0] _T_973; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@47557.4]
  wire [9:0] _T_975; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47559.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47560.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@47579.4]
  wire [7:0] _T_983; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@47579.4]
  wire [75:0] _T_984; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@47580.4]
  wire [15:0] _T_988; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@47584.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@47585.4]
  wire [75:0] _T_989; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@47585.4]
  wire [75:0] _T_990; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@47586.4]
  wire [7:0] _T_991; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@47590.4]
  wire [151:0] _T_992; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@47591.4]
  wire [15:0] _T_996; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@47595.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@47596.4]
  wire [151:0] _T_997; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@47596.4]
  wire [151:0] _T_998; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@47597.4]
  wire  _T_1002; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@47622.4]
  wire [31:0] _T_1004; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@47625.6]
  wire [3:0] _T_1005; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@47627.6]
  wire [3:0] _T_1006; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@47628.6]
  wire [4:0] _T_1007; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@47630.6]
  wire [4:0] _T_1008; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@47631.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@47633.6]
  wire [7:0] _T_1009; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@47633.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@47634.6]
  wire [258:0] _T_1010; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@47634.6]
  wire [7:0] _T_1011; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@47636.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@47637.6]
  wire [259:0] _T_1012; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@47637.6]
  wire [18:0] _T_1013; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@47639.6]
  wire  _T_1015; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@47641.6]
  wire  _T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47643.6]
  wire  _T_1018; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47644.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  wire  _T_1021; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@47658.4]
  wire  _T_1023; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@47660.4]
  wire  _T_1024; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@47661.4]
  wire [31:0] _T_1025; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@47663.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@47670.6]
  wire [270:0] _T_1031; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@47670.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@47677.6]
  wire [270:0] _T_1037; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@47677.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  wire  _T_1038; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@47680.4]
  wire  _T_1041; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@47683.4]
  wire [18:0] _T_1042; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@47685.6]
  wire  _T_1044; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@47687.6]
  wire  _T_1045; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@47688.6]
  wire  _T_1046; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@47689.6]
  wire  _T_1047; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@47690.6]
  wire  _T_1048; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@47691.6]
  wire  _T_1049; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@47692.6]
  wire  _T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47694.6]
  wire  _T_1052; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47695.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47577.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47578.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@47587.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire  _T_1054; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  wire  _T_1056; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  wire  _T_1057; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@47704.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire  _T_1058; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  wire  _T_1059; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  wire  _T_1060; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@47707.6]
  wire  _T_1061; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@47708.6]
  wire  _T_1062; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@47709.6]
  wire  _T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47711.6]
  wire  _T_1065; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47712.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47588.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47589.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@47598.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@47717.6]
  wire  _T_1066; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@47717.6]
  wire  _T_1068; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@47719.6]
  wire  _T_1069; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@47720.6]
  wire  _T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47722.6]
  wire  _T_1072; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47723.6]
  wire  _T_1074; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@47730.4]
  wire  _T_1075; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@47731.4]
  wire  _T_1077; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@47733.4]
  wire  _T_1079; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@47735.4]
  wire  _T_1080; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@47737.6]
  wire  _T_1081; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@47738.6]
  wire  _T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47740.6]
  wire  _T_1084; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47741.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47571.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47572.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@47626.6]
  wire [18:0] _T_1085; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@47747.4]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47650.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47651.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@47664.6]
  wire [18:0] _T_1086; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@47748.4]
  wire [18:0] _T_1087; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@47749.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47573.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47574.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@47635.6]
  wire [75:0] _T_1088; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@47751.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47652.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47653.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@47671.6]
  wire [75:0] _T_1089; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@47752.4]
  wire [75:0] _T_1090; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@47753.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47575.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47576.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@47638.6]
  wire [151:0] _T_1091; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@47755.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47654.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47655.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@47678.6]
  wire [151:0] _T_1092; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@47756.4]
  wire [151:0] _T_1093; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@47757.4]
  reg [31:0] _T_1094; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@47759.4]
  wire  _T_1095; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@47762.4]
  wire  _T_1096; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@47763.4]
  wire  _T_1097; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@47764.4]
  wire  _T_1098; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@47765.4]
  wire  _T_1099; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@47766.4]
  wire  _T_1100; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@47767.4]
  wire  _T_1102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47769.4]
  wire  _T_1103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47770.4]
  wire [31:0] _T_1105; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@47776.4]
  wire  _T_1108; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@47780.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46284.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46418.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46568.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46658.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46740.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46819.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46896.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46973.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47062.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47104.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47162.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47221.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47256.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47292.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@47760.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@46115.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@46123.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46128.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46129.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@46130.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46138.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46139.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46140.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@46141.6]
  assign _T_29 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@46143.6]
  assign _T_31 = ~_T_29[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@46145.6]
  assign _GEN_56 = {{16'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@46146.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@46146.6]
  assign _T_33 = _T_32 == 28'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@46147.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@46150.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@46152.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@46153.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@46156.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46158.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46159.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46161.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46162.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@46165.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46166.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46167.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46168.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46169.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46170.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46171.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46172.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46173.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46174.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@46175.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@46176.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@46177.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@46180.6]
  assign _T_77 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46191.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@46246.6]
  assign _T_133 = $signed(_T_77) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46252.8]
  assign _T_134 = $signed(_T_133) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46253.8]
  assign _T_135 = io_in_a_bits_address ^ 28'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46254.8]
  assign _T_136 = {1'b0,$signed(_T_135)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46255.8]
  assign _T_138 = $signed(_T_136) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46257.8]
  assign _T_139 = $signed(_T_138) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46258.8]
  assign _T_140 = io_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46259.8]
  assign _T_141 = {1'b0,$signed(_T_140)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46260.8]
  assign _T_143 = $signed(_T_141) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46262.8]
  assign _T_144 = $signed(_T_143) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46263.8]
  assign _T_145 = io_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46264.8]
  assign _T_146 = {1'b0,$signed(_T_145)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46265.8]
  assign _T_148 = $signed(_T_146) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46267.8]
  assign _T_149 = $signed(_T_148) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46268.8]
  assign _T_150 = io_in_a_bits_address ^ 28'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@46269.8]
  assign _T_151 = {1'b0,$signed(_T_150)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@46270.8]
  assign _T_153 = $signed(_T_151) & -29'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@46272.8]
  assign _T_154 = $signed(_T_153) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@46273.8]
  assign _T_163 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46282.8]
  assign _T_184 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@46313.8]
  assign _T_187 = _T_20 & _T_184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@46316.8]
  assign _T_196 = _T_187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46326.8]
  assign _T_197 = ~_T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46327.8]
  assign _T_199 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46333.8]
  assign _T_200 = ~_T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46334.8]
  assign _T_203 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46341.8]
  assign _T_204 = ~_T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46342.8]
  assign _T_206 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46348.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46349.8]
  assign _T_208 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@46354.8]
  assign _T_210 = _T_208 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46356.8]
  assign _T_211 = ~_T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46357.8]
  assign _T_212 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@46362.8]
  assign _T_213 = _T_212 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@46363.8]
  assign _T_215 = _T_213 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46365.8]
  assign _T_216 = ~_T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46366.8]
  assign _T_217 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@46371.8]
  assign _T_219 = _T_217 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46373.8]
  assign _T_220 = ~_T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46374.8]
  assign _T_221 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@46380.6]
  assign _T_305 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@46496.8]
  assign _T_307 = _T_305 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46498.8]
  assign _T_308 = ~_T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46499.8]
  assign _T_318 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@46522.6]
  assign _T_320 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46525.8]
  assign _T_328 = _T_320 & _T_139; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46533.8]
  assign _T_330 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46535.8]
  assign _T_353 = _T_134 | _T_144; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46558.8]
  assign _T_354 = _T_353 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46559.8]
  assign _T_355 = _T_354 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46560.8]
  assign _T_356 = _T_330 & _T_355; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46561.8]
  assign _T_358 = _T_328 | _T_356; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@46563.8]
  assign _T_360 = _T_358 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46565.8]
  assign _T_361 = ~_T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46566.8]
  assign _T_368 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@46585.8]
  assign _T_370 = _T_368 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46587.8]
  assign _T_371 = ~_T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46588.8]
  assign _T_372 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@46593.8]
  assign _T_374 = _T_372 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46595.8]
  assign _T_375 = ~_T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46596.8]
  assign _T_380 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@46610.6]
  assign _T_410 = _T_134 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46641.8]
  assign _T_411 = _T_410 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@46642.8]
  assign _T_412 = _T_330 & _T_411; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46643.8]
  assign _T_421 = _T_328 | _T_412; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@46652.8]
  assign _T_424 = _T_421 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46655.8]
  assign _T_425 = ~_T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46656.8]
  assign _T_440 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@46692.6]
  assign _T_496 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@46765.8]
  assign _T_497 = io_in_a_bits_mask & _T_496; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@46766.8]
  assign _T_498 = _T_497 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@46767.8]
  assign _T_500 = _T_498 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46769.8]
  assign _T_501 = ~_T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46770.8]
  assign _T_502 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@46776.6]
  assign _T_504 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@46779.8]
  assign _T_512 = _T_504 & _T_139; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@46787.8]
  assign _T_541 = _T_512 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46816.8]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46817.8]
  assign _T_549 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@46836.8]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46838.8]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46839.8]
  assign _T_557 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@46853.6]
  assign _T_604 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@46913.8]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46915.8]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46916.8]
  assign _T_612 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@46930.6]
  assign _T_651 = _T_328 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46970.8]
  assign _T_652 = ~_T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46971.8]
  assign _T_659 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@46990.8]
  assign _T_661 = _T_659 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46992.8]
  assign _T_662 = ~_T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46993.8]
  assign _T_671 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@47017.6]
  assign _T_673 = _T_671 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47019.6]
  assign _T_674 = ~_T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47020.6]
  assign _T_678 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@47028.6]
  assign _T_686 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@47036.6]
  assign _T_691 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47041.6]
  assign _T_692 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47042.6]
  assign _T_693 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@47043.6]
  assign _T_695 = _T_678 | _T_686; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47051.6]
  assign _T_696 = _T_695 | _T_691; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47052.6]
  assign _T_697 = _T_696 | _T_692; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47053.6]
  assign _T_698 = _T_697 | _T_693; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@47054.6]
  assign _T_700 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@47056.6]
  assign _T_702 = _T_698 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47059.8]
  assign _T_703 = ~_T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47060.8]
  assign _T_704 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@47065.8]
  assign _T_706 = _T_704 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47067.8]
  assign _T_707 = ~_T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47068.8]
  assign _T_708 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@47073.8]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47075.8]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47076.8]
  assign _T_712 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@47081.8]
  assign _T_714 = _T_712 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47083.8]
  assign _T_715 = ~_T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47084.8]
  assign _T_716 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@47089.8]
  assign _T_718 = _T_716 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47091.8]
  assign _T_719 = ~_T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47092.8]
  assign _T_720 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@47098.6]
  assign _T_731 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@47122.8]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47124.8]
  assign _T_734 = ~_T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47125.8]
  assign _T_735 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@47130.8]
  assign _T_737 = _T_735 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47132.8]
  assign _T_738 = ~_T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47133.8]
  assign _T_748 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@47156.6]
  assign _T_768 = _T_716 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@47197.8]
  assign _T_770 = _T_768 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47199.8]
  assign _T_771 = ~_T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47200.8]
  assign _T_777 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@47215.6]
  assign _T_794 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@47250.6]
  assign _T_812 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@47286.6]
  assign _T_844 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@47352.4]
  assign _T_851 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@47359.4]
  assign _T_855 = _T_853 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47363.4]
  assign _T_856 = _T_853 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47364.4]
  assign _T_869 = ~_T_856; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@47380.4]
  assign _T_870 = io_in_a_valid & _T_869; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@47381.4]
  assign _T_871 = io_in_a_bits_opcode == _T_864; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@47383.6]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47385.6]
  assign _T_874 = ~_T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47386.6]
  assign _T_875 = io_in_a_bits_param == _T_865; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@47391.6]
  assign _T_877 = _T_875 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47393.6]
  assign _T_878 = ~_T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47394.6]
  assign _T_879 = io_in_a_bits_size == _T_866; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@47399.6]
  assign _T_881 = _T_879 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47401.6]
  assign _T_882 = ~_T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47402.6]
  assign _T_883 = io_in_a_bits_source == _T_867; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@47407.6]
  assign _T_885 = _T_883 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47409.6]
  assign _T_886 = ~_T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47410.6]
  assign _T_887 = io_in_a_bits_address == _T_868; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@47415.6]
  assign _T_889 = _T_887 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47417.6]
  assign _T_890 = ~_T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47418.6]
  assign _T_892 = _T_844 & _T_856; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@47425.4]
  assign _T_893 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@47433.4]
  assign _T_895 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@47435.4]
  assign _T_897 = ~_T_895[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@47437.4]
  assign _T_903 = _T_901 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47443.4]
  assign _T_904 = _T_901 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47444.4]
  assign _T_918 = ~_T_904; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@47461.4]
  assign _T_919 = io_in_d_valid & _T_918; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@47462.4]
  assign _T_920 = io_in_d_bits_opcode == _T_912; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@47464.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47466.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47467.6]
  assign _T_924 = io_in_d_bits_param == _T_913; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@47472.6]
  assign _T_926 = _T_924 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47474.6]
  assign _T_927 = ~_T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47475.6]
  assign _T_928 = io_in_d_bits_size == _T_914; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@47480.6]
  assign _T_930 = _T_928 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47482.6]
  assign _T_931 = ~_T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47483.6]
  assign _T_932 = io_in_d_bits_source == _T_915; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@47488.6]
  assign _T_934 = _T_932 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47490.6]
  assign _T_935 = ~_T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47491.6]
  assign _T_936 = io_in_d_bits_sink == _T_916; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@47496.6]
  assign _T_938 = _T_936 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47498.6]
  assign _T_939 = ~_T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47499.6]
  assign _T_940 = io_in_d_bits_denied == _T_917; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@47504.6]
  assign _T_942 = _T_940 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47506.6]
  assign _T_943 = ~_T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47507.6]
  assign _T_945 = _T_893 & _T_904; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@47514.4]
  assign _T_957 = _T_955 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47537.4]
  assign a_first = _T_955 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47538.4]
  assign _T_975 = _T_973 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@47559.4]
  assign d_first = _T_973 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@47560.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@47579.4]
  assign _T_983 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@47579.4]
  assign _T_984 = inflight_opcodes >> _T_983; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@47580.4]
  assign _T_988 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@47584.4]
  assign _GEN_58 = {{60'd0}, _T_988}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@47585.4]
  assign _T_989 = _T_984 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@47585.4]
  assign _T_990 = {{1'd0}, _T_989[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@47586.4]
  assign _T_991 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@47590.4]
  assign _T_992 = inflight_sizes >> _T_991; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@47591.4]
  assign _T_996 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@47595.4]
  assign _GEN_60 = {{136'd0}, _T_996}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@47596.4]
  assign _T_997 = _T_992 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@47596.4]
  assign _T_998 = {{1'd0}, _T_997[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@47597.4]
  assign _T_1002 = _T_844 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@47622.4]
  assign _T_1004 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@47625.6]
  assign _T_1005 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@47627.6]
  assign _T_1006 = _T_1005 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@47628.6]
  assign _T_1007 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@47630.6]
  assign _T_1008 = _T_1007 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@47631.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@47633.6]
  assign _T_1009 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@47633.6]
  assign a_opcodes_set_interm = _T_1002 ? _T_1006 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@47634.6]
  assign _T_1010 = _GEN_63 << _T_1009; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@47634.6]
  assign _T_1011 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@47636.6]
  assign a_sizes_set_interm = _T_1002 ? _T_1008 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@47637.6]
  assign _T_1012 = _GEN_64 << _T_1011; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@47637.6]
  assign _T_1013 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@47639.6]
  assign _T_1015 = ~_T_1013[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@47641.6]
  assign _T_1017 = _T_1015 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47643.6]
  assign _T_1018 = ~_T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47644.6]
  assign _GEN_15 = _T_1002 ? _T_1004 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  assign _GEN_18 = _T_1002 ? _T_1010 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  assign _GEN_19 = _T_1002 ? _T_1012 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@47624.4]
  assign _T_1021 = _T_893 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@47658.4]
  assign _T_1023 = ~_T_700; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@47660.4]
  assign _T_1024 = _T_1021 & _T_1023; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@47661.4]
  assign _T_1025 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@47663.6]
  assign _GEN_66 = {{255'd0}, _T_988}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@47670.6]
  assign _T_1031 = _GEN_66 << _T_983; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@47670.6]
  assign _GEN_67 = {{255'd0}, _T_996}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@47677.6]
  assign _T_1037 = _GEN_67 << _T_991; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@47677.6]
  assign _GEN_20 = _T_1024 ? _T_1025 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  assign _GEN_21 = _T_1024 ? _T_1031 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  assign _GEN_22 = _T_1024 ? _T_1037 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@47662.4]
  assign _T_1038 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@47680.4]
  assign _T_1041 = _T_1038 & _T_1023; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@47683.4]
  assign _T_1042 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@47685.6]
  assign _T_1044 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@47687.6]
  assign _T_1045 = io_in_a_valid & _T_1044; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@47688.6]
  assign _T_1046 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@47689.6]
  assign _T_1047 = _T_1045 & _T_1046; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@47690.6]
  assign _T_1048 = _T_1047 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@47691.6]
  assign _T_1049 = _T_1042[0] | _T_1048; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@47692.6]
  assign _T_1051 = _T_1049 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47694.6]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47695.6]
  assign a_opcode_lookup = _T_990[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47577.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47578.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@47587.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _T_1054 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@47701.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  assign _T_1056 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@47703.6]
  assign _T_1057 = _T_1054 | _T_1056; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@47704.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _T_1058 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@47705.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  assign _T_1059 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@47706.6]
  assign _T_1060 = _T_1058 | _T_1059; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@47707.6]
  assign _T_1061 = io_in_a_valid & _T_1060; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@47708.6]
  assign _T_1062 = _T_1057 | _T_1061; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@47709.6]
  assign _T_1064 = _T_1062 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47711.6]
  assign _T_1065 = ~_T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47712.6]
  assign a_size_lookup = _T_998[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47588.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47589.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@47598.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@47717.6]
  assign _T_1066 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@47717.6]
  assign _T_1068 = io_in_a_valid & _T_1046; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@47719.6]
  assign _T_1069 = _T_1066 | _T_1068; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@47720.6]
  assign _T_1071 = _T_1069 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47722.6]
  assign _T_1072 = ~_T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47723.6]
  assign _T_1074 = _T_1038 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@47730.4]
  assign _T_1075 = _T_1074 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@47731.4]
  assign _T_1077 = _T_1075 & _T_1044; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@47733.4]
  assign _T_1079 = _T_1077 & _T_1023; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@47735.4]
  assign _T_1080 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@47737.6]
  assign _T_1081 = _T_1080 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@47738.6]
  assign _T_1083 = _T_1081 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47740.6]
  assign _T_1084 = ~_T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47741.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47571.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47572.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@47626.6]
  assign _T_1085 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@47747.4]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47650.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47651.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@47664.6]
  assign _T_1086 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@47748.4]
  assign _T_1087 = _T_1085 & _T_1086; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@47749.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47573.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47574.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@47635.6]
  assign _T_1088 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@47751.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47652.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47653.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@47671.6]
  assign _T_1089 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@47752.4]
  assign _T_1090 = _T_1088 & _T_1089; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@47753.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47575.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47576.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@47638.6]
  assign _T_1091 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@47755.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47654.4 :freechips.rocketchip.system.DefaultRV32Config.fir@47655.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@47678.6]
  assign _T_1092 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@47756.4]
  assign _T_1093 = _T_1091 & _T_1092; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@47757.4]
  assign _T_1095 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@47762.4]
  assign _T_1096 = ~_T_1095; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@47763.4]
  assign _T_1097 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@47764.4]
  assign _T_1098 = _T_1096 | _T_1097; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@47765.4]
  assign _T_1099 = _T_1094 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@47766.4]
  assign _T_1100 = _T_1098 | _T_1099; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@47767.4]
  assign _T_1102 = _T_1100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47769.4]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47770.4]
  assign _T_1105 = _T_1094 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@47776.4]
  assign _T_1108 = _T_844 | _T_893; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@47780.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46284.10]
  assign _GEN_85 = io_in_a_valid & _T_221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46418.10]
  assign _GEN_103 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46568.10]
  assign _GEN_115 = io_in_a_valid & _T_380; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46658.10]
  assign _GEN_125 = io_in_a_valid & _T_440; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46740.10]
  assign _GEN_135 = io_in_a_valid & _T_502; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46819.10]
  assign _GEN_145 = io_in_a_valid & _T_557; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46896.10]
  assign _GEN_155 = io_in_a_valid & _T_612; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46973.10]
  assign _GEN_167 = io_in_d_valid & _T_700; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47062.10]
  assign _GEN_177 = io_in_d_valid & _T_720; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47104.10]
  assign _GEN_189 = io_in_d_valid & _T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47162.10]
  assign _GEN_201 = io_in_d_valid & _T_777; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47221.10]
  assign _GEN_207 = io_in_d_valid & _T_794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47256.10]
  assign _GEN_213 = io_in_d_valid & _T_812; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47292.10]
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
  _T_1094 = _RAND_18[31:0];
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
      inflight <= _T_1087;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_1090;
    end
    if (reset) begin
      inflight_sizes <= 152'h0;
    end else begin
      inflight_sizes <= _T_1093;
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
      _T_1094 <= 32'h0;
    end else if (_T_1108) begin
      _T_1094 <= 32'h0;
    end else begin
      _T_1094 <= _T_1105;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46284.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46285.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46329.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46330.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46336.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46337.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46344.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46345.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46351.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46352.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46359.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46360.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46368.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46369.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46376.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46377.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46418.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46419.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46463.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46464.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46470.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46471.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46478.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46479.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46485.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46486.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46493.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46494.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46501.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46502.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46510.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46511.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46518.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46519.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46568.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46569.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46575.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46576.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46582.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46583.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46590.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46591.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46598.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46599.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46606.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46607.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46658.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46659.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46665.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46666.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46672.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46673.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46680.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46681.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46688.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46689.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46740.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46741.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46747.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46748.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46754.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46755.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46762.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46763.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46772.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46773.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46819.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46820.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46826.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46827.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46833.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46834.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46841.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46842.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46849.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46850.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46896.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46897.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46903.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46904.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46910.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46911.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46918.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46919.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46926.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46927.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46973.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46974.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46980.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46981.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46987.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46988.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46995.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@46996.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47003.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47004.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47011.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47012.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47022.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47023.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47062.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47063.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47070.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47071.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47078.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47079.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47086.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47087.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47094.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47095.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47104.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47105.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47111.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47112.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47119.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47120.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47127.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47128.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47135.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47136.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47143.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47144.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47162.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47163.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47169.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47170.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47177.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47178.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47185.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47186.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47193.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47194.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47202.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47203.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47221.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47222.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47229.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47230.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47237.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47238.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47256.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47257.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47264.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47265.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47273.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47274.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47292.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47293.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47300.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47301.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47308.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47309.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47388.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47389.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47396.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47397.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47404.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47405.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47412.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47413.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47420.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47421.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47469.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47470.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47477.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47478.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47485.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47486.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47493.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47494.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47501.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47502.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47509.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47510.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47646.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47647.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47697.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47698.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47714.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47715.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47725.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47726.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47743.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@47744.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1103) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47772.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@47773.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
