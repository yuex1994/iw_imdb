module TLMonitor_43( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103405.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103406.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103407.4]
  input        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [2:0] io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [8:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [3:0] io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [2:0] io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [1:0] io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input  [1:0] io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
  input        io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103408.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@104914.4]
  wire [8:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@103427.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@103428.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103465.6]
  wire  _T_56; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@103477.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103483.8]
  wire  _T_62; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103484.8]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103485.8]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103486.8]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103488.8]
  wire  _T_67; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103489.8]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103490.8]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103491.8]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103493.8]
  wire  _T_72; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103494.8]
  wire [8:0] _T_73; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103495.8]
  wire [9:0] _T_74; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103496.8]
  wire [9:0] _T_76; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103498.8]
  wire  _T_77; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103499.8]
  wire [8:0] _T_78; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103500.8]
  wire [9:0] _T_79; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103501.8]
  wire [9:0] _T_81; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103503.8]
  wire  _T_82; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103504.8]
  wire [8:0] _T_83; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103505.8]
  wire [9:0] _T_84; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103506.8]
  wire [9:0] _T_86; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103508.8]
  wire  _T_87; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103509.8]
  wire  _T_88; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103510.8]
  wire  _T_89; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103511.8]
  wire  _T_90; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103512.8]
  wire  _T_91; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103513.8]
  wire  _T_92; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103514.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103519.8]
  wire  _T_109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103547.8]
  wire  _T_110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103548.8]
  wire [3:0] _T_115; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@103561.8]
  wire  _T_116; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@103562.8]
  wire  _T_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103564.8]
  wire  _T_119; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103565.8]
  wire  _T_124; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@103579.6]
  wire  _T_196; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@103689.6]
  wire  _T_239; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103733.8]
  wire  _T_240; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103734.8]
  wire  _T_251; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@103761.8]
  wire  _T_253; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103763.8]
  wire  _T_254; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103764.8]
  wire  _T_259; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@103778.6]
  wire  _T_318; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@103859.6]
  wire  _T_379; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@103942.6]
  wire  _T_435; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@104020.6]
  wire  _T_491; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@104098.6]
  wire  _T_551; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@104186.6]
  wire  _T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104188.6]
  wire  _T_554; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104189.6]
  wire  _T_555; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@104194.6]
  wire  _T_558; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@104199.6]
  wire  _T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104202.8]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104203.8]
  wire  _T_562; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@104208.8]
  wire  _T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104210.8]
  wire  _T_565; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104211.8]
  wire  _T_566; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@104216.8]
  wire  _T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104218.8]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104219.8]
  wire  _T_570; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@104224.8]
  wire  _T_572; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104226.8]
  wire  _T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104227.8]
  wire  _T_574; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@104232.8]
  wire  _T_576; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104234.8]
  wire  _T_577; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104235.8]
  wire  _T_578; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@104241.6]
  wire  _T_589; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@104265.8]
  wire  _T_591; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104267.8]
  wire  _T_592; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104268.8]
  wire  _T_593; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@104273.8]
  wire  _T_595; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104275.8]
  wire  _T_596; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104276.8]
  wire  _T_606; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@104299.6]
  wire  _T_626; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@104340.8]
  wire  _T_628; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104342.8]
  wire  _T_629; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104343.8]
  wire  _T_635; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@104358.6]
  wire  _T_652; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@104393.6]
  wire  _T_670; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@104429.6]
  wire  _T_702; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@104495.4]
  reg  _T_711; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@104504.4]
  wire  _T_713; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104506.4]
  wire  _T_714; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104507.4]
  reg [2:0] _T_722; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@104518.4]
  reg [8:0] _T_726; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@104522.4]
  wire  _T_727; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@104523.4]
  wire  _T_728; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@104524.4]
  wire  _T_729; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@104526.6]
  wire  _T_731; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104528.6]
  wire  _T_732; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104529.6]
  wire  _T_745; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@104558.6]
  wire  _T_747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104560.6]
  wire  _T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104561.6]
  wire  _T_750; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@104568.4]
  wire  _T_751; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@104576.4]
  reg  _T_759; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@104584.4]
  wire  _T_761; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104586.4]
  wire  _T_762; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104587.4]
  reg [2:0] _T_770; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@104598.4]
  reg [1:0] _T_771; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@104599.4]
  reg [1:0] _T_772; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@104600.4]
  reg  _T_773; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@104601.4]
  reg  _T_774; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@104602.4]
  reg  _T_775; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@104603.4]
  wire  _T_776; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@104604.4]
  wire  _T_777; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@104605.4]
  wire  _T_778; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@104607.6]
  wire  _T_780; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104609.6]
  wire  _T_781; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104610.6]
  wire  _T_782; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@104615.6]
  wire  _T_784; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104617.6]
  wire  _T_785; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104618.6]
  wire  _T_786; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@104623.6]
  wire  _T_788; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104625.6]
  wire  _T_789; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104626.6]
  wire  _T_790; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@104631.6]
  wire  _T_792; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104633.6]
  wire  _T_793; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104634.6]
  wire  _T_794; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@104639.6]
  wire  _T_796; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104641.6]
  wire  _T_797; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104642.6]
  wire  _T_798; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@104647.6]
  wire  _T_800; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104649.6]
  wire  _T_801; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104650.6]
  wire  _T_803; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@104657.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@104666.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@104667.4]
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@104668.4]
  reg  _T_813; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@104678.4]
  wire  _T_815; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104680.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104681.4]
  reg  _T_831; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@104700.4]
  wire  _T_833; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104702.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104703.4]
  wire [2:0] _GEN_56; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@104722.4]
  wire [3:0] _T_841; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@104722.4]
  wire [3:0] _T_842; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@104723.4]
  wire [15:0] _T_846; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@104727.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@104728.4]
  wire [15:0] _T_847; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@104728.4]
  wire [15:0] _T_848; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@104729.4]
  wire [3:0] _T_850; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@104734.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@104739.4]
  wire [15:0] _T_855; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@104739.4]
  wire [15:0] _T_856; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@104740.4]
  wire  _T_860; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@104765.4]
  wire [3:0] _T_863; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@104770.6]
  wire [3:0] _T_864; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@104771.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  wire [18:0] _T_868; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@104777.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  wire [17:0] _T_870; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@104780.6]
  wire  _T_873; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@104784.6]
  wire  _T_875; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104786.6]
  wire  _T_876; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104787.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  wire  _T_879; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@104801.4]
  wire  _T_881; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@104803.4]
  wire  _T_882; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@104804.4]
  wire [1:0] _T_883; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@104806.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@104813.6]
  wire [30:0] _T_889; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@104813.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@104805.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@104805.4]
  wire  _T_896; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@104823.4]
  wire  _T_899; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@104826.4]
  wire  _T_900; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@104828.6]
  wire  _T_903; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@104831.6]
  wire  _T_904; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@104832.6]
  wire  _T_905; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@104833.6]
  wire  _T_906; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@104834.6]
  wire  _T_907; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@104835.6]
  wire  _T_909; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104837.6]
  wire  _T_910; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104838.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104720.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104721.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@104730.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire  _T_912; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  wire  _T_914; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  wire  _T_915; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@104847.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire  _T_916; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  wire  _T_917; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  wire  _T_918; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@104850.6]
  wire  _T_919; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@104851.6]
  wire  _T_920; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@104852.6]
  wire  _T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104854.6]
  wire  _T_923; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104855.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104731.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104732.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@104741.4]
  wire [3:0] _GEN_66; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@104860.6]
  wire  _T_924; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@104860.6]
  wire  _T_926; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@104862.6]
  wire  _T_927; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@104863.6]
  wire  _T_929; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104865.6]
  wire  _T_930; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104866.6]
  wire  _T_932; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@104873.4]
  wire  _T_933; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@104874.4]
  wire  _T_935; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@104876.4]
  wire  _T_937; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@104878.4]
  wire  _T_938; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@104880.6]
  wire  _T_939; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@104881.6]
  wire  _T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104883.6]
  wire  _T_942; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104884.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104714.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104715.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@104769.6]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104793.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104794.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@104807.6]
  wire  _T_943; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@104890.4]
  wire  _T_944; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@104891.4]
  wire  _T_945; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@104892.4]
  wire  _T_946; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@104893.4]
  wire  _T_948; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104895.4]
  wire  _T_949; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104896.4]
  wire  _T_950; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@104901.4]
  wire  _T_951; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@104902.4]
  wire  _T_952; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@104903.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104716.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104717.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@104778.6]
  wire [3:0] _T_953; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@104905.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104795.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104796.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@104814.6]
  wire [3:0] _T_954; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@104906.4]
  wire [3:0] _T_955; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@104907.4]
  wire [3:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104718.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104719.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@104781.6]
  wire [3:0] _T_956; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@104909.4]
  wire [3:0] _T_958; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@104911.4]
  reg [31:0] _T_959; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@104913.4]
  wire  _T_960; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@104916.4]
  wire  _T_961; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@104917.4]
  wire  _T_962; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@104918.4]
  wire  _T_963; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@104919.4]
  wire  _T_964; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@104920.4]
  wire  _T_965; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@104921.4]
  wire  _T_967; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104923.4]
  wire  _T_968; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104924.4]
  wire [31:0] _T_970; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@104930.4]
  wire  _T_973; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@104934.4]
  wire  _GEN_67; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103521.10]
  wire  _GEN_75; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103623.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103736.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103825.10]
  wire  _GEN_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103906.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103986.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104064.10]
  wire  _GEN_113; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104142.10]
  wire  _GEN_119; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104205.10]
  wire  _GEN_129; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104247.10]
  wire  _GEN_143; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104305.10]
  wire  _GEN_157; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104364.10]
  wire  _GEN_165; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104399.10]
  wire  _GEN_173; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104435.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@104914.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@103427.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@103428.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103465.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@103477.6]
  assign _T_61 = $signed(_T_48) & -10'sh40; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103483.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103484.8]
  assign _T_63 = io_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103485.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103486.8]
  assign _T_66 = $signed(_T_64) & -10'sh4; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103488.8]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103489.8]
  assign _T_68 = io_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103490.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103491.8]
  assign _T_71 = $signed(_T_69) & -10'sh18; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103493.8]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103494.8]
  assign _T_73 = io_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103495.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103496.8]
  assign _T_76 = $signed(_T_74) & -10'sh20; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103498.8]
  assign _T_77 = $signed(_T_76) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103499.8]
  assign _T_78 = io_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103500.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103501.8]
  assign _T_81 = $signed(_T_79) & -10'sh80; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103503.8]
  assign _T_82 = $signed(_T_81) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103504.8]
  assign _T_83 = io_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@103505.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@103506.8]
  assign _T_86 = $signed(_T_84) & -10'sh100; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@103508.8]
  assign _T_87 = $signed(_T_86) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@103509.8]
  assign _T_88 = _T_62 | _T_67; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103510.8]
  assign _T_89 = _T_88 | _T_72; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103511.8]
  assign _T_90 = _T_89 | _T_77; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103512.8]
  assign _T_91 = _T_90 | _T_82; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103513.8]
  assign _T_92 = _T_91 | _T_87; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@103514.8]
  assign _T_97 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103519.8]
  assign _T_109 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103547.8]
  assign _T_110 = ~_T_109; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103548.8]
  assign _T_115 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@103561.8]
  assign _T_116 = _T_115 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@103562.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103564.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103565.8]
  assign _T_124 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@103579.6]
  assign _T_196 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@103689.6]
  assign _T_239 = _T_92 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103733.8]
  assign _T_240 = ~_T_239; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103734.8]
  assign _T_251 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@103761.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103763.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103764.8]
  assign _T_259 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@103778.6]
  assign _T_318 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@103859.6]
  assign _T_379 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@103942.6]
  assign _T_435 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@104020.6]
  assign _T_491 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@104098.6]
  assign _T_551 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@104186.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104188.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104189.6]
  assign _T_555 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@104194.6]
  assign _T_558 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@104199.6]
  assign _T_560 = _T_555 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104202.8]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104203.8]
  assign _T_562 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@104208.8]
  assign _T_564 = _T_562 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104210.8]
  assign _T_565 = ~_T_564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104211.8]
  assign _T_566 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@104216.8]
  assign _T_568 = _T_566 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104218.8]
  assign _T_569 = ~_T_568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104219.8]
  assign _T_570 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@104224.8]
  assign _T_572 = _T_570 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104226.8]
  assign _T_573 = ~_T_572; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104227.8]
  assign _T_574 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@104232.8]
  assign _T_576 = _T_574 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104234.8]
  assign _T_577 = ~_T_576; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104235.8]
  assign _T_578 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@104241.6]
  assign _T_589 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@104265.8]
  assign _T_591 = _T_589 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104267.8]
  assign _T_592 = ~_T_591; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104268.8]
  assign _T_593 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@104273.8]
  assign _T_595 = _T_593 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104275.8]
  assign _T_596 = ~_T_595; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104276.8]
  assign _T_606 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@104299.6]
  assign _T_626 = _T_574 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@104340.8]
  assign _T_628 = _T_626 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104342.8]
  assign _T_629 = ~_T_628; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104343.8]
  assign _T_635 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@104358.6]
  assign _T_652 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@104393.6]
  assign _T_670 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@104429.6]
  assign _T_702 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@104495.4]
  assign _T_713 = _T_711 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104506.4]
  assign _T_714 = ~_T_711; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104507.4]
  assign _T_727 = ~_T_714; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@104523.4]
  assign _T_728 = io_in_a_valid & _T_727; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@104524.4]
  assign _T_729 = io_in_a_bits_opcode == _T_722; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@104526.6]
  assign _T_731 = _T_729 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104528.6]
  assign _T_732 = ~_T_731; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104529.6]
  assign _T_745 = io_in_a_bits_address == _T_726; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@104558.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104560.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104561.6]
  assign _T_750 = _T_702 & _T_714; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@104568.4]
  assign _T_751 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@104576.4]
  assign _T_761 = _T_759 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104586.4]
  assign _T_762 = ~_T_759; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104587.4]
  assign _T_776 = ~_T_762; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@104604.4]
  assign _T_777 = io_in_d_valid & _T_776; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@104605.4]
  assign _T_778 = io_in_d_bits_opcode == _T_770; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@104607.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104609.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104610.6]
  assign _T_782 = io_in_d_bits_param == _T_771; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@104615.6]
  assign _T_784 = _T_782 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104617.6]
  assign _T_785 = ~_T_784; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104618.6]
  assign _T_786 = io_in_d_bits_size == _T_772; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@104623.6]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104625.6]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104626.6]
  assign _T_790 = io_in_d_bits_source == _T_773; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@104631.6]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104633.6]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104634.6]
  assign _T_794 = io_in_d_bits_sink == _T_774; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@104639.6]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104641.6]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104642.6]
  assign _T_798 = io_in_d_bits_denied == _T_775; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@104647.6]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104649.6]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104650.6]
  assign _T_803 = _T_751 & _T_762; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@104657.4]
  assign _T_815 = _T_813 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104680.4]
  assign a_first = ~_T_813; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104681.4]
  assign _T_833 = _T_831 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@104702.4]
  assign d_first = ~_T_831; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@104703.4]
  assign _GEN_56 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@104722.4]
  assign _T_841 = {{1'd0}, _GEN_56}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@104722.4]
  assign _T_842 = inflight_opcodes >> _T_841; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@104723.4]
  assign _T_846 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@104727.4]
  assign _GEN_57 = {{12'd0}, _T_842}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@104728.4]
  assign _T_847 = _GEN_57 & _T_846; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@104728.4]
  assign _T_848 = {{1'd0}, _T_847[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@104729.4]
  assign _T_850 = inflight_sizes >> _T_841; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@104734.4]
  assign _GEN_60 = {{12'd0}, _T_850}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@104739.4]
  assign _T_855 = _GEN_60 & _T_846; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@104739.4]
  assign _T_856 = {{1'd0}, _T_855[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@104740.4]
  assign _T_860 = _T_702 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@104765.4]
  assign _T_863 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@104770.6]
  assign _T_864 = _T_863 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@104771.6]
  assign a_opcodes_set_interm = _T_860 ? _T_864 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  assign _T_868 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@104777.6]
  assign a_sizes_set_interm = _T_860 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  assign _T_870 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@104780.6]
  assign _T_873 = ~inflight; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@104784.6]
  assign _T_875 = _T_873 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104786.6]
  assign _T_876 = ~_T_875; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104787.6]
  assign _GEN_15 = _T_860 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  assign _GEN_18 = _T_860 ? _T_868 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  assign _GEN_19 = _T_860 ? _T_870 : 18'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@104767.4]
  assign _T_879 = _T_751 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@104801.4]
  assign _T_881 = ~_T_558; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@104803.4]
  assign _T_882 = _T_879 & _T_881; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@104804.4]
  assign _T_883 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@104806.6]
  assign _GEN_63 = {{15'd0}, _T_846}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@104813.6]
  assign _T_889 = _GEN_63 << _T_841; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@104813.6]
  assign _GEN_20 = _T_882 ? _T_883 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@104805.4]
  assign _GEN_21 = _T_882 ? _T_889 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@104805.4]
  assign _T_896 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@104823.4]
  assign _T_899 = _T_896 & _T_881; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@104826.4]
  assign _T_900 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@104828.6]
  assign _T_903 = io_in_a_valid & _T_555; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@104831.6]
  assign _T_904 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@104832.6]
  assign _T_905 = _T_903 & _T_904; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@104833.6]
  assign _T_906 = _T_905 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@104834.6]
  assign _T_907 = _T_900 | _T_906; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@104835.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104837.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104838.6]
  assign a_opcode_lookup = _T_848[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104720.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104721.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@104730.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _T_912 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@104844.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  assign _T_914 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@104846.6]
  assign _T_915 = _T_912 | _T_914; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@104847.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _T_916 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@104848.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  assign _T_917 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@104849.6]
  assign _T_918 = _T_916 | _T_917; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@104850.6]
  assign _T_919 = io_in_a_valid & _T_918; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@104851.6]
  assign _T_920 = _T_915 | _T_919; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@104852.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104854.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104855.6]
  assign a_size_lookup = _T_856[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104731.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104732.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@104741.4]
  assign _GEN_66 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@104860.6]
  assign _T_924 = _GEN_66 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@104860.6]
  assign _T_926 = io_in_a_valid & _T_904; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@104862.6]
  assign _T_927 = _T_924 | _T_926; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@104863.6]
  assign _T_929 = _T_927 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104865.6]
  assign _T_930 = ~_T_929; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104866.6]
  assign _T_932 = _T_896 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@104873.4]
  assign _T_933 = _T_932 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@104874.4]
  assign _T_935 = _T_933 & _T_555; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@104876.4]
  assign _T_937 = _T_935 & _T_881; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@104878.4]
  assign _T_938 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@104880.6]
  assign _T_939 = _T_938 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@104881.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104883.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104884.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104714.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104715.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@104769.6]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104793.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104794.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@104807.6]
  assign _T_943 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@104890.4]
  assign _T_944 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@104891.4]
  assign _T_945 = ~_T_944; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@104892.4]
  assign _T_946 = _T_943 | _T_945; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@104893.4]
  assign _T_948 = _T_946 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104895.4]
  assign _T_949 = ~_T_948; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104896.4]
  assign _T_950 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@104901.4]
  assign _T_951 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@104902.4]
  assign _T_952 = _T_950 & _T_951; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@104903.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104716.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104717.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@104778.6]
  assign _T_953 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@104905.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104795.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104796.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@104814.6]
  assign _T_954 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@104906.4]
  assign _T_955 = _T_953 & _T_954; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@104907.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104718.4 :freechips.rocketchip.system.DefaultRV32Config.fir@104719.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@104781.6]
  assign _T_956 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@104909.4]
  assign _T_958 = _T_956 & _T_954; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@104911.4]
  assign _T_960 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@104916.4]
  assign _T_961 = ~_T_960; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@104917.4]
  assign _T_962 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@104918.4]
  assign _T_963 = _T_961 | _T_962; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@104919.4]
  assign _T_964 = _T_959 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@104920.4]
  assign _T_965 = _T_963 | _T_964; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@104921.4]
  assign _T_967 = _T_965 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104923.4]
  assign _T_968 = ~_T_967; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104924.4]
  assign _T_970 = _T_959 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@104930.4]
  assign _T_973 = _T_702 | _T_751; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@104934.4]
  assign _GEN_67 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103521.10]
  assign _GEN_75 = io_in_a_valid & _T_124; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103623.10]
  assign _GEN_85 = io_in_a_valid & _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103736.10]
  assign _GEN_91 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103825.10]
  assign _GEN_97 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103906.10]
  assign _GEN_101 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103986.10]
  assign _GEN_107 = io_in_a_valid & _T_435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104064.10]
  assign _GEN_113 = io_in_a_valid & _T_491; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104142.10]
  assign _GEN_119 = io_in_d_valid & _T_558; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104205.10]
  assign _GEN_129 = io_in_d_valid & _T_578; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104247.10]
  assign _GEN_143 = io_in_d_valid & _T_606; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104305.10]
  assign _GEN_157 = io_in_d_valid & _T_635; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104364.10]
  assign _GEN_165 = io_in_d_valid & _T_652; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104399.10]
  assign _GEN_173 = io_in_d_valid & _T_670; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104435.10]
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
  _T_711 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_722 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_726 = _RAND_2[8:0];
  _RAND_3 = {1{`RANDOM}};
  _T_759 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_770 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  _T_771 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  _T_772 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  _T_773 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_774 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_775 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight_opcodes = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_sizes = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  _T_813 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_831 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_959 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_711 <= 1'h0;
    end else if (_T_702) begin
      if (_T_714) begin
        _T_711 <= 1'h0;
      end else begin
        _T_711 <= _T_713;
      end
    end
    if (_T_750) begin
      _T_722 <= io_in_a_bits_opcode;
    end
    if (_T_750) begin
      _T_726 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_759 <= 1'h0;
    end else if (_T_751) begin
      if (_T_762) begin
        _T_759 <= 1'h0;
      end else begin
        _T_759 <= _T_761;
      end
    end
    if (_T_803) begin
      _T_770 <= io_in_d_bits_opcode;
    end
    if (_T_803) begin
      _T_771 <= io_in_d_bits_param;
    end
    if (_T_803) begin
      _T_772 <= io_in_d_bits_size;
    end
    if (_T_803) begin
      _T_773 <= io_in_d_bits_source;
    end
    if (_T_803) begin
      _T_774 <= io_in_d_bits_sink;
    end
    if (_T_803) begin
      _T_775 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_952;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_955;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_958;
    end
    if (reset) begin
      _T_813 <= 1'h0;
    end else if (_T_702) begin
      if (a_first) begin
        _T_813 <= 1'h0;
      end else begin
        _T_813 <= _T_815;
      end
    end
    if (reset) begin
      _T_831 <= 1'h0;
    end else if (_T_751) begin
      if (d_first) begin
        _T_831 <= 1'h0;
      end else begin
        _T_831 <= _T_833;
      end
    end
    if (reset) begin
      _T_959 <= 32'h0;
    end else if (_T_973) begin
      _T_959 <= 32'h0;
    end else begin
      _T_959 <= _T_970;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103521.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103522.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103528.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103529.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103550.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103551.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103567.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103568.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103623.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103624.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103630.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103631.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103652.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103653.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103668.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103669.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103677.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103678.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103736.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103737.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103750.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103751.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103839.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103840.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103855.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103856.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103906.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103907.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103920.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103921.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103986.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@103987.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104000.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104001.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104016.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104017.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104064.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104065.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104078.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104079.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104094.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104095.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104142.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104143.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104156.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104157.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104191.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104192.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104205.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104206.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104213.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104214.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104221.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104222.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104229.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104230.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104247.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104248.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104254.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104255.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104262.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104263.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104270.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_592) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104271.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104278.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_596) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104279.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104286.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104287.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104295.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104296.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104305.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104306.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104320.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104321.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104328.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_592) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104329.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104336.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_596) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104337.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104345.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104346.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104354.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104355.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104372.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104373.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104380.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104381.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104399.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104400.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104407.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104408.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104425.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104426.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104443.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104444.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104451.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104452.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104460.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104461.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104531.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104532.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104563.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104564.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104612.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104613.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104620.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104621.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104628.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104629.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104636.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104637.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104644.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104645.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104652.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104653.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104789.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104790.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104840.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104841.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104857.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104858.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104868.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104869.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104886.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104887.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104898.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@104899.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_968) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104926.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_968) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@104927.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
