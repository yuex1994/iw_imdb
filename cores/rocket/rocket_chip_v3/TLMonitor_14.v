module TLMonitor_14( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37445.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37446.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37447.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [3:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [7:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [3:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37448.4]
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
  reg [63:0] _RAND_14;
  reg [127:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@39144.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@37462.6]
  wire  _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@37479.6]
  wire [26:0] _T_23; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37481.6]
  wire [11:0] _T_25; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37483.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@37484.6]
  wire [31:0] _T_26; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@37484.6]
  wire  _T_27; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@37485.6]
  wire [3:0] _T_30; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@37488.6]
  wire [2:0] _T_32; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@37490.6]
  wire  _T_33; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@37491.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37494.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37496.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37497.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37499.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37500.6]
  wire  _T_45; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37503.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37504.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37505.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37506.6]
  wire  _T_49; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37507.6]
  wire  _T_50; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37508.6]
  wire  _T_51; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37509.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37510.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37511.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37512.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37513.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37514.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37515.6]
  wire  _T_60; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37518.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37519.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37520.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37521.6]
  wire  _T_64; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37522.6]
  wire  _T_65; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37523.6]
  wire  _T_66; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37524.6]
  wire  _T_67; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37525.6]
  wire  _T_68; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37526.6]
  wire  _T_69; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37527.6]
  wire  _T_70; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37528.6]
  wire  _T_71; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37529.6]
  wire  _T_72; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37530.6]
  wire  _T_73; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37531.6]
  wire  _T_74; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37532.6]
  wire  _T_75; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37533.6]
  wire  _T_76; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37534.6]
  wire  _T_77; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37535.6]
  wire  _T_78; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37536.6]
  wire  _T_79; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37537.6]
  wire  _T_80; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37538.6]
  wire  _T_81; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37539.6]
  wire  _T_82; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37540.6]
  wire  _T_83; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37541.6]
  wire  _T_84; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37542.6]
  wire [7:0] _T_91; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@37549.6]
  wire [32:0] _T_102; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37560.6]
  wire  _T_126; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@37588.6]
  wire [32:0] _T_131; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37594.8]
  wire  _T_132; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37595.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37596.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37597.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37599.8]
  wire  _T_137; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37600.8]
  wire [31:0] _T_138; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37601.8]
  wire [32:0] _T_139; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37602.8]
  wire [32:0] _T_141; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37604.8]
  wire  _T_142; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37605.8]
  wire [31:0] _T_143; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37606.8]
  wire [32:0] _T_144; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37607.8]
  wire [32:0] _T_146; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37609.8]
  wire  _T_147; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37610.8]
  wire [31:0] _T_148; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37611.8]
  wire [32:0] _T_149; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37612.8]
  wire [32:0] _T_151; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37614.8]
  wire  _T_152; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37615.8]
  wire [31:0] _T_153; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37616.8]
  wire [32:0] _T_154; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37617.8]
  wire [32:0] _T_156; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37619.8]
  wire  _T_157; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37620.8]
  wire  _T_158; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37621.8]
  wire  _T_165; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37628.8]
  wire [31:0] _T_168; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37631.8]
  wire [32:0] _T_169; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37632.8]
  wire [32:0] _T_171; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37634.8]
  wire  _T_172; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37635.8]
  wire  _T_173; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37636.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37640.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37641.8]
  wire  _T_181; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37648.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37654.8]
  wire  _T_184; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37655.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37662.8]
  wire  _T_188; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37663.8]
  wire  _T_190; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37669.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37670.8]
  wire  _T_192; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@37675.8]
  wire  _T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37677.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37678.8]
  wire [7:0] _T_196; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@37683.8]
  wire  _T_197; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@37684.8]
  wire  _T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37686.8]
  wire  _T_200; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37687.8]
  wire  _T_201; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@37692.8]
  wire  _T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37694.8]
  wire  _T_204; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37695.8]
  wire  _T_205; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@37701.6]
  wire  _T_275; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@37796.8]
  wire  _T_277; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37798.8]
  wire  _T_278; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37799.8]
  wire  _T_288; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@37822.6]
  wire  _T_290; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37825.8]
  wire  _T_298; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37833.8]
  wire  _T_333; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37868.8]
  wire  _T_334; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37869.8]
  wire  _T_335; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37870.8]
  wire  _T_336; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37871.8]
  wire  _T_337; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37872.8]
  wire  _T_338; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37873.8]
  wire  _T_340; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37875.8]
  wire  _T_342; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37877.8]
  wire  _T_343; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37878.8]
  wire  _T_350; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@37897.8]
  wire  _T_352; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37899.8]
  wire  _T_353; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37900.8]
  wire  _T_354; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@37905.8]
  wire  _T_356; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37907.8]
  wire  _T_357; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37908.8]
  wire  _T_362; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@37922.6]
  wire  _T_397; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37958.8]
  wire  _T_398; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37959.8]
  wire  _T_399; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37960.8]
  wire  _T_400; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37961.8]
  wire  _T_409; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37970.8]
  wire  _T_417; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37978.8]
  wire  _T_419; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37980.8]
  wire  _T_421; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37982.8]
  wire  _T_423; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37984.8]
  wire  _T_424; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37985.8]
  wire  _T_439; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@38021.6]
  wire [7:0] _T_512; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@38111.8]
  wire [7:0] _T_513; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@38112.8]
  wire  _T_514; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@38113.8]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38115.8]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38116.8]
  wire  _T_518; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@38122.6]
  wire  _T_520; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@38125.8]
  wire  _T_544; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@38149.8]
  wire  _T_545; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@38150.8]
  wire  _T_546; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@38151.8]
  wire  _T_569; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38174.8]
  wire  _T_570; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38175.8]
  wire  _T_577; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@38194.8]
  wire  _T_579; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38196.8]
  wire  _T_580; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38197.8]
  wire  _T_585; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@38211.6]
  wire  _T_644; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@38283.8]
  wire  _T_646; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38285.8]
  wire  _T_647; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38286.8]
  wire  _T_652; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@38300.6]
  wire  _T_703; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38352.8]
  wire  _T_704; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38353.8]
  wire  _T_711; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@38372.8]
  wire  _T_713; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38374.8]
  wire  _T_714; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38375.8]
  wire  _T_723; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@38399.6]
  wire  _T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38401.6]
  wire  _T_726; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38402.6]
  wire  _T_730; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@38410.6]
  wire  _T_744; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@38427.6]
  wire  _T_746; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@38429.6]
  wire  _T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38432.8]
  wire  _T_749; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38433.8]
  wire  _T_750; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@38438.8]
  wire  _T_752; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38440.8]
  wire  _T_753; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38441.8]
  wire  _T_754; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@38446.8]
  wire  _T_756; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38448.8]
  wire  _T_757; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38449.8]
  wire  _T_758; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@38454.8]
  wire  _T_760; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38456.8]
  wire  _T_761; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38457.8]
  wire  _T_762; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@38462.8]
  wire  _T_764; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38464.8]
  wire  _T_765; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38465.8]
  wire  _T_766; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@38471.6]
  wire  _T_777; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@38495.8]
  wire  _T_779; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38497.8]
  wire  _T_780; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38498.8]
  wire  _T_781; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@38503.8]
  wire  _T_783; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38505.8]
  wire  _T_784; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38506.8]
  wire  _T_794; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@38529.6]
  wire  _T_814; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@38570.8]
  wire  _T_816; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38572.8]
  wire  _T_817; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38573.8]
  wire  _T_823; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@38588.6]
  wire  _T_840; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@38623.6]
  wire  _T_858; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@38659.6]
  wire  _T_890; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@38725.4]
  wire  _T_897; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@38732.4]
  reg [8:0] _T_899; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@38734.4]
  wire [8:0] _T_901; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38736.4]
  wire  _T_902; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38737.4]
  reg [2:0] _T_910; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@38748.4]
  reg [2:0] _T_911; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@38749.4]
  reg [3:0] _T_912; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@38750.4]
  reg [3:0] _T_913; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@38751.4]
  reg [31:0] _T_914; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@38752.4]
  wire  _T_915; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@38753.4]
  wire  _T_916; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@38754.4]
  wire  _T_917; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@38756.6]
  wire  _T_919; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38758.6]
  wire  _T_920; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38759.6]
  wire  _T_921; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@38764.6]
  wire  _T_923; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38766.6]
  wire  _T_924; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38767.6]
  wire  _T_925; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@38772.6]
  wire  _T_927; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38774.6]
  wire  _T_928; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38775.6]
  wire  _T_929; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@38780.6]
  wire  _T_931; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38782.6]
  wire  _T_932; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38783.6]
  wire  _T_933; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@38788.6]
  wire  _T_935; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38790.6]
  wire  _T_936; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38791.6]
  wire  _T_938; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@38798.4]
  wire  _T_939; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@38806.4]
  wire [26:0] _T_941; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@38808.4]
  wire [11:0] _T_943; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@38810.4]
  reg [8:0] _T_947; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@38814.4]
  wire [8:0] _T_949; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38816.4]
  wire  _T_950; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38817.4]
  reg [2:0] _T_958; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@38828.4]
  reg [1:0] _T_959; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@38829.4]
  reg [3:0] _T_960; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@38830.4]
  reg [3:0] _T_961; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@38831.4]
  reg [1:0] _T_962; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@38832.4]
  reg  _T_963; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@38833.4]
  wire  _T_964; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@38834.4]
  wire  _T_965; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@38835.4]
  wire  _T_966; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@38837.6]
  wire  _T_968; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38839.6]
  wire  _T_969; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38840.6]
  wire  _T_970; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@38845.6]
  wire  _T_972; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38847.6]
  wire  _T_973; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38848.6]
  wire  _T_974; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@38853.6]
  wire  _T_976; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38855.6]
  wire  _T_977; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38856.6]
  wire  _T_978; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@38861.6]
  wire  _T_980; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38863.6]
  wire  _T_981; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38864.6]
  wire  _T_982; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@38869.6]
  wire  _T_984; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38871.6]
  wire  _T_985; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38872.6]
  wire  _T_986; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@38877.6]
  wire  _T_988; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38879.6]
  wire  _T_989; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38880.6]
  wire  _T_991; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@38887.4]
  reg [15:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@38896.4]
  reg [63:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@38897.4]
  reg [127:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@38898.4]
  reg [8:0] _T_1001; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@38908.4]
  wire [8:0] _T_1003; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38910.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38911.4]
  reg [8:0] _T_1019; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@38930.4]
  wire [8:0] _T_1021; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38932.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38933.4]
  wire [5:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@38952.4]
  wire [6:0] _T_1029; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@38952.4]
  wire [63:0] _T_1030; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@38953.4]
  wire [15:0] _T_1034; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@38957.4]
  wire [63:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@38958.4]
  wire [63:0] _T_1035; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@38958.4]
  wire [63:0] _T_1036; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@38959.4]
  wire [6:0] _T_1037; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@38963.4]
  wire [127:0] _T_1038; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@38964.4]
  wire [15:0] _T_1042; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@38968.4]
  wire [127:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@38969.4]
  wire [127:0] _T_1043; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@38969.4]
  wire [127:0] _T_1044; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@38970.4]
  wire  _T_1048; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@38995.4]
  wire [15:0] _T_1050; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@38998.6]
  wire [3:0] _T_1051; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@39000.6]
  wire [3:0] _T_1052; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@39001.6]
  wire [4:0] _T_1053; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@39003.6]
  wire [4:0] _T_1054; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@39004.6]
  wire [5:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@39006.6]
  wire [6:0] _T_1055; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@39006.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  wire [130:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@39007.6]
  wire [130:0] _T_1056; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@39007.6]
  wire [6:0] _T_1057; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@39009.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  wire [131:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@39010.6]
  wire [131:0] _T_1058; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@39010.6]
  wire [15:0] _T_1059; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@39012.6]
  wire  _T_1061; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@39014.6]
  wire  _T_1063; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39016.6]
  wire  _T_1064; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39017.6]
  wire [15:0] a_set; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  wire [130:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  wire [131:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  wire  _T_1067; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@39031.4]
  wire  _T_1069; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@39033.4]
  wire  _T_1070; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@39034.4]
  wire [15:0] _T_1071; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@39036.6]
  wire [142:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@39043.6]
  wire [142:0] _T_1077; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@39043.6]
  wire [142:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@39050.6]
  wire [142:0] _T_1083; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@39050.6]
  wire [15:0] d_clr; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  wire [142:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  wire [142:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  wire  _T_1084; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@39053.4]
  wire  _T_1087; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@39056.4]
  wire [15:0] _T_1088; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@39058.6]
  wire  _T_1090; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@39060.6]
  wire  _T_1091; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@39061.6]
  wire  _T_1092; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@39062.6]
  wire  _T_1093; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@39063.6]
  wire  _T_1094; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@39064.6]
  wire  _T_1095; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@39065.6]
  wire  _T_1097; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39067.6]
  wire  _T_1098; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39068.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38950.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38951.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@38960.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire  _T_1100; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  wire  _T_1102; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  wire  _T_1103; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@39077.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire  _T_1104; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  wire  _T_1105; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  wire  _T_1106; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@39080.6]
  wire  _T_1107; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@39081.6]
  wire  _T_1108; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@39082.6]
  wire  _T_1110; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39084.6]
  wire  _T_1111; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39085.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38961.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38962.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@38971.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@39090.6]
  wire  _T_1112; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@39090.6]
  wire  _T_1114; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@39092.6]
  wire  _T_1115; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@39093.6]
  wire  _T_1117; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39095.6]
  wire  _T_1118; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39096.6]
  wire  _T_1120; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@39103.4]
  wire  _T_1121; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@39104.4]
  wire  _T_1123; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@39106.4]
  wire  _T_1125; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@39108.4]
  wire  _T_1126; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@39110.6]
  wire  _T_1127; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@39111.6]
  wire  _T_1129; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39113.6]
  wire  _T_1130; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39114.6]
  wire  _T_1131; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@39120.4]
  wire  _T_1132; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@39121.4]
  wire  _T_1133; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@39122.4]
  wire  _T_1134; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@39123.4]
  wire  _T_1136; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39125.4]
  wire  _T_1137; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39126.4]
  wire [15:0] _T_1138; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@39131.4]
  wire [15:0] _T_1139; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@39132.4]
  wire [15:0] _T_1140; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@39133.4]
  wire [63:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38946.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38947.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@39008.6]
  wire [63:0] _T_1141; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@39135.4]
  wire [63:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39025.4 :freechips.rocketchip.system.DefaultRV32Config.fir@39026.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@39044.6]
  wire [63:0] _T_1142; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@39136.4]
  wire [63:0] _T_1143; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@39137.4]
  wire [127:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38948.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38949.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@39011.6]
  wire [127:0] _T_1144; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@39139.4]
  wire [127:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39027.4 :freechips.rocketchip.system.DefaultRV32Config.fir@39028.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@39051.6]
  wire [127:0] _T_1145; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@39140.4]
  wire [127:0] _T_1146; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@39141.4]
  reg [31:0] _T_1147; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@39143.4]
  wire  _T_1148; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@39146.4]
  wire  _T_1149; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@39147.4]
  wire  _T_1150; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@39148.4]
  wire  _T_1151; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@39149.4]
  wire  _T_1152; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@39150.4]
  wire  _T_1153; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@39151.4]
  wire  _T_1155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39153.4]
  wire  _T_1156; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39154.4]
  wire [31:0] _T_1158; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@39160.4]
  wire  _T_1161; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@39164.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37643.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37756.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37880.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37987.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38086.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38177.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38266.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38355.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38435.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38477.10]
  wire  _GEN_187; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38535.10]
  wire  _GEN_197; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38594.10]
  wire  _GEN_203; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38629.10]
  wire  _GEN_209; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38665.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@39144.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = ~io_in_a_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@37462.6]
  assign _T_21 = _T_7 | io_in_a_bits_source[3]; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@37479.6]
  assign _T_23 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37481.6]
  assign _T_25 = ~_T_23[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37483.6]
  assign _GEN_56 = {{20'd0}, _T_25}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@37484.6]
  assign _T_26 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@37484.6]
  assign _T_27 = _T_26 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@37485.6]
  assign _T_30 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@37488.6]
  assign _T_32 = _T_30[2:0] | 3'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@37490.6]
  assign _T_33 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@37491.6]
  assign _T_36 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37494.6]
  assign _T_38 = _T_32[2] & _T_36; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37496.6]
  assign _T_39 = _T_33 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37497.6]
  assign _T_41 = _T_32[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37499.6]
  assign _T_42 = _T_33 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37500.6]
  assign _T_45 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37503.6]
  assign _T_46 = _T_36 & _T_45; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37504.6]
  assign _T_47 = _T_32[1] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37505.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37506.6]
  assign _T_49 = _T_36 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37507.6]
  assign _T_50 = _T_32[1] & _T_49; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37508.6]
  assign _T_51 = _T_39 | _T_50; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37509.6]
  assign _T_52 = io_in_a_bits_address[2] & _T_45; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37510.6]
  assign _T_53 = _T_32[1] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37511.6]
  assign _T_54 = _T_42 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37512.6]
  assign _T_55 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37513.6]
  assign _T_56 = _T_32[1] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37514.6]
  assign _T_57 = _T_42 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37515.6]
  assign _T_60 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@37518.6]
  assign _T_61 = _T_46 & _T_60; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37519.6]
  assign _T_62 = _T_32[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37520.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37521.6]
  assign _T_64 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37522.6]
  assign _T_65 = _T_32[0] & _T_64; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37523.6]
  assign _T_66 = _T_48 | _T_65; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37524.6]
  assign _T_67 = _T_49 & _T_60; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37525.6]
  assign _T_68 = _T_32[0] & _T_67; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37526.6]
  assign _T_69 = _T_51 | _T_68; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37527.6]
  assign _T_70 = _T_49 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37528.6]
  assign _T_71 = _T_32[0] & _T_70; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37529.6]
  assign _T_72 = _T_51 | _T_71; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37530.6]
  assign _T_73 = _T_52 & _T_60; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37531.6]
  assign _T_74 = _T_32[0] & _T_73; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37532.6]
  assign _T_75 = _T_54 | _T_74; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37533.6]
  assign _T_76 = _T_52 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37534.6]
  assign _T_77 = _T_32[0] & _T_76; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37535.6]
  assign _T_78 = _T_54 | _T_77; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37536.6]
  assign _T_79 = _T_55 & _T_60; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37537.6]
  assign _T_80 = _T_32[0] & _T_79; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37538.6]
  assign _T_81 = _T_57 | _T_80; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37539.6]
  assign _T_82 = _T_55 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@37540.6]
  assign _T_83 = _T_32[0] & _T_82; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@37541.6]
  assign _T_84 = _T_57 | _T_83; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@37542.6]
  assign _T_91 = {_T_84,_T_81,_T_78,_T_75,_T_72,_T_69,_T_66,_T_63}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@37549.6]
  assign _T_102 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37560.6]
  assign _T_126 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@37588.6]
  assign _T_131 = $signed(_T_102) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37594.8]
  assign _T_132 = $signed(_T_131) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37595.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37596.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37597.8]
  assign _T_136 = $signed(_T_134) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37599.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37600.8]
  assign _T_138 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37601.8]
  assign _T_139 = {1'b0,$signed(_T_138)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37602.8]
  assign _T_141 = $signed(_T_139) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37604.8]
  assign _T_142 = $signed(_T_141) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37605.8]
  assign _T_143 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37606.8]
  assign _T_144 = {1'b0,$signed(_T_143)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37607.8]
  assign _T_146 = $signed(_T_144) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37609.8]
  assign _T_147 = $signed(_T_146) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37610.8]
  assign _T_148 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37611.8]
  assign _T_149 = {1'b0,$signed(_T_148)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37612.8]
  assign _T_151 = $signed(_T_149) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37614.8]
  assign _T_152 = $signed(_T_151) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37615.8]
  assign _T_153 = io_in_a_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37616.8]
  assign _T_154 = {1'b0,$signed(_T_153)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37617.8]
  assign _T_156 = $signed(_T_154) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37619.8]
  assign _T_157 = $signed(_T_156) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37620.8]
  assign _T_158 = _T_132 | _T_137; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37621.8]
  assign _T_165 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37628.8]
  assign _T_168 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@37631.8]
  assign _T_169 = {1'b0,$signed(_T_168)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37632.8]
  assign _T_171 = $signed(_T_169) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37634.8]
  assign _T_172 = $signed(_T_171) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37635.8]
  assign _T_173 = _T_165 & _T_172; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37636.8]
  assign _T_177 = _T_173 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37640.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37641.8]
  assign _T_181 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37648.8]
  assign _T_183 = _T_21 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37654.8]
  assign _T_184 = ~_T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37655.8]
  assign _T_187 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37662.8]
  assign _T_188 = ~_T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37663.8]
  assign _T_190 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37669.8]
  assign _T_191 = ~_T_190; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37670.8]
  assign _T_192 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@37675.8]
  assign _T_194 = _T_192 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37677.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37678.8]
  assign _T_196 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@37683.8]
  assign _T_197 = _T_196 == 8'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@37684.8]
  assign _T_199 = _T_197 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37686.8]
  assign _T_200 = ~_T_199; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37687.8]
  assign _T_201 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@37692.8]
  assign _T_203 = _T_201 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37694.8]
  assign _T_204 = ~_T_203; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37695.8]
  assign _T_205 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@37701.6]
  assign _T_275 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@37796.8]
  assign _T_277 = _T_275 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37798.8]
  assign _T_278 = ~_T_277; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37799.8]
  assign _T_288 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@37822.6]
  assign _T_290 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37825.8]
  assign _T_298 = _T_290 & _T_137; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37833.8]
  assign _T_333 = _T_132 | _T_142; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37868.8]
  assign _T_334 = _T_333 | _T_147; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37869.8]
  assign _T_335 = _T_334 | _T_152; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37870.8]
  assign _T_336 = _T_335 | _T_157; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37871.8]
  assign _T_337 = _T_336 | _T_172; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37872.8]
  assign _T_338 = _T_165 & _T_337; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37873.8]
  assign _T_340 = _T_298 | _T_338; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37875.8]
  assign _T_342 = _T_340 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37877.8]
  assign _T_343 = ~_T_342; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37878.8]
  assign _T_350 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@37897.8]
  assign _T_352 = _T_350 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37899.8]
  assign _T_353 = ~_T_352; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37900.8]
  assign _T_354 = io_in_a_bits_mask == _T_91; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@37905.8]
  assign _T_356 = _T_354 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37907.8]
  assign _T_357 = ~_T_356; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37908.8]
  assign _T_362 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@37922.6]
  assign _T_397 = _T_132 | _T_147; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37958.8]
  assign _T_398 = _T_397 | _T_152; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37959.8]
  assign _T_399 = _T_398 | _T_172; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@37960.8]
  assign _T_400 = _T_165 & _T_399; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37961.8]
  assign _T_409 = io_in_a_bits_size <= 4'h8; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@37970.8]
  assign _T_417 = _T_409 & _T_157; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@37978.8]
  assign _T_419 = _T_298 | _T_400; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37980.8]
  assign _T_421 = _T_419 | _T_417; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@37982.8]
  assign _T_423 = _T_421 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37984.8]
  assign _T_424 = ~_T_423; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37985.8]
  assign _T_439 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@38021.6]
  assign _T_512 = ~_T_91; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@38111.8]
  assign _T_513 = io_in_a_bits_mask & _T_512; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@38112.8]
  assign _T_514 = _T_513 == 8'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@38113.8]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38115.8]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38116.8]
  assign _T_518 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@38122.6]
  assign _T_520 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@38125.8]
  assign _T_544 = _T_158 | _T_147; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@38149.8]
  assign _T_545 = _T_544 | _T_152; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@38150.8]
  assign _T_546 = _T_520 & _T_545; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@38151.8]
  assign _T_569 = _T_546 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38174.8]
  assign _T_570 = ~_T_569; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38175.8]
  assign _T_577 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@38194.8]
  assign _T_579 = _T_577 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38196.8]
  assign _T_580 = ~_T_579; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38197.8]
  assign _T_585 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@38211.6]
  assign _T_644 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@38283.8]
  assign _T_646 = _T_644 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38285.8]
  assign _T_647 = ~_T_646; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38286.8]
  assign _T_652 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@38300.6]
  assign _T_703 = _T_298 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38352.8]
  assign _T_704 = ~_T_703; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38353.8]
  assign _T_711 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@38372.8]
  assign _T_713 = _T_711 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38374.8]
  assign _T_714 = ~_T_713; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38375.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@38399.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38401.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38402.6]
  assign _T_730 = ~io_in_d_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@38410.6]
  assign _T_744 = _T_730 | io_in_d_bits_source[3]; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@38427.6]
  assign _T_746 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@38429.6]
  assign _T_748 = _T_744 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38432.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38433.8]
  assign _T_750 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@38438.8]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38440.8]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38441.8]
  assign _T_754 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@38446.8]
  assign _T_756 = _T_754 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38448.8]
  assign _T_757 = ~_T_756; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38449.8]
  assign _T_758 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@38454.8]
  assign _T_760 = _T_758 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38456.8]
  assign _T_761 = ~_T_760; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38457.8]
  assign _T_762 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@38462.8]
  assign _T_764 = _T_762 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38464.8]
  assign _T_765 = ~_T_764; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38465.8]
  assign _T_766 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@38471.6]
  assign _T_777 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@38495.8]
  assign _T_779 = _T_777 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38497.8]
  assign _T_780 = ~_T_779; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38498.8]
  assign _T_781 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@38503.8]
  assign _T_783 = _T_781 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38505.8]
  assign _T_784 = ~_T_783; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38506.8]
  assign _T_794 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@38529.6]
  assign _T_814 = _T_762 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@38570.8]
  assign _T_816 = _T_814 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38572.8]
  assign _T_817 = ~_T_816; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38573.8]
  assign _T_823 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@38588.6]
  assign _T_840 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@38623.6]
  assign _T_858 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@38659.6]
  assign _T_890 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@38725.4]
  assign _T_897 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@38732.4]
  assign _T_901 = _T_899 - 9'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38736.4]
  assign _T_902 = _T_899 == 9'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38737.4]
  assign _T_915 = ~_T_902; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@38753.4]
  assign _T_916 = io_in_a_valid & _T_915; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@38754.4]
  assign _T_917 = io_in_a_bits_opcode == _T_910; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@38756.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38758.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38759.6]
  assign _T_921 = io_in_a_bits_param == _T_911; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@38764.6]
  assign _T_923 = _T_921 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38766.6]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38767.6]
  assign _T_925 = io_in_a_bits_size == _T_912; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@38772.6]
  assign _T_927 = _T_925 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38774.6]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38775.6]
  assign _T_929 = io_in_a_bits_source == _T_913; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@38780.6]
  assign _T_931 = _T_929 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38782.6]
  assign _T_932 = ~_T_931; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38783.6]
  assign _T_933 = io_in_a_bits_address == _T_914; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@38788.6]
  assign _T_935 = _T_933 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38790.6]
  assign _T_936 = ~_T_935; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38791.6]
  assign _T_938 = _T_890 & _T_902; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@38798.4]
  assign _T_939 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@38806.4]
  assign _T_941 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@38808.4]
  assign _T_943 = ~_T_941[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@38810.4]
  assign _T_949 = _T_947 - 9'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38816.4]
  assign _T_950 = _T_947 == 9'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38817.4]
  assign _T_964 = ~_T_950; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@38834.4]
  assign _T_965 = io_in_d_valid & _T_964; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@38835.4]
  assign _T_966 = io_in_d_bits_opcode == _T_958; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@38837.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38839.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38840.6]
  assign _T_970 = io_in_d_bits_param == _T_959; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@38845.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38847.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38848.6]
  assign _T_974 = io_in_d_bits_size == _T_960; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@38853.6]
  assign _T_976 = _T_974 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38855.6]
  assign _T_977 = ~_T_976; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38856.6]
  assign _T_978 = io_in_d_bits_source == _T_961; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@38861.6]
  assign _T_980 = _T_978 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38863.6]
  assign _T_981 = ~_T_980; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38864.6]
  assign _T_982 = io_in_d_bits_sink == _T_962; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@38869.6]
  assign _T_984 = _T_982 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38871.6]
  assign _T_985 = ~_T_984; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38872.6]
  assign _T_986 = io_in_d_bits_denied == _T_963; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@38877.6]
  assign _T_988 = _T_986 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38879.6]
  assign _T_989 = ~_T_988; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38880.6]
  assign _T_991 = _T_939 & _T_950; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@38887.4]
  assign _T_1003 = _T_1001 - 9'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38910.4]
  assign a_first = _T_1001 == 9'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38911.4]
  assign _T_1021 = _T_1019 - 9'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@38932.4]
  assign d_first = _T_1019 == 9'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@38933.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@38952.4]
  assign _T_1029 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@38952.4]
  assign _T_1030 = inflight_opcodes >> _T_1029; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@38953.4]
  assign _T_1034 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@38957.4]
  assign _GEN_58 = {{48'd0}, _T_1034}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@38958.4]
  assign _T_1035 = _T_1030 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@38958.4]
  assign _T_1036 = {{1'd0}, _T_1035[63:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@38959.4]
  assign _T_1037 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@38963.4]
  assign _T_1038 = inflight_sizes >> _T_1037; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@38964.4]
  assign _T_1042 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@38968.4]
  assign _GEN_60 = {{112'd0}, _T_1042}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@38969.4]
  assign _T_1043 = _T_1038 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@38969.4]
  assign _T_1044 = {{1'd0}, _T_1043[127:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@38970.4]
  assign _T_1048 = _T_890 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@38995.4]
  assign _T_1050 = 16'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@38998.6]
  assign _T_1051 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@39000.6]
  assign _T_1052 = _T_1051 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@39001.6]
  assign _T_1053 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@39003.6]
  assign _T_1054 = _T_1053 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@39004.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@39006.6]
  assign _T_1055 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@39006.6]
  assign a_opcodes_set_interm = _T_1048 ? _T_1052 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  assign _GEN_63 = {{127'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@39007.6]
  assign _T_1056 = _GEN_63 << _T_1055; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@39007.6]
  assign _T_1057 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@39009.6]
  assign a_sizes_set_interm = _T_1048 ? _T_1054 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  assign _GEN_64 = {{127'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@39010.6]
  assign _T_1058 = _GEN_64 << _T_1057; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@39010.6]
  assign _T_1059 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@39012.6]
  assign _T_1061 = ~_T_1059[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@39014.6]
  assign _T_1063 = _T_1061 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39016.6]
  assign _T_1064 = ~_T_1063; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39017.6]
  assign a_set = _T_1048 ? _T_1050 : 16'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  assign _GEN_18 = _T_1048 ? _T_1056 : 131'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  assign _GEN_19 = _T_1048 ? _T_1058 : 132'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@38997.4]
  assign _T_1067 = _T_939 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@39031.4]
  assign _T_1069 = ~_T_746; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@39033.4]
  assign _T_1070 = _T_1067 & _T_1069; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@39034.4]
  assign _T_1071 = 16'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@39036.6]
  assign _GEN_66 = {{127'd0}, _T_1034}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@39043.6]
  assign _T_1077 = _GEN_66 << _T_1029; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@39043.6]
  assign _GEN_67 = {{127'd0}, _T_1042}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@39050.6]
  assign _T_1083 = _GEN_67 << _T_1037; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@39050.6]
  assign d_clr = _T_1070 ? _T_1071 : 16'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  assign _GEN_21 = _T_1070 ? _T_1077 : 143'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  assign _GEN_22 = _T_1070 ? _T_1083 : 143'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@39035.4]
  assign _T_1084 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@39053.4]
  assign _T_1087 = _T_1084 & _T_1069; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@39056.4]
  assign _T_1088 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@39058.6]
  assign _T_1090 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@39060.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@39061.6]
  assign _T_1092 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@39062.6]
  assign _T_1093 = _T_1091 & _T_1092; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@39063.6]
  assign _T_1094 = _T_1093 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@39064.6]
  assign _T_1095 = _T_1088[0] | _T_1094; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@39065.6]
  assign _T_1097 = _T_1095 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39067.6]
  assign _T_1098 = ~_T_1097; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39068.6]
  assign a_opcode_lookup = _T_1036[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38950.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38951.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@38960.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _T_1100 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@39074.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  assign _T_1102 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@39076.6]
  assign _T_1103 = _T_1100 | _T_1102; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@39077.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _T_1104 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@39078.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  assign _T_1105 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@39079.6]
  assign _T_1106 = _T_1104 | _T_1105; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@39080.6]
  assign _T_1107 = io_in_a_valid & _T_1106; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@39081.6]
  assign _T_1108 = _T_1103 | _T_1107; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@39082.6]
  assign _T_1110 = _T_1108 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39084.6]
  assign _T_1111 = ~_T_1110; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39085.6]
  assign a_size_lookup = _T_1044[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38961.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38962.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@38971.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@39090.6]
  assign _T_1112 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@39090.6]
  assign _T_1114 = io_in_a_valid & _T_1092; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@39092.6]
  assign _T_1115 = _T_1112 | _T_1114; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@39093.6]
  assign _T_1117 = _T_1115 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39095.6]
  assign _T_1118 = ~_T_1117; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39096.6]
  assign _T_1120 = _T_1084 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@39103.4]
  assign _T_1121 = _T_1120 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@39104.4]
  assign _T_1123 = _T_1121 & _T_1090; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@39106.4]
  assign _T_1125 = _T_1123 & _T_1069; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@39108.4]
  assign _T_1126 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@39110.6]
  assign _T_1127 = _T_1126 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@39111.6]
  assign _T_1129 = _T_1127 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39113.6]
  assign _T_1130 = ~_T_1129; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39114.6]
  assign _T_1131 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@39120.4]
  assign _T_1132 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@39121.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@39122.4]
  assign _T_1134 = _T_1131 | _T_1133; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@39123.4]
  assign _T_1136 = _T_1134 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39125.4]
  assign _T_1137 = ~_T_1136; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39126.4]
  assign _T_1138 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@39131.4]
  assign _T_1139 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@39132.4]
  assign _T_1140 = _T_1138 & _T_1139; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@39133.4]
  assign a_opcodes_set = _GEN_18[63:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38946.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38947.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@39008.6]
  assign _T_1141 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@39135.4]
  assign d_opcodes_clr = _GEN_21[63:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39025.4 :freechips.rocketchip.system.DefaultRV32Config.fir@39026.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@39044.6]
  assign _T_1142 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@39136.4]
  assign _T_1143 = _T_1141 & _T_1142; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@39137.4]
  assign a_sizes_set = _GEN_19[127:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@38948.4 :freechips.rocketchip.system.DefaultRV32Config.fir@38949.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@39011.6]
  assign _T_1144 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@39139.4]
  assign d_sizes_clr = _GEN_22[127:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39027.4 :freechips.rocketchip.system.DefaultRV32Config.fir@39028.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@39051.6]
  assign _T_1145 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@39140.4]
  assign _T_1146 = _T_1144 & _T_1145; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@39141.4]
  assign _T_1148 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@39146.4]
  assign _T_1149 = ~_T_1148; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@39147.4]
  assign _T_1150 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@39148.4]
  assign _T_1151 = _T_1149 | _T_1150; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@39149.4]
  assign _T_1152 = _T_1147 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@39150.4]
  assign _T_1153 = _T_1151 | _T_1152; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@39151.4]
  assign _T_1155 = _T_1153 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39153.4]
  assign _T_1156 = ~_T_1155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39154.4]
  assign _T_1158 = _T_1147 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@39160.4]
  assign _T_1161 = _T_890 | _T_939; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@39164.4]
  assign _GEN_69 = io_in_a_valid & _T_126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37643.10]
  assign _GEN_85 = io_in_a_valid & _T_205; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37756.10]
  assign _GEN_103 = io_in_a_valid & _T_288; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37880.10]
  assign _GEN_115 = io_in_a_valid & _T_362; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37987.10]
  assign _GEN_125 = io_in_a_valid & _T_439; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38086.10]
  assign _GEN_135 = io_in_a_valid & _T_518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38177.10]
  assign _GEN_145 = io_in_a_valid & _T_585; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38266.10]
  assign _GEN_155 = io_in_a_valid & _T_652; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38355.10]
  assign _GEN_167 = io_in_d_valid & _T_746; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38435.10]
  assign _GEN_177 = io_in_d_valid & _T_766; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38477.10]
  assign _GEN_187 = io_in_d_valid & _T_794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38535.10]
  assign _GEN_197 = io_in_d_valid & _T_823; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38594.10]
  assign _GEN_203 = io_in_d_valid & _T_840; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38629.10]
  assign _GEN_209 = io_in_d_valid & _T_858; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38665.10]
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
  _T_899 = _RAND_0[8:0];
  _RAND_1 = {1{`RANDOM}};
  _T_910 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_911 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_912 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_913 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  _T_914 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_947 = _RAND_6[8:0];
  _RAND_7 = {1{`RANDOM}};
  _T_958 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_959 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_960 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_961 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  _T_962 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  _T_963 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[15:0];
  _RAND_14 = {2{`RANDOM}};
  inflight_opcodes = _RAND_14[63:0];
  _RAND_15 = {4{`RANDOM}};
  inflight_sizes = _RAND_15[127:0];
  _RAND_16 = {1{`RANDOM}};
  _T_1001 = _RAND_16[8:0];
  _RAND_17 = {1{`RANDOM}};
  _T_1019 = _RAND_17[8:0];
  _RAND_18 = {1{`RANDOM}};
  _T_1147 = _RAND_18[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_899 <= 9'h0;
    end else if (_T_890) begin
      if (_T_902) begin
        if (_T_897) begin
          _T_899 <= _T_25[11:3];
        end else begin
          _T_899 <= 9'h0;
        end
      end else begin
        _T_899 <= _T_901;
      end
    end
    if (_T_938) begin
      _T_910 <= io_in_a_bits_opcode;
    end
    if (_T_938) begin
      _T_911 <= io_in_a_bits_param;
    end
    if (_T_938) begin
      _T_912 <= io_in_a_bits_size;
    end
    if (_T_938) begin
      _T_913 <= io_in_a_bits_source;
    end
    if (_T_938) begin
      _T_914 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_947 <= 9'h0;
    end else if (_T_939) begin
      if (_T_950) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_947 <= _T_943[11:3];
        end else begin
          _T_947 <= 9'h0;
        end
      end else begin
        _T_947 <= _T_949;
      end
    end
    if (_T_991) begin
      _T_958 <= io_in_d_bits_opcode;
    end
    if (_T_991) begin
      _T_959 <= io_in_d_bits_param;
    end
    if (_T_991) begin
      _T_960 <= io_in_d_bits_size;
    end
    if (_T_991) begin
      _T_961 <= io_in_d_bits_source;
    end
    if (_T_991) begin
      _T_962 <= io_in_d_bits_sink;
    end
    if (_T_991) begin
      _T_963 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 16'h0;
    end else begin
      inflight <= _T_1140;
    end
    if (reset) begin
      inflight_opcodes <= 64'h0;
    end else begin
      inflight_opcodes <= _T_1143;
    end
    if (reset) begin
      inflight_sizes <= 128'h0;
    end else begin
      inflight_sizes <= _T_1146;
    end
    if (reset) begin
      _T_1001 <= 9'h0;
    end else if (_T_890) begin
      if (a_first) begin
        if (_T_897) begin
          _T_1001 <= _T_25[11:3];
        end else begin
          _T_1001 <= 9'h0;
        end
      end else begin
        _T_1001 <= _T_1003;
      end
    end
    if (reset) begin
      _T_1019 <= 9'h0;
    end else if (_T_939) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1019 <= _T_943[11:3];
        end else begin
          _T_1019 <= 9'h0;
        end
      end else begin
        _T_1019 <= _T_1021;
      end
    end
    if (reset) begin
      _T_1147 <= 32'h0;
    end else if (_T_1161) begin
      _T_1147 <= 32'h0;
    end else begin
      _T_1147 <= _T_1158;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37643.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37644.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_181) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37650.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_181) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37651.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37657.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37658.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_188) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37665.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_188) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37666.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37672.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37673.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37680.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37681.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37689.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37690.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37697.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37698.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37756.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37757.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_181) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_181) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37770.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37771.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_188) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37778.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_188) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37779.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_278) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37801.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_278) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37802.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37810.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37811.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37818.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37819.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_343) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37880.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_343) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37881.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37887.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37888.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37902.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_353) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37903.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_357) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37910.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_357) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37911.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_204) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37918.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_204) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37919.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_424) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37987.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_424) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37988.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37994.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@37995.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_353) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_357) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38017.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_357) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38018.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_424) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38086.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_424) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38087.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38093.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38094.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38100.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38101.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38108.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_353) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38109.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38118.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38119.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38177.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_570) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38178.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38184.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38185.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38191.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38192.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_580) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38199.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_580) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38200.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_357) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38207.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_357) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38208.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38266.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_570) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38267.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38280.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38281.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_647) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38288.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_647) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38289.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_357) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38296.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_357) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38297.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38355.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_704) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38356.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38362.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38363.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38369.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38370.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38377.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_714) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38378.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_357) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38385.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_357) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38386.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_204) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38393.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_204) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38394.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38404.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38405.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38443.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38444.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_757) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38451.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_757) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38452.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_761) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38459.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_761) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38460.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_765) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38467.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_765) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38468.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38477.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38478.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38492.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38493.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_780) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_780) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_784) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_784) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_761) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_761) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38535.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38536.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38550.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38551.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_780) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38558.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_780) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38559.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_784) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38566.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_784) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38567.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_817) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38575.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_817) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38576.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38594.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38595.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_757) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38602.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_757) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38603.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_761) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38610.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_761) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38611.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_757) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38637.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_757) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38638.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_817) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_817) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38647.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38665.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38666.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_757) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38673.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_757) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38674.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_761) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_761) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_916 & _T_920) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38761.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_916 & _T_920) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38762.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_916 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38769.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_916 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38770.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_916 & _T_928) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38777.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_916 & _T_928) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38778.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_916 & _T_932) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38785.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_916 & _T_932) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38786.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_916 & _T_936) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38793.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_916 & _T_936) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@38794.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_969) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38842.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_969) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38843.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38850.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_973) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38851.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_977) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38858.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_977) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38859.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_981) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38866.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_981) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38867.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_985) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38874.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_985) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38875.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_965 & _T_989) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38882.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_965 & _T_989) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@38883.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1048 & _T_1064) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39019.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1048 & _T_1064) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39020.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1087 & _T_1098) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39070.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1087 & _T_1098) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39071.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1087 & _T_1111) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39087.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1087 & _T_1111) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39088.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1087 & _T_1118) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39098.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1087 & _T_1118) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39099.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1125 & _T_1130) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39116.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1125 & _T_1130) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39117.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1137) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 5 (connected at Ports.scala:119:9)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39128.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1137) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@39129.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Ports.scala:119:9)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39156.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@39157.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
