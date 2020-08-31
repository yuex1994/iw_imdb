module TLMonitor_40( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97539.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97540.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97541.4]
  input        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input        io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input  [2:0] io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input  [6:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input  [3:0] io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input        io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input        io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
  input  [2:0] io_in_d_bits_opcode // @[:freechips.rocketchip.system.DefaultRV32Config.fir@97542.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@98845.4]
  wire [6:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@97561.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@97562.6]
  wire  _T_56; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@97611.6]
  wire [6:0] _T_58; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@97614.8]
  wire [7:0] _T_59; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@97615.8]
  wire [7:0] _T_61; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@97617.8]
  wire  _T_62; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@97618.8]
  wire [6:0] _T_63; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@97619.8]
  wire [7:0] _T_64; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@97620.8]
  wire [7:0] _T_66; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@97622.8]
  wire  _T_67; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@97623.8]
  wire  _T_68; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@97624.8]
  wire  _T_73; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97629.8]
  wire  _T_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97657.8]
  wire  _T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97658.8]
  wire [3:0] _T_91; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@97671.8]
  wire  _T_92; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@97672.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97674.8]
  wire  _T_95; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97675.8]
  wire  _T_100; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@97689.6]
  wire  _T_148; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@97775.6]
  wire  _T_167; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97795.8]
  wire  _T_168; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97796.8]
  wire  _T_179; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@97823.8]
  wire  _T_181; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97825.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97826.8]
  wire  _T_187; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@97840.6]
  wire  _T_222; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@97897.6]
  wire  _T_259; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@97956.6]
  wire  _T_291; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@98010.6]
  wire  _T_323; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@98064.6]
  wire  _T_359; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@98128.6]
  wire  _T_361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98130.6]
  wire  _T_362; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98131.6]
  wire  _T_366; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@98141.6]
  wire  _T_386; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@98183.6]
  wire  _T_414; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@98241.6]
  wire  _T_510; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@98437.4]
  reg  _T_519; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@98446.4]
  wire  _T_521; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98448.4]
  wire  _T_522; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98449.4]
  reg [2:0] _T_530; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@98460.4]
  reg [6:0] _T_534; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@98464.4]
  wire  _T_535; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@98465.4]
  wire  _T_536; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@98466.4]
  wire  _T_537; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@98468.6]
  wire  _T_539; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98470.6]
  wire  _T_540; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98471.6]
  wire  _T_553; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@98500.6]
  wire  _T_555; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98502.6]
  wire  _T_556; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98503.6]
  wire  _T_558; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@98510.4]
  wire  _T_559; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@98518.4]
  reg  _T_567; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@98526.4]
  wire  _T_569; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98528.4]
  wire  _T_570; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98529.4]
  reg [2:0] _T_578; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@98540.4]
  wire  _T_584; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@98546.4]
  wire  _T_585; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@98547.4]
  wire  _T_586; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@98549.6]
  wire  _T_588; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98551.6]
  wire  _T_589; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98552.6]
  wire  _T_611; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@98599.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@98608.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@98609.4]
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@98610.4]
  reg  _T_621; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@98620.4]
  wire  _T_623; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98622.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98623.4]
  reg  _T_639; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@98642.4]
  wire  _T_641; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98644.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98645.4]
  wire [15:0] _T_654; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@98669.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@98670.4]
  wire [15:0] _T_655; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@98670.4]
  wire [15:0] _T_656; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@98671.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@98681.4]
  wire [15:0] _T_663; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@98681.4]
  wire [15:0] _T_664; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@98682.4]
  wire  _T_668; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@98707.4]
  wire [3:0] _T_671; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@98712.6]
  wire [3:0] _T_672; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@98713.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  wire [18:0] _T_676; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@98719.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  wire [17:0] _T_678; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@98722.6]
  wire  _T_681; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@98726.6]
  wire  _T_683; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98728.6]
  wire  _T_684; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98729.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  wire  _T_687; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@98743.4]
  wire  _T_689; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@98745.4]
  wire  _T_690; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@98746.4]
  wire [30:0] _T_697; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@98755.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@98747.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@98747.4]
  wire  _T_704; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@98765.4]
  wire  _T_707; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@98768.4]
  wire  _T_714; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@98776.6]
  wire  _T_715; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@98777.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98779.6]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98780.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98662.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98663.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@98672.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire  _T_720; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  wire  _T_722; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  wire  _T_723; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@98789.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire  _T_724; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  wire  _T_725; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  wire  _T_726; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@98792.6]
  wire  _T_727; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@98793.6]
  wire  _T_728; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@98794.6]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98796.6]
  wire  _T_731; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98797.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98673.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98674.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@98683.4]
  wire  _T_732; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@98802.6]
  wire  _T_735; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@98805.6]
  wire  _T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98807.6]
  wire  _T_738; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98808.6]
  wire  _T_740; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@98815.4]
  wire  _T_741; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@98816.4]
  wire  _T_745; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@98820.4]
  wire  _T_746; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@98822.6]
  wire  _T_747; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@98823.6]
  wire  _T_749; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98825.6]
  wire  _T_750; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98826.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98656.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98657.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@98711.6]
  wire  _T_751; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@98832.4]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98735.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98736.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@98749.6]
  wire  _T_752; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@98833.4]
  wire  _T_753; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@98834.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98658.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98659.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@98720.6]
  wire [3:0] _T_754; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@98836.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98737.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98738.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@98756.6]
  wire [3:0] _T_755; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@98837.4]
  wire [3:0] _T_756; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@98838.4]
  wire [3:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98660.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98661.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@98723.6]
  wire [3:0] _T_757; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@98840.4]
  wire [3:0] _T_759; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@98842.4]
  reg [31:0] _T_760; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@98844.4]
  wire  _T_761; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@98847.4]
  wire  _T_762; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@98848.4]
  wire  _T_763; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@98849.4]
  wire  _T_764; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@98850.4]
  wire  _T_765; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@98851.4]
  wire  _T_766; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@98852.4]
  wire  _T_768; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98854.4]
  wire  _T_769; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98855.4]
  wire [31:0] _T_771; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@98861.4]
  wire  _T_774; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@98865.4]
  wire  _GEN_60; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97631.10]
  wire  _GEN_68; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97709.10]
  wire  _GEN_78; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97798.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97863.10]
  wire  _GEN_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97920.10]
  wire  _GEN_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97976.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98030.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98084.10]
  wire  _GEN_112; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98196.10]
  wire  _GEN_114; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98254.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@98845.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 7'h3; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@97561.6]
  assign _T_11 = _T_10 == 7'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@97562.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@97611.6]
  assign _T_58 = io_in_a_bits_address ^ 7'h40; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@97614.8]
  assign _T_59 = {1'b0,$signed(_T_58)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@97615.8]
  assign _T_61 = $signed(_T_59) & -8'sh4; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@97617.8]
  assign _T_62 = $signed(_T_61) == 8'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@97618.8]
  assign _T_63 = io_in_a_bits_address ^ 7'h50; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@97619.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@97620.8]
  assign _T_66 = $signed(_T_64) & -8'sh8; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@97622.8]
  assign _T_67 = $signed(_T_66) == 8'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@97623.8]
  assign _T_68 = _T_62 | _T_67; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@97624.8]
  assign _T_73 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97629.8]
  assign _T_85 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97657.8]
  assign _T_86 = ~_T_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97658.8]
  assign _T_91 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@97671.8]
  assign _T_92 = _T_91 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@97672.8]
  assign _T_94 = _T_92 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97674.8]
  assign _T_95 = ~_T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97675.8]
  assign _T_100 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@97689.6]
  assign _T_148 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@97775.6]
  assign _T_167 = _T_68 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97795.8]
  assign _T_168 = ~_T_167; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97796.8]
  assign _T_179 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@97823.8]
  assign _T_181 = _T_179 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97825.8]
  assign _T_182 = ~_T_181; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97826.8]
  assign _T_187 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@97840.6]
  assign _T_222 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@97897.6]
  assign _T_259 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@97956.6]
  assign _T_291 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@98010.6]
  assign _T_323 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@98064.6]
  assign _T_359 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@98128.6]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98130.6]
  assign _T_362 = ~_T_361; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98131.6]
  assign _T_366 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@98141.6]
  assign _T_386 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@98183.6]
  assign _T_414 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@98241.6]
  assign _T_510 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@98437.4]
  assign _T_521 = _T_519 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98448.4]
  assign _T_522 = ~_T_519; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98449.4]
  assign _T_535 = ~_T_522; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@98465.4]
  assign _T_536 = io_in_a_valid & _T_535; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@98466.4]
  assign _T_537 = io_in_a_bits_opcode == _T_530; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@98468.6]
  assign _T_539 = _T_537 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98470.6]
  assign _T_540 = ~_T_539; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98471.6]
  assign _T_553 = io_in_a_bits_address == _T_534; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@98500.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98502.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98503.6]
  assign _T_558 = _T_510 & _T_522; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@98510.4]
  assign _T_559 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@98518.4]
  assign _T_569 = _T_567 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98528.4]
  assign _T_570 = ~_T_567; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98529.4]
  assign _T_584 = ~_T_570; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@98546.4]
  assign _T_585 = io_in_d_valid & _T_584; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@98547.4]
  assign _T_586 = io_in_d_bits_opcode == _T_578; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@98549.6]
  assign _T_588 = _T_586 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98551.6]
  assign _T_589 = ~_T_588; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98552.6]
  assign _T_611 = _T_559 & _T_570; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@98599.4]
  assign _T_623 = _T_621 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98622.4]
  assign a_first = ~_T_621; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98623.4]
  assign _T_641 = _T_639 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@98644.4]
  assign d_first = ~_T_639; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@98645.4]
  assign _T_654 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@98669.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@98670.4]
  assign _T_655 = _GEN_56 & _T_654; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@98670.4]
  assign _T_656 = {{1'd0}, _T_655[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@98671.4]
  assign _GEN_58 = {{12'd0}, inflight_sizes}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@98681.4]
  assign _T_663 = _GEN_58 & _T_654; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@98681.4]
  assign _T_664 = {{1'd0}, _T_663[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@98682.4]
  assign _T_668 = _T_510 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@98707.4]
  assign _T_671 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@98712.6]
  assign _T_672 = _T_671 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@98713.6]
  assign a_opcodes_set_interm = _T_668 ? _T_672 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  assign _T_676 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@98719.6]
  assign a_sizes_set_interm = _T_668 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  assign _T_678 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@98722.6]
  assign _T_681 = ~inflight; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@98726.6]
  assign _T_683 = _T_681 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98728.6]
  assign _T_684 = ~_T_683; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98729.6]
  assign _GEN_15 = _T_668 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  assign _GEN_18 = _T_668 ? _T_676 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  assign _GEN_19 = _T_668 ? _T_678 : 18'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@98709.4]
  assign _T_687 = _T_559 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@98743.4]
  assign _T_689 = ~_T_366; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@98745.4]
  assign _T_690 = _T_687 & _T_689; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@98746.4]
  assign _T_697 = {{15'd0}, _T_654}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@98755.6]
  assign _GEN_20 = _T_690 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@98747.4]
  assign _GEN_21 = _T_690 ? _T_697 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@98747.4]
  assign _T_704 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@98765.4]
  assign _T_707 = _T_704 & _T_689; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@98768.4]
  assign _T_714 = io_in_a_valid & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@98776.6]
  assign _T_715 = inflight | _T_714; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@98777.6]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98779.6]
  assign _T_718 = ~_T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98780.6]
  assign a_opcode_lookup = _T_656[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98662.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98663.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@98672.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _T_720 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@98786.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  assign _T_722 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@98788.6]
  assign _T_723 = _T_720 | _T_722; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@98789.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@98790.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  assign _T_725 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@98791.6]
  assign _T_726 = _T_724 | _T_725; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@98792.6]
  assign _T_727 = io_in_a_valid & _T_726; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@98793.6]
  assign _T_728 = _T_723 | _T_727; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@98794.6]
  assign _T_730 = _T_728 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98796.6]
  assign _T_731 = ~_T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98797.6]
  assign a_size_lookup = _T_664[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98673.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98674.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@98683.4]
  assign _T_732 = 4'h2 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@98802.6]
  assign _T_735 = _T_732 | io_in_a_valid; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@98805.6]
  assign _T_737 = _T_735 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98807.6]
  assign _T_738 = ~_T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98808.6]
  assign _T_740 = _T_704 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@98815.4]
  assign _T_741 = _T_740 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@98816.4]
  assign _T_745 = _T_741 & _T_689; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@98820.4]
  assign _T_746 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@98822.6]
  assign _T_747 = _T_746 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@98823.6]
  assign _T_749 = _T_747 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98825.6]
  assign _T_750 = ~_T_749; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98826.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98656.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98657.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@98711.6]
  assign _T_751 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@98832.4]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98735.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98736.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@98749.6]
  assign _T_752 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@98833.4]
  assign _T_753 = _T_751 & _T_752; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@98834.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98658.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98659.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@98720.6]
  assign _T_754 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@98836.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98737.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98738.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@98756.6]
  assign _T_755 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@98837.4]
  assign _T_756 = _T_754 & _T_755; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@98838.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98660.4 :freechips.rocketchip.system.DefaultRV32Config.fir@98661.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@98723.6]
  assign _T_757 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@98840.4]
  assign _T_759 = _T_757 & _T_755; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@98842.4]
  assign _T_761 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@98847.4]
  assign _T_762 = ~_T_761; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@98848.4]
  assign _T_763 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@98849.4]
  assign _T_764 = _T_762 | _T_763; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@98850.4]
  assign _T_765 = _T_760 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@98851.4]
  assign _T_766 = _T_764 | _T_765; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@98852.4]
  assign _T_768 = _T_766 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98854.4]
  assign _T_769 = ~_T_768; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98855.4]
  assign _T_771 = _T_760 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@98861.4]
  assign _T_774 = _T_510 | _T_559; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@98865.4]
  assign _GEN_60 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97631.10]
  assign _GEN_68 = io_in_a_valid & _T_100; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97709.10]
  assign _GEN_78 = io_in_a_valid & _T_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97798.10]
  assign _GEN_84 = io_in_a_valid & _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97863.10]
  assign _GEN_90 = io_in_a_valid & _T_222; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97920.10]
  assign _GEN_94 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97976.10]
  assign _GEN_100 = io_in_a_valid & _T_291; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98030.10]
  assign _GEN_106 = io_in_a_valid & _T_323; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98084.10]
  assign _GEN_112 = io_in_d_valid & _T_386; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98196.10]
  assign _GEN_114 = io_in_d_valid & _T_414; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98254.10]
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
  _T_519 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_530 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_534 = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  _T_567 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_578 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  inflight = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  inflight_opcodes = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  inflight_sizes = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  _T_621 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_639 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_760 = _RAND_10[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_519 <= 1'h0;
    end else if (_T_510) begin
      if (_T_522) begin
        _T_519 <= 1'h0;
      end else begin
        _T_519 <= _T_521;
      end
    end
    if (_T_558) begin
      _T_530 <= io_in_a_bits_opcode;
    end
    if (_T_558) begin
      _T_534 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_567 <= 1'h0;
    end else if (_T_559) begin
      if (_T_570) begin
        _T_567 <= 1'h0;
      end else begin
        _T_567 <= _T_569;
      end
    end
    if (_T_611) begin
      _T_578 <= io_in_d_bits_opcode;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_753;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_756;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_759;
    end
    if (reset) begin
      _T_621 <= 1'h0;
    end else if (_T_510) begin
      if (a_first) begin
        _T_621 <= 1'h0;
      end else begin
        _T_621 <= _T_623;
      end
    end
    if (reset) begin
      _T_639 <= 1'h0;
    end else if (_T_559) begin
      if (d_first) begin
        _T_639 <= 1'h0;
      end else begin
        _T_639 <= _T_641;
      end
    end
    if (reset) begin
      _T_760 <= 32'h0;
    end else if (_T_774) begin
      _T_760 <= 32'h0;
    end else begin
      _T_760 <= _T_771;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97631.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97632.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97638.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97639.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97660.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97661.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_95) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97677.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_95) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97678.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97709.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97710.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97716.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97717.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97738.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97739.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97755.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_95) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_95) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97798.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97799.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97812.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97813.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97828.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97829.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97863.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97864.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97877.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97878.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97893.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97894.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97920.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97921.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97934.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97935.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97990.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@97991.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98006.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98007.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98030.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98031.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98044.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98045.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98060.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98061.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98084.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98085.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98098.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98099.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98114.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98115.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98133.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_362) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98134.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_112 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_112 & _T_73) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98254.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_73) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98255.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_536 & _T_540) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98473.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_536 & _T_540) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98474.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_536 & _T_556) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98505.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_536 & _T_556) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98506.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_585 & _T_589) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98554.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_585 & _T_589) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98555.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_684) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98731.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_684) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98732.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98782.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98783.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_731) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98799.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_731) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98800.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_738) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98810.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_738) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98811.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_745 & _T_750) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98828.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_745 & _T_750) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@98829.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_769) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98857.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_769) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@98858.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
