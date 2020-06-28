module TLMonitor_47( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172856.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172857.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172858.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@172859.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@174467.4]
  wire [31:0] _T_10; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@172878.6]
  wire  _T_11; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@172879.6]
  wire [32:0] _T_48; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172916.6]
  wire [32:0] _T_61; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172934.8]
  wire  _T_62; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172935.8]
  wire [31:0] _T_63; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172936.8]
  wire [32:0] _T_64; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172937.8]
  wire [32:0] _T_66; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172939.8]
  wire  _T_67; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172940.8]
  wire [31:0] _T_68; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172941.8]
  wire [32:0] _T_69; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172942.8]
  wire [32:0] _T_71; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172944.8]
  wire  _T_72; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172945.8]
  wire [31:0] _T_73; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172946.8]
  wire [32:0] _T_74; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172947.8]
  wire [32:0] _T_76; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172949.8]
  wire  _T_77; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172950.8]
  wire [31:0] _T_78; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172951.8]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172952.8]
  wire [32:0] _T_81; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172954.8]
  wire  _T_82; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172955.8]
  wire [31:0] _T_83; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172956.8]
  wire [32:0] _T_84; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172957.8]
  wire [32:0] _T_86; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172959.8]
  wire  _T_87; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172960.8]
  wire [31:0] _T_98; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172971.8]
  wire [32:0] _T_99; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172972.8]
  wire [32:0] _T_101; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172974.8]
  wire  _T_102; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172975.8]
  wire  _T_120; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173009.8]
  wire  _T_121; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173010.8]
  wire  _T_263; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173208.8]
  wire  _T_264; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173209.8]
  wire  _T_265; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173210.8]
  wire  _T_266; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173211.8]
  wire  _T_267; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173212.8]
  wire  _T_270; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@173215.8]
  wire  _T_272; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173217.8]
  wire  _T_273; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173218.8]
  wire  _T_653; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@173739.6]
  wire  _T_655; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173741.6]
  wire  _T_656; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173742.6]
  wire  _T_660; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@173752.6]
  wire  _T_664; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@173761.8]
  wire  _T_666; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173763.8]
  wire  _T_667; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173764.8]
  wire  _T_668; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@173769.8]
  wire  _T_670; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173771.8]
  wire  _T_671; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173772.8]
  wire  _T_672; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@173777.8]
  wire  _T_674; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173779.8]
  wire  _T_675; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173780.8]
  wire  _T_676; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@173785.8]
  wire  _T_678; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173787.8]
  wire  _T_679; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173788.8]
  wire  _T_680; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@173794.6]
  wire  _T_691; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@173818.8]
  wire  _T_693; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173820.8]
  wire  _T_694; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173821.8]
  wire  _T_695; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@173826.8]
  wire  _T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173828.8]
  wire  _T_698; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173829.8]
  wire  _T_708; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@173852.6]
  wire  _T_728; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@173893.8]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173895.8]
  wire  _T_731; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173896.8]
  wire  _T_737; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@173911.6]
  wire  _T_754; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@173946.6]
  wire  _T_772; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@173982.6]
  wire  _T_804; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@174048.4]
  reg [9:0] _T_813; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@174057.4]
  wire [9:0] _T_815; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174059.4]
  wire  _T_816; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174060.4]
  reg [31:0] _T_828; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@174075.4]
  wire  _T_829; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@174076.4]
  wire  _T_830; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@174077.4]
  wire  _T_847; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@174111.6]
  wire  _T_849; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174113.6]
  wire  _T_850; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174114.6]
  wire  _T_852; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@174121.4]
  wire [26:0] _T_855; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@174131.4]
  wire [11:0] _T_857; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@174133.4]
  reg [9:0] _T_861; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@174137.4]
  wire [9:0] _T_863; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174139.4]
  wire  _T_864; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174140.4]
  reg [2:0] _T_872; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@174151.4]
  reg [1:0] _T_873; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@174152.4]
  reg [3:0] _T_874; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@174153.4]
  reg [1:0] _T_876; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@174155.4]
  reg  _T_877; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@174156.4]
  wire  _T_878; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@174157.4]
  wire  _T_879; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@174158.4]
  wire  _T_880; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@174160.6]
  wire  _T_882; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174162.6]
  wire  _T_883; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174163.6]
  wire  _T_884; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@174168.6]
  wire  _T_886; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174170.6]
  wire  _T_887; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174171.6]
  wire  _T_888; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@174176.6]
  wire  _T_890; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174178.6]
  wire  _T_891; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174179.6]
  wire  _T_896; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@174192.6]
  wire  _T_898; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174194.6]
  wire  _T_899; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174195.6]
  wire  _T_900; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@174200.6]
  wire  _T_902; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174202.6]
  wire  _T_903; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174203.6]
  wire  _T_905; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@174210.4]
  reg  inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@174219.4]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@174220.4]
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@174221.4]
  reg [9:0] _T_915; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@174231.4]
  wire [9:0] _T_917; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174233.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174234.4]
  reg [9:0] _T_933; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@174253.4]
  wire [9:0] _T_935; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174255.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174256.4]
  wire [15:0] _T_948; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@174280.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@174281.4]
  wire [15:0] _T_949; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@174281.4]
  wire [15:0] _T_950; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@174282.4]
  wire [15:0] _T_956; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@174291.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@174292.4]
  wire [15:0] _T_957; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@174292.4]
  wire [15:0] _T_958; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@174293.4]
  wire  _T_962; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@174318.4]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  wire [18:0] _T_970; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@174330.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  wire [19:0] _T_972; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@174333.6]
  wire  _T_975; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@174337.6]
  wire  _T_977; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174339.6]
  wire  _T_978; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174340.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  wire  _T_981; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@174354.4]
  wire  _T_983; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@174356.4]
  wire  _T_984; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@174357.4]
  wire [30:0] _T_991; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@174366.6]
  wire [30:0] _T_997; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@174373.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  wire  _T_1006; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@174385.6]
  wire  _T_1007; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@174386.6]
  wire  _T_1008; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@174387.6]
  wire  _T_1009; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@174388.6]
  wire  _T_1011; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174390.6]
  wire  _T_1012; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174391.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174273.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174274.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@174283.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire  _T_1014; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  wire  _T_1016; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  wire  _T_1017; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@174400.6]
  wire  _T_1020; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@174403.6]
  wire  _T_1021; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@174404.6]
  wire  _T_1022; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@174405.6]
  wire  _T_1024; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174407.6]
  wire  _T_1025; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174408.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174284.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174285.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@174294.4]
  wire [7:0] _GEN_60; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@174413.6]
  wire  _T_1026; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@174413.6]
  wire  _T_1029; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@174416.6]
  wire  _T_1031; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174418.6]
  wire  _T_1032; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174419.6]
  wire  _T_1034; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@174426.4]
  wire  _T_1035; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@174427.4]
  wire  _T_1039; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@174431.4]
  wire  _T_1043; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174436.6]
  wire  _T_1044; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174437.6]
  wire  a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174267.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174268.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@174322.6]
  wire  d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174346.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174347.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@174360.6]
  wire  _T_1045; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@174443.4]
  wire  _T_1046; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@174444.4]
  wire  _T_1047; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  wire  _T_1048; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@174446.4]
  wire  _T_1050; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174448.4]
  wire  _T_1051; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174449.4]
  wire  _T_1052; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@174454.4]
  wire  _T_1053; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@174455.4]
  wire  _T_1054; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@174456.4]
  wire [3:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174269.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174270.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@174331.6]
  wire [3:0] _T_1055; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@174458.4]
  wire [3:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174348.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174349.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@174367.6]
  wire [3:0] _T_1056; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@174459.4]
  wire [3:0] _T_1057; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@174460.4]
  wire [7:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174271.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174272.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@174334.6]
  wire [7:0] _T_1058; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@174462.4]
  wire [7:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174350.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174351.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@174374.6]
  wire [7:0] _T_1059; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  wire [7:0] _T_1060; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@174464.4]
  reg [31:0] _T_1061; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@174466.4]
  wire  _T_1062; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@174469.4]
  wire  _T_1063; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@174470.4]
  wire  _T_1064; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@174471.4]
  wire  _T_1065; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@174472.4]
  wire  _T_1066; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@174473.4]
  wire  _T_1067; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@174474.4]
  wire  _T_1069; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174476.4]
  wire  _T_1070; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174477.4]
  wire [31:0] _T_1072; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@174483.4]
  wire  _T_1075; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@174487.4]
  wire  _GEN_61; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173766.10]
  wire  _GEN_69; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173815.10]
  wire  _GEN_77; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173873.10]
  wire  _GEN_85; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173925.10]
  wire  _GEN_89; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173960.10]
  wire  _GEN_93; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173996.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@174467.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 32'h3f; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@172878.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@172879.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172916.6]
  assign _T_61 = $signed(_T_48) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172934.8]
  assign _T_62 = $signed(_T_61) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172935.8]
  assign _T_63 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172936.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172937.8]
  assign _T_66 = $signed(_T_64) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172939.8]
  assign _T_67 = $signed(_T_66) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172940.8]
  assign _T_68 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172941.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172942.8]
  assign _T_71 = $signed(_T_69) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172944.8]
  assign _T_72 = $signed(_T_71) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172945.8]
  assign _T_73 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172946.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172947.8]
  assign _T_76 = $signed(_T_74) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172949.8]
  assign _T_77 = $signed(_T_76) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172950.8]
  assign _T_78 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172951.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172952.8]
  assign _T_81 = $signed(_T_79) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172954.8]
  assign _T_82 = $signed(_T_81) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172955.8]
  assign _T_83 = io_in_a_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172956.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172957.8]
  assign _T_86 = $signed(_T_84) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172959.8]
  assign _T_87 = $signed(_T_86) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172960.8]
  assign _T_98 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@172971.8]
  assign _T_99 = {1'b0,$signed(_T_98)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@172972.8]
  assign _T_101 = $signed(_T_99) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@172974.8]
  assign _T_102 = $signed(_T_101) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@172975.8]
  assign _T_120 = _T_11 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173009.8]
  assign _T_121 = ~_T_120; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173010.8]
  assign _T_263 = _T_62 | _T_72; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173208.8]
  assign _T_264 = _T_263 | _T_77; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173209.8]
  assign _T_265 = _T_264 | _T_82; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173210.8]
  assign _T_266 = _T_265 | _T_87; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173211.8]
  assign _T_267 = _T_266 | _T_102; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@173212.8]
  assign _T_270 = _T_67 | _T_267; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@173215.8]
  assign _T_272 = _T_270 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173217.8]
  assign _T_273 = ~_T_272; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173218.8]
  assign _T_653 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@173739.6]
  assign _T_655 = _T_653 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173741.6]
  assign _T_656 = ~_T_655; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173742.6]
  assign _T_660 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@173752.6]
  assign _T_664 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@173761.8]
  assign _T_666 = _T_664 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173763.8]
  assign _T_667 = ~_T_666; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173764.8]
  assign _T_668 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@173769.8]
  assign _T_670 = _T_668 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173771.8]
  assign _T_671 = ~_T_670; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173772.8]
  assign _T_672 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@173777.8]
  assign _T_674 = _T_672 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173779.8]
  assign _T_675 = ~_T_674; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173780.8]
  assign _T_676 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@173785.8]
  assign _T_678 = _T_676 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173787.8]
  assign _T_679 = ~_T_678; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173788.8]
  assign _T_680 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@173794.6]
  assign _T_691 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@173818.8]
  assign _T_693 = _T_691 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173820.8]
  assign _T_694 = ~_T_693; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173821.8]
  assign _T_695 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@173826.8]
  assign _T_697 = _T_695 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173828.8]
  assign _T_698 = ~_T_697; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173829.8]
  assign _T_708 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@173852.6]
  assign _T_728 = _T_676 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@173893.8]
  assign _T_730 = _T_728 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173895.8]
  assign _T_731 = ~_T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173896.8]
  assign _T_737 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@173911.6]
  assign _T_754 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@173946.6]
  assign _T_772 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@173982.6]
  assign _T_804 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@174048.4]
  assign _T_815 = _T_813 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174059.4]
  assign _T_816 = _T_813 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174060.4]
  assign _T_829 = ~_T_816; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@174076.4]
  assign _T_830 = io_in_a_valid & _T_829; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@174077.4]
  assign _T_847 = io_in_a_bits_address == _T_828; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@174111.6]
  assign _T_849 = _T_847 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174113.6]
  assign _T_850 = ~_T_849; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174114.6]
  assign _T_852 = _T_804 & _T_816; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@174121.4]
  assign _T_855 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@174131.4]
  assign _T_857 = ~_T_855[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@174133.4]
  assign _T_863 = _T_861 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174139.4]
  assign _T_864 = _T_861 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174140.4]
  assign _T_878 = ~_T_864; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@174157.4]
  assign _T_879 = io_in_d_valid & _T_878; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@174158.4]
  assign _T_880 = io_in_d_bits_opcode == _T_872; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@174160.6]
  assign _T_882 = _T_880 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174162.6]
  assign _T_883 = ~_T_882; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174163.6]
  assign _T_884 = io_in_d_bits_param == _T_873; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@174168.6]
  assign _T_886 = _T_884 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174170.6]
  assign _T_887 = ~_T_886; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174171.6]
  assign _T_888 = io_in_d_bits_size == _T_874; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@174176.6]
  assign _T_890 = _T_888 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174178.6]
  assign _T_891 = ~_T_890; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174179.6]
  assign _T_896 = io_in_d_bits_sink == _T_876; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@174192.6]
  assign _T_898 = _T_896 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174194.6]
  assign _T_899 = ~_T_898; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174195.6]
  assign _T_900 = io_in_d_bits_denied == _T_877; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@174200.6]
  assign _T_902 = _T_900 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174202.6]
  assign _T_903 = ~_T_902; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174203.6]
  assign _T_905 = io_in_d_valid & _T_864; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@174210.4]
  assign _T_917 = _T_915 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174233.4]
  assign a_first = _T_915 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174234.4]
  assign _T_935 = _T_933 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@174255.4]
  assign d_first = _T_933 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@174256.4]
  assign _T_948 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@174280.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@174281.4]
  assign _T_949 = _GEN_56 & _T_948; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@174281.4]
  assign _T_950 = {{1'd0}, _T_949[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@174282.4]
  assign _T_956 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@174291.4]
  assign _GEN_58 = {{8'd0}, inflight_sizes}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@174292.4]
  assign _T_957 = _GEN_58 & _T_956; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@174292.4]
  assign _T_958 = {{1'd0}, _T_957[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@174293.4]
  assign _T_962 = _T_804 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@174318.4]
  assign a_opcodes_set_interm = _T_962 ? 4'h9 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  assign _T_970 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@174330.6]
  assign a_sizes_set_interm = _T_962 ? 5'hd : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  assign _T_972 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@174333.6]
  assign _T_975 = ~inflight; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@174337.6]
  assign _T_977 = _T_975 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174339.6]
  assign _T_978 = ~_T_977; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174340.6]
  assign _GEN_15 = _T_962 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  assign _GEN_18 = _T_962 ? _T_970 : 19'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  assign _GEN_19 = _T_962 ? _T_972 : 20'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@174320.4]
  assign _T_981 = io_in_d_valid & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@174354.4]
  assign _T_983 = ~_T_660; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@174356.4]
  assign _T_984 = _T_981 & _T_983; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@174357.4]
  assign _T_991 = {{15'd0}, _T_948}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@174366.6]
  assign _T_997 = {{15'd0}, _T_956}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@174373.6]
  assign _GEN_20 = _T_984 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  assign _GEN_21 = _T_984 ? _T_991 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  assign _GEN_22 = _T_984 ? _T_997 : 31'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@174358.4]
  assign _T_1006 = 4'h6 == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@174385.6]
  assign _T_1007 = io_in_a_valid & _T_1006; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@174386.6]
  assign _T_1008 = _T_1007 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@174387.6]
  assign _T_1009 = inflight | _T_1008; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@174388.6]
  assign _T_1011 = _T_1009 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174390.6]
  assign _T_1012 = ~_T_1011; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174391.6]
  assign a_opcode_lookup = _T_950[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174273.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174274.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@174283.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _T_1014 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@174397.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  assign _T_1016 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@174399.6]
  assign _T_1017 = _T_1014 | _T_1016; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@174400.6]
  assign _T_1020 = _T_754 | _T_754; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@174403.6]
  assign _T_1021 = io_in_a_valid & _T_1020; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@174404.6]
  assign _T_1022 = _T_1017 | _T_1021; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@174405.6]
  assign _T_1024 = _T_1022 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174407.6]
  assign _T_1025 = ~_T_1024; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174408.6]
  assign a_size_lookup = _T_958[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174284.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174285.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@174294.4]
  assign _GEN_60 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@174413.6]
  assign _T_1026 = _GEN_60 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@174413.6]
  assign _T_1029 = _T_1026 | _T_1007; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@174416.6]
  assign _T_1031 = _T_1029 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174418.6]
  assign _T_1032 = ~_T_1031; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174419.6]
  assign _T_1034 = _T_981 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@174426.4]
  assign _T_1035 = _T_1034 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@174427.4]
  assign _T_1039 = _T_1035 & _T_983; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@174431.4]
  assign _T_1043 = io_in_a_ready | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174436.6]
  assign _T_1044 = ~_T_1043; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174437.6]
  assign a_set = _GEN_15[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174267.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174268.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@174322.6]
  assign d_clr = _GEN_20[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174346.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174347.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@174360.6]
  assign _T_1045 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@174443.4]
  assign _T_1046 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@174444.4]
  assign _T_1047 = ~_T_1046; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  assign _T_1048 = _T_1045 | _T_1047; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@174446.4]
  assign _T_1050 = _T_1048 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174448.4]
  assign _T_1051 = ~_T_1050; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174449.4]
  assign _T_1052 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@174454.4]
  assign _T_1053 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@174455.4]
  assign _T_1054 = _T_1052 & _T_1053; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@174456.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174269.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174270.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@174331.6]
  assign _T_1055 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@174458.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174348.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174349.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@174367.6]
  assign _T_1056 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@174459.4]
  assign _T_1057 = _T_1055 & _T_1056; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@174460.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174271.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174272.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@174334.6]
  assign _T_1058 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@174462.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174350.4 :freechips.rocketchip.system.DefaultRV32Config.fir@174351.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@174374.6]
  assign _T_1059 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  assign _T_1060 = _T_1058 & _T_1059; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@174464.4]
  assign _T_1062 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@174469.4]
  assign _T_1063 = ~_T_1062; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@174470.4]
  assign _T_1064 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@174471.4]
  assign _T_1065 = _T_1063 | _T_1064; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@174472.4]
  assign _T_1066 = _T_1061 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@174473.4]
  assign _T_1067 = _T_1065 | _T_1066; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@174474.4]
  assign _T_1069 = _T_1067 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174476.4]
  assign _T_1070 = ~_T_1069; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174477.4]
  assign _T_1072 = _T_1061 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@174483.4]
  assign _T_1075 = _T_804 | io_in_d_valid; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@174487.4]
  assign _GEN_61 = io_in_d_valid & _T_660; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173766.10]
  assign _GEN_69 = io_in_d_valid & _T_680; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173815.10]
  assign _GEN_77 = io_in_d_valid & _T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173873.10]
  assign _GEN_85 = io_in_d_valid & _T_737; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173925.10]
  assign _GEN_89 = io_in_d_valid & _T_754; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173960.10]
  assign _GEN_93 = io_in_d_valid & _T_772; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173996.10]
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
  _T_813 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_828 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_861 = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  _T_872 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_873 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  _T_874 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  _T_876 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  _T_877 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  inflight = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  inflight_opcodes = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  inflight_sizes = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  _T_915 = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  _T_933 = _RAND_12[9:0];
  _RAND_13 = {1{`RANDOM}};
  _T_1061 = _RAND_13[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_813 <= 10'h0;
    end else if (_T_804) begin
      if (_T_816) begin
        _T_813 <= 10'h0;
      end else begin
        _T_813 <= _T_815;
      end
    end
    if (_T_852) begin
      _T_828 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_861 <= 10'h0;
    end else if (io_in_d_valid) begin
      if (_T_864) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_861 <= _T_857[11:2];
        end else begin
          _T_861 <= 10'h0;
        end
      end else begin
        _T_861 <= _T_863;
      end
    end
    if (_T_905) begin
      _T_872 <= io_in_d_bits_opcode;
    end
    if (_T_905) begin
      _T_873 <= io_in_d_bits_param;
    end
    if (_T_905) begin
      _T_874 <= io_in_d_bits_size;
    end
    if (_T_905) begin
      _T_876 <= io_in_d_bits_sink;
    end
    if (_T_905) begin
      _T_877 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_1054;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_1057;
    end
    if (reset) begin
      inflight_sizes <= 8'h0;
    end else begin
      inflight_sizes <= _T_1060;
    end
    if (reset) begin
      _T_915 <= 10'h0;
    end else if (_T_804) begin
      if (a_first) begin
        _T_915 <= 10'h0;
      end else begin
        _T_915 <= _T_917;
      end
    end
    if (reset) begin
      _T_933 <= 10'h0;
    end else if (io_in_d_valid) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_933 <= _T_857[11:2];
        end else begin
          _T_933 <= 10'h0;
        end
      end else begin
        _T_933 <= _T_935;
      end
    end
    if (reset) begin
      _T_1061 <= 32'h0;
    end else if (_T_1075) begin
      _T_1061 <= 32'h0;
    end else begin
      _T_1061 <= _T_1072;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_a_valid & _T_273) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173220.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_a_valid & _T_273) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173221.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_a_valid & _T_121) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173234.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_a_valid & _T_121) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@173235.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_656) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173744.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_656) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173745.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_667) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_667) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_671) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_671) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_675) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173782.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_675) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173783.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_679) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173790.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_679) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173791.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_667) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173815.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_667) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173816.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_694) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173823.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_694) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173824.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_698) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173831.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_698) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173832.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_675) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173839.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_675) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173840.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_667) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173873.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_667) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173874.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_694) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173881.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_694) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173882.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_698) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173889.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_698) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173890.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_731) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173898.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_731) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173899.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_671) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173925.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_671) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173926.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_675) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173933.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_675) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173934.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_671) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173960.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_89 & _T_671) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173961.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_731) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173969.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_89 & _T_731) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173970.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_93 & _T_671) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173996.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_93 & _T_671) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@173997.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_93 & _T_675) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174004.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_93 & _T_675) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174005.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_830 & _T_850) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174116.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_830 & _T_850) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174117.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_879 & _T_883) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174165.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_879 & _T_883) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174166.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_879 & _T_887) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174173.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_879 & _T_887) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174174.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_879 & _T_891) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174181.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_879 & _T_891) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174182.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_879 & _T_899) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174197.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_879 & _T_899) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174198.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_879 & _T_903) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174205.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_879 & _T_903) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174206.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_962 & _T_978) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174342.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_962 & _T_978) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174343.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_984 & _T_1012) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174393.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_984 & _T_1012) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174394.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_984 & _T_1025) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174410.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_984 & _T_1025) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174411.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_984 & _T_1032) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174421.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_984 & _T_1032) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174422.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1039 & _T_1044) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174439.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1039 & _T_1044) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174440.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1051) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174451.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1051) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@174452.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1070) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174479.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1070) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@174480.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
