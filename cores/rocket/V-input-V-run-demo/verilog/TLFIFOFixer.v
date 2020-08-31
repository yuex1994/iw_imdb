module TLFIFOFixer( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12310.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12311.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12312.4]
  output        auto_in_1_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_1_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_1_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_1_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_in_1_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_1_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_1_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_1_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_1_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_1_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_in_1_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_1_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_1_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_1_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_1_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_in_1_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_1_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_1_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_1_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_in_1_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_1_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_in_1_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_1_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_1_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_1_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_in_1_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_1_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_1_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_in_1_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_0_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_0_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_in_0_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_0_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_0_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_0_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_in_0_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_in_0_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_in_0_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_0_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_in_0_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_0_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_in_0_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_in_0_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_in_0_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_0_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_in_0_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_in_0_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_1_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_1_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_out_1_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_1_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_1_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_1_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_1_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_out_1_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_1_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_1_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_1_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_out_1_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_1_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_1_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_1_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_out_1_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_1_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_1_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_out_1_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_1_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_1_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [1:0]  auto_out_1_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_0_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [2:0]  auto_out_0_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_0_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_0_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_0_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [3:0]  auto_out_0_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output [31:0] auto_out_0_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  output        auto_out_0_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_0_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_out_0_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [3:0]  auto_out_0_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [1:0]  auto_out_0_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_0_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input  [31:0] auto_out_0_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
  input         auto_out_0_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12313.4]
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
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [3:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [3:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [3:0] TLMonitor_1_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [31:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [3:0] TLMonitor_1_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [31:0] TLMonitor_1_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [2:0] TLMonitor_1_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [2:0] TLMonitor_1_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [3:0] TLMonitor_1_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [31:0] TLMonitor_1_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_c_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [3:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire  TLMonitor_1_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [1:0] TLMonitor_1_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
  wire [32:0] _T_5; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12406.4]
  wire [31:0] _T_9; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@12410.4]
  wire [32:0] _T_10; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12411.4]
  wire [32:0] _T_12; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12413.4]
  wire  _T_13; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12414.4]
  wire [32:0] _T_21; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12423.4]
  wire  _T_22; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12424.4]
  wire [31:0] _T_23; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@12425.4]
  wire [32:0] _T_24; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12426.4]
  wire [32:0] _T_26; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12428.4]
  wire  _T_27; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12429.4]
  wire [1:0] _T_29; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12431.4]
  wire [1:0] _GEN_86; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12432.4]
  wire [1:0] _T_30; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12432.4]
  wire  _T_32; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@12435.4]
  wire  _T_84; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@12516.4]
  reg [9:0] _T_42; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@12445.4]
  wire  _T_45; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@12448.4]
  wire  _T_94; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@12529.4]
  reg  _T_75_0; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  reg  _T_75_1; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_95; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12530.4]
  reg  _T_75_2; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_96; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12531.4]
  reg  _T_75_3; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_97; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12532.4]
  reg  _T_75_4; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_98; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12533.4]
  reg  _T_75_5; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_99; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12534.4]
  reg  _T_75_6; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_100; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12535.4]
  reg  _T_75_7; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_101; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12536.4]
  wire  _T_102; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@12537.4]
  reg [1:0] _T_93; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@12525.4]
  wire  _T_103; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@12538.4]
  wire  _T_104; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@12539.4]
  wire  _T_105; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@12540.4]
  wire  _T_119; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@12557.4]
  reg  _T_75_8; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  reg  _T_75_9; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_120; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12558.4]
  reg  _T_75_10; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_121; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12559.4]
  reg  _T_75_11; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_122; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12560.4]
  reg  _T_75_12; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_123; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12561.4]
  reg  _T_75_13; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_124; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12562.4]
  reg  _T_75_14; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_125; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12563.4]
  reg  _T_75_15; // @[FIFOFixer.scala 73:27:freechips.rocketchip.system.DefaultRV32Config.fir@12501.4]
  wire  _T_126; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12564.4]
  wire  _T_127; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@12565.4]
  reg [1:0] _T_118; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@12553.4]
  wire  _T_128; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@12566.4]
  wire  _T_129; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@12567.4]
  wire  _T_130; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@12568.4]
  wire  _T_132; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@12570.4]
  wire  _T_136; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@12577.4]
  wire  _T_137; // @[FIFOFixer.scala 90:47:freechips.rocketchip.system.DefaultRV32Config.fir@12578.4]
  wire  _T_138; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@12579.4]
  wire  _T_33; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@12436.4]
  wire [26:0] _T_35; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@12438.4]
  wire [11:0] _T_37; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@12440.4]
  wire  _T_40; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@12443.4]
  wire [9:0] _T_44; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@12447.4]
  wire  _T_53; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@12459.4]
  wire [26:0] _T_55; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@12461.4]
  wire [11:0] _T_57; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@12463.4]
  reg [9:0] _T_61; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@12467.4]
  wire [9:0] _T_63; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@12469.4]
  wire  _T_64; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@12470.4]
  wire  _T_72; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@12481.4]
  wire  _T_73; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@12482.4]
  wire  _T_77; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@12503.4]
  wire  _T_78; // @[FIFOFixer.scala 74:67:freechips.rocketchip.system.DefaultRV32Config.fir@12505.6]
  wire  _T_80; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@12509.4]
  wire  _T_90; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@12522.4]
  wire  _T_92; // @[FIFOFixer.scala 79:58:freechips.rocketchip.system.DefaultRV32Config.fir@12524.4]
  wire  _T_115; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@12550.4]
  wire  _T_117; // @[FIFOFixer.scala 79:58:freechips.rocketchip.system.DefaultRV32Config.fir@12552.4]
  TLMonitor_2 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12322.4]
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
  TLMonitor_3 TLMonitor_1 ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@12352.4]
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_1_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_1_io_in_a_bits_corrupt),
    .io_in_b_ready(TLMonitor_1_io_in_b_ready),
    .io_in_b_valid(TLMonitor_1_io_in_b_valid),
    .io_in_b_bits_param(TLMonitor_1_io_in_b_bits_param),
    .io_in_b_bits_address(TLMonitor_1_io_in_b_bits_address),
    .io_in_c_ready(TLMonitor_1_io_in_c_ready),
    .io_in_c_valid(TLMonitor_1_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_1_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_1_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_1_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_1_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_1_io_in_c_bits_address),
    .io_in_c_bits_corrupt(TLMonitor_1_io_in_c_bits_corrupt),
    .io_in_d_ready(TLMonitor_1_io_in_d_ready),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_1_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_1_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_1_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_1_io_in_d_bits_corrupt),
    .io_in_e_valid(TLMonitor_1_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_1_io_in_e_bits_sink)
  );
  assign _T_5 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12406.4]
  assign _T_9 = auto_in_0_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@12410.4]
  assign _T_10 = {1'b0,$signed(_T_9)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12411.4]
  assign _T_12 = $signed(_T_10) & 33'sh80000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12413.4]
  assign _T_13 = $signed(_T_12) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12414.4]
  assign _T_21 = $signed(_T_5) & 33'sh40000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12423.4]
  assign _T_22 = $signed(_T_21) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12424.4]
  assign _T_23 = auto_in_0_a_bits_address ^ 32'h40000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@12425.4]
  assign _T_24 = {1'b0,$signed(_T_23)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@12426.4]
  assign _T_26 = $signed(_T_24) & 33'sh40000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@12428.4]
  assign _T_27 = $signed(_T_26) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@12429.4]
  assign _T_29 = _T_27 ? 2'h2 : 2'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12431.4]
  assign _GEN_86 = {{1'd0}, _T_22}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12432.4]
  assign _T_30 = _GEN_86 | _T_29; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@12432.4]
  assign _T_32 = _T_30 == 2'h0; // @[FIFOFixer.scala 57:29:freechips.rocketchip.system.DefaultRV32Config.fir@12435.4]
  assign _T_84 = ~auto_in_0_a_bits_source[3]; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@12516.4]
  assign _T_45 = _T_42 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@12448.4]
  assign _T_94 = _T_84 & _T_45; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@12529.4]
  assign _T_95 = _T_75_0 | _T_75_1; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12530.4]
  assign _T_96 = _T_95 | _T_75_2; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12531.4]
  assign _T_97 = _T_96 | _T_75_3; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12532.4]
  assign _T_98 = _T_97 | _T_75_4; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12533.4]
  assign _T_99 = _T_98 | _T_75_5; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12534.4]
  assign _T_100 = _T_99 | _T_75_6; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12535.4]
  assign _T_101 = _T_100 | _T_75_7; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12536.4]
  assign _T_102 = _T_94 & _T_101; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@12537.4]
  assign _T_103 = _T_93 != _T_30; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@12538.4]
  assign _T_104 = _T_32 | _T_103; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@12539.4]
  assign _T_105 = _T_102 & _T_104; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@12540.4]
  assign _T_119 = auto_in_0_a_bits_source[3] & _T_45; // @[FIFOFixer.scala 82:15:freechips.rocketchip.system.DefaultRV32Config.fir@12557.4]
  assign _T_120 = _T_75_8 | _T_75_9; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12558.4]
  assign _T_121 = _T_120 | _T_75_10; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12559.4]
  assign _T_122 = _T_121 | _T_75_11; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12560.4]
  assign _T_123 = _T_122 | _T_75_12; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12561.4]
  assign _T_124 = _T_123 | _T_75_13; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12562.4]
  assign _T_125 = _T_124 | _T_75_14; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12563.4]
  assign _T_126 = _T_125 | _T_75_15; // @[FIFOFixer.scala 82:44:freechips.rocketchip.system.DefaultRV32Config.fir@12564.4]
  assign _T_127 = _T_119 & _T_126; // @[FIFOFixer.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@12565.4]
  assign _T_128 = _T_118 != _T_30; // @[FIFOFixer.scala 82:71:freechips.rocketchip.system.DefaultRV32Config.fir@12566.4]
  assign _T_129 = _T_32 | _T_128; // @[FIFOFixer.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@12567.4]
  assign _T_130 = _T_127 & _T_129; // @[FIFOFixer.scala 82:50:freechips.rocketchip.system.DefaultRV32Config.fir@12568.4]
  assign _T_132 = _T_105 | _T_130; // @[FIFOFixer.scala 85:49:freechips.rocketchip.system.DefaultRV32Config.fir@12570.4]
  assign _T_136 = ~_T_132; // @[FIFOFixer.scala 90:50:freechips.rocketchip.system.DefaultRV32Config.fir@12577.4]
  assign _T_137 = _T_13 | _T_136; // @[FIFOFixer.scala 90:47:freechips.rocketchip.system.DefaultRV32Config.fir@12578.4]
  assign _T_138 = auto_out_0_a_ready & _T_137; // @[FIFOFixer.scala 90:33:freechips.rocketchip.system.DefaultRV32Config.fir@12579.4]
  assign _T_33 = _T_138 & auto_in_0_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@12436.4]
  assign _T_35 = 27'hfff << auto_in_0_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@12438.4]
  assign _T_37 = ~_T_35[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@12440.4]
  assign _T_40 = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@12443.4]
  assign _T_44 = _T_42 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@12447.4]
  assign _T_53 = auto_in_0_d_ready & auto_out_0_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@12459.4]
  assign _T_55 = 27'hfff << auto_out_0_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@12461.4]
  assign _T_57 = ~_T_55[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@12463.4]
  assign _T_63 = _T_61 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@12469.4]
  assign _T_64 = _T_61 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@12470.4]
  assign _T_72 = auto_out_0_d_bits_opcode != 3'h6; // @[FIFOFixer.scala 69:63:freechips.rocketchip.system.DefaultRV32Config.fir@12481.4]
  assign _T_73 = _T_64 & _T_72; // @[FIFOFixer.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@12482.4]
  assign _T_77 = _T_45 & _T_33; // @[FIFOFixer.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@12503.4]
  assign _T_78 = ~_T_13; // @[FIFOFixer.scala 74:67:freechips.rocketchip.system.DefaultRV32Config.fir@12505.6]
  assign _T_80 = _T_73 & _T_53; // @[FIFOFixer.scala 75:21:freechips.rocketchip.system.DefaultRV32Config.fir@12509.4]
  assign _T_90 = _T_33 & _T_84; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@12522.4]
  assign _T_92 = _T_90 & _T_78; // @[FIFOFixer.scala 79:58:freechips.rocketchip.system.DefaultRV32Config.fir@12524.4]
  assign _T_115 = _T_33 & auto_in_0_a_bits_source[3]; // @[FIFOFixer.scala 79:49:freechips.rocketchip.system.DefaultRV32Config.fir@12550.4]
  assign _T_117 = _T_115 & _T_78; // @[FIFOFixer.scala 79:58:freechips.rocketchip.system.DefaultRV32Config.fir@12552.4]
  assign auto_in_1_a_ready = auto_out_1_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_b_valid = auto_out_1_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_b_bits_param = auto_out_1_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_b_bits_address = auto_out_1_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_c_ready = auto_out_1_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_valid = auto_out_1_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_opcode = auto_out_1_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_param = auto_out_1_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_size = auto_out_1_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_source = auto_out_1_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_sink = auto_out_1_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_denied = auto_out_1_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_data = auto_out_1_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_1_d_bits_corrupt = auto_out_1_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12404.4]
  assign auto_in_0_a_ready = auto_out_0_a_ready & _T_137; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_valid = auto_out_0_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_opcode = auto_out_0_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_param = auto_out_0_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_size = auto_out_0_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_source = auto_out_0_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_sink = auto_out_0_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_denied = auto_out_0_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_data = auto_out_0_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_in_0_d_bits_corrupt = auto_out_0_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@12403.4]
  assign auto_out_1_a_valid = auto_in_1_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_opcode = auto_in_1_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_param = auto_in_1_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_size = auto_in_1_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_source = auto_in_1_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_address = auto_in_1_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_mask = auto_in_1_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_data = auto_in_1_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_a_bits_corrupt = auto_in_1_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_b_ready = auto_in_1_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_valid = auto_in_1_c_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_opcode = auto_in_1_c_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_param = auto_in_1_c_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_size = auto_in_1_c_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_source = auto_in_1_c_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_address = auto_in_1_c_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_data = auto_in_1_c_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_c_bits_corrupt = auto_in_1_c_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_d_ready = auto_in_1_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_e_valid = auto_in_1_e_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_1_e_bits_sink = auto_in_1_e_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12402.4]
  assign auto_out_0_a_valid = auto_in_0_a_valid & _T_137; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_opcode = auto_in_0_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_param = auto_in_0_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_size = auto_in_0_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_source = auto_in_0_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_address = auto_in_0_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_bufferable = auto_in_0_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_modifiable = auto_in_0_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_readalloc = auto_in_0_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_writealloc = auto_in_0_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_privileged = auto_in_0_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_secure = auto_in_0_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_user_amba_prot_fetch = auto_in_0_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_mask = auto_in_0_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_data = auto_in_0_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_a_bits_corrupt = auto_in_0_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign auto_out_0_d_ready = auto_in_0_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@12401.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12323.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12324.4]
  assign TLMonitor_io_in_a_ready = auto_out_0_a_ready & _T_137; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12351.4]
  assign TLMonitor_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12350.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12349.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12348.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12347.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12346.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12345.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12337.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_0_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12335.4]
  assign TLMonitor_io_in_d_ready = auto_in_0_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12334.4]
  assign TLMonitor_io_in_d_valid = auto_out_0_d_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12333.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12332.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12331.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12330.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12329.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12328.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12327.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_0_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12325.4]
  assign TLMonitor_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12353.4]
  assign TLMonitor_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@12354.4]
  assign TLMonitor_1_io_in_a_ready = auto_out_1_a_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12396.4]
  assign TLMonitor_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12395.4]
  assign TLMonitor_1_io_in_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12394.4]
  assign TLMonitor_1_io_in_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12393.4]
  assign TLMonitor_1_io_in_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12392.4]
  assign TLMonitor_1_io_in_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12391.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12390.4]
  assign TLMonitor_1_io_in_a_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12389.4]
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_in_1_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12387.4]
  assign TLMonitor_1_io_in_b_ready = auto_in_1_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12386.4]
  assign TLMonitor_1_io_in_b_valid = auto_out_1_b_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12385.4]
  assign TLMonitor_1_io_in_b_bits_param = auto_out_1_b_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12383.4]
  assign TLMonitor_1_io_in_b_bits_address = auto_out_1_b_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12380.4]
  assign TLMonitor_1_io_in_c_ready = auto_out_1_c_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12376.4]
  assign TLMonitor_1_io_in_c_valid = auto_in_1_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12375.4]
  assign TLMonitor_1_io_in_c_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12374.4]
  assign TLMonitor_1_io_in_c_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12373.4]
  assign TLMonitor_1_io_in_c_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12372.4]
  assign TLMonitor_1_io_in_c_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12371.4]
  assign TLMonitor_1_io_in_c_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12370.4]
  assign TLMonitor_1_io_in_c_bits_corrupt = auto_in_1_c_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12368.4]
  assign TLMonitor_1_io_in_d_ready = auto_in_1_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12367.4]
  assign TLMonitor_1_io_in_d_valid = auto_out_1_d_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12366.4]
  assign TLMonitor_1_io_in_d_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12365.4]
  assign TLMonitor_1_io_in_d_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12364.4]
  assign TLMonitor_1_io_in_d_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12363.4]
  assign TLMonitor_1_io_in_d_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12362.4]
  assign TLMonitor_1_io_in_d_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12361.4]
  assign TLMonitor_1_io_in_d_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12360.4]
  assign TLMonitor_1_io_in_d_bits_corrupt = auto_out_1_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12358.4]
  assign TLMonitor_1_io_in_e_valid = auto_in_1_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12356.4]
  assign TLMonitor_1_io_in_e_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@12355.4]
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
  _T_42 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_75_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_75_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_75_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_75_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_75_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_75_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_75_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_75_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_93 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_75_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_75_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_75_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_75_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_75_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_75_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  _T_75_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  _T_75_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  _T_118 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  _T_61 = _RAND_19[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_42 <= 10'h0;
    end else if (_T_33) begin
      if (_T_45) begin
        if (_T_40) begin
          _T_42 <= _T_37[11:2];
        end else begin
          _T_42 <= 10'h0;
        end
      end else begin
        _T_42 <= _T_44;
      end
    end
    if (reset) begin
      _T_75_0 <= 1'h0;
    end else if (_T_80) begin
      if (4'h0 == auto_out_0_d_bits_source) begin
        _T_75_0 <= 1'h0;
      end else if (_T_77) begin
        if (4'h0 == auto_in_0_a_bits_source) begin
          _T_75_0 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h0 == auto_in_0_a_bits_source) begin
        _T_75_0 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_1 <= 1'h0;
    end else if (_T_80) begin
      if (4'h1 == auto_out_0_d_bits_source) begin
        _T_75_1 <= 1'h0;
      end else if (_T_77) begin
        if (4'h1 == auto_in_0_a_bits_source) begin
          _T_75_1 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h1 == auto_in_0_a_bits_source) begin
        _T_75_1 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_2 <= 1'h0;
    end else if (_T_80) begin
      if (4'h2 == auto_out_0_d_bits_source) begin
        _T_75_2 <= 1'h0;
      end else if (_T_77) begin
        if (4'h2 == auto_in_0_a_bits_source) begin
          _T_75_2 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h2 == auto_in_0_a_bits_source) begin
        _T_75_2 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_3 <= 1'h0;
    end else if (_T_80) begin
      if (4'h3 == auto_out_0_d_bits_source) begin
        _T_75_3 <= 1'h0;
      end else if (_T_77) begin
        if (4'h3 == auto_in_0_a_bits_source) begin
          _T_75_3 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h3 == auto_in_0_a_bits_source) begin
        _T_75_3 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_4 <= 1'h0;
    end else if (_T_80) begin
      if (4'h4 == auto_out_0_d_bits_source) begin
        _T_75_4 <= 1'h0;
      end else if (_T_77) begin
        if (4'h4 == auto_in_0_a_bits_source) begin
          _T_75_4 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h4 == auto_in_0_a_bits_source) begin
        _T_75_4 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_5 <= 1'h0;
    end else if (_T_80) begin
      if (4'h5 == auto_out_0_d_bits_source) begin
        _T_75_5 <= 1'h0;
      end else if (_T_77) begin
        if (4'h5 == auto_in_0_a_bits_source) begin
          _T_75_5 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h5 == auto_in_0_a_bits_source) begin
        _T_75_5 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_6 <= 1'h0;
    end else if (_T_80) begin
      if (4'h6 == auto_out_0_d_bits_source) begin
        _T_75_6 <= 1'h0;
      end else if (_T_77) begin
        if (4'h6 == auto_in_0_a_bits_source) begin
          _T_75_6 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h6 == auto_in_0_a_bits_source) begin
        _T_75_6 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_7 <= 1'h0;
    end else if (_T_80) begin
      if (4'h7 == auto_out_0_d_bits_source) begin
        _T_75_7 <= 1'h0;
      end else if (_T_77) begin
        if (4'h7 == auto_in_0_a_bits_source) begin
          _T_75_7 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h7 == auto_in_0_a_bits_source) begin
        _T_75_7 <= _T_78;
      end
    end
    if (_T_92) begin
      _T_93 <= _T_30;
    end
    if (reset) begin
      _T_75_8 <= 1'h0;
    end else if (_T_80) begin
      if (4'h8 == auto_out_0_d_bits_source) begin
        _T_75_8 <= 1'h0;
      end else if (_T_77) begin
        if (4'h8 == auto_in_0_a_bits_source) begin
          _T_75_8 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h8 == auto_in_0_a_bits_source) begin
        _T_75_8 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_9 <= 1'h0;
    end else if (_T_80) begin
      if (4'h9 == auto_out_0_d_bits_source) begin
        _T_75_9 <= 1'h0;
      end else if (_T_77) begin
        if (4'h9 == auto_in_0_a_bits_source) begin
          _T_75_9 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'h9 == auto_in_0_a_bits_source) begin
        _T_75_9 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_10 <= 1'h0;
    end else if (_T_80) begin
      if (4'ha == auto_out_0_d_bits_source) begin
        _T_75_10 <= 1'h0;
      end else if (_T_77) begin
        if (4'ha == auto_in_0_a_bits_source) begin
          _T_75_10 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'ha == auto_in_0_a_bits_source) begin
        _T_75_10 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_11 <= 1'h0;
    end else if (_T_80) begin
      if (4'hb == auto_out_0_d_bits_source) begin
        _T_75_11 <= 1'h0;
      end else if (_T_77) begin
        if (4'hb == auto_in_0_a_bits_source) begin
          _T_75_11 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'hb == auto_in_0_a_bits_source) begin
        _T_75_11 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_12 <= 1'h0;
    end else if (_T_80) begin
      if (4'hc == auto_out_0_d_bits_source) begin
        _T_75_12 <= 1'h0;
      end else if (_T_77) begin
        if (4'hc == auto_in_0_a_bits_source) begin
          _T_75_12 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'hc == auto_in_0_a_bits_source) begin
        _T_75_12 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_13 <= 1'h0;
    end else if (_T_80) begin
      if (4'hd == auto_out_0_d_bits_source) begin
        _T_75_13 <= 1'h0;
      end else if (_T_77) begin
        if (4'hd == auto_in_0_a_bits_source) begin
          _T_75_13 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'hd == auto_in_0_a_bits_source) begin
        _T_75_13 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_14 <= 1'h0;
    end else if (_T_80) begin
      if (4'he == auto_out_0_d_bits_source) begin
        _T_75_14 <= 1'h0;
      end else if (_T_77) begin
        if (4'he == auto_in_0_a_bits_source) begin
          _T_75_14 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'he == auto_in_0_a_bits_source) begin
        _T_75_14 <= _T_78;
      end
    end
    if (reset) begin
      _T_75_15 <= 1'h0;
    end else if (_T_80) begin
      if (4'hf == auto_out_0_d_bits_source) begin
        _T_75_15 <= 1'h0;
      end else if (_T_77) begin
        if (4'hf == auto_in_0_a_bits_source) begin
          _T_75_15 <= _T_78;
        end
      end
    end else if (_T_77) begin
      if (4'hf == auto_in_0_a_bits_source) begin
        _T_75_15 <= _T_78;
      end
    end
    if (_T_117) begin
      _T_118 <= _T_30;
    end
    if (reset) begin
      _T_61 <= 10'h0;
    end else if (_T_53) begin
      if (_T_64) begin
        if (auto_out_0_d_bits_opcode[0]) begin
          _T_61 <= _T_57[11:2];
        end else begin
          _T_61 <= 10'h0;
        end
      end else begin
        _T_61 <= _T_63;
      end
    end
  end
endmodule
