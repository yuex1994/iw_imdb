module TLXbar_8( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174492.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174493.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174494.4]
  output        auto_in_1_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_1_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_in_1_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_1_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_in_1_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_in_1_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_in_1_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_1_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_in_0_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_in_0_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_in_0_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_in_0_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_in_0_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_in_0_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_in_0_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_in_0_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_in_0_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_in_0_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_in_0_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_in_0_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_in_0_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_in_0_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_in_0_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_in_0_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_in_0_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_in_0_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_in_0_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_in_0_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_in_0_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_in_0_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_out_b_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_out_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_out_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_out_b_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_b_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [2:0]  auto_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [3:0]  auto_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [31:0] auto_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  input         auto_out_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output        auto_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
  output [1:0]  auto_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174495.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire [1:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire [31:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire [3:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  TLMonitor_1_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
  wire  _T_45; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@174861.4]
  wire  _T_54; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@174870.4]
  wire  _T_59; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@174875.4]
  wire [26:0] _T_77; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@174893.4]
  wire [11:0] _T_79; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@174895.4]
  wire  _T_82; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@174898.4]
  wire  _T_147; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175041.4]
  reg [9:0] _T_157; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@175059.4]
  wire  _T_158; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@175060.4]
  wire  _T_159; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@175061.4]
  wire [1:0] _T_164; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@175066.4]
  reg [1:0] _T_170; // @[Arbiter.scala 22:23:freechips.rocketchip.system.DefaultRV32Config.fir@175076.4]
  wire [1:0] _T_171; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@175077.4]
  wire [1:0] _T_172; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@175078.4]
  wire [3:0] _T_173; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@175079.4]
  wire [3:0] _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@175081.4]
  wire [3:0] _T_175; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@175081.4]
  wire [3:0] _T_178; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@175084.4]
  wire [3:0] _GEN_2; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@175085.4]
  wire [3:0] _T_179; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@175085.4]
  wire [1:0] _T_182; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@175088.4]
  wire [1:0] _T_183; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@175089.4]
  wire  _T_184; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@175090.4]
  wire  _T_185; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@175091.4]
  wire [1:0] _T_186; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@175093.6]
  wire [2:0] _T_187; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@175094.6]
  wire [1:0] _T_189; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@175096.6]
  wire  _T_195; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@175106.4]
  wire  _T_196; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@175107.4]
  wire  _T_202; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@175117.4]
  wire  _T_204; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@175119.4]
  wire  _T_207; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@175122.4]
  wire  _T_208; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@175123.4]
  wire  _T_211; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175126.4]
  wire  _T_212; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175127.4]
  wire  _T_213; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@175132.4]
  wire  _T_214; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@175133.4]
  wire  _T_216; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@175135.4]
  wire  _T_218; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175137.4]
  wire  _T_219; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175138.4]
  wire  _T_223; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@175146.4]
  wire  _T_225; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175148.4]
  wire  _T_226; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175149.4]
  reg  _T_237_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@175167.4]
  wire  _T_238_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@175168.4]
  reg  _T_237_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@175167.4]
  wire  _T_238_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@175168.4]
  wire  _T_244; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175178.4]
  wire  _T_245; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175179.4]
  wire  _T_246; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175180.4]
  wire  _T_248; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@175183.4]
  wire  _T_232; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@175159.4]
  wire [9:0] _GEN_3; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@175160.4]
  wire [9:0] _T_234; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@175161.4]
  wire  _T_240_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@175172.4]
  wire  _T_240_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@175172.4]
  wire [1:0] _T_9_0_a_bits_source; // @[Xbar.scala 225:18:freechips.rocketchip.system.DefaultRV32Config.fir@174672.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@174677.4 Xbar.scala 231:29:freechips.rocketchip.system.DefaultRV32Config.fir@174685.4]
  wire [80:0] _T_259; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175197.4]
  wire [80:0] _T_260; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175198.4]
  wire [80:0] _T_267; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175205.4]
  wire [80:0] _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175206.4]
  wire [80:0] _T_269; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175207.4]
  TLMonitor_46 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174504.4]
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
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_opcode(TLMonitor_io_in_b_bits_opcode),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_size(TLMonitor_io_in_b_bits_size),
    .io_in_b_bits_source(TLMonitor_io_in_b_bits_source),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
    .io_in_b_bits_mask(TLMonitor_io_in_b_bits_mask),
    .io_in_b_bits_corrupt(TLMonitor_io_in_b_bits_corrupt),
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_ready(TLMonitor_io_in_e_ready),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  TLMonitor_47 TLMonitor_1 ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@174549.4]
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_1_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_sink(TLMonitor_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_1_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_1_io_in_d_bits_corrupt)
  );
  assign _T_45 = ~auto_out_b_bits_source[1]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@174861.4]
  assign _T_54 = ~auto_out_d_bits_source[1]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@174870.4]
  assign _T_59 = auto_out_d_bits_source == 2'h2; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@174875.4]
  assign _T_77 = 27'hfff << auto_in_0_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@174893.4]
  assign _T_79 = ~_T_77[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@174895.4]
  assign _T_82 = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@174898.4]
  assign _T_147 = _T_54 & auto_in_0_d_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175041.4]
  assign _T_158 = _T_157 == 10'h0; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@175060.4]
  assign _T_159 = _T_158 & auto_out_a_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@175061.4]
  assign _T_164 = {auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@175066.4]
  assign _T_171 = ~_T_170; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@175077.4]
  assign _T_172 = _T_164 & _T_171; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@175078.4]
  assign _T_173 = {_T_172,auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@175079.4]
  assign _GEN_1 = {{1'd0}, _T_173[3:1]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@175081.4]
  assign _T_175 = _T_173 | _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@175081.4]
  assign _T_178 = {_T_170, 2'h0}; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@175084.4]
  assign _GEN_2 = {{1'd0}, _T_175[3:1]}; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@175085.4]
  assign _T_179 = _GEN_2 | _T_178; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@175085.4]
  assign _T_182 = _T_179[3:2] & _T_179[1:0]; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@175088.4]
  assign _T_183 = ~_T_182; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@175089.4]
  assign _T_184 = |_T_164; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@175090.4]
  assign _T_185 = _T_159 & _T_184; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@175091.4]
  assign _T_186 = _T_183 & _T_164; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@175093.6]
  assign _T_187 = {_T_186, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@175094.6]
  assign _T_189 = _T_186 | _T_187[1:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@175096.6]
  assign _T_195 = _T_183[0] & auto_in_0_a_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@175106.4]
  assign _T_196 = _T_183[1] & auto_in_1_a_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@175107.4]
  assign _T_202 = _T_195 | _T_196; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@175117.4]
  assign _T_204 = ~_T_195; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@175119.4]
  assign _T_207 = ~_T_196; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@175122.4]
  assign _T_208 = _T_204 | _T_207; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@175123.4]
  assign _T_211 = _T_208 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175126.4]
  assign _T_212 = ~_T_211; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175127.4]
  assign _T_213 = auto_in_0_a_valid | auto_in_1_a_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@175132.4]
  assign _T_214 = ~_T_213; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@175133.4]
  assign _T_216 = _T_214 | _T_202; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@175135.4]
  assign _T_218 = _T_216 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175137.4]
  assign _T_219 = ~_T_218; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175138.4]
  assign _T_223 = _T_214 | _T_213; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@175146.4]
  assign _T_225 = _T_223 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175148.4]
  assign _T_226 = ~_T_225; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175149.4]
  assign _T_238_0 = _T_158 ? _T_195 : _T_237_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@175168.4]
  assign _T_238_1 = _T_158 ? _T_196 : _T_237_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@175168.4]
  assign _T_244 = _T_237_0 & auto_in_0_a_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175178.4]
  assign _T_245 = _T_237_1 & auto_in_1_a_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175179.4]
  assign _T_246 = _T_244 | _T_245; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175180.4]
  assign _T_248 = _T_158 ? _T_213 : _T_246; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@175183.4]
  assign _T_232 = auto_out_a_ready & _T_248; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@175159.4]
  assign _GEN_3 = {{9'd0}, _T_232}; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@175160.4]
  assign _T_234 = _T_157 - _GEN_3; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@175161.4]
  assign _T_240_0 = _T_158 ? _T_183[0] : _T_237_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@175172.4]
  assign _T_240_1 = _T_158 ? _T_183[1] : _T_237_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@175172.4]
  assign _T_9_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 225:18:freechips.rocketchip.system.DefaultRV32Config.fir@174672.4 BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@174677.4 Xbar.scala 231:29:freechips.rocketchip.system.DefaultRV32Config.fir@174685.4]
  assign _T_259 = {auto_in_0_a_bits_opcode,auto_in_0_a_bits_param,auto_in_0_a_bits_size,_T_9_0_a_bits_source,auto_in_0_a_bits_address,auto_in_0_a_bits_mask,auto_in_0_a_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175197.4]
  assign _T_260 = _T_238_0 ? _T_259 : 81'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175198.4]
  assign _T_267 = {12'h81a,auto_in_1_a_bits_address,4'hf,33'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175205.4]
  assign _T_268 = _T_238_1 ? _T_267 : 81'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175206.4]
  assign _T_269 = _T_260 | _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@175207.4]
  assign auto_in_1_a_ready = auto_out_a_ready & _T_240_1; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_1_d_valid = auto_out_d_valid & _T_59; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_1_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_1_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_1_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_1_d_bits_corrupt = auto_out_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174576.4]
  assign auto_in_0_a_ready = auto_out_a_ready & _T_240_0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_b_valid = auto_out_b_valid & _T_45; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_b_bits_param = auto_out_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_b_bits_size = auto_out_b_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_b_bits_source = auto_out_b_bits_source[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_b_bits_address = auto_out_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_c_ready = auto_out_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_valid = auto_out_d_valid & _T_54; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_source = auto_out_d_bits_source[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_in_0_e_ready = auto_out_e_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@174575.4]
  assign auto_out_a_valid = _T_158 ? _T_213 : _T_246; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_opcode = _T_269[80:78]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_param = _T_269[77:75]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_size = _T_269[74:71]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_source = _T_269[70:69]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_address = _T_269[68:37]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_mask = _T_269[36:33]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_data = _T_269[32:1]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_a_bits_corrupt = _T_269[0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_b_ready = _T_45 & auto_in_0_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_valid = auto_in_0_c_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_opcode = auto_in_0_c_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_param = auto_in_0_c_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_size = auto_in_0_c_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_address = auto_in_0_c_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_c_bits_data = auto_in_0_c_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_d_ready = _T_147 | _T_59; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_e_valid = auto_in_0_e_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign auto_out_e_bits_sink = auto_in_0_e_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@174574.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174505.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174506.4]
  assign TLMonitor_io_in_a_ready = auto_out_a_ready & _T_240_0; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174548.4]
  assign TLMonitor_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174547.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174546.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174545.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174544.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174543.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174542.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174541.4]
  assign TLMonitor_io_in_b_ready = auto_in_0_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174538.4]
  assign TLMonitor_io_in_b_valid = auto_out_b_valid & _T_45; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174537.4]
  assign TLMonitor_io_in_b_bits_opcode = auto_out_b_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174536.4]
  assign TLMonitor_io_in_b_bits_param = auto_out_b_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174535.4]
  assign TLMonitor_io_in_b_bits_size = auto_out_b_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174534.4]
  assign TLMonitor_io_in_b_bits_source = auto_out_b_bits_source[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174533.4]
  assign TLMonitor_io_in_b_bits_address = auto_out_b_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174532.4]
  assign TLMonitor_io_in_b_bits_mask = auto_out_b_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  assign TLMonitor_io_in_b_bits_corrupt = auto_out_b_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174529.4]
  assign TLMonitor_io_in_c_ready = auto_out_c_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174528.4]
  assign TLMonitor_io_in_c_valid = auto_in_0_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174527.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174526.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174525.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174524.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174523.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174522.4]
  assign TLMonitor_io_in_d_ready = auto_in_0_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174519.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_54; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174518.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174517.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174516.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174515.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174514.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174513.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174512.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174510.4]
  assign TLMonitor_io_in_e_ready = auto_out_e_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174509.4]
  assign TLMonitor_io_in_e_valid = auto_in_0_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174508.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174507.4]
  assign TLMonitor_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174550.4]
  assign TLMonitor_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174551.4]
  assign TLMonitor_1_io_in_a_ready = auto_out_a_ready & _T_240_1; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174571.4]
  assign TLMonitor_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174570.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174565.4]
  assign TLMonitor_1_io_in_d_valid = auto_out_d_valid & _T_59; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174560.4]
  assign TLMonitor_1_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174559.4]
  assign TLMonitor_1_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174558.4]
  assign TLMonitor_1_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174557.4]
  assign TLMonitor_1_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174555.4]
  assign TLMonitor_1_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174554.4]
  assign TLMonitor_1_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@174552.4]
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
  _T_157 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_170 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  _T_237_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_237_1 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_157 <= 10'h0;
    end else if (_T_159) begin
      if (_T_195) begin
        if (_T_82) begin
          _T_157 <= _T_79[11:2];
        end else begin
          _T_157 <= 10'h0;
        end
      end else begin
        _T_157 <= 10'h0;
      end
    end else begin
      _T_157 <= _T_234;
    end
    if (reset) begin
      _T_170 <= 2'h3;
    end else if (_T_185) begin
      _T_170 <= _T_189;
    end
    if (reset) begin
      _T_237_0 <= 1'h0;
    end else if (_T_158) begin
      _T_237_0 <= _T_195;
    end
    if (reset) begin
      _T_237_1 <= 1'h0;
    end else if (_T_158) begin
      _T_237_1 <= _T_196;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_212) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175129.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_212) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@175130.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_219) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175140.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_219) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@175141.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_226) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175151.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_226) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@175152.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
