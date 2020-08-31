module TLMonitor_5( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14596.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14597.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14598.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [3:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [3:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14599.4]
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
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@16264.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@14613.6]
  wire  _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@14630.6]
  wire [26:0] _T_23; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@14632.6]
  wire [11:0] _T_25; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@14634.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@14635.6]
  wire [31:0] _T_26; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@14635.6]
  wire  _T_27; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@14636.6]
  wire [1:0] _T_30; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@14639.6]
  wire [1:0] _T_32; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@14641.6]
  wire  _T_33; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@14642.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@14645.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14647.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14648.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14650.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14651.6]
  wire  _T_45; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@14654.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14655.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14656.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14657.6]
  wire  _T_49; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14658.6]
  wire  _T_50; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14659.6]
  wire  _T_51; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14660.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14661.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14662.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14663.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14664.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14665.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14666.6]
  wire [3:0] _T_60; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@14669.6]
  wire [32:0] _T_71; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14680.6]
  wire  _T_95; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@14708.6]
  wire [32:0] _T_100; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14714.8]
  wire  _T_101; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14715.8]
  wire [31:0] _T_102; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14716.8]
  wire [32:0] _T_103; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14717.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14719.8]
  wire  _T_106; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14720.8]
  wire [31:0] _T_107; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14721.8]
  wire [32:0] _T_108; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14722.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14724.8]
  wire  _T_111; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14725.8]
  wire [31:0] _T_112; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14726.8]
  wire [32:0] _T_113; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14727.8]
  wire [32:0] _T_115; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14729.8]
  wire  _T_116; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14730.8]
  wire [31:0] _T_117; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14731.8]
  wire [32:0] _T_118; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14732.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14734.8]
  wire  _T_121; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14735.8]
  wire [31:0] _T_122; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14736.8]
  wire [32:0] _T_123; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14737.8]
  wire [32:0] _T_125; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14739.8]
  wire  _T_126; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14740.8]
  wire  _T_127; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14741.8]
  wire  _T_134; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@14748.8]
  wire [31:0] _T_137; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14751.8]
  wire [32:0] _T_138; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14752.8]
  wire [32:0] _T_140; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14754.8]
  wire  _T_141; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14755.8]
  wire  _T_142; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14756.8]
  wire  _T_146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14760.8]
  wire  _T_147; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14761.8]
  wire  _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14768.8]
  wire  _T_152; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14774.8]
  wire  _T_153; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14775.8]
  wire  _T_156; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14782.8]
  wire  _T_157; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14783.8]
  wire  _T_159; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14789.8]
  wire  _T_160; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14790.8]
  wire  _T_161; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@14795.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14797.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14798.8]
  wire [3:0] _T_165; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@14803.8]
  wire  _T_166; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@14804.8]
  wire  _T_168; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14806.8]
  wire  _T_169; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14807.8]
  wire  _T_170; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@14812.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14814.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14815.8]
  wire  _T_174; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@14821.6]
  wire  _T_244; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@14916.8]
  wire  _T_246; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14918.8]
  wire  _T_247; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14919.8]
  wire  _T_257; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@14942.6]
  wire  _T_259; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@14945.8]
  wire  _T_267; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14953.8]
  wire  _T_302; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14988.8]
  wire  _T_303; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14989.8]
  wire  _T_304; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14990.8]
  wire  _T_305; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14991.8]
  wire  _T_306; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14992.8]
  wire  _T_307; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14993.8]
  wire  _T_309; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@14995.8]
  wire  _T_311; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14997.8]
  wire  _T_312; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14998.8]
  wire  _T_319; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@15017.8]
  wire  _T_321; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15019.8]
  wire  _T_322; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15020.8]
  wire  _T_323; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@15025.8]
  wire  _T_325; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15027.8]
  wire  _T_326; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15028.8]
  wire  _T_331; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@15042.6]
  wire  _T_366; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15078.8]
  wire  _T_367; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15079.8]
  wire  _T_368; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15080.8]
  wire  _T_369; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15081.8]
  wire  _T_378; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@15090.8]
  wire  _T_386; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15098.8]
  wire  _T_388; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@15100.8]
  wire  _T_390; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@15102.8]
  wire  _T_392; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15104.8]
  wire  _T_393; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15105.8]
  wire  _T_408; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@15141.6]
  wire [3:0] _T_481; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@15231.8]
  wire [3:0] _T_482; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@15232.8]
  wire  _T_483; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@15233.8]
  wire  _T_485; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15235.8]
  wire  _T_486; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15236.8]
  wire  _T_487; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@15242.6]
  wire  _T_489; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@15245.8]
  wire  _T_513; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15269.8]
  wire  _T_514; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15270.8]
  wire  _T_515; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15271.8]
  wire  _T_538; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15294.8]
  wire  _T_539; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15295.8]
  wire  _T_546; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@15314.8]
  wire  _T_548; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15316.8]
  wire  _T_549; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15317.8]
  wire  _T_554; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@15331.6]
  wire  _T_613; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@15403.8]
  wire  _T_615; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15405.8]
  wire  _T_616; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15406.8]
  wire  _T_621; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@15420.6]
  wire  _T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15472.8]
  wire  _T_673; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15473.8]
  wire  _T_680; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@15492.8]
  wire  _T_682; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15494.8]
  wire  _T_683; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15495.8]
  wire  _T_692; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@15519.6]
  wire  _T_694; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15521.6]
  wire  _T_695; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15522.6]
  wire  _T_699; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@15530.6]
  wire  _T_713; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@15547.6]
  wire  _T_715; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@15549.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15552.8]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15553.8]
  wire  _T_719; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@15558.8]
  wire  _T_721; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15560.8]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15561.8]
  wire  _T_723; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@15566.8]
  wire  _T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15568.8]
  wire  _T_726; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15569.8]
  wire  _T_727; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@15574.8]
  wire  _T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15576.8]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15577.8]
  wire  _T_731; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@15582.8]
  wire  _T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15584.8]
  wire  _T_734; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15585.8]
  wire  _T_735; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@15591.6]
  wire  _T_746; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@15615.8]
  wire  _T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15617.8]
  wire  _T_749; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15618.8]
  wire  _T_750; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@15623.8]
  wire  _T_752; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15625.8]
  wire  _T_753; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15626.8]
  wire  _T_763; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@15649.6]
  wire  _T_783; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@15690.8]
  wire  _T_785; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15692.8]
  wire  _T_786; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15693.8]
  wire  _T_792; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@15708.6]
  wire  _T_809; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@15743.6]
  wire  _T_827; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@15779.6]
  wire  _T_859; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@15845.4]
  wire  _T_866; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@15852.4]
  reg [9:0] _T_868; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@15854.4]
  wire [9:0] _T_870; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@15856.4]
  wire  _T_871; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@15857.4]
  reg [2:0] _T_879; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@15868.4]
  reg [2:0] _T_880; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@15869.4]
  reg [3:0] _T_881; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@15870.4]
  reg [3:0] _T_882; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@15871.4]
  reg [31:0] _T_883; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@15872.4]
  wire  _T_884; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@15873.4]
  wire  _T_885; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@15874.4]
  wire  _T_886; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@15876.6]
  wire  _T_888; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15878.6]
  wire  _T_889; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15879.6]
  wire  _T_890; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@15884.6]
  wire  _T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15886.6]
  wire  _T_893; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15887.6]
  wire  _T_894; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@15892.6]
  wire  _T_896; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15894.6]
  wire  _T_897; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15895.6]
  wire  _T_898; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@15900.6]
  wire  _T_900; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15902.6]
  wire  _T_901; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15903.6]
  wire  _T_902; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@15908.6]
  wire  _T_904; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15910.6]
  wire  _T_905; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15911.6]
  wire  _T_907; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@15918.4]
  wire  _T_908; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@15926.4]
  wire [26:0] _T_910; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@15928.4]
  wire [11:0] _T_912; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@15930.4]
  reg [9:0] _T_916; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@15934.4]
  wire [9:0] _T_918; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@15936.4]
  wire  _T_919; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@15937.4]
  reg [2:0] _T_927; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@15948.4]
  reg [1:0] _T_928; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@15949.4]
  reg [3:0] _T_929; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@15950.4]
  reg [3:0] _T_930; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@15951.4]
  reg [1:0] _T_931; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@15952.4]
  reg  _T_932; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@15953.4]
  wire  _T_933; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@15954.4]
  wire  _T_934; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@15955.4]
  wire  _T_935; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@15957.6]
  wire  _T_937; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15959.6]
  wire  _T_938; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15960.6]
  wire  _T_939; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@15965.6]
  wire  _T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15967.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15968.6]
  wire  _T_943; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@15973.6]
  wire  _T_945; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15975.6]
  wire  _T_946; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15976.6]
  wire  _T_947; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@15981.6]
  wire  _T_949; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15983.6]
  wire  _T_950; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15984.6]
  wire  _T_951; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@15989.6]
  wire  _T_953; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15991.6]
  wire  _T_954; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15992.6]
  wire  _T_955; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@15997.6]
  wire  _T_957; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15999.6]
  wire  _T_958; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16000.6]
  wire  _T_960; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@16007.4]
  reg [15:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@16016.4]
  reg [63:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@16017.4]
  reg [127:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@16018.4]
  reg [9:0] _T_970; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@16028.4]
  wire [9:0] _T_972; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@16030.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@16031.4]
  reg [9:0] _T_988; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@16050.4]
  wire [9:0] _T_990; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@16052.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@16053.4]
  wire [5:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@16072.4]
  wire [6:0] _T_998; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@16072.4]
  wire [63:0] _T_999; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@16073.4]
  wire [15:0] _T_1003; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@16077.4]
  wire [63:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@16078.4]
  wire [63:0] _T_1004; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@16078.4]
  wire [63:0] _T_1005; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@16079.4]
  wire [6:0] _T_1006; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@16083.4]
  wire [127:0] _T_1007; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@16084.4]
  wire [15:0] _T_1011; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@16088.4]
  wire [127:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@16089.4]
  wire [127:0] _T_1012; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@16089.4]
  wire [127:0] _T_1013; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@16090.4]
  wire  _T_1017; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@16115.4]
  wire [15:0] _T_1019; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@16118.6]
  wire [3:0] _T_1020; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@16120.6]
  wire [3:0] _T_1021; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@16121.6]
  wire [4:0] _T_1022; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@16123.6]
  wire [4:0] _T_1023; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@16124.6]
  wire [5:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@16126.6]
  wire [6:0] _T_1024; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@16126.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  wire [130:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@16127.6]
  wire [130:0] _T_1025; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@16127.6]
  wire [6:0] _T_1026; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@16129.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  wire [131:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@16130.6]
  wire [131:0] _T_1027; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@16130.6]
  wire [15:0] _T_1028; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@16132.6]
  wire  _T_1030; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@16134.6]
  wire  _T_1032; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16136.6]
  wire  _T_1033; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16137.6]
  wire [15:0] a_set; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  wire [130:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  wire [131:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  wire  _T_1036; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@16151.4]
  wire  _T_1038; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@16153.4]
  wire  _T_1039; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@16154.4]
  wire [15:0] _T_1040; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@16156.6]
  wire [142:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@16163.6]
  wire [142:0] _T_1046; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@16163.6]
  wire [142:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@16170.6]
  wire [142:0] _T_1052; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@16170.6]
  wire [15:0] d_clr; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  wire [142:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  wire [142:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  wire  _T_1053; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@16173.4]
  wire  _T_1056; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@16176.4]
  wire [15:0] _T_1057; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@16178.6]
  wire  _T_1059; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@16180.6]
  wire  _T_1060; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@16181.6]
  wire  _T_1061; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@16182.6]
  wire  _T_1062; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@16183.6]
  wire  _T_1063; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@16184.6]
  wire  _T_1064; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@16185.6]
  wire  _T_1066; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16187.6]
  wire  _T_1067; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16188.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16070.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16071.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@16080.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire  _T_1069; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  wire  _T_1071; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  wire  _T_1072; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@16197.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire  _T_1073; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  wire  _T_1074; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  wire  _T_1075; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@16200.6]
  wire  _T_1076; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@16201.6]
  wire  _T_1077; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@16202.6]
  wire  _T_1079; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16204.6]
  wire  _T_1080; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16205.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16081.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16082.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@16091.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@16210.6]
  wire  _T_1081; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@16210.6]
  wire  _T_1083; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@16212.6]
  wire  _T_1084; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@16213.6]
  wire  _T_1086; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16215.6]
  wire  _T_1087; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16216.6]
  wire  _T_1089; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@16223.4]
  wire  _T_1090; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@16224.4]
  wire  _T_1092; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@16226.4]
  wire  _T_1094; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@16228.4]
  wire  _T_1095; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@16230.6]
  wire  _T_1096; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@16231.6]
  wire  _T_1098; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16233.6]
  wire  _T_1099; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16234.6]
  wire  _T_1100; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@16240.4]
  wire  _T_1101; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@16241.4]
  wire  _T_1102; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@16242.4]
  wire  _T_1103; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@16243.4]
  wire  _T_1105; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16245.4]
  wire  _T_1106; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16246.4]
  wire [15:0] _T_1107; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@16251.4]
  wire [15:0] _T_1108; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@16252.4]
  wire [15:0] _T_1109; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@16253.4]
  wire [63:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16066.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16067.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@16128.6]
  wire [63:0] _T_1110; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@16255.4]
  wire [63:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16145.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16146.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@16164.6]
  wire [63:0] _T_1111; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@16256.4]
  wire [63:0] _T_1112; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@16257.4]
  wire [127:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16068.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16069.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@16131.6]
  wire [127:0] _T_1113; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@16259.4]
  wire [127:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16147.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16148.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@16171.6]
  wire [127:0] _T_1114; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@16260.4]
  wire [127:0] _T_1115; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@16261.4]
  reg [31:0] _T_1116; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@16263.4]
  wire  _T_1117; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@16266.4]
  wire  _T_1118; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@16267.4]
  wire  _T_1119; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@16268.4]
  wire  _T_1120; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@16269.4]
  wire  _T_1121; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@16270.4]
  wire  _T_1122; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@16271.4]
  wire  _T_1124; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16273.4]
  wire  _T_1125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16274.4]
  wire [31:0] _T_1127; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@16280.4]
  wire  _T_1130; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@16284.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14763.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14876.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15000.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15107.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15206.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15297.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15386.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15475.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15555.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15597.10]
  wire  _GEN_187; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15655.10]
  wire  _GEN_197; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15714.10]
  wire  _GEN_203; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15749.10]
  wire  _GEN_209; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15785.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@16264.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = ~io_in_a_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@14613.6]
  assign _T_21 = _T_7 | io_in_a_bits_source[3]; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@14630.6]
  assign _T_23 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@14632.6]
  assign _T_25 = ~_T_23[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@14634.6]
  assign _GEN_56 = {{20'd0}, _T_25}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@14635.6]
  assign _T_26 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@14635.6]
  assign _T_27 = _T_26 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@14636.6]
  assign _T_30 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@14639.6]
  assign _T_32 = _T_30 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@14641.6]
  assign _T_33 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@14642.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@14645.6]
  assign _T_38 = _T_32[1] & _T_36; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14647.6]
  assign _T_39 = _T_33 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14648.6]
  assign _T_41 = _T_32[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14650.6]
  assign _T_42 = _T_33 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14651.6]
  assign _T_45 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@14654.6]
  assign _T_46 = _T_36 & _T_45; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14655.6]
  assign _T_47 = _T_32[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14656.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14657.6]
  assign _T_49 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14658.6]
  assign _T_50 = _T_32[0] & _T_49; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14659.6]
  assign _T_51 = _T_39 | _T_50; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14660.6]
  assign _T_52 = io_in_a_bits_address[1] & _T_45; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14661.6]
  assign _T_53 = _T_32[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14662.6]
  assign _T_54 = _T_42 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14663.6]
  assign _T_55 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@14664.6]
  assign _T_56 = _T_32[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@14665.6]
  assign _T_57 = _T_42 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@14666.6]
  assign _T_60 = {_T_57,_T_54,_T_51,_T_48}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@14669.6]
  assign _T_71 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14680.6]
  assign _T_95 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@14708.6]
  assign _T_100 = $signed(_T_71) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14714.8]
  assign _T_101 = $signed(_T_100) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14715.8]
  assign _T_102 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14716.8]
  assign _T_103 = {1'b0,$signed(_T_102)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14717.8]
  assign _T_105 = $signed(_T_103) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14719.8]
  assign _T_106 = $signed(_T_105) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14720.8]
  assign _T_107 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14721.8]
  assign _T_108 = {1'b0,$signed(_T_107)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14722.8]
  assign _T_110 = $signed(_T_108) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14724.8]
  assign _T_111 = $signed(_T_110) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14725.8]
  assign _T_112 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14726.8]
  assign _T_113 = {1'b0,$signed(_T_112)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14727.8]
  assign _T_115 = $signed(_T_113) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14729.8]
  assign _T_116 = $signed(_T_115) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14730.8]
  assign _T_117 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14731.8]
  assign _T_118 = {1'b0,$signed(_T_117)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14732.8]
  assign _T_120 = $signed(_T_118) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14734.8]
  assign _T_121 = $signed(_T_120) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14735.8]
  assign _T_122 = io_in_a_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14736.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14737.8]
  assign _T_125 = $signed(_T_123) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14739.8]
  assign _T_126 = $signed(_T_125) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14740.8]
  assign _T_127 = _T_101 | _T_106; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14741.8]
  assign _T_134 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@14748.8]
  assign _T_137 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@14751.8]
  assign _T_138 = {1'b0,$signed(_T_137)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@14752.8]
  assign _T_140 = $signed(_T_138) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@14754.8]
  assign _T_141 = $signed(_T_140) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@14755.8]
  assign _T_142 = _T_134 & _T_141; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14756.8]
  assign _T_146 = _T_142 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14760.8]
  assign _T_147 = ~_T_146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14761.8]
  assign _T_150 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14768.8]
  assign _T_152 = _T_21 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14774.8]
  assign _T_153 = ~_T_152; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14775.8]
  assign _T_156 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14782.8]
  assign _T_157 = ~_T_156; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14783.8]
  assign _T_159 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14789.8]
  assign _T_160 = ~_T_159; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14790.8]
  assign _T_161 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@14795.8]
  assign _T_163 = _T_161 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14797.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14798.8]
  assign _T_165 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@14803.8]
  assign _T_166 = _T_165 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@14804.8]
  assign _T_168 = _T_166 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14806.8]
  assign _T_169 = ~_T_168; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14807.8]
  assign _T_170 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@14812.8]
  assign _T_172 = _T_170 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14814.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14815.8]
  assign _T_174 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@14821.6]
  assign _T_244 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@14916.8]
  assign _T_246 = _T_244 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14918.8]
  assign _T_247 = ~_T_246; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14919.8]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@14942.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@14945.8]
  assign _T_267 = _T_259 & _T_106; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14953.8]
  assign _T_302 = _T_101 | _T_111; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14988.8]
  assign _T_303 = _T_302 | _T_116; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14989.8]
  assign _T_304 = _T_303 | _T_121; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14990.8]
  assign _T_305 = _T_304 | _T_126; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14991.8]
  assign _T_306 = _T_305 | _T_141; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@14992.8]
  assign _T_307 = _T_134 & _T_306; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@14993.8]
  assign _T_309 = _T_267 | _T_307; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@14995.8]
  assign _T_311 = _T_309 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14997.8]
  assign _T_312 = ~_T_311; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14998.8]
  assign _T_319 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@15017.8]
  assign _T_321 = _T_319 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15019.8]
  assign _T_322 = ~_T_321; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15020.8]
  assign _T_323 = io_in_a_bits_mask == _T_60; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@15025.8]
  assign _T_325 = _T_323 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15027.8]
  assign _T_326 = ~_T_325; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15028.8]
  assign _T_331 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@15042.6]
  assign _T_366 = _T_101 | _T_116; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15078.8]
  assign _T_367 = _T_366 | _T_121; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15079.8]
  assign _T_368 = _T_367 | _T_141; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15080.8]
  assign _T_369 = _T_134 & _T_368; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15081.8]
  assign _T_378 = io_in_a_bits_size <= 4'h8; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@15090.8]
  assign _T_386 = _T_378 & _T_126; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15098.8]
  assign _T_388 = _T_267 | _T_369; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@15100.8]
  assign _T_390 = _T_388 | _T_386; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@15102.8]
  assign _T_392 = _T_390 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15104.8]
  assign _T_393 = ~_T_392; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15105.8]
  assign _T_408 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@15141.6]
  assign _T_481 = ~_T_60; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@15231.8]
  assign _T_482 = io_in_a_bits_mask & _T_481; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@15232.8]
  assign _T_483 = _T_482 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@15233.8]
  assign _T_485 = _T_483 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15235.8]
  assign _T_486 = ~_T_485; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15236.8]
  assign _T_487 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@15242.6]
  assign _T_489 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@15245.8]
  assign _T_513 = _T_127 | _T_116; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15269.8]
  assign _T_514 = _T_513 | _T_121; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@15270.8]
  assign _T_515 = _T_489 & _T_514; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@15271.8]
  assign _T_538 = _T_515 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15294.8]
  assign _T_539 = ~_T_538; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15295.8]
  assign _T_546 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@15314.8]
  assign _T_548 = _T_546 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15316.8]
  assign _T_549 = ~_T_548; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15317.8]
  assign _T_554 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@15331.6]
  assign _T_613 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@15403.8]
  assign _T_615 = _T_613 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15405.8]
  assign _T_616 = ~_T_615; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15406.8]
  assign _T_621 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@15420.6]
  assign _T_672 = _T_267 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15472.8]
  assign _T_673 = ~_T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15473.8]
  assign _T_680 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@15492.8]
  assign _T_682 = _T_680 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15494.8]
  assign _T_683 = ~_T_682; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15495.8]
  assign _T_692 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@15519.6]
  assign _T_694 = _T_692 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15521.6]
  assign _T_695 = ~_T_694; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15522.6]
  assign _T_699 = ~io_in_d_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@15530.6]
  assign _T_713 = _T_699 | io_in_d_bits_source[3]; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@15547.6]
  assign _T_715 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@15549.6]
  assign _T_717 = _T_713 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15552.8]
  assign _T_718 = ~_T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15553.8]
  assign _T_719 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@15558.8]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15560.8]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15561.8]
  assign _T_723 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@15566.8]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15568.8]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15569.8]
  assign _T_727 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@15574.8]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15576.8]
  assign _T_730 = ~_T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15577.8]
  assign _T_731 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@15582.8]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15584.8]
  assign _T_734 = ~_T_733; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15585.8]
  assign _T_735 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@15591.6]
  assign _T_746 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@15615.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15617.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15618.8]
  assign _T_750 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@15623.8]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15625.8]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15626.8]
  assign _T_763 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@15649.6]
  assign _T_783 = _T_731 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@15690.8]
  assign _T_785 = _T_783 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15692.8]
  assign _T_786 = ~_T_785; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15693.8]
  assign _T_792 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@15708.6]
  assign _T_809 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@15743.6]
  assign _T_827 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@15779.6]
  assign _T_859 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@15845.4]
  assign _T_866 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@15852.4]
  assign _T_870 = _T_868 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@15856.4]
  assign _T_871 = _T_868 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@15857.4]
  assign _T_884 = ~_T_871; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@15873.4]
  assign _T_885 = io_in_a_valid & _T_884; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@15874.4]
  assign _T_886 = io_in_a_bits_opcode == _T_879; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@15876.6]
  assign _T_888 = _T_886 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15878.6]
  assign _T_889 = ~_T_888; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15879.6]
  assign _T_890 = io_in_a_bits_param == _T_880; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@15884.6]
  assign _T_892 = _T_890 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15886.6]
  assign _T_893 = ~_T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15887.6]
  assign _T_894 = io_in_a_bits_size == _T_881; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@15892.6]
  assign _T_896 = _T_894 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15894.6]
  assign _T_897 = ~_T_896; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15895.6]
  assign _T_898 = io_in_a_bits_source == _T_882; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@15900.6]
  assign _T_900 = _T_898 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15902.6]
  assign _T_901 = ~_T_900; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15903.6]
  assign _T_902 = io_in_a_bits_address == _T_883; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@15908.6]
  assign _T_904 = _T_902 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15910.6]
  assign _T_905 = ~_T_904; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15911.6]
  assign _T_907 = _T_859 & _T_871; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@15918.4]
  assign _T_908 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@15926.4]
  assign _T_910 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@15928.4]
  assign _T_912 = ~_T_910[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@15930.4]
  assign _T_918 = _T_916 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@15936.4]
  assign _T_919 = _T_916 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@15937.4]
  assign _T_933 = ~_T_919; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@15954.4]
  assign _T_934 = io_in_d_valid & _T_933; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@15955.4]
  assign _T_935 = io_in_d_bits_opcode == _T_927; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@15957.6]
  assign _T_937 = _T_935 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15959.6]
  assign _T_938 = ~_T_937; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15960.6]
  assign _T_939 = io_in_d_bits_param == _T_928; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@15965.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15967.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15968.6]
  assign _T_943 = io_in_d_bits_size == _T_929; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@15973.6]
  assign _T_945 = _T_943 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15975.6]
  assign _T_946 = ~_T_945; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15976.6]
  assign _T_947 = io_in_d_bits_source == _T_930; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@15981.6]
  assign _T_949 = _T_947 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15983.6]
  assign _T_950 = ~_T_949; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15984.6]
  assign _T_951 = io_in_d_bits_sink == _T_931; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@15989.6]
  assign _T_953 = _T_951 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15991.6]
  assign _T_954 = ~_T_953; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15992.6]
  assign _T_955 = io_in_d_bits_denied == _T_932; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@15997.6]
  assign _T_957 = _T_955 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15999.6]
  assign _T_958 = ~_T_957; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16000.6]
  assign _T_960 = _T_908 & _T_919; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@16007.4]
  assign _T_972 = _T_970 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@16030.4]
  assign a_first = _T_970 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@16031.4]
  assign _T_990 = _T_988 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@16052.4]
  assign d_first = _T_988 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@16053.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@16072.4]
  assign _T_998 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@16072.4]
  assign _T_999 = inflight_opcodes >> _T_998; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@16073.4]
  assign _T_1003 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@16077.4]
  assign _GEN_58 = {{48'd0}, _T_1003}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@16078.4]
  assign _T_1004 = _T_999 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@16078.4]
  assign _T_1005 = {{1'd0}, _T_1004[63:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@16079.4]
  assign _T_1006 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@16083.4]
  assign _T_1007 = inflight_sizes >> _T_1006; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@16084.4]
  assign _T_1011 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@16088.4]
  assign _GEN_60 = {{112'd0}, _T_1011}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@16089.4]
  assign _T_1012 = _T_1007 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@16089.4]
  assign _T_1013 = {{1'd0}, _T_1012[127:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@16090.4]
  assign _T_1017 = _T_859 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@16115.4]
  assign _T_1019 = 16'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@16118.6]
  assign _T_1020 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@16120.6]
  assign _T_1021 = _T_1020 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@16121.6]
  assign _T_1022 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@16123.6]
  assign _T_1023 = _T_1022 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@16124.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@16126.6]
  assign _T_1024 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@16126.6]
  assign a_opcodes_set_interm = _T_1017 ? _T_1021 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  assign _GEN_63 = {{127'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@16127.6]
  assign _T_1025 = _GEN_63 << _T_1024; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@16127.6]
  assign _T_1026 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@16129.6]
  assign a_sizes_set_interm = _T_1017 ? _T_1023 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  assign _GEN_64 = {{127'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@16130.6]
  assign _T_1027 = _GEN_64 << _T_1026; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@16130.6]
  assign _T_1028 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@16132.6]
  assign _T_1030 = ~_T_1028[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@16134.6]
  assign _T_1032 = _T_1030 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16136.6]
  assign _T_1033 = ~_T_1032; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16137.6]
  assign a_set = _T_1017 ? _T_1019 : 16'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  assign _GEN_18 = _T_1017 ? _T_1025 : 131'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  assign _GEN_19 = _T_1017 ? _T_1027 : 132'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@16117.4]
  assign _T_1036 = _T_908 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@16151.4]
  assign _T_1038 = ~_T_715; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@16153.4]
  assign _T_1039 = _T_1036 & _T_1038; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@16154.4]
  assign _T_1040 = 16'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@16156.6]
  assign _GEN_66 = {{127'd0}, _T_1003}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@16163.6]
  assign _T_1046 = _GEN_66 << _T_998; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@16163.6]
  assign _GEN_67 = {{127'd0}, _T_1011}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@16170.6]
  assign _T_1052 = _GEN_67 << _T_1006; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@16170.6]
  assign d_clr = _T_1039 ? _T_1040 : 16'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  assign _GEN_21 = _T_1039 ? _T_1046 : 143'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  assign _GEN_22 = _T_1039 ? _T_1052 : 143'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@16155.4]
  assign _T_1053 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@16173.4]
  assign _T_1056 = _T_1053 & _T_1038; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@16176.4]
  assign _T_1057 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@16178.6]
  assign _T_1059 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@16180.6]
  assign _T_1060 = io_in_a_valid & _T_1059; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@16181.6]
  assign _T_1061 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@16182.6]
  assign _T_1062 = _T_1060 & _T_1061; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@16183.6]
  assign _T_1063 = _T_1062 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@16184.6]
  assign _T_1064 = _T_1057[0] | _T_1063; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@16185.6]
  assign _T_1066 = _T_1064 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16187.6]
  assign _T_1067 = ~_T_1066; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16188.6]
  assign a_opcode_lookup = _T_1005[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16070.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16071.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@16080.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _T_1069 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@16194.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  assign _T_1071 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@16196.6]
  assign _T_1072 = _T_1069 | _T_1071; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@16197.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _T_1073 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@16198.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  assign _T_1074 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@16199.6]
  assign _T_1075 = _T_1073 | _T_1074; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@16200.6]
  assign _T_1076 = io_in_a_valid & _T_1075; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@16201.6]
  assign _T_1077 = _T_1072 | _T_1076; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@16202.6]
  assign _T_1079 = _T_1077 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16204.6]
  assign _T_1080 = ~_T_1079; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16205.6]
  assign a_size_lookup = _T_1013[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16081.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16082.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@16091.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@16210.6]
  assign _T_1081 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@16210.6]
  assign _T_1083 = io_in_a_valid & _T_1061; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@16212.6]
  assign _T_1084 = _T_1081 | _T_1083; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@16213.6]
  assign _T_1086 = _T_1084 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16215.6]
  assign _T_1087 = ~_T_1086; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16216.6]
  assign _T_1089 = _T_1053 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@16223.4]
  assign _T_1090 = _T_1089 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@16224.4]
  assign _T_1092 = _T_1090 & _T_1059; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@16226.4]
  assign _T_1094 = _T_1092 & _T_1038; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@16228.4]
  assign _T_1095 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@16230.6]
  assign _T_1096 = _T_1095 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@16231.6]
  assign _T_1098 = _T_1096 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16233.6]
  assign _T_1099 = ~_T_1098; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16234.6]
  assign _T_1100 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@16240.4]
  assign _T_1101 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@16241.4]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@16242.4]
  assign _T_1103 = _T_1100 | _T_1102; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@16243.4]
  assign _T_1105 = _T_1103 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16245.4]
  assign _T_1106 = ~_T_1105; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16246.4]
  assign _T_1107 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@16251.4]
  assign _T_1108 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@16252.4]
  assign _T_1109 = _T_1107 & _T_1108; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@16253.4]
  assign a_opcodes_set = _GEN_18[63:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16066.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16067.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@16128.6]
  assign _T_1110 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@16255.4]
  assign d_opcodes_clr = _GEN_21[63:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16145.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16146.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@16164.6]
  assign _T_1111 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@16256.4]
  assign _T_1112 = _T_1110 & _T_1111; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@16257.4]
  assign a_sizes_set = _GEN_19[127:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16068.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16069.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@16131.6]
  assign _T_1113 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@16259.4]
  assign d_sizes_clr = _GEN_22[127:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@16147.4 :freechips.rocketchip.system.DefaultRV32Config.fir@16148.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@16171.6]
  assign _T_1114 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@16260.4]
  assign _T_1115 = _T_1113 & _T_1114; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@16261.4]
  assign _T_1117 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@16266.4]
  assign _T_1118 = ~_T_1117; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@16267.4]
  assign _T_1119 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@16268.4]
  assign _T_1120 = _T_1118 | _T_1119; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@16269.4]
  assign _T_1121 = _T_1116 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@16270.4]
  assign _T_1122 = _T_1120 | _T_1121; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@16271.4]
  assign _T_1124 = _T_1122 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16273.4]
  assign _T_1125 = ~_T_1124; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16274.4]
  assign _T_1127 = _T_1116 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@16280.4]
  assign _T_1130 = _T_859 | _T_908; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@16284.4]
  assign _GEN_69 = io_in_a_valid & _T_95; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14763.10]
  assign _GEN_85 = io_in_a_valid & _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14876.10]
  assign _GEN_103 = io_in_a_valid & _T_257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15000.10]
  assign _GEN_115 = io_in_a_valid & _T_331; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15107.10]
  assign _GEN_125 = io_in_a_valid & _T_408; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15206.10]
  assign _GEN_135 = io_in_a_valid & _T_487; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15297.10]
  assign _GEN_145 = io_in_a_valid & _T_554; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15386.10]
  assign _GEN_155 = io_in_a_valid & _T_621; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15475.10]
  assign _GEN_167 = io_in_d_valid & _T_715; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15555.10]
  assign _GEN_177 = io_in_d_valid & _T_735; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15597.10]
  assign _GEN_187 = io_in_d_valid & _T_763; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15655.10]
  assign _GEN_197 = io_in_d_valid & _T_792; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15714.10]
  assign _GEN_203 = io_in_d_valid & _T_809; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15749.10]
  assign _GEN_209 = io_in_d_valid & _T_827; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15785.10]
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
  _T_868 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_879 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_880 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_881 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_882 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  _T_883 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_916 = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  _T_927 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_928 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_929 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_930 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  _T_931 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  _T_932 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[15:0];
  _RAND_14 = {2{`RANDOM}};
  inflight_opcodes = _RAND_14[63:0];
  _RAND_15 = {4{`RANDOM}};
  inflight_sizes = _RAND_15[127:0];
  _RAND_16 = {1{`RANDOM}};
  _T_970 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  _T_988 = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  _T_1116 = _RAND_18[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_868 <= 10'h0;
    end else if (_T_859) begin
      if (_T_871) begin
        if (_T_866) begin
          _T_868 <= _T_25[11:2];
        end else begin
          _T_868 <= 10'h0;
        end
      end else begin
        _T_868 <= _T_870;
      end
    end
    if (_T_907) begin
      _T_879 <= io_in_a_bits_opcode;
    end
    if (_T_907) begin
      _T_880 <= io_in_a_bits_param;
    end
    if (_T_907) begin
      _T_881 <= io_in_a_bits_size;
    end
    if (_T_907) begin
      _T_882 <= io_in_a_bits_source;
    end
    if (_T_907) begin
      _T_883 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_916 <= 10'h0;
    end else if (_T_908) begin
      if (_T_919) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_916 <= _T_912[11:2];
        end else begin
          _T_916 <= 10'h0;
        end
      end else begin
        _T_916 <= _T_918;
      end
    end
    if (_T_960) begin
      _T_927 <= io_in_d_bits_opcode;
    end
    if (_T_960) begin
      _T_928 <= io_in_d_bits_param;
    end
    if (_T_960) begin
      _T_929 <= io_in_d_bits_size;
    end
    if (_T_960) begin
      _T_930 <= io_in_d_bits_source;
    end
    if (_T_960) begin
      _T_931 <= io_in_d_bits_sink;
    end
    if (_T_960) begin
      _T_932 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 16'h0;
    end else begin
      inflight <= _T_1109;
    end
    if (reset) begin
      inflight_opcodes <= 64'h0;
    end else begin
      inflight_opcodes <= _T_1112;
    end
    if (reset) begin
      inflight_sizes <= 128'h0;
    end else begin
      inflight_sizes <= _T_1115;
    end
    if (reset) begin
      _T_970 <= 10'h0;
    end else if (_T_859) begin
      if (a_first) begin
        if (_T_866) begin
          _T_970 <= _T_25[11:2];
        end else begin
          _T_970 <= 10'h0;
        end
      end else begin
        _T_970 <= _T_972;
      end
    end
    if (reset) begin
      _T_988 <= 10'h0;
    end else if (_T_908) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_988 <= _T_912[11:2];
        end else begin
          _T_988 <= 10'h0;
        end
      end else begin
        _T_988 <= _T_990;
      end
    end
    if (reset) begin
      _T_1116 <= 32'h0;
    end else if (_T_1130) begin
      _T_1116 <= 32'h0;
    end else begin
      _T_1116 <= _T_1127;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14770.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14771.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14777.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14778.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_157) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_157) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14792.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14793.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14800.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14801.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14809.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14810.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14817.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14818.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14876.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14877.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14883.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14884.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14890.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14891.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_157) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14898.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_157) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14899.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14905.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14906.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14913.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14914.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_247) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14921.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_247) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14922.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14930.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14931.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14938.10]
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
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@14939.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_312) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15000.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_312) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15001.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15007.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15008.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15014.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15015.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15022.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_322) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15023.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15030.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_326) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15031.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15038.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15039.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15107.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_393) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15108.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15114.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15115.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15121.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15122.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15129.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_322) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15137.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_326) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15138.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15206.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_393) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15207.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15213.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15214.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15220.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15221.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15228.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_322) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15229.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15238.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_486) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15239.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_539) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15297.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_539) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15298.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15304.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15305.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15311.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15312.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_549) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15319.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_549) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15320.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15327.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_326) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15328.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_539) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15386.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_539) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15387.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15393.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15394.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15400.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15401.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_616) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15408.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_616) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15409.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_326) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_673) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15475.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_673) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15476.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15482.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15483.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15489.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15490.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_683) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15497.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_683) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15498.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15505.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_326) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15506.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15513.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15514.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_695) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15524.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_695) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15525.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15555.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15556.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_722) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15579.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15580.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_734) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15587.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_734) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15588.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15597.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15598.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15612.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_722) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15613.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15620.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15621.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15628.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15629.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15655.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15656.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_722) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15671.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15678.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15679.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15686.10]
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
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15687.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_786) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15695.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_786) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15696.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15714.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15715.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15722.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15723.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_197 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15730.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_197 & _T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15731.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15749.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15750.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15757.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15758.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_786) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_786) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_209 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15801.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_209 & _T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15802.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_885 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15881.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_885 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15882.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_885 & _T_893) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15889.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_885 & _T_893) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15890.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_885 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15897.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_885 & _T_897) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15898.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_885 & _T_901) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15905.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_885 & _T_901) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15906.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_885 & _T_905) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15913.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_885 & _T_905) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@15914.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_938) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15962.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_938) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15963.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15970.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_942) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15971.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_946) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15978.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_946) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15979.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_950) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15986.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_950) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15987.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_954) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15994.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_954) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@15995.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934 & _T_958) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16002.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934 & _T_958) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16003.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1017 & _T_1033) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16139.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1017 & _T_1033) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16140.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1056 & _T_1067) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16190.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1056 & _T_1067) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16191.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1056 & _T_1080) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16207.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1056 & _T_1080) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16208.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1056 & _T_1087) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16218.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1056 & _T_1087) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16219.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1094 & _T_1099) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16236.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1094 & _T_1099) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16237.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1106) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16248.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1106) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@16249.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1125) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16276.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1125) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@16277.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
