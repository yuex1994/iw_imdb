module TLMonitor_22( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57707.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57708.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57709.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [27:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57710.4]
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@59380.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@57724.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@57732.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57737.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57738.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57739.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57747.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57748.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57749.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57750.6]
  wire [26:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@57752.6]
  wire [11:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@57754.6]
  wire [27:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@57755.6]
  wire [27:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@57755.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@57756.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@57759.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@57761.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@57762.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@57765.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57767.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57768.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57770.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57771.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@57774.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57775.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57776.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57777.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57778.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57779.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57780.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57781.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57782.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57783.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57784.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57785.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57786.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@57789.6]
  wire [28:0] _T_77; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57800.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@57855.6]
  wire [28:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57861.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57862.8]
  wire [27:0] _T_135; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57863.8]
  wire [28:0] _T_136; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57864.8]
  wire [28:0] _T_138; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57866.8]
  wire  _T_139; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57867.8]
  wire [27:0] _T_140; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57868.8]
  wire [28:0] _T_141; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57869.8]
  wire [28:0] _T_143; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57871.8]
  wire  _T_144; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57872.8]
  wire [27:0] _T_145; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57873.8]
  wire [28:0] _T_146; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57874.8]
  wire [28:0] _T_148; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57876.8]
  wire  _T_149; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57877.8]
  wire [27:0] _T_150; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57878.8]
  wire [28:0] _T_151; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57879.8]
  wire [28:0] _T_153; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57881.8]
  wire  _T_154; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57882.8]
  wire  _T_155; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@57883.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57891.8]
  wire  _T_184; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@57922.8]
  wire  _T_187; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@57925.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57935.8]
  wire  _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57936.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57942.8]
  wire  _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57943.8]
  wire  _T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57950.8]
  wire  _T_204; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57951.8]
  wire  _T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57957.8]
  wire  _T_207; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57958.8]
  wire  _T_208; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@57963.8]
  wire  _T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57965.8]
  wire  _T_211; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57966.8]
  wire [3:0] _T_212; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@57971.8]
  wire  _T_213; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@57972.8]
  wire  _T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57974.8]
  wire  _T_216; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57975.8]
  wire  _T_217; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@57980.8]
  wire  _T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57982.8]
  wire  _T_220; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57983.8]
  wire  _T_221; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@57989.6]
  wire  _T_305; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@58105.8]
  wire  _T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58107.8]
  wire  _T_308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58108.8]
  wire  _T_318; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@58131.6]
  wire  _T_320; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58134.8]
  wire  _T_328; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58142.8]
  wire  _T_330; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58144.8]
  wire  _T_353; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58167.8]
  wire  _T_354; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58168.8]
  wire  _T_355; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58169.8]
  wire  _T_356; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58170.8]
  wire  _T_358; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@58172.8]
  wire  _T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58174.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58175.8]
  wire  _T_368; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@58194.8]
  wire  _T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58196.8]
  wire  _T_371; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58197.8]
  wire  _T_372; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@58202.8]
  wire  _T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58204.8]
  wire  _T_375; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58205.8]
  wire  _T_380; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@58219.6]
  wire  _T_410; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58250.8]
  wire  _T_411; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58251.8]
  wire  _T_412; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58252.8]
  wire  _T_421; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@58261.8]
  wire  _T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58264.8]
  wire  _T_425; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58265.8]
  wire  _T_440; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@58301.6]
  wire [3:0] _T_496; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@58374.8]
  wire [3:0] _T_497; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@58375.8]
  wire  _T_498; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@58376.8]
  wire  _T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58378.8]
  wire  _T_501; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58379.8]
  wire  _T_502; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@58385.6]
  wire  _T_504; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58388.8]
  wire  _T_528; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58412.8]
  wire  _T_529; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58413.8]
  wire  _T_530; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58414.8]
  wire  _T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58425.8]
  wire  _T_542; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58426.8]
  wire  _T_549; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@58445.8]
  wire  _T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58447.8]
  wire  _T_552; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58448.8]
  wire  _T_557; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@58462.6]
  wire  _T_604; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@58522.8]
  wire  _T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58524.8]
  wire  _T_607; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58525.8]
  wire  _T_612; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@58539.6]
  wire  _T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58579.8]
  wire  _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58580.8]
  wire  _T_659; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@58599.8]
  wire  _T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58601.8]
  wire  _T_662; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58602.8]
  wire  _T_671; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@58626.6]
  wire  _T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58628.6]
  wire  _T_674; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58629.6]
  wire  _T_678; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@58637.6]
  wire  _T_686; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@58645.6]
  wire  _T_691; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58650.6]
  wire  _T_692; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58651.6]
  wire  _T_693; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58652.6]
  wire  _T_695; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58660.6]
  wire  _T_696; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58661.6]
  wire  _T_697; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58662.6]
  wire  _T_698; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58663.6]
  wire  _T_700; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@58665.6]
  wire  _T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58668.8]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58669.8]
  wire  _T_704; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@58674.8]
  wire  _T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58676.8]
  wire  _T_707; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58677.8]
  wire  _T_708; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@58682.8]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58684.8]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58685.8]
  wire  _T_712; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@58690.8]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58692.8]
  wire  _T_715; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58693.8]
  wire  _T_716; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@58698.8]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58700.8]
  wire  _T_719; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58701.8]
  wire  _T_720; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@58707.6]
  wire  _T_731; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@58731.8]
  wire  _T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58733.8]
  wire  _T_734; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58734.8]
  wire  _T_735; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@58739.8]
  wire  _T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58741.8]
  wire  _T_738; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58742.8]
  wire  _T_748; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@58765.6]
  wire  _T_768; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@58806.8]
  wire  _T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58808.8]
  wire  _T_771; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58809.8]
  wire  _T_777; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@58824.6]
  wire  _T_794; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@58859.6]
  wire  _T_812; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@58895.6]
  wire  _T_844; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@58961.4]
  wire  _T_851; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@58968.4]
  reg [9:0] _T_853; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@58970.4]
  wire [9:0] _T_855; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@58972.4]
  wire  _T_856; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@58973.4]
  reg [2:0] _T_864; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@58984.4]
  reg [2:0] _T_865; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@58985.4]
  reg [3:0] _T_866; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@58986.4]
  reg [4:0] _T_867; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@58987.4]
  reg [27:0] _T_868; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@58988.4]
  wire  _T_869; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@58989.4]
  wire  _T_870; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@58990.4]
  wire  _T_871; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@58992.6]
  wire  _T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58994.6]
  wire  _T_874; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58995.6]
  wire  _T_875; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@59000.6]
  wire  _T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59002.6]
  wire  _T_878; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59003.6]
  wire  _T_879; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@59008.6]
  wire  _T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59010.6]
  wire  _T_882; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59011.6]
  wire  _T_883; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@59016.6]
  wire  _T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59018.6]
  wire  _T_886; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59019.6]
  wire  _T_887; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@59024.6]
  wire  _T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59026.6]
  wire  _T_890; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59027.6]
  wire  _T_892; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@59034.4]
  wire  _T_893; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@59042.4]
  wire [26:0] _T_895; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@59044.4]
  wire [11:0] _T_897; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@59046.4]
  reg [9:0] _T_901; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@59050.4]
  wire [9:0] _T_903; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59052.4]
  wire  _T_904; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59053.4]
  reg [2:0] _T_912; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@59064.4]
  reg [1:0] _T_913; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@59065.4]
  reg [3:0] _T_914; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@59066.4]
  reg [4:0] _T_915; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@59067.4]
  reg  _T_916; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@59068.4]
  reg  _T_917; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@59069.4]
  wire  _T_918; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@59070.4]
  wire  _T_919; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@59071.4]
  wire  _T_920; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@59073.6]
  wire  _T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59075.6]
  wire  _T_923; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59076.6]
  wire  _T_924; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@59081.6]
  wire  _T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59083.6]
  wire  _T_927; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59084.6]
  wire  _T_928; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@59089.6]
  wire  _T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59091.6]
  wire  _T_931; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59092.6]
  wire  _T_932; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@59097.6]
  wire  _T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59099.6]
  wire  _T_935; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59100.6]
  wire  _T_936; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@59105.6]
  wire  _T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59107.6]
  wire  _T_939; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59108.6]
  wire  _T_940; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@59113.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59115.6]
  wire  _T_943; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59116.6]
  wire  _T_945; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@59123.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@59132.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@59133.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@59134.4]
  reg [9:0] _T_955; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@59144.4]
  wire [9:0] _T_957; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59146.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59147.4]
  reg [9:0] _T_973; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@59166.4]
  wire [9:0] _T_975; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59168.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59169.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@59188.4]
  wire [7:0] _T_983; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@59188.4]
  wire [75:0] _T_984; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@59189.4]
  wire [15:0] _T_988; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@59193.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@59194.4]
  wire [75:0] _T_989; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@59194.4]
  wire [75:0] _T_990; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@59195.4]
  wire [7:0] _T_991; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@59199.4]
  wire [151:0] _T_992; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@59200.4]
  wire [15:0] _T_996; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@59204.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@59205.4]
  wire [151:0] _T_997; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@59205.4]
  wire [151:0] _T_998; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@59206.4]
  wire  _T_1002; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@59231.4]
  wire [31:0] _T_1004; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@59234.6]
  wire [3:0] _T_1005; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@59236.6]
  wire [3:0] _T_1006; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@59237.6]
  wire [4:0] _T_1007; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@59239.6]
  wire [4:0] _T_1008; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@59240.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@59242.6]
  wire [7:0] _T_1009; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@59242.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@59243.6]
  wire [258:0] _T_1010; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@59243.6]
  wire [7:0] _T_1011; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@59245.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@59246.6]
  wire [259:0] _T_1012; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@59246.6]
  wire [18:0] _T_1013; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@59248.6]
  wire  _T_1015; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@59250.6]
  wire  _T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59252.6]
  wire  _T_1018; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59253.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  wire  _T_1021; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@59267.4]
  wire  _T_1023; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@59269.4]
  wire  _T_1024; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@59270.4]
  wire [31:0] _T_1025; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@59272.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@59279.6]
  wire [270:0] _T_1031; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@59279.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@59286.6]
  wire [270:0] _T_1037; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@59286.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  wire  _T_1038; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@59289.4]
  wire  _T_1041; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@59292.4]
  wire [18:0] _T_1042; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@59294.6]
  wire  _T_1044; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@59296.6]
  wire  _T_1045; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@59297.6]
  wire  _T_1046; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@59298.6]
  wire  _T_1047; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@59299.6]
  wire  _T_1048; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@59300.6]
  wire  _T_1049; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@59301.6]
  wire  _T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59303.6]
  wire  _T_1052; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59304.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59186.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59187.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@59196.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire  _T_1054; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  wire  _T_1056; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  wire  _T_1057; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@59313.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire  _T_1058; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  wire  _T_1059; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  wire  _T_1060; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@59316.6]
  wire  _T_1061; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@59317.6]
  wire  _T_1062; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@59318.6]
  wire  _T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59320.6]
  wire  _T_1065; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59321.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59197.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59198.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@59207.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@59326.6]
  wire  _T_1066; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@59326.6]
  wire  _T_1068; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@59328.6]
  wire  _T_1069; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@59329.6]
  wire  _T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59331.6]
  wire  _T_1072; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59332.6]
  wire  _T_1074; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@59339.4]
  wire  _T_1075; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@59340.4]
  wire  _T_1077; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@59342.4]
  wire  _T_1079; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@59344.4]
  wire  _T_1080; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@59346.6]
  wire  _T_1081; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@59347.6]
  wire  _T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59349.6]
  wire  _T_1084; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59350.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59180.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59181.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@59235.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59259.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59260.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@59273.6]
  wire  _T_1085; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@59356.4]
  wire  _T_1086; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@59357.4]
  wire  _T_1087; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@59358.4]
  wire  _T_1088; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@59359.4]
  wire  _T_1090; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59361.4]
  wire  _T_1091; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59362.4]
  wire [18:0] _T_1092; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@59367.4]
  wire [18:0] _T_1093; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@59368.4]
  wire [18:0] _T_1094; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@59369.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59182.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59183.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@59244.6]
  wire [75:0] _T_1095; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@59371.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59261.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59262.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@59280.6]
  wire [75:0] _T_1096; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@59372.4]
  wire [75:0] _T_1097; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@59373.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59184.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59185.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@59247.6]
  wire [151:0] _T_1098; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@59375.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59263.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59264.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@59287.6]
  wire [151:0] _T_1099; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@59376.4]
  wire [151:0] _T_1100; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@59377.4]
  reg [31:0] _T_1101; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@59379.4]
  wire  _T_1102; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@59382.4]
  wire  _T_1103; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@59383.4]
  wire  _T_1104; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@59384.4]
  wire  _T_1105; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@59385.4]
  wire  _T_1106; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@59386.4]
  wire  _T_1107; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@59387.4]
  wire  _T_1109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59389.4]
  wire  _T_1110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59390.4]
  wire [31:0] _T_1112; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@59396.4]
  wire  _T_1115; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@59400.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57893.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58027.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58177.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58267.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58349.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58428.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58505.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58582.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58671.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58713.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58771.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58830.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58865.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58901.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@59380.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@57724.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@57732.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57737.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57738.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@57739.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57747.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57748.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57749.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@57750.6]
  assign _T_29 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@57752.6]
  assign _T_31 = ~_T_29[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@57754.6]
  assign _GEN_56 = {{16'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@57755.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@57755.6]
  assign _T_33 = _T_32 == 28'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@57756.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@57759.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@57761.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@57762.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@57765.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57767.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57768.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57770.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57771.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@57774.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57775.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57776.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57777.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57778.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57779.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57780.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57781.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57782.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57783.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@57784.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@57785.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@57786.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@57789.6]
  assign _T_77 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57800.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@57855.6]
  assign _T_133 = $signed(_T_77) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57861.8]
  assign _T_134 = $signed(_T_133) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57862.8]
  assign _T_135 = io_in_a_bits_address ^ 28'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57863.8]
  assign _T_136 = {1'b0,$signed(_T_135)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57864.8]
  assign _T_138 = $signed(_T_136) & -29'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57866.8]
  assign _T_139 = $signed(_T_138) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57867.8]
  assign _T_140 = io_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57868.8]
  assign _T_141 = {1'b0,$signed(_T_140)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57869.8]
  assign _T_143 = $signed(_T_141) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57871.8]
  assign _T_144 = $signed(_T_143) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57872.8]
  assign _T_145 = io_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57873.8]
  assign _T_146 = {1'b0,$signed(_T_145)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57874.8]
  assign _T_148 = $signed(_T_146) & -29'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57876.8]
  assign _T_149 = $signed(_T_148) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57877.8]
  assign _T_150 = io_in_a_bits_address ^ 28'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@57878.8]
  assign _T_151 = {1'b0,$signed(_T_150)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@57879.8]
  assign _T_153 = $signed(_T_151) & -29'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@57881.8]
  assign _T_154 = $signed(_T_153) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@57882.8]
  assign _T_155 = _T_134 | _T_139; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@57883.8]
  assign _T_163 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57891.8]
  assign _T_184 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@57922.8]
  assign _T_187 = _T_20 & _T_184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@57925.8]
  assign _T_196 = _T_187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57935.8]
  assign _T_197 = ~_T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57936.8]
  assign _T_199 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57942.8]
  assign _T_200 = ~_T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57943.8]
  assign _T_203 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57950.8]
  assign _T_204 = ~_T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57951.8]
  assign _T_206 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57957.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57958.8]
  assign _T_208 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@57963.8]
  assign _T_210 = _T_208 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57965.8]
  assign _T_211 = ~_T_210; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57966.8]
  assign _T_212 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@57971.8]
  assign _T_213 = _T_212 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@57972.8]
  assign _T_215 = _T_213 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57974.8]
  assign _T_216 = ~_T_215; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57975.8]
  assign _T_217 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@57980.8]
  assign _T_219 = _T_217 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57982.8]
  assign _T_220 = ~_T_219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57983.8]
  assign _T_221 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@57989.6]
  assign _T_305 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@58105.8]
  assign _T_307 = _T_305 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58107.8]
  assign _T_308 = ~_T_307; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58108.8]
  assign _T_318 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@58131.6]
  assign _T_320 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58134.8]
  assign _T_328 = _T_320 & _T_139; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58142.8]
  assign _T_330 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58144.8]
  assign _T_353 = _T_134 | _T_144; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58167.8]
  assign _T_354 = _T_353 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58168.8]
  assign _T_355 = _T_354 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58169.8]
  assign _T_356 = _T_330 & _T_355; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58170.8]
  assign _T_358 = _T_328 | _T_356; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@58172.8]
  assign _T_360 = _T_358 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58174.8]
  assign _T_361 = ~_T_360; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58175.8]
  assign _T_368 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@58194.8]
  assign _T_370 = _T_368 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58196.8]
  assign _T_371 = ~_T_370; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58197.8]
  assign _T_372 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@58202.8]
  assign _T_374 = _T_372 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58204.8]
  assign _T_375 = ~_T_374; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58205.8]
  assign _T_380 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@58219.6]
  assign _T_410 = _T_134 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58250.8]
  assign _T_411 = _T_410 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58251.8]
  assign _T_412 = _T_330 & _T_411; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58252.8]
  assign _T_421 = _T_328 | _T_412; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@58261.8]
  assign _T_424 = _T_421 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58264.8]
  assign _T_425 = ~_T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58265.8]
  assign _T_440 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@58301.6]
  assign _T_496 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@58374.8]
  assign _T_497 = io_in_a_bits_mask & _T_496; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@58375.8]
  assign _T_498 = _T_497 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@58376.8]
  assign _T_500 = _T_498 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58378.8]
  assign _T_501 = ~_T_500; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58379.8]
  assign _T_502 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@58385.6]
  assign _T_504 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@58388.8]
  assign _T_528 = _T_155 | _T_149; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58412.8]
  assign _T_529 = _T_528 | _T_154; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@58413.8]
  assign _T_530 = _T_504 & _T_529; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@58414.8]
  assign _T_541 = _T_530 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58425.8]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58426.8]
  assign _T_549 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@58445.8]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58447.8]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58448.8]
  assign _T_557 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@58462.6]
  assign _T_604 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@58522.8]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58524.8]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58525.8]
  assign _T_612 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@58539.6]
  assign _T_651 = _T_328 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58579.8]
  assign _T_652 = ~_T_651; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58580.8]
  assign _T_659 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@58599.8]
  assign _T_661 = _T_659 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58601.8]
  assign _T_662 = ~_T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58602.8]
  assign _T_671 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@58626.6]
  assign _T_673 = _T_671 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58628.6]
  assign _T_674 = ~_T_673; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58629.6]
  assign _T_678 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@58637.6]
  assign _T_686 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@58645.6]
  assign _T_691 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58650.6]
  assign _T_692 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58651.6]
  assign _T_693 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@58652.6]
  assign _T_695 = _T_678 | _T_686; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58660.6]
  assign _T_696 = _T_695 | _T_691; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58661.6]
  assign _T_697 = _T_696 | _T_692; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58662.6]
  assign _T_698 = _T_697 | _T_693; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@58663.6]
  assign _T_700 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@58665.6]
  assign _T_702 = _T_698 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58668.8]
  assign _T_703 = ~_T_702; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58669.8]
  assign _T_704 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@58674.8]
  assign _T_706 = _T_704 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58676.8]
  assign _T_707 = ~_T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58677.8]
  assign _T_708 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@58682.8]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58684.8]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58685.8]
  assign _T_712 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@58690.8]
  assign _T_714 = _T_712 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58692.8]
  assign _T_715 = ~_T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58693.8]
  assign _T_716 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@58698.8]
  assign _T_718 = _T_716 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58700.8]
  assign _T_719 = ~_T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58701.8]
  assign _T_720 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@58707.6]
  assign _T_731 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@58731.8]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58733.8]
  assign _T_734 = ~_T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58734.8]
  assign _T_735 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@58739.8]
  assign _T_737 = _T_735 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58741.8]
  assign _T_738 = ~_T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58742.8]
  assign _T_748 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@58765.6]
  assign _T_768 = _T_716 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@58806.8]
  assign _T_770 = _T_768 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58808.8]
  assign _T_771 = ~_T_770; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58809.8]
  assign _T_777 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@58824.6]
  assign _T_794 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@58859.6]
  assign _T_812 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@58895.6]
  assign _T_844 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@58961.4]
  assign _T_851 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@58968.4]
  assign _T_855 = _T_853 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@58972.4]
  assign _T_856 = _T_853 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@58973.4]
  assign _T_869 = ~_T_856; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@58989.4]
  assign _T_870 = io_in_a_valid & _T_869; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@58990.4]
  assign _T_871 = io_in_a_bits_opcode == _T_864; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@58992.6]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58994.6]
  assign _T_874 = ~_T_873; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58995.6]
  assign _T_875 = io_in_a_bits_param == _T_865; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@59000.6]
  assign _T_877 = _T_875 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59002.6]
  assign _T_878 = ~_T_877; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59003.6]
  assign _T_879 = io_in_a_bits_size == _T_866; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@59008.6]
  assign _T_881 = _T_879 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59010.6]
  assign _T_882 = ~_T_881; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59011.6]
  assign _T_883 = io_in_a_bits_source == _T_867; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@59016.6]
  assign _T_885 = _T_883 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59018.6]
  assign _T_886 = ~_T_885; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59019.6]
  assign _T_887 = io_in_a_bits_address == _T_868; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@59024.6]
  assign _T_889 = _T_887 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59026.6]
  assign _T_890 = ~_T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59027.6]
  assign _T_892 = _T_844 & _T_856; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@59034.4]
  assign _T_893 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@59042.4]
  assign _T_895 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@59044.4]
  assign _T_897 = ~_T_895[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@59046.4]
  assign _T_903 = _T_901 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59052.4]
  assign _T_904 = _T_901 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59053.4]
  assign _T_918 = ~_T_904; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@59070.4]
  assign _T_919 = io_in_d_valid & _T_918; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@59071.4]
  assign _T_920 = io_in_d_bits_opcode == _T_912; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@59073.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59075.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59076.6]
  assign _T_924 = io_in_d_bits_param == _T_913; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@59081.6]
  assign _T_926 = _T_924 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59083.6]
  assign _T_927 = ~_T_926; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59084.6]
  assign _T_928 = io_in_d_bits_size == _T_914; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@59089.6]
  assign _T_930 = _T_928 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59091.6]
  assign _T_931 = ~_T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59092.6]
  assign _T_932 = io_in_d_bits_source == _T_915; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@59097.6]
  assign _T_934 = _T_932 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59099.6]
  assign _T_935 = ~_T_934; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59100.6]
  assign _T_936 = io_in_d_bits_sink == _T_916; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@59105.6]
  assign _T_938 = _T_936 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59107.6]
  assign _T_939 = ~_T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59108.6]
  assign _T_940 = io_in_d_bits_denied == _T_917; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@59113.6]
  assign _T_942 = _T_940 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59115.6]
  assign _T_943 = ~_T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59116.6]
  assign _T_945 = _T_893 & _T_904; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@59123.4]
  assign _T_957 = _T_955 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59146.4]
  assign a_first = _T_955 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59147.4]
  assign _T_975 = _T_973 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@59168.4]
  assign d_first = _T_973 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@59169.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@59188.4]
  assign _T_983 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@59188.4]
  assign _T_984 = inflight_opcodes >> _T_983; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@59189.4]
  assign _T_988 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@59193.4]
  assign _GEN_58 = {{60'd0}, _T_988}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@59194.4]
  assign _T_989 = _T_984 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@59194.4]
  assign _T_990 = {{1'd0}, _T_989[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@59195.4]
  assign _T_991 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@59199.4]
  assign _T_992 = inflight_sizes >> _T_991; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@59200.4]
  assign _T_996 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@59204.4]
  assign _GEN_60 = {{136'd0}, _T_996}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@59205.4]
  assign _T_997 = _T_992 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@59205.4]
  assign _T_998 = {{1'd0}, _T_997[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@59206.4]
  assign _T_1002 = _T_844 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@59231.4]
  assign _T_1004 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@59234.6]
  assign _T_1005 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@59236.6]
  assign _T_1006 = _T_1005 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@59237.6]
  assign _T_1007 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@59239.6]
  assign _T_1008 = _T_1007 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@59240.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@59242.6]
  assign _T_1009 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@59242.6]
  assign a_opcodes_set_interm = _T_1002 ? _T_1006 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@59243.6]
  assign _T_1010 = _GEN_63 << _T_1009; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@59243.6]
  assign _T_1011 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@59245.6]
  assign a_sizes_set_interm = _T_1002 ? _T_1008 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@59246.6]
  assign _T_1012 = _GEN_64 << _T_1011; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@59246.6]
  assign _T_1013 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@59248.6]
  assign _T_1015 = ~_T_1013[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@59250.6]
  assign _T_1017 = _T_1015 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59252.6]
  assign _T_1018 = ~_T_1017; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59253.6]
  assign _GEN_15 = _T_1002 ? _T_1004 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  assign _GEN_18 = _T_1002 ? _T_1010 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  assign _GEN_19 = _T_1002 ? _T_1012 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@59233.4]
  assign _T_1021 = _T_893 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@59267.4]
  assign _T_1023 = ~_T_700; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@59269.4]
  assign _T_1024 = _T_1021 & _T_1023; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@59270.4]
  assign _T_1025 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@59272.6]
  assign _GEN_66 = {{255'd0}, _T_988}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@59279.6]
  assign _T_1031 = _GEN_66 << _T_983; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@59279.6]
  assign _GEN_67 = {{255'd0}, _T_996}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@59286.6]
  assign _T_1037 = _GEN_67 << _T_991; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@59286.6]
  assign _GEN_20 = _T_1024 ? _T_1025 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  assign _GEN_21 = _T_1024 ? _T_1031 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  assign _GEN_22 = _T_1024 ? _T_1037 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@59271.4]
  assign _T_1038 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@59289.4]
  assign _T_1041 = _T_1038 & _T_1023; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@59292.4]
  assign _T_1042 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@59294.6]
  assign _T_1044 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@59296.6]
  assign _T_1045 = io_in_a_valid & _T_1044; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@59297.6]
  assign _T_1046 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@59298.6]
  assign _T_1047 = _T_1045 & _T_1046; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@59299.6]
  assign _T_1048 = _T_1047 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@59300.6]
  assign _T_1049 = _T_1042[0] | _T_1048; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@59301.6]
  assign _T_1051 = _T_1049 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59303.6]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59304.6]
  assign a_opcode_lookup = _T_990[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59186.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59187.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@59196.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _T_1054 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@59310.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  assign _T_1056 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@59312.6]
  assign _T_1057 = _T_1054 | _T_1056; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@59313.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _T_1058 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@59314.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  assign _T_1059 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@59315.6]
  assign _T_1060 = _T_1058 | _T_1059; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@59316.6]
  assign _T_1061 = io_in_a_valid & _T_1060; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@59317.6]
  assign _T_1062 = _T_1057 | _T_1061; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@59318.6]
  assign _T_1064 = _T_1062 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59320.6]
  assign _T_1065 = ~_T_1064; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59321.6]
  assign a_size_lookup = _T_998[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59197.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59198.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@59207.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@59326.6]
  assign _T_1066 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@59326.6]
  assign _T_1068 = io_in_a_valid & _T_1046; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@59328.6]
  assign _T_1069 = _T_1066 | _T_1068; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@59329.6]
  assign _T_1071 = _T_1069 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59331.6]
  assign _T_1072 = ~_T_1071; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59332.6]
  assign _T_1074 = _T_1038 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@59339.4]
  assign _T_1075 = _T_1074 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@59340.4]
  assign _T_1077 = _T_1075 & _T_1044; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@59342.4]
  assign _T_1079 = _T_1077 & _T_1023; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@59344.4]
  assign _T_1080 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@59346.6]
  assign _T_1081 = _T_1080 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@59347.6]
  assign _T_1083 = _T_1081 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59349.6]
  assign _T_1084 = ~_T_1083; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59350.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59180.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59181.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@59235.6]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59259.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59260.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@59273.6]
  assign _T_1085 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@59356.4]
  assign _T_1086 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@59357.4]
  assign _T_1087 = ~_T_1086; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@59358.4]
  assign _T_1088 = _T_1085 | _T_1087; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@59359.4]
  assign _T_1090 = _T_1088 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59361.4]
  assign _T_1091 = ~_T_1090; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59362.4]
  assign _T_1092 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@59367.4]
  assign _T_1093 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@59368.4]
  assign _T_1094 = _T_1092 & _T_1093; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@59369.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59182.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59183.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@59244.6]
  assign _T_1095 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@59371.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59261.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59262.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@59280.6]
  assign _T_1096 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@59372.4]
  assign _T_1097 = _T_1095 & _T_1096; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@59373.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59184.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59185.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@59247.6]
  assign _T_1098 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@59375.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@59263.4 :freechips.rocketchip.system.DefaultRV32Config.fir@59264.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@59287.6]
  assign _T_1099 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@59376.4]
  assign _T_1100 = _T_1098 & _T_1099; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@59377.4]
  assign _T_1102 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@59382.4]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@59383.4]
  assign _T_1104 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@59384.4]
  assign _T_1105 = _T_1103 | _T_1104; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@59385.4]
  assign _T_1106 = _T_1101 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@59386.4]
  assign _T_1107 = _T_1105 | _T_1106; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@59387.4]
  assign _T_1109 = _T_1107 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59389.4]
  assign _T_1110 = ~_T_1109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59390.4]
  assign _T_1112 = _T_1101 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@59396.4]
  assign _T_1115 = _T_844 | _T_893; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@59400.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57893.10]
  assign _GEN_85 = io_in_a_valid & _T_221; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58027.10]
  assign _GEN_103 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58177.10]
  assign _GEN_115 = io_in_a_valid & _T_380; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58267.10]
  assign _GEN_125 = io_in_a_valid & _T_440; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58349.10]
  assign _GEN_135 = io_in_a_valid & _T_502; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58428.10]
  assign _GEN_145 = io_in_a_valid & _T_557; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58505.10]
  assign _GEN_155 = io_in_a_valid & _T_612; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58582.10]
  assign _GEN_167 = io_in_d_valid & _T_700; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58671.10]
  assign _GEN_177 = io_in_d_valid & _T_720; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58713.10]
  assign _GEN_189 = io_in_d_valid & _T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58771.10]
  assign _GEN_201 = io_in_d_valid & _T_777; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58830.10]
  assign _GEN_207 = io_in_d_valid & _T_794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58865.10]
  assign _GEN_213 = io_in_d_valid & _T_812; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58901.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57893.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57894.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57938.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57939.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57945.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57946.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57953.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57954.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57960.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57961.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57968.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57969.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57977.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57978.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57985.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57986.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58027.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58028.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58072.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58073.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58079.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58080.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58087.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58088.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58094.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58095.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58102.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58103.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58110.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58111.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58119.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58120.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58127.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58128.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58177.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58178.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58184.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58185.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58191.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58192.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58199.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58200.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58207.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58208.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58215.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58216.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58267.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58268.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58274.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58275.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58281.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58282.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58289.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58290.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58297.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58298.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58349.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58350.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58356.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58357.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58363.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58364.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58371.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58372.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58381.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58382.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58428.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58429.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58435.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58436.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58442.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58443.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58450.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58451.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58458.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58459.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58505.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58506.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58512.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58513.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58519.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58520.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58527.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58528.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58535.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58536.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58582.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58583.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58589.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58590.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58596.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58597.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58604.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58605.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58612.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58613.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58620.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58621.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58631.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58632.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58671.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58672.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58679.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58680.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58687.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58688.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58695.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58696.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58703.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58704.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58713.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58714.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58720.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58721.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58728.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58729.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58736.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58737.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58744.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58745.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58752.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58753.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58771.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58772.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58778.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58779.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58786.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58787.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58794.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58795.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58802.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58803.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58811.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58812.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58830.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58831.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58838.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58839.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58846.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58847.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58865.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58866.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58873.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58874.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58882.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58883.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58901.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58902.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58909.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58910.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58917.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@58918.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58997.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@58998.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59005.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59006.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59013.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59014.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59021.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59022.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59029.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59030.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59078.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59079.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59086.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59087.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59094.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59095.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59102.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59103.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59110.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59111.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59118.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59119.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59255.8]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59256.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59306.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59307.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59323.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59324.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59334.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59335.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59352.8]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59353.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59364.6]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@59365.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59392.6]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@59393.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
