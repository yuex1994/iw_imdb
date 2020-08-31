module TLXbar_5( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47785.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47786.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47787.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [27:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_4_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_4_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_4_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_4_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_4_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_out_4_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [16:0] auto_out_4_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_4_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_4_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_4_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_4_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_4_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_out_4_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_out_4_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_3_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_3_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_3_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_3_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_3_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_out_3_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [11:0] auto_out_3_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_3_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [31:0] auto_out_3_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_3_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_3_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_3_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_3_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_3_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_out_3_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_out_3_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_2_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_2_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_2_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_2_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_2_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_out_2_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [25:0] auto_out_2_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_2_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [31:0] auto_out_2_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_2_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_2_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_2_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_2_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_2_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_out_2_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_out_2_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_1_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_1_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_1_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_1_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_out_1_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [27:0] auto_out_1_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_1_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [31:0] auto_out_1_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_1_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_1_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_1_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_1_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_out_1_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_out_1_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_0_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_0_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [2:0]  auto_out_0_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_0_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [4:0]  auto_out_0_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [13:0] auto_out_0_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output [3:0]  auto_out_0_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_0_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  output        auto_out_0_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_0_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [3:0]  auto_out_0_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [4:0]  auto_out_0_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_0_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_0_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input  [31:0] auto_out_0_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
  input         auto_out_0_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47788.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [27:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
  reg [9:0] _T_397; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@49168.4]
  wire  _T_398; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@49169.4]
  wire [4:0] _T_413; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@49184.4]
  reg [4:0] _T_419; // @[Arbiter.scala 22:23:freechips.rocketchip.system.DefaultRV32Config.fir@49194.4]
  wire [4:0] _T_420; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@49195.4]
  wire [4:0] _T_421; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@49196.4]
  wire [9:0] _T_422; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@49197.4]
  wire [9:0] _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49199.4]
  wire [9:0] _T_424; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49199.4]
  wire [9:0] _GEN_2; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49201.4]
  wire [9:0] _T_426; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49201.4]
  wire [9:0] _GEN_3; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49203.4]
  wire [9:0] _T_428; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49203.4]
  wire [9:0] _T_431; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@49206.4]
  wire [9:0] _GEN_4; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@49207.4]
  wire [9:0] _T_432; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@49207.4]
  wire [4:0] _T_435; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@49210.4]
  wire [4:0] _T_436; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@49211.4]
  wire  _T_457; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49240.4]
  reg  _T_538_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@49349.4]
  wire  _T_539_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  wire [48:0] _T_578; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49403.4]
  wire [48:0] _T_579; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49404.4]
  wire  _T_458; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49241.4]
  reg  _T_538_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@49349.4]
  wire  _T_539_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  wire [3:0] _T_18_1_d_bits_size; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48065.4]
  wire [48:0] _T_586; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49411.4]
  wire [48:0] _T_587; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49412.4]
  wire [48:0] _T_612; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49437.4]
  wire  _T_459; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49242.4]
  reg  _T_538_2; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@49349.4]
  wire  _T_539_2; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  wire [3:0] _T_18_2_d_bits_size; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48126.4]
  wire [48:0] _T_594; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49419.4]
  wire [48:0] _T_595; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49420.4]
  wire [48:0] _T_613; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49438.4]
  wire  _T_460; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49243.4]
  reg  _T_538_3; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@49349.4]
  wire  _T_539_3; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  wire [3:0] _T_18_3_d_bits_size; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48187.4]
  wire [48:0] _T_602; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49427.4]
  wire [48:0] _T_603; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49428.4]
  wire [48:0] _T_614; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49439.4]
  wire  _T_461; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49244.4]
  reg  _T_538_4; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@49349.4]
  wire  _T_539_4; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  wire [3:0] _T_18_4_d_bits_size; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48248.4]
  wire [48:0] _T_610; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49435.4]
  wire [48:0] _T_611; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49436.4]
  wire [48:0] _T_615; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49440.4]
  wire [27:0] _T_24; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48259.4]
  wire [28:0] _T_25; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48260.4]
  wire [28:0] _T_27; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48262.4]
  wire  _T_28; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48263.4]
  wire [27:0] _T_30; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48265.4]
  wire [28:0] _T_31; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48266.4]
  wire [28:0] _T_33; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48268.4]
  wire  _T_34; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48269.4]
  wire [27:0] _T_36; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48271.4]
  wire [28:0] _T_37; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48272.4]
  wire [28:0] _T_39; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48274.4]
  wire  _T_40; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48275.4]
  wire [28:0] _T_43; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48278.4]
  wire [28:0] _T_45; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48280.4]
  wire  _T_46; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48281.4]
  wire [27:0] _T_48; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48283.4]
  wire [28:0] _T_49; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48284.4]
  wire [28:0] _T_51; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48286.4]
  wire  _T_52; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48287.4]
  wire [26:0] _T_220; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48455.4]
  wire [11:0] _T_222; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48457.4]
  wire [9:0] _T_225; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48460.4]
  wire [20:0] _T_227; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48462.4]
  wire [5:0] _T_229; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48464.4]
  wire [3:0] _T_232; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48467.4]
  wire [20:0] _T_234; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48469.4]
  wire [5:0] _T_236; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48471.4]
  wire [3:0] _T_239; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48474.4]
  wire [20:0] _T_241; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48476.4]
  wire [5:0] _T_243; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48478.4]
  wire [3:0] _T_246; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48481.4]
  wire [20:0] _T_248; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48483.4]
  wire [5:0] _T_250; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48485.4]
  wire  _T_265; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48550.4]
  wire  _T_266; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48551.4]
  wire  _T_267; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48552.4]
  wire  _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48553.4]
  wire  _T_269; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48554.4]
  wire  _T_270; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48555.4]
  wire  _T_271; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48556.4]
  wire  _T_272; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48557.4]
  wire  _T_399; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@49170.4]
  wire  _T_437; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@49212.4]
  wire  _T_438; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@49213.4]
  wire [4:0] _T_439; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@49215.6]
  wire [5:0] _T_440; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49216.6]
  wire [4:0] _T_442; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49218.6]
  wire [6:0] _T_443; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49219.6]
  wire [4:0] _T_445; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49221.6]
  wire [8:0] _T_446; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49222.6]
  wire [4:0] _T_448; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49224.6]
  wire  _T_470; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49263.4]
  wire  _T_471; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49264.4]
  wire  _T_472; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49265.4]
  wire  _T_473; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49266.4]
  wire  _T_475; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49268.4]
  wire  _T_478; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49271.4]
  wire  _T_479; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49272.4]
  wire  _T_480; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49273.4]
  wire  _T_481; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49274.4]
  wire  _T_482; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49275.4]
  wire  _T_483; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49276.4]
  wire  _T_484; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49277.4]
  wire  _T_485; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49278.4]
  wire  _T_486; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49279.4]
  wire  _T_487; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49280.4]
  wire  _T_488; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49281.4]
  wire  _T_490; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49283.4]
  wire  _T_491; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49284.4]
  wire  _T_492; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49285.4]
  wire  _T_494; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49287.4]
  wire  _T_495; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49288.4]
  wire  _T_496; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49293.4]
  wire  _T_497; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49294.4]
  wire  _T_498; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49295.4]
  wire  _T_499; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49296.4]
  wire  _T_500; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@49297.4]
  wire  _T_505; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@49302.4]
  wire  _T_507; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49304.4]
  wire  _T_508; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49305.4]
  wire  _T_518; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@49319.4]
  wire  _T_520; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49321.4]
  wire  _T_521; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49322.4]
  wire [9:0] _T_522; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49327.4]
  wire [3:0] _T_523; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49328.4]
  wire [3:0] _T_524; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49329.4]
  wire [3:0] _T_525; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49330.4]
  wire [3:0] _T_526; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49331.4]
  wire [9:0] _GEN_5; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49332.4]
  wire [9:0] _T_527; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49332.4]
  wire [9:0] _GEN_6; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49333.4]
  wire [9:0] _T_528; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49333.4]
  wire [9:0] _GEN_7; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49334.4]
  wire [9:0] _T_529; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49334.4]
  wire [9:0] _GEN_8; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49335.4]
  wire [9:0] _T_530; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49335.4]
  wire  _T_551; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49372.4]
  wire  _T_552; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49373.4]
  wire  _T_556; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49377.4]
  wire  _T_553; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49374.4]
  wire  _T_557; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49378.4]
  wire  _T_554; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49375.4]
  wire  _T_558; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49379.4]
  wire  _T_555; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49376.4]
  wire  _T_559; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49380.4]
  wire  _T_561; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@49383.4]
  wire  _T_533; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@49338.4]
  wire [9:0] _GEN_9; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@49339.4]
  wire [9:0] _T_535; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@49340.4]
  wire  _T_541_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  wire  _T_541_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  wire  _T_541_2; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  wire  _T_541_3; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  wire  _T_541_4; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  TLMonitor_17 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@47795.4]
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
  assign _T_398 = _T_397 == 10'h0; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@49169.4]
  assign _T_413 = {auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@49184.4]
  assign _T_420 = ~_T_419; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@49195.4]
  assign _T_421 = _T_413 & _T_420; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@49196.4]
  assign _T_422 = {_T_421,auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@49197.4]
  assign _GEN_1 = {{1'd0}, _T_422[9:1]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49199.4]
  assign _T_424 = _T_422 | _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49199.4]
  assign _GEN_2 = {{2'd0}, _T_424[9:2]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49201.4]
  assign _T_426 = _T_424 | _GEN_2; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49201.4]
  assign _GEN_3 = {{4'd0}, _T_426[9:4]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49203.4]
  assign _T_428 = _T_426 | _GEN_3; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@49203.4]
  assign _T_431 = {_T_419, 5'h0}; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@49206.4]
  assign _GEN_4 = {{1'd0}, _T_428[9:1]}; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@49207.4]
  assign _T_432 = _GEN_4 | _T_431; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@49207.4]
  assign _T_435 = _T_432[9:5] & _T_432[4:0]; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@49210.4]
  assign _T_436 = ~_T_435; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@49211.4]
  assign _T_457 = _T_436[0] & auto_out_0_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49240.4]
  assign _T_539_0 = _T_398 ? _T_457 : _T_538_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  assign _T_578 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49403.4]
  assign _T_579 = _T_539_0 ? _T_578 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49404.4]
  assign _T_458 = _T_436[1] & auto_out_1_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49241.4]
  assign _T_539_1 = _T_398 ? _T_458 : _T_538_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  assign _T_18_1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48065.4]
  assign _T_586 = {auto_out_1_d_bits_opcode,2'h0,_T_18_1_d_bits_size,auto_out_1_d_bits_source,2'h0,auto_out_1_d_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49411.4]
  assign _T_587 = _T_539_1 ? _T_586 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49412.4]
  assign _T_612 = _T_579 | _T_587; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49437.4]
  assign _T_459 = _T_436[2] & auto_out_2_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49242.4]
  assign _T_539_2 = _T_398 ? _T_459 : _T_538_2; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  assign _T_18_2_d_bits_size = {{1'd0}, auto_out_2_d_bits_size}; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48126.4]
  assign _T_594 = {auto_out_2_d_bits_opcode,2'h0,_T_18_2_d_bits_size,auto_out_2_d_bits_source,2'h0,auto_out_2_d_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49419.4]
  assign _T_595 = _T_539_2 ? _T_594 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49420.4]
  assign _T_613 = _T_612 | _T_595; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49438.4]
  assign _T_460 = _T_436[3] & auto_out_3_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49243.4]
  assign _T_539_3 = _T_398 ? _T_460 : _T_538_3; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  assign _T_18_3_d_bits_size = {{1'd0}, auto_out_3_d_bits_size}; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48187.4]
  assign _T_602 = {auto_out_3_d_bits_opcode,2'h0,_T_18_3_d_bits_size,auto_out_3_d_bits_source,2'h0,auto_out_3_d_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49427.4]
  assign _T_603 = _T_539_3 ? _T_602 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49428.4]
  assign _T_614 = _T_613 | _T_603; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49439.4]
  assign _T_461 = _T_436[4] & auto_out_4_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@49244.4]
  assign _T_539_4 = _T_398 ? _T_461 : _T_538_4; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@49350.4]
  assign _T_18_4_d_bits_size = {{1'd0}, auto_out_4_d_bits_size}; // @[Xbar.scala 282:19:freechips.rocketchip.system.DefaultRV32Config.fir@47953.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@48248.4]
  assign _T_610 = {5'h4,_T_18_4_d_bits_size,auto_out_4_d_bits_source,2'h0,auto_out_4_d_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49435.4]
  assign _T_611 = _T_539_4 ? _T_610 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49436.4]
  assign _T_615 = _T_614 | _T_611; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49440.4]
  assign _T_24 = auto_in_a_bits_address ^ 28'h2000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48259.4]
  assign _T_25 = {1'b0,$signed(_T_24)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48260.4]
  assign _T_27 = $signed(_T_25) & 29'sha012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48262.4]
  assign _T_28 = $signed(_T_27) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48263.4]
  assign _T_30 = auto_in_a_bits_address ^ 28'h8000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48265.4]
  assign _T_31 = {1'b0,$signed(_T_30)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48266.4]
  assign _T_33 = $signed(_T_31) & 29'sh8000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48268.4]
  assign _T_34 = $signed(_T_33) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48269.4]
  assign _T_36 = auto_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48271.4]
  assign _T_37 = {1'b0,$signed(_T_36)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48272.4]
  assign _T_39 = $signed(_T_37) & 29'sha010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48274.4]
  assign _T_40 = $signed(_T_39) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48275.4]
  assign _T_43 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48278.4]
  assign _T_45 = $signed(_T_43) & 29'sha012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48280.4]
  assign _T_46 = $signed(_T_45) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48281.4]
  assign _T_48 = auto_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@48283.4]
  assign _T_49 = {1'b0,$signed(_T_48)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@48284.4]
  assign _T_51 = $signed(_T_49) & 29'sha010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@48286.4]
  assign _T_52 = $signed(_T_51) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@48287.4]
  assign _T_220 = 27'hfff << auto_out_0_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48455.4]
  assign _T_222 = ~_T_220[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48457.4]
  assign _T_225 = auto_out_0_d_bits_opcode[0] ? _T_222[11:2] : 10'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48460.4]
  assign _T_227 = 21'h3f << _T_18_1_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48462.4]
  assign _T_229 = ~_T_227[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48464.4]
  assign _T_232 = auto_out_1_d_bits_opcode[0] ? _T_229[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48467.4]
  assign _T_234 = 21'h3f << _T_18_2_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48469.4]
  assign _T_236 = ~_T_234[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48471.4]
  assign _T_239 = auto_out_2_d_bits_opcode[0] ? _T_236[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48474.4]
  assign _T_241 = 21'h3f << _T_18_3_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48476.4]
  assign _T_243 = ~_T_241[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48478.4]
  assign _T_246 = auto_out_3_d_bits_opcode[0] ? _T_243[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@48481.4]
  assign _T_248 = 21'h3f << _T_18_4_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@48483.4]
  assign _T_250 = ~_T_248[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@48485.4]
  assign _T_265 = _T_28 & auto_out_0_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48550.4]
  assign _T_266 = _T_34 & auto_out_1_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48551.4]
  assign _T_267 = _T_40 & auto_out_2_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48552.4]
  assign _T_268 = _T_46 & auto_out_3_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48553.4]
  assign _T_269 = _T_52 & auto_out_4_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48554.4]
  assign _T_270 = _T_265 | _T_266; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48555.4]
  assign _T_271 = _T_270 | _T_267; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48556.4]
  assign _T_272 = _T_271 | _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@48557.4]
  assign _T_399 = _T_398 & auto_in_d_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@49170.4]
  assign _T_437 = |_T_413; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@49212.4]
  assign _T_438 = _T_399 & _T_437; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@49213.4]
  assign _T_439 = _T_436 & _T_413; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@49215.6]
  assign _T_440 = {_T_439, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49216.6]
  assign _T_442 = _T_439 | _T_440[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49218.6]
  assign _T_443 = {_T_442, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49219.6]
  assign _T_445 = _T_442 | _T_443[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49221.6]
  assign _T_446 = {_T_445, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@49222.6]
  assign _T_448 = _T_445 | _T_446[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@49224.6]
  assign _T_470 = _T_457 | _T_458; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49263.4]
  assign _T_471 = _T_470 | _T_459; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49264.4]
  assign _T_472 = _T_471 | _T_460; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49265.4]
  assign _T_473 = _T_472 | _T_461; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@49266.4]
  assign _T_475 = ~_T_457; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49268.4]
  assign _T_478 = ~_T_458; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49271.4]
  assign _T_479 = _T_475 | _T_478; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49272.4]
  assign _T_480 = ~_T_470; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49273.4]
  assign _T_481 = ~_T_459; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49274.4]
  assign _T_482 = _T_480 | _T_481; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49275.4]
  assign _T_483 = ~_T_471; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49276.4]
  assign _T_484 = ~_T_460; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49277.4]
  assign _T_485 = _T_483 | _T_484; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49278.4]
  assign _T_486 = ~_T_472; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@49279.4]
  assign _T_487 = ~_T_461; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@49280.4]
  assign _T_488 = _T_486 | _T_487; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@49281.4]
  assign _T_490 = _T_479 & _T_482; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49283.4]
  assign _T_491 = _T_490 & _T_485; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49284.4]
  assign _T_492 = _T_491 & _T_488; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@49285.4]
  assign _T_494 = _T_492 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49287.4]
  assign _T_495 = ~_T_494; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49288.4]
  assign _T_496 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49293.4]
  assign _T_497 = _T_496 | auto_out_2_d_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49294.4]
  assign _T_498 = _T_497 | auto_out_3_d_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49295.4]
  assign _T_499 = _T_498 | auto_out_4_d_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@49296.4]
  assign _T_500 = ~_T_499; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@49297.4]
  assign _T_505 = _T_500 | _T_473; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@49302.4]
  assign _T_507 = _T_505 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49304.4]
  assign _T_508 = ~_T_507; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49305.4]
  assign _T_518 = _T_500 | _T_499; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@49319.4]
  assign _T_520 = _T_518 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49321.4]
  assign _T_521 = ~_T_520; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49322.4]
  assign _T_522 = _T_457 ? _T_225 : 10'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49327.4]
  assign _T_523 = _T_458 ? _T_232 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49328.4]
  assign _T_524 = _T_459 ? _T_239 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49329.4]
  assign _T_525 = _T_460 ? _T_246 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49330.4]
  assign _T_526 = _T_461 ? _T_250[5:2] : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@49331.4]
  assign _GEN_5 = {{6'd0}, _T_523}; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49332.4]
  assign _T_527 = _T_522 | _GEN_5; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49332.4]
  assign _GEN_6 = {{6'd0}, _T_524}; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49333.4]
  assign _T_528 = _T_527 | _GEN_6; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49333.4]
  assign _GEN_7 = {{6'd0}, _T_525}; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49334.4]
  assign _T_529 = _T_528 | _GEN_7; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49334.4]
  assign _GEN_8 = {{6'd0}, _T_526}; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49335.4]
  assign _T_530 = _T_529 | _GEN_8; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@49335.4]
  assign _T_551 = _T_538_0 & auto_out_0_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49372.4]
  assign _T_552 = _T_538_1 & auto_out_1_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49373.4]
  assign _T_556 = _T_551 | _T_552; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49377.4]
  assign _T_553 = _T_538_2 & auto_out_2_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49374.4]
  assign _T_557 = _T_556 | _T_553; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49378.4]
  assign _T_554 = _T_538_3 & auto_out_3_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49375.4]
  assign _T_558 = _T_557 | _T_554; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49379.4]
  assign _T_555 = _T_538_4 & auto_out_4_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49376.4]
  assign _T_559 = _T_558 | _T_555; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@49380.4]
  assign _T_561 = _T_398 ? _T_499 : _T_559; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@49383.4]
  assign _T_533 = auto_in_d_ready & _T_561; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@49338.4]
  assign _GEN_9 = {{9'd0}, _T_533}; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@49339.4]
  assign _T_535 = _T_397 - _GEN_9; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@49340.4]
  assign _T_541_0 = _T_398 ? _T_436[0] : _T_538_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  assign _T_541_1 = _T_398 ? _T_436[1] : _T_538_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  assign _T_541_2 = _T_398 ? _T_436[2] : _T_538_2; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  assign _T_541_3 = _T_398 ? _T_436[3] : _T_538_3; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  assign _T_541_4 = _T_398 ? _T_436[4] : _T_538_4; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@49357.4]
  assign auto_in_a_ready = _T_272 | _T_269; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_valid = _T_398 ? _T_499 : _T_559; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_opcode = _T_615[48:46]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_param = _T_615[45:44]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_size = _T_615[43:40]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_source = _T_615[39:35]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_sink = _T_615[34]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_denied = _T_615[33]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_data = _T_615[32:1]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_in_d_bits_corrupt = _T_615[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@47833.4]
  assign auto_out_4_a_valid = auto_in_a_valid & _T_52; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_address = auto_in_a_bits_address[16:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_4_d_ready = auto_in_d_ready & _T_541_4; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47832.4]
  assign auto_out_3_a_valid = auto_in_a_valid & _T_46; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_address = auto_in_a_bits_address[11:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_3_d_ready = auto_in_d_ready & _T_541_3; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47831.4]
  assign auto_out_2_a_valid = auto_in_a_valid & _T_40; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_address = auto_in_a_bits_address[25:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_2_d_ready = auto_in_d_ready & _T_541_2; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47830.4]
  assign auto_out_1_a_valid = auto_in_a_valid & _T_34; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_1_d_ready = auto_in_d_ready & _T_541_1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47829.4]
  assign auto_out_0_a_valid = auto_in_a_valid & _T_28; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address[13:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign auto_out_0_d_ready = auto_in_d_ready & _T_541_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@47828.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47796.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@47797.4]
  assign TLMonitor_io_in_a_ready = _T_272 | _T_269; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47817.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47816.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47815.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47814.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47813.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47812.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47811.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47810.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47808.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47807.4]
  assign TLMonitor_io_in_d_valid = _T_398 ? _T_499 : _T_559; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47806.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_615[48:46]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47805.4]
  assign TLMonitor_io_in_d_bits_param = _T_615[45:44]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47804.4]
  assign TLMonitor_io_in_d_bits_size = _T_615[43:40]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47803.4]
  assign TLMonitor_io_in_d_bits_source = _T_615[39:35]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47802.4]
  assign TLMonitor_io_in_d_bits_sink = _T_615[34]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47801.4]
  assign TLMonitor_io_in_d_bits_denied = _T_615[33]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47800.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_615[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@47798.4]
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
  _T_397 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_419 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  _T_538_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_538_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_538_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_538_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_538_4 = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_397 <= 10'h0;
    end else if (_T_399) begin
      _T_397 <= _T_530;
    end else begin
      _T_397 <= _T_535;
    end
    if (reset) begin
      _T_419 <= 5'h1f;
    end else if (_T_438) begin
      _T_419 <= _T_448;
    end
    if (reset) begin
      _T_538_0 <= 1'h0;
    end else if (_T_398) begin
      _T_538_0 <= _T_457;
    end
    if (reset) begin
      _T_538_1 <= 1'h0;
    end else if (_T_398) begin
      _T_538_1 <= _T_458;
    end
    if (reset) begin
      _T_538_2 <= 1'h0;
    end else if (_T_398) begin
      _T_538_2 <= _T_459;
    end
    if (reset) begin
      _T_538_3 <= 1'h0;
    end else if (_T_398) begin
      _T_538_3 <= _T_460;
    end
    if (reset) begin
      _T_538_4 <= 1'h0;
    end else if (_T_398) begin
      _T_538_4 <= _T_461;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_495) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49290.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_495) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@49291.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_508) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49307.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_508) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@49308.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_521) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49324.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_521) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@49325.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
