module TLSourceShrinker( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82538.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82539.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82540.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [2:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [6:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [2:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [6:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [2:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [1:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [2:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [1:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82541.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [6:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire [6:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
  reg [6:0] _T_8 [0:3]; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire [6:0] _T_8__T_86_data; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire [1:0] _T_8__T_86_addr; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire [6:0] _T_8__T_91_data; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire [1:0] _T_8__T_91_addr; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire  _T_8__T_91_mask; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  wire  _T_8__T_91_en; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  reg [3:0] _T_9; // @[SourceShrinker.scala 50:32:freechips.rocketchip.system.DefaultRV32Config.fir@82601.4]
  wire [3:0] _T_10; // @[SourceShrinker.scala 51:35:freechips.rocketchip.system.DefaultRV32Config.fir@82602.4]
  wire [4:0] _T_11; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@82603.4]
  wire [3:0] _T_13; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@82605.4]
  wire [5:0] _T_14; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@82606.4]
  wire [3:0] _T_16; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@82608.4]
  wire [4:0] _T_18; // @[SourceShrinker.scala 51:47:freechips.rocketchip.system.DefaultRV32Config.fir@82610.4]
  wire [4:0] _T_19; // @[SourceShrinker.scala 51:26:freechips.rocketchip.system.DefaultRV32Config.fir@82611.4]
  wire [4:0] _GEN_8; // @[SourceShrinker.scala 51:53:freechips.rocketchip.system.DefaultRV32Config.fir@82613.4]
  wire [4:0] _T_21; // @[SourceShrinker.scala 51:53:freechips.rocketchip.system.DefaultRV32Config.fir@82613.4]
  wire  _T_24; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@82616.4]
  wire [3:0] _GEN_9; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82617.4]
  wire [3:0] _T_25; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82617.4]
  wire  _T_28; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@82620.4]
  wire [1:0] _T_29; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82621.4]
  wire [2:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82624.4]
  wire  _T_33; // @[SourceShrinker.scala 53:34:freechips.rocketchip.system.DefaultRV32Config.fir@82625.4]
  reg [3:0] _T_43; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@82635.4]
  wire  _T_46; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@82638.4]
  wire  _T_73; // @[SourceShrinker.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@82671.4]
  wire  _T_74; // @[SourceShrinker.scala 59:38:freechips.rocketchip.system.DefaultRV32Config.fir@82672.4]
  wire  _T_75; // @[SourceShrinker.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@82673.4]
  wire  _T_34; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@82626.4]
  wire [12:0] _T_36; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@82628.4]
  wire [5:0] _T_38; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@82630.4]
  wire  _T_41; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@82633.4]
  wire [3:0] _T_45; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@82637.4]
  wire  _T_54; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@82649.4]
  wire [12:0] _T_56; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@82651.4]
  wire [5:0] _T_58; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@82653.4]
  wire [3:0] _T_61; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@82656.4]
  reg [3:0] _T_62; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@82657.4]
  wire [3:0] _T_64; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@82659.4]
  wire  _T_65; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@82660.4]
  wire  _T_66; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@82661.4]
  wire  _T_67; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@82662.4]
  wire  _T_68; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@82663.4]
  wire  _T_69; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@82664.4]
  reg [2:0] _T_78; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@82679.4]
  wire [2:0] _GEN_2; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@82680.4]
  wire  _T_89; // @[SourceShrinker.scala 68:23:freechips.rocketchip.system.DefaultRV32Config.fir@82696.4]
  wire [4:0] _T_96; // @[SourceShrinker.scala 74:27:freechips.rocketchip.system.DefaultRV32Config.fir@82706.4]
  wire [3:0] _T_97; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@82707.4]
  wire [3:0] _T_98; // @[SourceShrinker.scala 75:26:freechips.rocketchip.system.DefaultRV32Config.fir@82708.4]
  wire [4:0] _GEN_11; // @[SourceShrinker.scala 76:33:freechips.rocketchip.system.DefaultRV32Config.fir@82709.4]
  wire [4:0] _T_99; // @[SourceShrinker.scala 76:33:freechips.rocketchip.system.DefaultRV32Config.fir@82709.4]
  wire [3:0] _T_100; // @[SourceShrinker.scala 76:47:freechips.rocketchip.system.DefaultRV32Config.fir@82710.4]
  wire [4:0] _GEN_12; // @[SourceShrinker.scala 76:45:freechips.rocketchip.system.DefaultRV32Config.fir@82711.4]
  wire [4:0] _T_101; // @[SourceShrinker.scala 76:45:freechips.rocketchip.system.DefaultRV32Config.fir@82711.4]
  TLMonitor_33 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@82548.4]
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
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_8__T_86_addr = auto_out_d_bits_source;
  assign _T_8__T_86_data = _T_8[_T_8__T_86_addr]; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
  assign _T_8__T_91_data = auto_in_a_bits_source;
  assign _T_8__T_91_addr = _T_32[1:0];
  assign _T_8__T_91_mask = 1'h1;
  assign _T_8__T_91_en = _T_46 & _T_34;
  assign _T_10 = ~_T_9; // @[SourceShrinker.scala 51:35:freechips.rocketchip.system.DefaultRV32Config.fir@82602.4]
  assign _T_11 = {_T_10, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@82603.4]
  assign _T_13 = _T_10 | _T_11[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@82605.4]
  assign _T_14 = {_T_13, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@82606.4]
  assign _T_16 = _T_13 | _T_14[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@82608.4]
  assign _T_18 = {_T_16, 1'h0}; // @[SourceShrinker.scala 51:47:freechips.rocketchip.system.DefaultRV32Config.fir@82610.4]
  assign _T_19 = ~_T_18; // @[SourceShrinker.scala 51:26:freechips.rocketchip.system.DefaultRV32Config.fir@82611.4]
  assign _GEN_8 = {{1'd0}, _T_10}; // @[SourceShrinker.scala 51:53:freechips.rocketchip.system.DefaultRV32Config.fir@82613.4]
  assign _T_21 = _T_19 & _GEN_8; // @[SourceShrinker.scala 51:53:freechips.rocketchip.system.DefaultRV32Config.fir@82613.4]
  assign _T_24 = |_T_21[4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@82616.4]
  assign _GEN_9 = {{3'd0}, _T_21[4]}; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82617.4]
  assign _T_25 = _GEN_9 | _T_21[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82617.4]
  assign _T_28 = |_T_25[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@82620.4]
  assign _T_29 = _T_25[3:2] | _T_25[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@82621.4]
  assign _T_32 = {_T_24,_T_28,_T_29[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82624.4]
  assign _T_33 = &_T_9; // @[SourceShrinker.scala 53:34:freechips.rocketchip.system.DefaultRV32Config.fir@82625.4]
  assign _T_46 = _T_43 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@82638.4]
  assign _T_73 = _T_46 & _T_33; // @[SourceShrinker.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@82671.4]
  assign _T_74 = ~_T_73; // @[SourceShrinker.scala 59:38:freechips.rocketchip.system.DefaultRV32Config.fir@82672.4]
  assign _T_75 = auto_out_a_ready & _T_74; // @[SourceShrinker.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@82673.4]
  assign _T_34 = _T_75 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@82626.4]
  assign _T_36 = 13'h3f << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@82628.4]
  assign _T_38 = ~_T_36[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@82630.4]
  assign _T_41 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@82633.4]
  assign _T_45 = _T_43 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@82637.4]
  assign _T_54 = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@82649.4]
  assign _T_56 = 13'h3f << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@82651.4]
  assign _T_58 = ~_T_56[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@82653.4]
  assign _T_61 = auto_out_d_bits_opcode[0] ? _T_58[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@82656.4]
  assign _T_64 = _T_62 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@82659.4]
  assign _T_65 = _T_62 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@82660.4]
  assign _T_66 = _T_62 == 4'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@82661.4]
  assign _T_67 = _T_61 == 4'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@82662.4]
  assign _T_68 = _T_66 | _T_67; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@82663.4]
  assign _T_69 = _T_68 & _T_54; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@82664.4]
  assign _GEN_2 = _T_46 ? _T_32 : _T_78; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@82680.4]
  assign _T_89 = _T_46 & _T_34; // @[SourceShrinker.scala 68:23:freechips.rocketchip.system.DefaultRV32Config.fir@82696.4]
  assign _T_96 = _T_89 ? _T_21 : 5'h0; // @[SourceShrinker.scala 74:27:freechips.rocketchip.system.DefaultRV32Config.fir@82706.4]
  assign _T_97 = 4'h1 << auto_out_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@82707.4]
  assign _T_98 = _T_69 ? _T_97 : 4'h0; // @[SourceShrinker.scala 75:26:freechips.rocketchip.system.DefaultRV32Config.fir@82708.4]
  assign _GEN_11 = {{1'd0}, _T_9}; // @[SourceShrinker.scala 76:33:freechips.rocketchip.system.DefaultRV32Config.fir@82709.4]
  assign _T_99 = _GEN_11 | _T_96; // @[SourceShrinker.scala 76:33:freechips.rocketchip.system.DefaultRV32Config.fir@82709.4]
  assign _T_100 = ~_T_98; // @[SourceShrinker.scala 76:47:freechips.rocketchip.system.DefaultRV32Config.fir@82710.4]
  assign _GEN_12 = {{1'd0}, _T_100}; // @[SourceShrinker.scala 76:45:freechips.rocketchip.system.DefaultRV32Config.fir@82711.4]
  assign _T_101 = _T_99 & _GEN_12; // @[SourceShrinker.scala 76:45:freechips.rocketchip.system.DefaultRV32Config.fir@82711.4]
  assign auto_in_a_ready = auto_out_a_ready & _T_74; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_valid = auto_out_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_source = _T_8__T_86_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@82581.4]
  assign auto_out_a_valid = auto_in_a_valid & _T_74; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_source = _GEN_2[1:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign auto_out_d_ready = auto_in_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@82580.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82549.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@82550.4]
  assign TLMonitor_io_in_a_ready = auto_out_a_ready & _T_74; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82577.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82576.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82575.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82574.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82573.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82572.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82571.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82563.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82561.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82560.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82559.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82558.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82556.4]
  assign TLMonitor_io_in_d_bits_source = _T_8__T_86_data; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82555.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82553.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@82551.4]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    _T_8[initvar] = _RAND_0[6:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_9 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  _T_43 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  _T_62 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_78 = _RAND_4[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_8__T_91_en & _T_8__T_91_mask) begin
      _T_8[_T_8__T_91_addr] <= _T_8__T_91_data; // @[SourceShrinker.scala 49:30:freechips.rocketchip.system.DefaultRV32Config.fir@82600.4]
    end
    if (reset) begin
      _T_9 <= 4'h0;
    end else begin
      _T_9 <= _T_101[3:0];
    end
    if (reset) begin
      _T_43 <= 4'h0;
    end else if (_T_34) begin
      if (_T_46) begin
        if (_T_41) begin
          _T_43 <= _T_38[5:2];
        end else begin
          _T_43 <= 4'h0;
        end
      end else begin
        _T_43 <= _T_45;
      end
    end
    if (reset) begin
      _T_62 <= 4'h0;
    end else if (_T_54) begin
      if (_T_65) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_62 <= _T_58[5:2];
        end else begin
          _T_62 <= 4'h0;
        end
      end else begin
        _T_62 <= _T_64;
      end
    end
    if (_T_46) begin
      _T_78 <= _T_32;
    end
  end
endmodule
