module TLFIFOFixer_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37164.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37165.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37166.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [3:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [3:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [1:0]  auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [3:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [3:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37167.4]
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
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [3:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [3:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
  wire [32:0] _T_3; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37209.4]
  wire [32:0] _T_10; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37216.4]
  wire  _T_11; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37217.4]
  wire  _T_21; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@37228.4]
  wire  _T_73; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@37309.4]
  reg [9:0] _T_31; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@37238.4]
  wire  _T_34; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@37241.4]
  wire  _T_83; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@37322.4]
  reg  _T_64_0; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  reg  _T_64_1; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_84; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37323.4]
  reg  _T_64_2; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_85; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37324.4]
  reg  _T_64_3; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_86; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37325.4]
  reg  _T_64_4; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_87; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37326.4]
  reg  _T_64_5; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_88; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37327.4]
  reg  _T_64_6; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_89; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37328.4]
  reg  _T_64_7; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_90; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37329.4]
  wire  _T_91; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@37330.4]
  reg  _T_82; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@37318.4]
  wire  _T_92; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@37331.4]
  wire  _T_93; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@37332.4]
  wire  _T_94; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@37333.4]
  wire  _T_108; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@37350.4]
  reg  _T_64_8; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  reg  _T_64_9; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_109; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37351.4]
  reg  _T_64_10; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_110; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37352.4]
  reg  _T_64_11; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_111; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37353.4]
  reg  _T_64_12; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_112; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37354.4]
  reg  _T_64_13; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_113; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37355.4]
  reg  _T_64_14; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_114; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37356.4]
  reg  _T_64_15; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@37294.4]
  wire  _T_115; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37357.4]
  wire  _T_116; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@37358.4]
  reg  _T_107; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@37346.4]
  wire  _T_117; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@37359.4]
  wire  _T_118; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@37360.4]
  wire  _T_119; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@37361.4]
  wire  _T_121; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@37363.4]
  wire  _T_125; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@37370.4]
  wire  _T_127; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@37372.4]
  wire  _T_22; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@37229.4]
  wire [26:0] _T_24; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37231.4]
  wire [11:0] _T_26; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37233.4]
  wire  _T_29; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@37236.4]
  wire [9:0] _T_33; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@37240.4]
  wire  _T_42; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@37252.4]
  wire [26:0] _T_44; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37254.4]
  wire [11:0] _T_46; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37256.4]
  reg [9:0] _T_50; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@37260.4]
  wire [9:0] _T_52; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@37262.4]
  wire  _T_53; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@37263.4]
  wire  _T_61; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@37274.4]
  wire  _T_62; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@37275.4]
  wire  _T_66; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@37296.4]
  wire  _GEN_70; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_2; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_71; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_3; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_72; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_4; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_73; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_5; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_74; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_6; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_75; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_7; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_76; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_8; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_77; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_9; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_78; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_10; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_79; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_11; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_80; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_12; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_81; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_13; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_82; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_14; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_83; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_15; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_84; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_16; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_85; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _GEN_17; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  wire  _T_69; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@37302.4]
  wire  _T_79; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@37315.4]
  wire  _T_104; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@37343.4]
  TLMonitor_13 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@37174.4]
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
  assign _T_3 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@37209.4]
  assign _T_10 = $signed(_T_3) & 33'sh80000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@37216.4]
  assign _T_11 = $signed(_T_10) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@37217.4]
  assign _T_21 = ~_T_11; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@37228.4]
  assign _T_73 = ~auto_in_a_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@37309.4]
  assign _T_34 = _T_31 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@37241.4]
  assign _T_83 = _T_73 & _T_34; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@37322.4]
  assign _T_84 = _T_64_0 | _T_64_1; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37323.4]
  assign _T_85 = _T_84 | _T_64_2; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37324.4]
  assign _T_86 = _T_85 | _T_64_3; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37325.4]
  assign _T_87 = _T_86 | _T_64_4; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37326.4]
  assign _T_88 = _T_87 | _T_64_5; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37327.4]
  assign _T_89 = _T_88 | _T_64_6; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37328.4]
  assign _T_90 = _T_89 | _T_64_7; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37329.4]
  assign _T_91 = _T_83 & _T_90; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@37330.4]
  assign _T_92 = _T_82 != _T_11; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@37331.4]
  assign _T_93 = _T_21 | _T_92; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@37332.4]
  assign _T_94 = _T_91 & _T_93; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@37333.4]
  assign _T_108 = auto_in_a_bits_source[3] & _T_34; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@37350.4]
  assign _T_109 = _T_64_8 | _T_64_9; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37351.4]
  assign _T_110 = _T_109 | _T_64_10; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37352.4]
  assign _T_111 = _T_110 | _T_64_11; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37353.4]
  assign _T_112 = _T_111 | _T_64_12; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37354.4]
  assign _T_113 = _T_112 | _T_64_13; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37355.4]
  assign _T_114 = _T_113 | _T_64_14; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37356.4]
  assign _T_115 = _T_114 | _T_64_15; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@37357.4]
  assign _T_116 = _T_108 & _T_115; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@37358.4]
  assign _T_117 = _T_107 != _T_11; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@37359.4]
  assign _T_118 = _T_21 | _T_117; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@37360.4]
  assign _T_119 = _T_116 & _T_118; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@37361.4]
  assign _T_121 = _T_94 | _T_119; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@37363.4]
  assign _T_125 = ~_T_121; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@37370.4]
  assign _T_127 = auto_out_a_ready & _T_125; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@37372.4]
  assign _T_22 = _T_127 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@37229.4]
  assign _T_24 = 27'hfff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37231.4]
  assign _T_26 = ~_T_24[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37233.4]
  assign _T_29 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@37236.4]
  assign _T_33 = _T_31 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@37240.4]
  assign _T_42 = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@37252.4]
  assign _T_44 = 27'hfff << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@37254.4]
  assign _T_46 = ~_T_44[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@37256.4]
  assign _T_52 = _T_50 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@37262.4]
  assign _T_53 = _T_50 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@37263.4]
  assign _T_61 = auto_out_d_bits_opcode != 3'h6; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@37274.4]
  assign _T_62 = _T_53 & _T_61; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@37275.4]
  assign _T_66 = _T_34 & _T_22; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@37296.4]
  assign _GEN_70 = 4'h0 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_2 = _GEN_70 | _T_64_0; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_71 = 4'h1 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_3 = _GEN_71 | _T_64_1; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_72 = 4'h2 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_4 = _GEN_72 | _T_64_2; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_73 = 4'h3 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_5 = _GEN_73 | _T_64_3; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_74 = 4'h4 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_6 = _GEN_74 | _T_64_4; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_75 = 4'h5 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_7 = _GEN_75 | _T_64_5; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_76 = 4'h6 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_8 = _GEN_76 | _T_64_6; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_77 = 4'h7 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_9 = _GEN_77 | _T_64_7; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_78 = 4'h8 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_10 = _GEN_78 | _T_64_8; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_79 = 4'h9 == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_11 = _GEN_79 | _T_64_9; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_80 = 4'ha == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_12 = _GEN_80 | _T_64_10; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_81 = 4'hb == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_13 = _GEN_81 | _T_64_11; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_82 = 4'hc == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_14 = _GEN_82 | _T_64_12; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_83 = 4'hd == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_15 = _GEN_83 | _T_64_13; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_84 = 4'he == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_16 = _GEN_84 | _T_64_14; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_85 = 4'hf == auto_in_a_bits_source; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _GEN_17 = _GEN_85 | _T_64_15; // @[FIFOFixer.scala 74:64:freechips.rocketchip.system.DefaultRV32Config.fir@37299.6]
  assign _T_69 = _T_62 & _T_42; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@37302.4]
  assign _T_79 = _T_22 & _T_73; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@37315.4]
  assign _T_104 = _T_22 & auto_in_a_bits_source[3]; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@37343.4]
  assign auto_in_a_ready = auto_out_a_ready & _T_125; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_valid = auto_out_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@37207.4]
  assign auto_out_a_valid = auto_in_a_valid & _T_125; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign auto_out_d_ready = auto_in_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@37206.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37175.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@37176.4]
  assign TLMonitor_io_in_a_ready = auto_out_a_ready & _T_125; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37203.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37202.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37201.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37200.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37199.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37198.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37197.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37189.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37187.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37186.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37185.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37184.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37183.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37182.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37181.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37180.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37179.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@37177.4]
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
  _T_31 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_64_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_64_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_64_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_64_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_64_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_64_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_64_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_64_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_82 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_64_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_64_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_64_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_64_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_64_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_64_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  _T_64_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  _T_64_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  _T_107 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  _T_50 = _RAND_19[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_31 <= 10'h0;
    end else if (_T_22) begin
      if (_T_34) begin
        if (_T_29) begin
          _T_31 <= _T_26[11:2];
        end else begin
          _T_31 <= 10'h0;
        end
      end else begin
        _T_31 <= _T_33;
      end
    end
    if (reset) begin
      _T_64_0 <= 1'h0;
    end else if (_T_69) begin
      if (4'h0 == auto_out_d_bits_source) begin
        _T_64_0 <= 1'h0;
      end else if (_T_66) begin
        _T_64_0 <= _GEN_2;
      end
    end else if (_T_66) begin
      _T_64_0 <= _GEN_2;
    end
    if (reset) begin
      _T_64_1 <= 1'h0;
    end else if (_T_69) begin
      if (4'h1 == auto_out_d_bits_source) begin
        _T_64_1 <= 1'h0;
      end else if (_T_66) begin
        _T_64_1 <= _GEN_3;
      end
    end else if (_T_66) begin
      _T_64_1 <= _GEN_3;
    end
    if (reset) begin
      _T_64_2 <= 1'h0;
    end else if (_T_69) begin
      if (4'h2 == auto_out_d_bits_source) begin
        _T_64_2 <= 1'h0;
      end else if (_T_66) begin
        _T_64_2 <= _GEN_4;
      end
    end else if (_T_66) begin
      _T_64_2 <= _GEN_4;
    end
    if (reset) begin
      _T_64_3 <= 1'h0;
    end else if (_T_69) begin
      if (4'h3 == auto_out_d_bits_source) begin
        _T_64_3 <= 1'h0;
      end else if (_T_66) begin
        _T_64_3 <= _GEN_5;
      end
    end else if (_T_66) begin
      _T_64_3 <= _GEN_5;
    end
    if (reset) begin
      _T_64_4 <= 1'h0;
    end else if (_T_69) begin
      if (4'h4 == auto_out_d_bits_source) begin
        _T_64_4 <= 1'h0;
      end else if (_T_66) begin
        _T_64_4 <= _GEN_6;
      end
    end else if (_T_66) begin
      _T_64_4 <= _GEN_6;
    end
    if (reset) begin
      _T_64_5 <= 1'h0;
    end else if (_T_69) begin
      if (4'h5 == auto_out_d_bits_source) begin
        _T_64_5 <= 1'h0;
      end else if (_T_66) begin
        _T_64_5 <= _GEN_7;
      end
    end else if (_T_66) begin
      _T_64_5 <= _GEN_7;
    end
    if (reset) begin
      _T_64_6 <= 1'h0;
    end else if (_T_69) begin
      if (4'h6 == auto_out_d_bits_source) begin
        _T_64_6 <= 1'h0;
      end else if (_T_66) begin
        _T_64_6 <= _GEN_8;
      end
    end else if (_T_66) begin
      _T_64_6 <= _GEN_8;
    end
    if (reset) begin
      _T_64_7 <= 1'h0;
    end else if (_T_69) begin
      if (4'h7 == auto_out_d_bits_source) begin
        _T_64_7 <= 1'h0;
      end else if (_T_66) begin
        _T_64_7 <= _GEN_9;
      end
    end else if (_T_66) begin
      _T_64_7 <= _GEN_9;
    end
    if (_T_79) begin
      _T_82 <= _T_11;
    end
    if (reset) begin
      _T_64_8 <= 1'h0;
    end else if (_T_69) begin
      if (4'h8 == auto_out_d_bits_source) begin
        _T_64_8 <= 1'h0;
      end else if (_T_66) begin
        _T_64_8 <= _GEN_10;
      end
    end else if (_T_66) begin
      _T_64_8 <= _GEN_10;
    end
    if (reset) begin
      _T_64_9 <= 1'h0;
    end else if (_T_69) begin
      if (4'h9 == auto_out_d_bits_source) begin
        _T_64_9 <= 1'h0;
      end else if (_T_66) begin
        _T_64_9 <= _GEN_11;
      end
    end else if (_T_66) begin
      _T_64_9 <= _GEN_11;
    end
    if (reset) begin
      _T_64_10 <= 1'h0;
    end else if (_T_69) begin
      if (4'ha == auto_out_d_bits_source) begin
        _T_64_10 <= 1'h0;
      end else if (_T_66) begin
        _T_64_10 <= _GEN_12;
      end
    end else if (_T_66) begin
      _T_64_10 <= _GEN_12;
    end
    if (reset) begin
      _T_64_11 <= 1'h0;
    end else if (_T_69) begin
      if (4'hb == auto_out_d_bits_source) begin
        _T_64_11 <= 1'h0;
      end else if (_T_66) begin
        _T_64_11 <= _GEN_13;
      end
    end else if (_T_66) begin
      _T_64_11 <= _GEN_13;
    end
    if (reset) begin
      _T_64_12 <= 1'h0;
    end else if (_T_69) begin
      if (4'hc == auto_out_d_bits_source) begin
        _T_64_12 <= 1'h0;
      end else if (_T_66) begin
        _T_64_12 <= _GEN_14;
      end
    end else if (_T_66) begin
      _T_64_12 <= _GEN_14;
    end
    if (reset) begin
      _T_64_13 <= 1'h0;
    end else if (_T_69) begin
      if (4'hd == auto_out_d_bits_source) begin
        _T_64_13 <= 1'h0;
      end else if (_T_66) begin
        _T_64_13 <= _GEN_15;
      end
    end else if (_T_66) begin
      _T_64_13 <= _GEN_15;
    end
    if (reset) begin
      _T_64_14 <= 1'h0;
    end else if (_T_69) begin
      if (4'he == auto_out_d_bits_source) begin
        _T_64_14 <= 1'h0;
      end else if (_T_66) begin
        _T_64_14 <= _GEN_16;
      end
    end else if (_T_66) begin
      _T_64_14 <= _GEN_16;
    end
    if (reset) begin
      _T_64_15 <= 1'h0;
    end else if (_T_69) begin
      if (4'hf == auto_out_d_bits_source) begin
        _T_64_15 <= 1'h0;
      end else if (_T_66) begin
        _T_64_15 <= _GEN_17;
      end
    end else if (_T_66) begin
      _T_64_15 <= _GEN_17;
    end
    if (_T_104) begin
      _T_107 <= _T_11;
    end
    if (reset) begin
      _T_50 <= 10'h0;
    end else if (_T_42) begin
      if (_T_53) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_50 <= _T_46[11:2];
        end else begin
          _T_50 <= 10'h0;
        end
      end else begin
        _T_50 <= _T_52;
      end
    end
  end
endmodule
