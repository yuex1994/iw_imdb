module TLFIFOFixer_3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43558.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43559.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43560.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [27:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [4:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [27:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [4:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43561.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [27:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
  wire [28:0] _T_3; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43596.4]
  wire [27:0] _T_7; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43600.4]
  wire [28:0] _T_8; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43601.4]
  wire [28:0] _T_10; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43603.4]
  wire  _T_11; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43604.4]
  wire [27:0] _T_12; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43605.4]
  wire [28:0] _T_13; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43606.4]
  wire [28:0] _T_15; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43608.4]
  wire  _T_16; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43609.4]
  wire [27:0] _T_17; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43610.4]
  wire [28:0] _T_18; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43611.4]
  wire [28:0] _T_20; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43613.4]
  wire  _T_21; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43614.4]
  wire [28:0] _T_25; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43618.4]
  wire  _T_26; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43619.4]
  wire [27:0] _T_27; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43620.4]
  wire [28:0] _T_28; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43621.4]
  wire [28:0] _T_30; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43623.4]
  wire  _T_31; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43624.4]
  wire [1:0] _T_33; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43626.4]
  wire [1:0] _T_34; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43627.4]
  wire [2:0] _T_35; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43628.4]
  wire [2:0] _T_36; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43629.4]
  wire [1:0] _GEN_82; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43630.4]
  wire [1:0] _T_37; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43630.4]
  wire [1:0] _T_38; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43631.4]
  wire [2:0] _GEN_83; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43632.4]
  wire [2:0] _T_39; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43632.4]
  wire [2:0] _T_40; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43633.4]
  wire  _T_42; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@43636.4]
  wire  _T_94; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@43720.4]
  reg [9:0] _T_52; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@43646.4]
  wire  _T_55; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@43649.4]
  wire  _T_104; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@43733.4]
  reg  _T_85_0; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  reg  _T_85_1; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_105; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43734.4]
  reg  _T_85_2; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_106; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43735.4]
  reg  _T_85_3; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_107; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43736.4]
  reg  _T_85_4; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_108; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43737.4]
  reg  _T_85_5; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_109; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43738.4]
  reg  _T_85_6; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_110; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43739.4]
  reg  _T_85_7; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_111; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43740.4]
  wire  _T_112; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@43741.4]
  reg [2:0] _T_103; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@43729.4]
  wire  _T_113; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@43742.4]
  wire  _T_114; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@43743.4]
  wire  _T_115; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@43744.4]
  wire  _T_119; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@43748.4]
  wire  _T_129; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@43761.4]
  reg  _T_85_8; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  reg  _T_85_9; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_130; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43762.4]
  reg  _T_85_10; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_131; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43763.4]
  reg  _T_85_11; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_132; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43764.4]
  reg  _T_85_12; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_133; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43765.4]
  reg  _T_85_13; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_134; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43766.4]
  reg  _T_85_14; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_135; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43767.4]
  reg  _T_85_15; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@43705.4]
  wire  _T_136; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43768.4]
  wire  _T_137; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@43769.4]
  reg [2:0] _T_128; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@43757.4]
  wire  _T_138; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@43770.4]
  wire  _T_139; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@43771.4]
  wire  _T_140; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@43772.4]
  wire  _T_142; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@43774.4]
  wire  _T_146; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@43781.4]
  wire  _T_148; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@43783.4]
  wire  _T_43; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@43637.4]
  wire [26:0] _T_45; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@43639.4]
  wire [11:0] _T_47; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@43641.4]
  wire  _T_50; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@43644.4]
  wire [9:0] _T_54; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@43648.4]
  wire  _T_63; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@43660.4]
  wire [26:0] _T_65; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@43662.4]
  wire [11:0] _T_67; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@43664.4]
  reg [9:0] _T_71; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@43668.4]
  wire [9:0] _T_73; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@43670.4]
  wire  _T_74; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@43671.4]
  wire  _T_82; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@43682.4]
  wire  _T_83; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@43683.4]
  wire  _T_87; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@43707.4]
  wire  _GEN_84; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_2; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_85; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_3; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_86; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_4; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_87; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_5; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_88; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_6; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_89; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_7; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_90; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_8; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_91; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_9; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_92; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_10; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_93; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_11; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_94; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_12; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_95; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_13; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_96; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_14; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_97; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_15; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_98; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_16; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_99; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _GEN_17; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  wire  _T_90; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@43713.4]
  wire  _T_100; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@43726.4]
  wire  _T_125; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@43754.4]
  TLMonitor_15 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@43568.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_3 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43596.4]
  assign _T_7 = auto_in_a_bits_address ^ 28'h2000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43600.4]
  assign _T_8 = {1'b0,$signed(_T_7)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43601.4]
  assign _T_10 = $signed(_T_8) & 29'sha012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43603.4]
  assign _T_11 = $signed(_T_10) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43604.4]
  assign _T_12 = auto_in_a_bits_address ^ 28'h8000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43605.4]
  assign _T_13 = {1'b0,$signed(_T_12)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43606.4]
  assign _T_15 = $signed(_T_13) & 29'sh8000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43608.4]
  assign _T_16 = $signed(_T_15) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43609.4]
  assign _T_17 = auto_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43610.4]
  assign _T_18 = {1'b0,$signed(_T_17)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43611.4]
  assign _T_20 = $signed(_T_18) & 29'sha010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43613.4]
  assign _T_21 = $signed(_T_20) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43614.4]
  assign _T_25 = $signed(_T_3) & 29'sha012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43618.4]
  assign _T_26 = $signed(_T_25) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43619.4]
  assign _T_27 = auto_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@43620.4]
  assign _T_28 = {1'b0,$signed(_T_27)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@43621.4]
  assign _T_30 = $signed(_T_28) & 29'sha010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@43623.4]
  assign _T_31 = $signed(_T_30) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@43624.4]
  assign _T_33 = _T_16 ? 2'h2 : 2'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43626.4]
  assign _T_34 = _T_21 ? 2'h3 : 2'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43627.4]
  assign _T_35 = _T_26 ? 3'h4 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43628.4]
  assign _T_36 = _T_31 ? 3'h5 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43629.4]
  assign _GEN_82 = {{1'd0}, _T_11}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43630.4]
  assign _T_37 = _GEN_82 | _T_33; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43630.4]
  assign _T_38 = _T_37 | _T_34; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43631.4]
  assign _GEN_83 = {{1'd0}, _T_38}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43632.4]
  assign _T_39 = _GEN_83 | _T_35; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43632.4]
  assign _T_40 = _T_39 | _T_36; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@43633.4]
  assign _T_42 = _T_40 == 3'h0; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@43636.4]
  assign _T_94 = auto_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@43720.4]
  assign _T_55 = _T_52 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@43649.4]
  assign _T_104 = _T_94 & _T_55; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@43733.4]
  assign _T_105 = _T_85_0 | _T_85_1; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43734.4]
  assign _T_106 = _T_105 | _T_85_2; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43735.4]
  assign _T_107 = _T_106 | _T_85_3; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43736.4]
  assign _T_108 = _T_107 | _T_85_4; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43737.4]
  assign _T_109 = _T_108 | _T_85_5; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43738.4]
  assign _T_110 = _T_109 | _T_85_6; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43739.4]
  assign _T_111 = _T_110 | _T_85_7; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43740.4]
  assign _T_112 = _T_104 & _T_111; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@43741.4]
  assign _T_113 = _T_103 != _T_40; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@43742.4]
  assign _T_114 = _T_42 | _T_113; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@43743.4]
  assign _T_115 = _T_112 & _T_114; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@43744.4]
  assign _T_119 = auto_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@43748.4]
  assign _T_129 = _T_119 & _T_55; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@43761.4]
  assign _T_130 = _T_85_8 | _T_85_9; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43762.4]
  assign _T_131 = _T_130 | _T_85_10; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43763.4]
  assign _T_132 = _T_131 | _T_85_11; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43764.4]
  assign _T_133 = _T_132 | _T_85_12; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43765.4]
  assign _T_134 = _T_133 | _T_85_13; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43766.4]
  assign _T_135 = _T_134 | _T_85_14; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43767.4]
  assign _T_136 = _T_135 | _T_85_15; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@43768.4]
  assign _T_137 = _T_129 & _T_136; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@43769.4]
  assign _T_138 = _T_128 != _T_40; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@43770.4]
  assign _T_139 = _T_42 | _T_138; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@43771.4]
  assign _T_140 = _T_137 & _T_139; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@43772.4]
  assign _T_142 = _T_115 | _T_140; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@43774.4]
  assign _T_146 = ~_T_142; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@43781.4]
  assign _T_148 = auto_out_a_ready & _T_146; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@43783.4]
  assign _T_43 = _T_148 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@43637.4]
  assign _T_45 = 27'hfff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@43639.4]
  assign _T_47 = ~_T_45[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@43641.4]
  assign _T_50 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@43644.4]
  assign _T_54 = _T_52 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@43648.4]
  assign _T_63 = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@43660.4]
  assign _T_65 = 27'hfff << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@43662.4]
  assign _T_67 = ~_T_65[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@43664.4]
  assign _T_73 = _T_71 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@43670.4]
  assign _T_74 = _T_71 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@43671.4]
  assign _T_82 = auto_out_d_bits_opcode != 3'h6; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@43682.4]
  assign _T_83 = _T_74 & _T_82; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@43683.4]
  assign _T_87 = _T_55 & _T_43; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@43707.4]
  assign _GEN_84 = 5'h0 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_2 = _GEN_84 | _T_85_0; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_85 = 5'h1 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_3 = _GEN_85 | _T_85_1; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_86 = 5'h2 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_4 = _GEN_86 | _T_85_2; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_87 = 5'h3 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_5 = _GEN_87 | _T_85_3; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_88 = 5'h4 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_6 = _GEN_88 | _T_85_4; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_89 = 5'h5 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_7 = _GEN_89 | _T_85_5; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_90 = 5'h6 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_8 = _GEN_90 | _T_85_6; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_91 = 5'h7 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_9 = _GEN_91 | _T_85_7; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_92 = 5'h8 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_10 = _GEN_92 | _T_85_8; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_93 = 5'h9 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_11 = _GEN_93 | _T_85_9; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_94 = 5'ha == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_12 = _GEN_94 | _T_85_10; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_95 = 5'hb == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_13 = _GEN_95 | _T_85_11; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_96 = 5'hc == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_14 = _GEN_96 | _T_85_12; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_97 = 5'hd == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_15 = _GEN_97 | _T_85_13; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_98 = 5'he == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_16 = _GEN_98 | _T_85_14; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_99 = 5'hf == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _GEN_17 = _GEN_99 | _T_85_15; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@43710.6]
  assign _T_90 = _T_83 & _T_63; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@43713.4]
  assign _T_100 = _T_43 & _T_94; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@43726.4]
  assign _T_125 = _T_43 & _T_119; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@43754.4]
  assign auto_in_a_ready = auto_out_a_ready & _T_146; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_valid = auto_out_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@43594.4]
  assign auto_out_a_valid = auto_in_a_valid & _T_146; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign auto_out_d_ready = auto_in_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@43593.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43569.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@43570.4]
  assign TLMonitor_io_in_a_ready = auto_out_a_ready & _T_146; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43590.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43589.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43588.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43587.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43586.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43585.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43584.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43583.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43581.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43580.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43579.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43578.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43577.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43576.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43575.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43574.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43573.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@43571.4]
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
  _T_52 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_85_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_85_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_85_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_85_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_85_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_85_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_85_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_85_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_103 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  _T_85_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_85_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_85_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_85_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_85_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_85_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  _T_85_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  _T_85_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  _T_128 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  _T_71 = _RAND_19[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_52 <= 10'h0;
    end else if (_T_43) begin
      if (_T_55) begin
        if (_T_50) begin
          _T_52 <= _T_47[11:2];
        end else begin
          _T_52 <= 10'h0;
        end
      end else begin
        _T_52 <= _T_54;
      end
    end
    if (reset) begin
      _T_85_0 <= 1'h0;
    end else if (_T_90) begin
      if (5'h0 == auto_out_d_bits_source) begin
        _T_85_0 <= 1'h0;
      end else if (_T_87) begin
        _T_85_0 <= _GEN_2;
      end
    end else if (_T_87) begin
      _T_85_0 <= _GEN_2;
    end
    if (reset) begin
      _T_85_1 <= 1'h0;
    end else if (_T_90) begin
      if (5'h1 == auto_out_d_bits_source) begin
        _T_85_1 <= 1'h0;
      end else if (_T_87) begin
        _T_85_1 <= _GEN_3;
      end
    end else if (_T_87) begin
      _T_85_1 <= _GEN_3;
    end
    if (reset) begin
      _T_85_2 <= 1'h0;
    end else if (_T_90) begin
      if (5'h2 == auto_out_d_bits_source) begin
        _T_85_2 <= 1'h0;
      end else if (_T_87) begin
        _T_85_2 <= _GEN_4;
      end
    end else if (_T_87) begin
      _T_85_2 <= _GEN_4;
    end
    if (reset) begin
      _T_85_3 <= 1'h0;
    end else if (_T_90) begin
      if (5'h3 == auto_out_d_bits_source) begin
        _T_85_3 <= 1'h0;
      end else if (_T_87) begin
        _T_85_3 <= _GEN_5;
      end
    end else if (_T_87) begin
      _T_85_3 <= _GEN_5;
    end
    if (reset) begin
      _T_85_4 <= 1'h0;
    end else if (_T_90) begin
      if (5'h4 == auto_out_d_bits_source) begin
        _T_85_4 <= 1'h0;
      end else if (_T_87) begin
        _T_85_4 <= _GEN_6;
      end
    end else if (_T_87) begin
      _T_85_4 <= _GEN_6;
    end
    if (reset) begin
      _T_85_5 <= 1'h0;
    end else if (_T_90) begin
      if (5'h5 == auto_out_d_bits_source) begin
        _T_85_5 <= 1'h0;
      end else if (_T_87) begin
        _T_85_5 <= _GEN_7;
      end
    end else if (_T_87) begin
      _T_85_5 <= _GEN_7;
    end
    if (reset) begin
      _T_85_6 <= 1'h0;
    end else if (_T_90) begin
      if (5'h6 == auto_out_d_bits_source) begin
        _T_85_6 <= 1'h0;
      end else if (_T_87) begin
        _T_85_6 <= _GEN_8;
      end
    end else if (_T_87) begin
      _T_85_6 <= _GEN_8;
    end
    if (reset) begin
      _T_85_7 <= 1'h0;
    end else if (_T_90) begin
      if (5'h7 == auto_out_d_bits_source) begin
        _T_85_7 <= 1'h0;
      end else if (_T_87) begin
        _T_85_7 <= _GEN_9;
      end
    end else if (_T_87) begin
      _T_85_7 <= _GEN_9;
    end
    if (_T_100) begin
      _T_103 <= _T_40;
    end
    if (reset) begin
      _T_85_8 <= 1'h0;
    end else if (_T_90) begin
      if (5'h8 == auto_out_d_bits_source) begin
        _T_85_8 <= 1'h0;
      end else if (_T_87) begin
        _T_85_8 <= _GEN_10;
      end
    end else if (_T_87) begin
      _T_85_8 <= _GEN_10;
    end
    if (reset) begin
      _T_85_9 <= 1'h0;
    end else if (_T_90) begin
      if (5'h9 == auto_out_d_bits_source) begin
        _T_85_9 <= 1'h0;
      end else if (_T_87) begin
        _T_85_9 <= _GEN_11;
      end
    end else if (_T_87) begin
      _T_85_9 <= _GEN_11;
    end
    if (reset) begin
      _T_85_10 <= 1'h0;
    end else if (_T_90) begin
      if (5'ha == auto_out_d_bits_source) begin
        _T_85_10 <= 1'h0;
      end else if (_T_87) begin
        _T_85_10 <= _GEN_12;
      end
    end else if (_T_87) begin
      _T_85_10 <= _GEN_12;
    end
    if (reset) begin
      _T_85_11 <= 1'h0;
    end else if (_T_90) begin
      if (5'hb == auto_out_d_bits_source) begin
        _T_85_11 <= 1'h0;
      end else if (_T_87) begin
        _T_85_11 <= _GEN_13;
      end
    end else if (_T_87) begin
      _T_85_11 <= _GEN_13;
    end
    if (reset) begin
      _T_85_12 <= 1'h0;
    end else if (_T_90) begin
      if (5'hc == auto_out_d_bits_source) begin
        _T_85_12 <= 1'h0;
      end else if (_T_87) begin
        _T_85_12 <= _GEN_14;
      end
    end else if (_T_87) begin
      _T_85_12 <= _GEN_14;
    end
    if (reset) begin
      _T_85_13 <= 1'h0;
    end else if (_T_90) begin
      if (5'hd == auto_out_d_bits_source) begin
        _T_85_13 <= 1'h0;
      end else if (_T_87) begin
        _T_85_13 <= _GEN_15;
      end
    end else if (_T_87) begin
      _T_85_13 <= _GEN_15;
    end
    if (reset) begin
      _T_85_14 <= 1'h0;
    end else if (_T_90) begin
      if (5'he == auto_out_d_bits_source) begin
        _T_85_14 <= 1'h0;
      end else if (_T_87) begin
        _T_85_14 <= _GEN_16;
      end
    end else if (_T_87) begin
      _T_85_14 <= _GEN_16;
    end
    if (reset) begin
      _T_85_15 <= 1'h0;
    end else if (_T_90) begin
      if (5'hf == auto_out_d_bits_source) begin
        _T_85_15 <= 1'h0;
      end else if (_T_87) begin
        _T_85_15 <= _GEN_17;
      end
    end else if (_T_87) begin
      _T_85_15 <= _GEN_17;
    end
    if (_T_125) begin
      _T_128 <= _T_40;
    end
    if (reset) begin
      _T_71 <= 10'h0;
    end else if (_T_63) begin
      if (_T_74) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_71 <= _T_67[11:2];
        end else begin
          _T_71 <= 10'h0;
        end
      end else begin
        _T_71 <= _T_73;
      end
    end
  end
endmodule
