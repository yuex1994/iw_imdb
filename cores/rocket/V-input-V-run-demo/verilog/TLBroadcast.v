module TLBroadcast( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79679.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79680.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79681.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [1:0]  auto_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [31:0] auto_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [4:0]  auto_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [31:0] auto_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [31:0] auto_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [2:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [1:0]  auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [1:0]  auto_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [2:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [6:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [2:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [6:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79682.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [4:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_c_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire [1:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
  wire  BroadcastFilter_io_request_ready; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_request_valid; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire [1:0] BroadcastFilter_io_request_bits_mshr; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire [25:0] BroadcastFilter_io_request_bits_address; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_request_bits_allocOH; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_request_bits_needT; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_response_ready; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_response_valid; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire [1:0] BroadcastFilter_io_response_bits_mshr; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire [25:0] BroadcastFilter_io_response_bits_address; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  BroadcastFilter_io_response_bits_needT; // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  TLBroadcastTracker_clock; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_reset; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_first; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [4:0] TLBroadcastTracker_io_in_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [31:0] TLBroadcastTracker_io_in_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [3:0] TLBroadcastTracker_io_in_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [31:0] TLBroadcastTracker_io_in_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [6:0] TLBroadcastTracker_io_out_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [31:0] TLBroadcastTracker_io_out_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [3:0] TLBroadcastTracker_io_out_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [31:0] TLBroadcastTracker_io_out_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_probe_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_probe_bits_count; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_probenack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_probedack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_probesack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_d_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_e_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [4:0] TLBroadcastTracker_io_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire [25:0] TLBroadcastTracker_io_line; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_idle; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_io_need_d; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  TLBroadcastTracker_1_clock; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_reset; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_first; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [4:0] TLBroadcastTracker_1_io_in_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [31:0] TLBroadcastTracker_1_io_in_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [3:0] TLBroadcastTracker_1_io_in_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [31:0] TLBroadcastTracker_1_io_in_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [6:0] TLBroadcastTracker_1_io_out_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [31:0] TLBroadcastTracker_1_io_out_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [3:0] TLBroadcastTracker_1_io_out_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [31:0] TLBroadcastTracker_1_io_out_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_probe_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_probe_bits_count; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_probenack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_probedack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_probesack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_d_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_e_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [4:0] TLBroadcastTracker_1_io_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire [25:0] TLBroadcastTracker_1_io_line; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_idle; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_1_io_need_d; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  TLBroadcastTracker_2_clock; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_reset; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_first; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [4:0] TLBroadcastTracker_2_io_in_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [31:0] TLBroadcastTracker_2_io_in_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [3:0] TLBroadcastTracker_2_io_in_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [31:0] TLBroadcastTracker_2_io_in_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [6:0] TLBroadcastTracker_2_io_out_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [31:0] TLBroadcastTracker_2_io_out_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [3:0] TLBroadcastTracker_2_io_out_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [31:0] TLBroadcastTracker_2_io_out_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_probe_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_probe_bits_count; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_probenack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_probedack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_probesack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_d_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_e_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [4:0] TLBroadcastTracker_2_io_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire [25:0] TLBroadcastTracker_2_io_line; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_idle; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_2_io_need_d; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  TLBroadcastTracker_3_clock; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_reset; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_first; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [4:0] TLBroadcastTracker_3_io_in_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [31:0] TLBroadcastTracker_3_io_in_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [3:0] TLBroadcastTracker_3_io_in_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [31:0] TLBroadcastTracker_3_io_in_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_ready; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_opcode; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_param; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_size; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [6:0] TLBroadcastTracker_3_io_out_a_bits_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [31:0] TLBroadcastTracker_3_io_out_a_bits_address; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [3:0] TLBroadcastTracker_3_io_out_a_bits_mask; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [31:0] TLBroadcastTracker_3_io_out_a_bits_data; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_probe_valid; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_probe_bits_count; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_probenack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_probedack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_probesack; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_d_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_e_last; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [4:0] TLBroadcastTracker_3_io_source; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [25:0] TLBroadcastTracker_3_io_line; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_idle; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  TLBroadcastTracker_3_io_need_d; // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire [3:0] _T_2; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@79768.4]
  wire  _T_16; // @[Broadcast.scala 123:27:freechips.rocketchip.system.DefaultRV32Config.fir@79786.4]
  reg [3:0] _T_323; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@80209.4]
  wire  _T_324; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@80210.4]
  wire  _T_86; // @[Broadcast.scala 144:37:freechips.rocketchip.system.DefaultRV32Config.fir@79885.4]
  wire  _T_87; // @[Broadcast.scala 144:34:freechips.rocketchip.system.DefaultRV32Config.fir@79886.4]
  reg [3:0] _T_27; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@79798.4]
  wire  _T_31; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@79802.4]
  wire [2:0] _T_67; // @[Broadcast.scala 136:36:freechips.rocketchip.system.DefaultRV32Config.fir@79858.6]
  wire [2:0] _GEN_2; // @[Broadcast.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  wire [12:0] _T_21; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@79792.4]
  wire [5:0] _T_23; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@79794.4]
  wire [3:0] _T_26; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@79797.4]
  wire  _T_32; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@79803.4]
  wire  _T_33; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@79804.4]
  wire  _T_64; // @[Broadcast.scala 133:51:freechips.rocketchip.system.DefaultRV32Config.fir@79852.4]
  wire  _T_65; // @[Broadcast.scala 133:48:freechips.rocketchip.system.DefaultRV32Config.fir@79853.4]
  wire  _T_145; // @[Broadcast.scala 165:45:freechips.rocketchip.system.DefaultRV32Config.fir@79958.4]
  wire  _T_251; // @[Broadcast.scala 195:79:freechips.rocketchip.system.DefaultRV32Config.fir@80086.4]
  wire [1:0] _T_330; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80216.4]
  wire [2:0] _T_331; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80217.4]
  wire [1:0] _T_333; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80219.4]
  wire [2:0] _T_335; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@80221.4]
  wire [1:0] _T_337; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@80223.4]
  reg  _T_383_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80290.4]
  wire  _T_386_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80295.4]
  wire  _T_388; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80298.4]
  wire  _T_19; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79790.4]
  wire [3:0] _T_29; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@79800.4]
  wire  _T_30; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@79801.4]
  wire  _T_38; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79812.4]
  wire  _T_39; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79813.4]
  wire  _T_40; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79814.4]
  wire  _T_41; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79815.4]
  wire  _T_42; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79816.4]
  wire  _T_43; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79817.4]
  wire  _T_44; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79818.4]
  wire  _T_45; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79819.4]
  wire [3:0] _T_49; // @[Broadcast.scala 127:102:freechips.rocketchip.system.DefaultRV32Config.fir@79828.4]
  reg [3:0] _T_50; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@79829.4]
  wire [3:0] _GEN_1; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@79830.4]
  wire  _T_52; // @[Broadcast.scala 129:15:freechips.rocketchip.system.DefaultRV32Config.fir@79834.4]
  wire  _T_54; // @[Broadcast.scala 129:28:freechips.rocketchip.system.DefaultRV32Config.fir@79836.4]
  wire  _T_55; // @[Broadcast.scala 129:60:freechips.rocketchip.system.DefaultRV32Config.fir@79837.4]
  wire  _T_56; // @[Broadcast.scala 129:39:freechips.rocketchip.system.DefaultRV32Config.fir@79838.4]
  wire  _T_58; // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79840.4]
  wire  _T_59; // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79841.4]
  wire  _T_62; // @[Broadcast.scala 132:50:freechips.rocketchip.system.DefaultRV32Config.fir@79849.4]
  wire [1:0] _T_69; // @[Broadcast.scala 137:51:freechips.rocketchip.system.DefaultRV32Config.fir@79861.6]
  wire [1:0] _T_70; // @[Broadcast.scala 137:36:freechips.rocketchip.system.DefaultRV32Config.fir@79862.6]
  wire [1:0] _GEN_3; // @[Broadcast.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  wire  _T_73; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@79867.4]
  wire [1:0] _T_74; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@79868.4]
  wire  _T_77; // @[Broadcast.scala 141:15:freechips.rocketchip.system.DefaultRV32Config.fir@79872.4]
  wire  _T_78; // @[Broadcast.scala 141:50:freechips.rocketchip.system.DefaultRV32Config.fir@79873.4]
  wire  _T_79; // @[Broadcast.scala 141:77:freechips.rocketchip.system.DefaultRV32Config.fir@79874.4]
  wire  _T_80; // @[Broadcast.scala 141:53:freechips.rocketchip.system.DefaultRV32Config.fir@79875.4]
  wire  _T_81; // @[Broadcast.scala 141:31:freechips.rocketchip.system.DefaultRV32Config.fir@79876.4]
  wire  _T_83; // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79878.4]
  wire  _T_84; // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79879.4]
  wire  _T_93; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79892.4]
  wire  _T_94; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79893.4]
  wire  _T_96; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79896.4]
  wire  _T_97; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79897.4]
  wire  _T_100; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79901.4]
  wire  _T_101; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79902.4]
  wire  _T_104; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79906.4]
  wire  _T_107; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79910.4]
  wire  _T_108; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79911.4]
  wire  _T_111; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79915.4]
  wire  _T_114; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79919.4]
  wire  _T_115; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79920.4]
  wire  _T_118; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79924.4]
  wire  _T_142; // @[Broadcast.scala 162:45:freechips.rocketchip.system.DefaultRV32Config.fir@79955.4]
  wire  _T_143; // @[Broadcast.scala 163:45:freechips.rocketchip.system.DefaultRV32Config.fir@79956.4]
  wire  _T_144; // @[Broadcast.scala 164:45:freechips.rocketchip.system.DefaultRV32Config.fir@79957.4]
  wire  _T_147; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79960.4]
  wire  _T_149; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79962.4]
  wire  _T_151; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79964.4]
  wire  _T_153; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79966.4]
  wire [4:0] _T_154; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79967.4]
  wire [4:0] _T_155; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79968.4]
  wire [4:0] _T_156; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79969.4]
  wire [4:0] _T_157; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79970.4]
  wire [4:0] _T_158; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79971.4]
  wire [4:0] _T_159; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79972.4]
  wire [4:0] _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79973.4]
  reg  _T_383_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80290.4]
  wire  _T_386_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80295.4]
  wire  _T_387; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80296.4]
  reg [3:0] _T_475; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@80517.4]
  wire  _T_476; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@80518.4]
  wire  _T_474_earlyValid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80499.4]
  wire  _T_473_earlyValid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80480.4]
  wire  _T_472_earlyValid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80461.4]
  wire  _T_471_earlyValid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80442.4]
  wire  _T_258; // @[Broadcast.scala 200:54:freechips.rocketchip.system.DefaultRV32Config.fir@80104.4]
  wire  _T_259; // @[Broadcast.scala 200:35:freechips.rocketchip.system.DefaultRV32Config.fir@80105.4]
  wire [4:0] _T_491; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80533.4]
  wire [5:0] _T_492; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80534.4]
  wire [4:0] _T_494; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80536.4]
  wire [6:0] _T_495; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80537.4]
  wire [4:0] _T_497; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80539.4]
  wire [8:0] _T_498; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80540.4]
  wire [4:0] _T_500; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80542.4]
  wire [5:0] _T_502; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@80544.4]
  wire [4:0] _T_504; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@80546.4]
  reg  _T_592_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80667.4]
  wire  _T_595_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  wire  _T_596; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80676.4]
  wire  _T_223; // @[Broadcast.scala 188:38:freechips.rocketchip.system.DefaultRV32Config.fir@80051.4]
  wire  _T_224; // @[Broadcast.scala 188:32:freechips.rocketchip.system.DefaultRV32Config.fir@80052.4]
  wire  _T_168; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79982.4]
  wire  _T_169; // @[Broadcast.scala 174:52:freechips.rocketchip.system.DefaultRV32Config.fir@79983.4]
  wire  _T_175; // @[Broadcast.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@79990.4]
  wire  _T_178; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@79994.4]
  wire  _T_180; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@79996.4]
  wire  _T_181; // @[Broadcast.scala 181:27:freechips.rocketchip.system.DefaultRV32Config.fir@79997.4]
  wire  _T_182; // @[Broadcast.scala 182:27:freechips.rocketchip.system.DefaultRV32Config.fir@79998.4]
  wire  _T_183; // @[Broadcast.scala 181:50:freechips.rocketchip.system.DefaultRV32Config.fir@79999.4]
  wire  _T_190; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80009.4]
  wire  _T_192; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80011.4]
  wire  _T_202; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80024.4]
  wire  _T_204; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80026.4]
  wire  _T_214; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80039.4]
  wire  _T_216; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80041.4]
  wire [12:0] _T_227; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80056.4]
  wire [5:0] _T_229; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80058.4]
  wire [1:0] _T_253; // @[Broadcast.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@80099.4]
  wire [4:0] _T_254; // @[Broadcast.scala 199:25:freechips.rocketchip.system.DefaultRV32Config.fir@80100.4]
  wire [1:0] _T_275; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@80128.4]
  wire [1:0] _T_277; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@80130.4]
  wire  _T_278; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@80131.4]
  wire  _T_281; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@80134.4]
  wire  _T_283; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80136.4]
  wire  _T_284; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80137.4]
  wire  _T_286; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80139.4]
  wire  _T_287; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80140.4]
  wire  _T_290; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@80143.4]
  wire  _T_291; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80144.4]
  wire  _T_292; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80145.4]
  wire  _T_293; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80146.4]
  wire  _T_294; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80147.4]
  wire  _T_295; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80148.4]
  wire  _T_296; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80149.4]
  wire  _T_297; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80150.4]
  wire  _T_298; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80151.4]
  wire  _T_299; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80152.4]
  wire  _T_300; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80153.4]
  wire  _T_301; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80154.4]
  wire  _T_302; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80155.4]
  wire  _T_325; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@80211.4]
  wire  _T_341; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80229.4]
  wire  _T_342; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80230.4]
  wire  _T_348; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80240.4]
  wire  _T_350; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80242.4]
  wire  _T_353; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80245.4]
  wire  _T_354; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80246.4]
  wire  _T_357; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80249.4]
  wire  _T_358; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80250.4]
  wire  _T_359; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80255.4]
  wire  _T_360; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@80256.4]
  wire  _T_362; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@80258.4]
  wire  _T_364; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80260.4]
  wire  _T_365; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80261.4]
  wire  _T_369; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@80269.4]
  wire  _T_371; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80271.4]
  wire  _T_372; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80272.4]
  wire  _T_384_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80291.4]
  wire  _T_384_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80291.4]
  wire  _T_390; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80301.4]
  wire  _T_391; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80302.4]
  wire  _T_392; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80303.4]
  wire  _T_394; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@80306.4]
  wire  _T_378; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@80282.4]
  wire [3:0] _GEN_14; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80283.4]
  wire [3:0] _T_380; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80284.4]
  wire [48:0] _T_405; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80320.4]
  wire [48:0] _T_406; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80321.4]
  wire [48:0] _T_413; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80328.4]
  wire [48:0] _T_414; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80329.4]
  wire [48:0] _T_415; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80330.4]
  wire [12:0] _T_438; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80390.4]
  wire [5:0] _T_440; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80392.4]
  wire  _T_443; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80395.4]
  wire [3:0] _T_444; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80396.4]
  wire [12:0] _T_446; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80398.4]
  wire [5:0] _T_448; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80400.4]
  wire  _T_451; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80403.4]
  wire [3:0] _T_452; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80404.4]
  wire [12:0] _T_454; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80406.4]
  wire [5:0] _T_456; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80408.4]
  wire  _T_459; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80411.4]
  wire [3:0] _T_460; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80412.4]
  wire [12:0] _T_462; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80414.4]
  wire [5:0] _T_464; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80416.4]
  wire  _T_467; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80419.4]
  wire [3:0] _T_468; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80420.4]
  wire  _T_477; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@80519.4]
  wire  _T_511; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80558.4]
  wire  _T_512; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80559.4]
  wire  _T_513; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80560.4]
  wire  _T_514; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80561.4]
  wire  _T_515; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80562.4]
  wire  _T_524; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80581.4]
  wire  _T_525; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80582.4]
  wire  _T_526; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80583.4]
  wire  _T_527; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80584.4]
  wire  _T_529; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80586.4]
  wire  _T_532; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80589.4]
  wire  _T_533; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80590.4]
  wire  _T_534; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80591.4]
  wire  _T_535; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80592.4]
  wire  _T_536; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80593.4]
  wire  _T_537; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80594.4]
  wire  _T_538; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80595.4]
  wire  _T_539; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80596.4]
  wire  _T_540; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80597.4]
  wire  _T_541; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80598.4]
  wire  _T_542; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80599.4]
  wire  _T_544; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80601.4]
  wire  _T_545; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80602.4]
  wire  _T_546; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80603.4]
  wire  _T_548; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80605.4]
  wire  _T_549; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80606.4]
  wire  _T_550; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80611.4]
  wire  _T_551; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80612.4]
  wire  _T_552; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80613.4]
  wire  _T_553; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80614.4]
  wire  _T_554; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@80615.4]
  wire  _T_559; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@80620.4]
  wire  _T_561; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80622.4]
  wire  _T_562; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80623.4]
  wire  _T_572; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@80637.4]
  wire  _T_574; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80639.4]
  wire  _T_575; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80640.4]
  wire [3:0] _T_576; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80645.4]
  wire [3:0] _T_577; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80646.4]
  wire [3:0] _T_578; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80647.4]
  wire [3:0] _T_579; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80648.4]
  wire [3:0] _T_580; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80649.4]
  wire [3:0] _T_581; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80650.4]
  wire [3:0] _T_582; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80651.4]
  wire [3:0] _T_583; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80652.4]
  wire [3:0] _T_584; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80653.4]
  wire  _T_593_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  reg  _T_592_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80667.4]
  wire  _T_593_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  reg  _T_592_2; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80667.4]
  wire  _T_593_2; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  reg  _T_592_3; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80667.4]
  wire  _T_593_3; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  reg  _T_592_4; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@80667.4]
  wire  _T_593_4; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  wire  _T_605; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80690.4]
  wire  _T_606; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80691.4]
  wire  _T_610; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80695.4]
  wire  _T_607; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80692.4]
  wire  _T_611; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80696.4]
  wire  _T_608; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80693.4]
  wire  _T_612; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80697.4]
  wire  _T_609; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80694.4]
  wire  _T_613; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80698.4]
  wire  _T_615; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@80701.4]
  wire  _T_587; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@80656.4]
  wire [3:0] _GEN_15; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80657.4]
  wire [3:0] _T_589; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80658.4]
  wire  _T_595_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  wire  _T_595_2; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  wire  _T_595_3; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  wire  _T_595_4; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  wire [40:0] _T_631; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80720.4]
  wire [91:0] _T_639; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80728.4]
  wire [91:0] _T_640; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80729.4]
  wire [3:0] _T_471_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80446.4]
  wire [31:0] _T_471_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80445.4]
  wire  _T_471_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80448.4]
  wire  _T_471_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80447.4]
  wire  _T_471_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80450.4]
  wire  _T_471_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80449.4]
  wire [40:0] _T_646; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80735.4]
  wire  _T_471_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80452.4]
  wire  _T_471_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80451.4]
  wire [31:0] _T_471_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80454.4]
  wire  _T_471_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80453.4]
  wire [2:0] _T_471_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80456.4]
  wire [6:0] _T_471_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80455.4]
  wire [2:0] _T_471_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80458.4]
  wire [2:0] _T_471_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80457.4]
  wire [91:0] _T_654; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80743.4]
  wire [91:0] _T_655; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80744.4]
  wire [3:0] _T_472_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80465.4]
  wire [31:0] _T_472_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80464.4]
  wire  _T_472_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80467.4]
  wire  _T_472_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80466.4]
  wire  _T_472_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80469.4]
  wire  _T_472_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80468.4]
  wire [40:0] _T_661; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80750.4]
  wire  _T_472_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80471.4]
  wire  _T_472_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80470.4]
  wire [31:0] _T_472_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80473.4]
  wire  _T_472_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80472.4]
  wire [2:0] _T_472_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80475.4]
  wire [6:0] _T_472_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80474.4]
  wire [2:0] _T_472_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80477.4]
  wire [2:0] _T_472_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80476.4]
  wire [91:0] _T_669; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80758.4]
  wire [91:0] _T_670; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80759.4]
  wire [3:0] _T_473_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80484.4]
  wire [31:0] _T_473_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80483.4]
  wire  _T_473_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80486.4]
  wire  _T_473_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80485.4]
  wire  _T_473_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80488.4]
  wire  _T_473_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80487.4]
  wire [40:0] _T_676; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80765.4]
  wire  _T_473_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80490.4]
  wire  _T_473_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80489.4]
  wire [31:0] _T_473_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80492.4]
  wire  _T_473_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80491.4]
  wire [2:0] _T_473_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80494.4]
  wire [6:0] _T_473_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80493.4]
  wire [2:0] _T_473_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80496.4]
  wire [2:0] _T_473_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80495.4]
  wire [91:0] _T_684; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80773.4]
  wire [91:0] _T_685; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80774.4]
  wire [3:0] _T_474_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80503.4]
  wire [31:0] _T_474_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80502.4]
  wire  _T_474_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80505.4]
  wire  _T_474_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80504.4]
  wire  _T_474_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80507.4]
  wire  _T_474_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80506.4]
  wire [40:0] _T_691; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80780.4]
  wire  _T_474_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80509.4]
  wire  _T_474_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80508.4]
  wire [31:0] _T_474_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80511.4]
  wire  _T_474_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80510.4]
  wire [2:0] _T_474_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80513.4]
  wire [6:0] _T_474_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80512.4]
  wire [2:0] _T_474_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80515.4]
  wire [2:0] _T_474_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80514.4]
  wire [91:0] _T_699; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80788.4]
  wire [91:0] _T_700; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80789.4]
  wire [91:0] _T_701; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80790.4]
  wire [91:0] _T_702; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80791.4]
  wire [91:0] _T_703; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80792.4]
  wire [91:0] _T_704; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80793.4]
  reg  _T_725; // @[Broadcast.scala 218:31:freechips.rocketchip.system.DefaultRV32Config.fir@80879.4]
  reg [25:0] _T_726; // @[Broadcast.scala 219:27:freechips.rocketchip.system.DefaultRV32Config.fir@80880.4]
  reg [1:0] _T_727; // @[Broadcast.scala 220:28:freechips.rocketchip.system.DefaultRV32Config.fir@80881.4]
  wire [1:0] _T_729; // @[Broadcast.scala 221:58:freechips.rocketchip.system.DefaultRV32Config.fir@80883.4]
  wire [1:0] _T_730; // @[Broadcast.scala 221:37:freechips.rocketchip.system.DefaultRV32Config.fir@80884.4]
  wire [1:0] _GEN_16; // @[Broadcast.scala 221:35:freechips.rocketchip.system.DefaultRV32Config.fir@80885.4]
  wire [1:0] _T_731; // @[Broadcast.scala 221:35:freechips.rocketchip.system.DefaultRV32Config.fir@80885.4]
  wire  _T_732; // @[Broadcast.scala 222:38:freechips.rocketchip.system.DefaultRV32Config.fir@80886.4]
  wire  _T_800; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@80972.4]
  wire [1:0] _T_801; // @[Broadcast.scala 230:55:freechips.rocketchip.system.DefaultRV32Config.fir@80974.6]
  wire [1:0] _T_802; // @[Broadcast.scala 230:53:freechips.rocketchip.system.DefaultRV32Config.fir@80975.6]
  wire [1:0] _GEN_5; // @[Broadcast.scala 230:26:freechips.rocketchip.system.DefaultRV32Config.fir@80973.4]
  reg [3:0] _T_814; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@80991.4]
  wire  _T_817; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@80994.4]
  wire  _T_860; // @[Broadcast.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@81055.4]
  wire  _T_861; // @[Broadcast.scala 246:31:freechips.rocketchip.system.DefaultRV32Config.fir@81056.4]
  wire  _T_837; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81022.4]
  wire  _T_835; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81020.4]
  wire  _T_833; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81018.4]
  wire  _T_831; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81016.4]
  wire [3:0] _T_841; // @[Broadcast.scala 239:100:freechips.rocketchip.system.DefaultRV32Config.fir@81031.4]
  wire  _T_842; // @[Broadcast.scala 240:43:freechips.rocketchip.system.DefaultRV32Config.fir@81032.4]
  wire  _T_825_3; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81010.4]
  wire  _T_825_2; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81009.4]
  wire  _T_825_1; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81008.4]
  wire  _T_825_0; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81007.4]
  wire [3:0] _T_828; // @[Broadcast.scala 237:64:freechips.rocketchip.system.DefaultRV32Config.fir@81013.4]
  wire [4:0] _T_843; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@81033.4]
  wire [3:0] _T_845; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@81035.4]
  wire [5:0] _T_846; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@81036.4]
  wire [3:0] _T_848; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@81038.4]
  wire [4:0] _T_850; // @[Broadcast.scala 241:64:freechips.rocketchip.system.DefaultRV32Config.fir@81040.4]
  wire [4:0] _T_851; // @[Broadcast.scala 241:41:freechips.rocketchip.system.DefaultRV32Config.fir@81041.4]
  wire [4:0] _GEN_18; // @[Broadcast.scala 241:39:freechips.rocketchip.system.DefaultRV32Config.fir@81042.4]
  wire [4:0] _T_852; // @[Broadcast.scala 241:39:freechips.rocketchip.system.DefaultRV32Config.fir@81042.4]
  wire [4:0] _T_853; // @[Broadcast.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@81043.4]
  wire  _T_854_3; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81049.4]
  wire  _T_854_2; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81048.4]
  wire  _T_854_1; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81047.4]
  wire  _T_854_0; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81046.4]
  wire [3:0] _T_857; // @[Broadcast.scala 243:63:freechips.rocketchip.system.DefaultRV32Config.fir@81052.4]
  wire [4:0] _GEN_19; // @[Broadcast.scala 244:41:freechips.rocketchip.system.DefaultRV32Config.fir@81053.4]
  wire [4:0] _T_858; // @[Broadcast.scala 244:41:freechips.rocketchip.system.DefaultRV32Config.fir@81053.4]
  wire  _T_859; // @[Broadcast.scala 244:61:freechips.rocketchip.system.DefaultRV32Config.fir@81054.4]
  wire  _T_862; // @[Broadcast.scala 246:59:freechips.rocketchip.system.DefaultRV32Config.fir@81057.4]
  wire  _T_805; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@80982.4]
  wire [12:0] _T_807; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80984.4]
  wire [5:0] _T_809; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80986.4]
  wire  _T_812; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80989.4]
  wire [3:0] _T_816; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@80993.4]
  wire  _T_868; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81064.4]
  wire  _T_872; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81071.4]
  wire  _T_876; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81078.4]
  wire  _T_880; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81085.4]
  wire  _T_884; // @[Broadcast.scala 253:45:freechips.rocketchip.system.DefaultRV32Config.fir@81092.4]
  wire  _T_888; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@81097.4]
  wire [3:0] _GEN_20; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81098.4]
  wire [3:0] _T_889; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81098.4]
  wire  _T_892; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@81101.4]
  wire [1:0] _T_893; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81102.4]
  wire [2:0] _T_896; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81105.4]
  wire  _T_901; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81113.4]
  wire  _T_903; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81115.4]
  wire  _T_904; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81116.4]
  wire  _T_917; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81131.4]
  wire  _T_918; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81132.4]
  wire  _T_919; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81133.4]
  wire  _T_920; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81134.4]
  wire  _T_921; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81135.4]
  wire  _T_922; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81136.4]
  wire  _T_923; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81137.4]
  wire  _T_928; // @[Broadcast.scala 260:54:freechips.rocketchip.system.DefaultRV32Config.fir@81144.4]
  wire  _T_932; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@81149.4]
  wire [1:0] _GEN_7; // @[Broadcast.scala 263:40:freechips.rocketchip.system.DefaultRV32Config.fir@81150.4]
  wire [1:0] _T_936; // @[OneHot.scala 64:49:freechips.rocketchip.system.DefaultRV32Config.fir@81158.4]
  wire [3:0] _T_937; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@81159.4]
  TLMonitor_32 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@79689.4]
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
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_c_bits_corrupt(TLMonitor_io_in_c_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  BroadcastFilter BroadcastFilter ( // @[Broadcast.scala 97:26:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
    .io_request_ready(BroadcastFilter_io_request_ready),
    .io_request_valid(BroadcastFilter_io_request_valid),
    .io_request_bits_mshr(BroadcastFilter_io_request_bits_mshr),
    .io_request_bits_address(BroadcastFilter_io_request_bits_address),
    .io_request_bits_allocOH(BroadcastFilter_io_request_bits_allocOH),
    .io_request_bits_needT(BroadcastFilter_io_request_bits_needT),
    .io_response_ready(BroadcastFilter_io_response_ready),
    .io_response_valid(BroadcastFilter_io_response_valid),
    .io_response_bits_mshr(BroadcastFilter_io_response_bits_mshr),
    .io_response_bits_address(BroadcastFilter_io_response_bits_address),
    .io_response_bits_allocOH(BroadcastFilter_io_response_bits_allocOH),
    .io_response_bits_needT(BroadcastFilter_io_response_bits_needT)
  );
  TLBroadcastTracker TLBroadcastTracker ( // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
    .clock(TLBroadcastTracker_clock),
    .reset(TLBroadcastTracker_reset),
    .io_in_a_first(TLBroadcastTracker_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_io_probenack),
    .io_probedack(TLBroadcastTracker_io_probedack),
    .io_probesack(TLBroadcastTracker_io_probesack),
    .io_d_last(TLBroadcastTracker_io_d_last),
    .io_e_last(TLBroadcastTracker_io_e_last),
    .io_source(TLBroadcastTracker_io_source),
    .io_line(TLBroadcastTracker_io_line),
    .io_idle(TLBroadcastTracker_io_idle),
    .io_need_d(TLBroadcastTracker_io_need_d)
  );
  TLBroadcastTracker_1 TLBroadcastTracker_1 ( // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
    .clock(TLBroadcastTracker_1_clock),
    .reset(TLBroadcastTracker_1_reset),
    .io_in_a_first(TLBroadcastTracker_1_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_1_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_1_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_1_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_1_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_1_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_1_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_1_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_1_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_1_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_1_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_1_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_1_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_1_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_1_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_1_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_1_io_probenack),
    .io_probedack(TLBroadcastTracker_1_io_probedack),
    .io_probesack(TLBroadcastTracker_1_io_probesack),
    .io_d_last(TLBroadcastTracker_1_io_d_last),
    .io_e_last(TLBroadcastTracker_1_io_e_last),
    .io_source(TLBroadcastTracker_1_io_source),
    .io_line(TLBroadcastTracker_1_io_line),
    .io_idle(TLBroadcastTracker_1_io_idle),
    .io_need_d(TLBroadcastTracker_1_io_need_d)
  );
  TLBroadcastTracker_2 TLBroadcastTracker_2 ( // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
    .clock(TLBroadcastTracker_2_clock),
    .reset(TLBroadcastTracker_2_reset),
    .io_in_a_first(TLBroadcastTracker_2_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_2_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_2_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_2_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_2_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_2_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_2_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_2_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_2_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_2_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_2_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_2_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_2_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_2_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_2_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_2_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_2_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_2_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_2_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_2_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_2_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_2_io_probenack),
    .io_probedack(TLBroadcastTracker_2_io_probedack),
    .io_probesack(TLBroadcastTracker_2_io_probesack),
    .io_d_last(TLBroadcastTracker_2_io_d_last),
    .io_e_last(TLBroadcastTracker_2_io_e_last),
    .io_source(TLBroadcastTracker_2_io_source),
    .io_line(TLBroadcastTracker_2_io_line),
    .io_idle(TLBroadcastTracker_2_io_idle),
    .io_need_d(TLBroadcastTracker_2_io_need_d)
  );
  TLBroadcastTracker_3 TLBroadcastTracker_3 ( // @[Broadcast.scala 111:15:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
    .clock(TLBroadcastTracker_3_clock),
    .reset(TLBroadcastTracker_3_reset),
    .io_in_a_first(TLBroadcastTracker_3_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_3_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_3_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_3_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_3_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_3_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_3_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_3_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_3_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_3_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_3_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_3_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_3_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_3_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_3_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_3_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_3_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_3_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_3_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_3_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_3_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_3_io_probenack),
    .io_probedack(TLBroadcastTracker_3_io_probedack),
    .io_probesack(TLBroadcastTracker_3_io_probesack),
    .io_d_last(TLBroadcastTracker_3_io_d_last),
    .io_e_last(TLBroadcastTracker_3_io_e_last),
    .io_source(TLBroadcastTracker_3_io_source),
    .io_line(TLBroadcastTracker_3_io_line),
    .io_idle(TLBroadcastTracker_3_io_idle),
    .io_need_d(TLBroadcastTracker_3_io_need_d)
  );
  assign _T_2 = 4'h1 << auto_in_e_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@79768.4]
  assign _T_16 = auto_out_d_bits_source[6:5] == 2'h1; // @[Broadcast.scala 123:27:freechips.rocketchip.system.DefaultRV32Config.fir@79786.4]
  assign _T_324 = _T_323 == 4'h0; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@80210.4]
  assign _T_86 = ~auto_out_d_bits_source[6]; // @[Broadcast.scala 144:37:freechips.rocketchip.system.DefaultRV32Config.fir@79885.4]
  assign _T_87 = auto_out_d_bits_opcode[0] | _T_86; // @[Broadcast.scala 144:34:freechips.rocketchip.system.DefaultRV32Config.fir@79886.4]
  assign _T_31 = _T_27 == 4'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@79802.4]
  assign _T_67 = auto_out_d_bits_opcode[0] ? 3'h5 : 3'h6; // @[Broadcast.scala 136:36:freechips.rocketchip.system.DefaultRV32Config.fir@79858.6]
  assign _GEN_2 = auto_out_d_bits_source[6] ? _T_67 : auto_out_d_bits_opcode; // @[Broadcast.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  assign _T_21 = 13'h3f << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@79792.4]
  assign _T_23 = ~_T_21[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@79794.4]
  assign _T_26 = _GEN_2[0] ? _T_23[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@79797.4]
  assign _T_32 = _T_26 == 4'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@79803.4]
  assign _T_33 = _T_31 | _T_32; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@79804.4]
  assign _T_64 = ~_T_16; // @[Broadcast.scala 133:51:freechips.rocketchip.system.DefaultRV32Config.fir@79852.4]
  assign _T_65 = auto_out_d_valid & _T_64; // @[Broadcast.scala 133:48:freechips.rocketchip.system.DefaultRV32Config.fir@79853.4]
  assign _T_145 = auto_in_c_bits_opcode == 3'h6; // @[Broadcast.scala 165:45:freechips.rocketchip.system.DefaultRV32Config.fir@79958.4]
  assign _T_251 = auto_in_c_valid & _T_145; // @[Broadcast.scala 195:79:freechips.rocketchip.system.DefaultRV32Config.fir@80086.4]
  assign _T_330 = {_T_65,_T_251}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80216.4]
  assign _T_331 = {_T_330, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80217.4]
  assign _T_333 = _T_330 | _T_331[1:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80219.4]
  assign _T_335 = {_T_333, 1'h0}; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@80221.4]
  assign _T_337 = ~_T_335[1:0]; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@80223.4]
  assign _T_386_1 = _T_324 ? _T_337[1] : _T_383_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80295.4]
  assign _T_388 = auto_in_d_ready & _T_386_1; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80298.4]
  assign _T_19 = _T_388 & _T_65; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79790.4]
  assign _T_29 = _T_27 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@79800.4]
  assign _T_30 = _T_27 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@79801.4]
  assign _T_38 = TLBroadcastTracker_io_source == auto_out_d_bits_source[4:0]; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79812.4]
  assign _T_39 = TLBroadcastTracker_io_need_d & _T_38; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79813.4]
  assign _T_40 = TLBroadcastTracker_1_io_source == auto_out_d_bits_source[4:0]; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79814.4]
  assign _T_41 = TLBroadcastTracker_1_io_need_d & _T_40; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79815.4]
  assign _T_42 = TLBroadcastTracker_2_io_source == auto_out_d_bits_source[4:0]; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79816.4]
  assign _T_43 = TLBroadcastTracker_2_io_need_d & _T_42; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79817.4]
  assign _T_44 = TLBroadcastTracker_3_io_source == auto_out_d_bits_source[4:0]; // @[Broadcast.scala 127:74:freechips.rocketchip.system.DefaultRV32Config.fir@79818.4]
  assign _T_45 = TLBroadcastTracker_3_io_need_d & _T_44; // @[Broadcast.scala 127:62:freechips.rocketchip.system.DefaultRV32Config.fir@79819.4]
  assign _T_49 = {_T_45,_T_43,_T_41,_T_39}; // @[Broadcast.scala 127:102:freechips.rocketchip.system.DefaultRV32Config.fir@79828.4]
  assign _GEN_1 = _T_30 ? _T_49 : _T_50; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@79830.4]
  assign _T_52 = ~auto_out_d_valid; // @[Broadcast.scala 129:15:freechips.rocketchip.system.DefaultRV32Config.fir@79834.4]
  assign _T_54 = _T_52 | _T_64; // @[Broadcast.scala 129:28:freechips.rocketchip.system.DefaultRV32Config.fir@79836.4]
  assign _T_55 = auto_out_d_bits_opcode == 3'h0; // @[Broadcast.scala 129:60:freechips.rocketchip.system.DefaultRV32Config.fir@79837.4]
  assign _T_56 = _T_54 | _T_55; // @[Broadcast.scala 129:39:freechips.rocketchip.system.DefaultRV32Config.fir@79838.4]
  assign _T_58 = _T_56 | reset; // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79840.4]
  assign _T_59 = ~_T_58; // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79841.4]
  assign _T_62 = _T_388 | _T_16; // @[Broadcast.scala 132:50:freechips.rocketchip.system.DefaultRV32Config.fir@79849.4]
  assign _T_69 = auto_out_d_bits_source[5] ? 2'h0 : 2'h1; // @[Broadcast.scala 137:51:freechips.rocketchip.system.DefaultRV32Config.fir@79861.6]
  assign _T_70 = auto_out_d_bits_opcode[0] ? _T_69 : 2'h0; // @[Broadcast.scala 137:36:freechips.rocketchip.system.DefaultRV32Config.fir@79862.6]
  assign _GEN_3 = auto_out_d_bits_source[6] ? _T_70 : 2'h0; // @[Broadcast.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  assign _T_73 = |_GEN_1[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@79867.4]
  assign _T_74 = _GEN_1[3:2] | _GEN_1[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@79868.4]
  assign _T_77 = ~_T_65; // @[Broadcast.scala 141:15:freechips.rocketchip.system.DefaultRV32Config.fir@79872.4]
  assign _T_78 = |_GEN_1; // @[Broadcast.scala 141:50:freechips.rocketchip.system.DefaultRV32Config.fir@79873.4]
  assign _T_79 = _GEN_2 == 3'h6; // @[Broadcast.scala 141:77:freechips.rocketchip.system.DefaultRV32Config.fir@79874.4]
  assign _T_80 = _T_78 | _T_79; // @[Broadcast.scala 141:53:freechips.rocketchip.system.DefaultRV32Config.fir@79875.4]
  assign _T_81 = _T_77 | _T_80; // @[Broadcast.scala 141:31:freechips.rocketchip.system.DefaultRV32Config.fir@79876.4]
  assign _T_83 = _T_81 | reset; // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79878.4]
  assign _T_84 = ~_T_83; // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79879.4]
  assign _T_93 = _GEN_1[0] & _T_19; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79892.4]
  assign _T_94 = _T_93 & _T_87; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79893.4]
  assign _T_96 = _T_62 & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79896.4]
  assign _T_97 = _GEN_1[0] & _T_96; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79897.4]
  assign _T_100 = _GEN_1[1] & _T_19; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79901.4]
  assign _T_101 = _T_100 & _T_87; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79902.4]
  assign _T_104 = _GEN_1[1] & _T_96; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79906.4]
  assign _T_107 = _GEN_1[2] & _T_19; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79910.4]
  assign _T_108 = _T_107 & _T_87; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79911.4]
  assign _T_111 = _GEN_1[2] & _T_96; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79915.4]
  assign _T_114 = _GEN_1[3] & _T_19; // @[Broadcast.scala 146:34:freechips.rocketchip.system.DefaultRV32Config.fir@79919.4]
  assign _T_115 = _T_114 & _T_87; // @[Broadcast.scala 146:53:freechips.rocketchip.system.DefaultRV32Config.fir@79920.4]
  assign _T_118 = _GEN_1[3] & _T_96; // @[Broadcast.scala 147:37:freechips.rocketchip.system.DefaultRV32Config.fir@79924.4]
  assign _T_142 = auto_in_c_bits_opcode == 3'h4; // @[Broadcast.scala 162:45:freechips.rocketchip.system.DefaultRV32Config.fir@79955.4]
  assign _T_143 = auto_in_c_bits_opcode == 3'h5; // @[Broadcast.scala 163:45:freechips.rocketchip.system.DefaultRV32Config.fir@79956.4]
  assign _T_144 = auto_in_c_bits_opcode == 3'h7; // @[Broadcast.scala 164:45:freechips.rocketchip.system.DefaultRV32Config.fir@79957.4]
  assign _T_147 = TLBroadcastTracker_io_line == auto_in_c_bits_address[31:6]; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79960.4]
  assign _T_149 = TLBroadcastTracker_1_io_line == auto_in_c_bits_address[31:6]; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79962.4]
  assign _T_151 = TLBroadcastTracker_2_io_line == auto_in_c_bits_address[31:6]; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79964.4]
  assign _T_153 = TLBroadcastTracker_3_io_line == auto_in_c_bits_address[31:6]; // @[Broadcast.scala 166:55:freechips.rocketchip.system.DefaultRV32Config.fir@79966.4]
  assign _T_154 = _T_147 ? TLBroadcastTracker_io_source : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79967.4]
  assign _T_155 = _T_149 ? TLBroadcastTracker_1_io_source : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79968.4]
  assign _T_156 = _T_151 ? TLBroadcastTracker_2_io_source : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79969.4]
  assign _T_157 = _T_153 ? TLBroadcastTracker_3_io_source : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79970.4]
  assign _T_158 = _T_154 | _T_155; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79971.4]
  assign _T_159 = _T_158 | _T_156; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79972.4]
  assign _T_160 = _T_159 | _T_157; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@79973.4]
  assign _T_386_0 = _T_324 ? _T_337[0] : _T_383_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80295.4]
  assign _T_387 = auto_in_d_ready & _T_386_0; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80296.4]
  assign _T_476 = _T_475 == 4'h0; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@80518.4]
  assign _T_474_earlyValid = TLBroadcastTracker_3_io_out_a_valid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80499.4]
  assign _T_473_earlyValid = TLBroadcastTracker_2_io_out_a_valid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80480.4]
  assign _T_472_earlyValid = TLBroadcastTracker_1_io_out_a_valid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80461.4]
  assign _T_471_earlyValid = TLBroadcastTracker_io_out_a_valid; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 73:20:freechips.rocketchip.system.DefaultRV32Config.fir@80442.4]
  assign _T_258 = _T_143 | _T_144; // @[Broadcast.scala 200:54:freechips.rocketchip.system.DefaultRV32Config.fir@80104.4]
  assign _T_259 = auto_in_c_valid & _T_258; // @[Broadcast.scala 200:35:freechips.rocketchip.system.DefaultRV32Config.fir@80105.4]
  assign _T_491 = {_T_474_earlyValid,_T_473_earlyValid,_T_472_earlyValid,_T_471_earlyValid,_T_259}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80533.4]
  assign _T_492 = {_T_491, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80534.4]
  assign _T_494 = _T_491 | _T_492[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80536.4]
  assign _T_495 = {_T_494, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80537.4]
  assign _T_497 = _T_494 | _T_495[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80539.4]
  assign _T_498 = {_T_497, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@80540.4]
  assign _T_500 = _T_497 | _T_498[4:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@80542.4]
  assign _T_502 = {_T_500, 1'h0}; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@80544.4]
  assign _T_504 = ~_T_502[4:0]; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@80546.4]
  assign _T_595_0 = _T_476 ? _T_504[0] : _T_592_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  assign _T_596 = auto_out_a_ready & _T_595_0; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@80676.4]
  assign _T_223 = _T_145 ? _T_387 : _T_596; // @[Broadcast.scala 188:38:freechips.rocketchip.system.DefaultRV32Config.fir@80051.4]
  assign _T_224 = _T_142 | _T_223; // @[Broadcast.scala 188:32:freechips.rocketchip.system.DefaultRV32Config.fir@80052.4]
  assign _T_168 = _T_224 & auto_in_c_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79982.4]
  assign _T_169 = _T_142 | _T_143; // @[Broadcast.scala 174:52:freechips.rocketchip.system.DefaultRV32Config.fir@79983.4]
  assign _T_175 = _T_168 & _T_142; // @[Broadcast.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@79990.4]
  assign _T_178 = _T_168 & _T_147; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@79994.4]
  assign _T_180 = _T_178 & _T_169; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@79996.4]
  assign _T_181 = auto_in_c_bits_param == 3'h0; // @[Broadcast.scala 181:27:freechips.rocketchip.system.DefaultRV32Config.fir@79997.4]
  assign _T_182 = auto_in_c_bits_param == 3'h4; // @[Broadcast.scala 182:27:freechips.rocketchip.system.DefaultRV32Config.fir@79998.4]
  assign _T_183 = _T_181 | _T_182; // @[Broadcast.scala 181:50:freechips.rocketchip.system.DefaultRV32Config.fir@79999.4]
  assign _T_190 = _T_168 & _T_149; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80009.4]
  assign _T_192 = _T_190 & _T_169; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80011.4]
  assign _T_202 = _T_168 & _T_151; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80024.4]
  assign _T_204 = _T_202 & _T_169; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80026.4]
  assign _T_214 = _T_168 & _T_153; // @[Broadcast.scala 180:42:freechips.rocketchip.system.DefaultRV32Config.fir@80039.4]
  assign _T_216 = _T_214 & _T_169; // @[Broadcast.scala 180:52:freechips.rocketchip.system.DefaultRV32Config.fir@80041.4]
  assign _T_227 = 13'h3f << auto_in_c_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80056.4]
  assign _T_229 = ~_T_227[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80058.4]
  assign _T_253 = _T_144 ? 2'h2 : 2'h1; // @[Broadcast.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@80099.4]
  assign _T_254 = _T_144 ? auto_in_c_bits_source : _T_160; // @[Broadcast.scala 199:25:freechips.rocketchip.system.DefaultRV32Config.fir@80100.4]
  assign _T_275 = 2'h1 << auto_in_c_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@80128.4]
  assign _T_277 = _T_275 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@80130.4]
  assign _T_278 = auto_in_c_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@80131.4]
  assign _T_281 = ~auto_in_c_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@80134.4]
  assign _T_283 = _T_277[1] & _T_281; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80136.4]
  assign _T_284 = _T_278 | _T_283; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80137.4]
  assign _T_286 = _T_277[1] & auto_in_c_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80139.4]
  assign _T_287 = _T_278 | _T_286; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80140.4]
  assign _T_290 = ~auto_in_c_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@80143.4]
  assign _T_291 = _T_281 & _T_290; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80144.4]
  assign _T_292 = _T_277[0] & _T_291; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80145.4]
  assign _T_293 = _T_284 | _T_292; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80146.4]
  assign _T_294 = _T_281 & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80147.4]
  assign _T_295 = _T_277[0] & _T_294; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80148.4]
  assign _T_296 = _T_284 | _T_295; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80149.4]
  assign _T_297 = auto_in_c_bits_address[1] & _T_290; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80150.4]
  assign _T_298 = _T_277[0] & _T_297; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80151.4]
  assign _T_299 = _T_287 | _T_298; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80152.4]
  assign _T_300 = auto_in_c_bits_address[1] & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@80153.4]
  assign _T_301 = _T_277[0] & _T_300; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@80154.4]
  assign _T_302 = _T_287 | _T_301; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@80155.4]
  assign _T_325 = _T_324 & auto_in_d_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@80211.4]
  assign _T_341 = _T_337[0] & _T_251; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80229.4]
  assign _T_342 = _T_337[1] & _T_65; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80230.4]
  assign _T_348 = _T_341 | _T_342; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80240.4]
  assign _T_350 = ~_T_341; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80242.4]
  assign _T_353 = ~_T_342; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80245.4]
  assign _T_354 = _T_350 | _T_353; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80246.4]
  assign _T_357 = _T_354 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80249.4]
  assign _T_358 = ~_T_357; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80250.4]
  assign _T_359 = _T_251 | _T_65; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80255.4]
  assign _T_360 = ~_T_359; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@80256.4]
  assign _T_362 = _T_360 | _T_348; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@80258.4]
  assign _T_364 = _T_362 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80260.4]
  assign _T_365 = ~_T_364; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80261.4]
  assign _T_369 = _T_360 | _T_359; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@80269.4]
  assign _T_371 = _T_369 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80271.4]
  assign _T_372 = ~_T_371; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80272.4]
  assign _T_384_0 = _T_324 ? _T_341 : _T_383_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80291.4]
  assign _T_384_1 = _T_324 ? _T_342 : _T_383_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80291.4]
  assign _T_390 = _T_383_0 & _T_251; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80301.4]
  assign _T_391 = _T_383_1 & _T_65; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80302.4]
  assign _T_392 = _T_390 | _T_391; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80303.4]
  assign _T_394 = _T_324 ? _T_359 : _T_392; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@80306.4]
  assign _T_378 = auto_in_d_ready & _T_394; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@80282.4]
  assign _GEN_14 = {{3'd0}, _T_378}; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80283.4]
  assign _T_380 = _T_323 - _GEN_14; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80284.4]
  assign _T_405 = {5'h18,auto_in_c_bits_size,auto_in_c_bits_source,36'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80320.4]
  assign _T_406 = _T_384_0 ? _T_405 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80321.4]
  assign _T_413 = {_GEN_2,_GEN_3,auto_out_d_bits_size,auto_out_d_bits_source[4:0],_T_73,_T_74[1],auto_out_d_bits_denied,auto_out_d_bits_data,auto_out_d_bits_corrupt}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80328.4]
  assign _T_414 = _T_384_1 ? _T_413 : 49'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80329.4]
  assign _T_415 = _T_406 | _T_414; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80330.4]
  assign _T_438 = 13'h3f << TLBroadcastTracker_io_out_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80390.4]
  assign _T_440 = ~_T_438[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80392.4]
  assign _T_443 = ~TLBroadcastTracker_io_out_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80395.4]
  assign _T_444 = _T_443 ? _T_440[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80396.4]
  assign _T_446 = 13'h3f << TLBroadcastTracker_1_io_out_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80398.4]
  assign _T_448 = ~_T_446[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80400.4]
  assign _T_451 = ~TLBroadcastTracker_1_io_out_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80403.4]
  assign _T_452 = _T_451 ? _T_448[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80404.4]
  assign _T_454 = 13'h3f << TLBroadcastTracker_2_io_out_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80406.4]
  assign _T_456 = ~_T_454[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80408.4]
  assign _T_459 = ~TLBroadcastTracker_2_io_out_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80411.4]
  assign _T_460 = _T_459 ? _T_456[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80412.4]
  assign _T_462 = 13'h3f << TLBroadcastTracker_3_io_out_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80414.4]
  assign _T_464 = ~_T_462[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80416.4]
  assign _T_467 = ~TLBroadcastTracker_3_io_out_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80419.4]
  assign _T_468 = _T_467 ? _T_464[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@80420.4]
  assign _T_477 = _T_476 & auto_out_a_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@80519.4]
  assign _T_511 = _T_504[0] & _T_259; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80558.4]
  assign _T_512 = _T_504[1] & _T_471_earlyValid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80559.4]
  assign _T_513 = _T_504[2] & _T_472_earlyValid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80560.4]
  assign _T_514 = _T_504[3] & _T_473_earlyValid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80561.4]
  assign _T_515 = _T_504[4] & _T_474_earlyValid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@80562.4]
  assign _T_524 = _T_511 | _T_512; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80581.4]
  assign _T_525 = _T_524 | _T_513; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80582.4]
  assign _T_526 = _T_525 | _T_514; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80583.4]
  assign _T_527 = _T_526 | _T_515; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@80584.4]
  assign _T_529 = ~_T_511; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80586.4]
  assign _T_532 = ~_T_512; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80589.4]
  assign _T_533 = _T_529 | _T_532; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80590.4]
  assign _T_534 = ~_T_524; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80591.4]
  assign _T_535 = ~_T_513; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80592.4]
  assign _T_536 = _T_534 | _T_535; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80593.4]
  assign _T_537 = ~_T_525; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80594.4]
  assign _T_538 = ~_T_514; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80595.4]
  assign _T_539 = _T_537 | _T_538; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80596.4]
  assign _T_540 = ~_T_526; // @[Arbiter.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@80597.4]
  assign _T_541 = ~_T_515; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@80598.4]
  assign _T_542 = _T_540 | _T_541; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@80599.4]
  assign _T_544 = _T_533 & _T_536; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80601.4]
  assign _T_545 = _T_544 & _T_539; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80602.4]
  assign _T_546 = _T_545 & _T_542; // @[Arbiter.scala 96:82:freechips.rocketchip.system.DefaultRV32Config.fir@80603.4]
  assign _T_548 = _T_546 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80605.4]
  assign _T_549 = ~_T_548; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80606.4]
  assign _T_550 = _T_259 | _T_471_earlyValid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80611.4]
  assign _T_551 = _T_550 | _T_472_earlyValid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80612.4]
  assign _T_552 = _T_551 | _T_473_earlyValid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80613.4]
  assign _T_553 = _T_552 | _T_474_earlyValid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@80614.4]
  assign _T_554 = ~_T_553; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@80615.4]
  assign _T_559 = _T_554 | _T_527; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@80620.4]
  assign _T_561 = _T_559 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80622.4]
  assign _T_562 = ~_T_561; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80623.4]
  assign _T_572 = _T_554 | _T_553; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@80637.4]
  assign _T_574 = _T_572 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80639.4]
  assign _T_575 = ~_T_574; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80640.4]
  assign _T_576 = _T_511 ? _T_229[5:2] : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80645.4]
  assign _T_577 = _T_512 ? _T_444 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80646.4]
  assign _T_578 = _T_513 ? _T_452 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80647.4]
  assign _T_579 = _T_514 ? _T_460 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80648.4]
  assign _T_580 = _T_515 ? _T_468 : 4'h0; // @[Arbiter.scala 102:73:freechips.rocketchip.system.DefaultRV32Config.fir@80649.4]
  assign _T_581 = _T_576 | _T_577; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80650.4]
  assign _T_582 = _T_581 | _T_578; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80651.4]
  assign _T_583 = _T_582 | _T_579; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80652.4]
  assign _T_584 = _T_583 | _T_580; // @[Arbiter.scala 103:44:freechips.rocketchip.system.DefaultRV32Config.fir@80653.4]
  assign _T_593_0 = _T_476 ? _T_511 : _T_592_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  assign _T_593_1 = _T_476 ? _T_512 : _T_592_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  assign _T_593_2 = _T_476 ? _T_513 : _T_592_2; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  assign _T_593_3 = _T_476 ? _T_514 : _T_592_3; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  assign _T_593_4 = _T_476 ? _T_515 : _T_592_4; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@80668.4]
  assign _T_605 = _T_592_0 & _T_259; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80690.4]
  assign _T_606 = _T_592_1 & _T_471_earlyValid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80691.4]
  assign _T_610 = _T_605 | _T_606; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80695.4]
  assign _T_607 = _T_592_2 & _T_472_earlyValid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80692.4]
  assign _T_611 = _T_610 | _T_607; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80696.4]
  assign _T_608 = _T_592_3 & _T_473_earlyValid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80693.4]
  assign _T_612 = _T_611 | _T_608; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80697.4]
  assign _T_609 = _T_592_4 & _T_474_earlyValid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80694.4]
  assign _T_613 = _T_612 | _T_609; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80698.4]
  assign _T_615 = _T_476 ? _T_553 : _T_613; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@80701.4]
  assign _T_587 = auto_out_a_ready & _T_615; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@80656.4]
  assign _GEN_15 = {{3'd0}, _T_587}; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80657.4]
  assign _T_589 = _T_475 - _GEN_15; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@80658.4]
  assign _T_595_1 = _T_476 ? _T_504[1] : _T_592_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  assign _T_595_2 = _T_476 ? _T_504[2] : _T_592_2; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  assign _T_595_3 = _T_476 ? _T_504[3] : _T_592_3; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  assign _T_595_4 = _T_476 ? _T_504[4] : _T_592_4; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@80675.4]
  assign _T_631 = {4'he,_T_302,_T_299,_T_296,_T_293,auto_in_c_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80720.4]
  assign _T_639 = {6'h0,auto_in_c_bits_size,_T_253,_T_254,auto_in_c_bits_address,1'h1,2'h3,_T_631}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80728.4]
  assign _T_640 = _T_593_0 ? _T_639 : 92'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80729.4]
  assign _T_471_bits_mask = TLBroadcastTracker_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80446.4]
  assign _T_471_bits_data = TLBroadcastTracker_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80445.4]
  assign _T_471_bits_user_amba_prot_secure = TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80448.4]
  assign _T_471_bits_user_amba_prot_fetch = TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80447.4]
  assign _T_471_bits_user_amba_prot_writealloc = TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80450.4]
  assign _T_471_bits_user_amba_prot_privileged = TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80449.4]
  assign _T_646 = {_T_471_bits_user_amba_prot_writealloc,_T_471_bits_user_amba_prot_privileged,_T_471_bits_user_amba_prot_secure,_T_471_bits_user_amba_prot_fetch,_T_471_bits_mask,_T_471_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80735.4]
  assign _T_471_bits_user_amba_prot_modifiable = TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80452.4]
  assign _T_471_bits_user_amba_prot_readalloc = TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80451.4]
  assign _T_471_bits_address = TLBroadcastTracker_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80454.4]
  assign _T_471_bits_user_amba_prot_bufferable = TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80453.4]
  assign _T_471_bits_size = TLBroadcastTracker_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80456.4]
  assign _T_471_bits_source = TLBroadcastTracker_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80455.4]
  assign _T_471_bits_opcode = TLBroadcastTracker_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80458.4]
  assign _T_471_bits_param = TLBroadcastTracker_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80441.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80457.4]
  assign _T_654 = {_T_471_bits_opcode,_T_471_bits_param,_T_471_bits_size,_T_471_bits_source,_T_471_bits_address,_T_471_bits_user_amba_prot_bufferable,_T_471_bits_user_amba_prot_modifiable,_T_471_bits_user_amba_prot_readalloc,_T_646}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80743.4]
  assign _T_655 = _T_593_1 ? _T_654 : 92'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80744.4]
  assign _T_472_bits_mask = TLBroadcastTracker_1_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80465.4]
  assign _T_472_bits_data = TLBroadcastTracker_1_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80464.4]
  assign _T_472_bits_user_amba_prot_secure = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80467.4]
  assign _T_472_bits_user_amba_prot_fetch = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80466.4]
  assign _T_472_bits_user_amba_prot_writealloc = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80469.4]
  assign _T_472_bits_user_amba_prot_privileged = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80468.4]
  assign _T_661 = {_T_472_bits_user_amba_prot_writealloc,_T_472_bits_user_amba_prot_privileged,_T_472_bits_user_amba_prot_secure,_T_472_bits_user_amba_prot_fetch,_T_472_bits_mask,_T_472_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80750.4]
  assign _T_472_bits_user_amba_prot_modifiable = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80471.4]
  assign _T_472_bits_user_amba_prot_readalloc = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80470.4]
  assign _T_472_bits_address = TLBroadcastTracker_1_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80473.4]
  assign _T_472_bits_user_amba_prot_bufferable = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80472.4]
  assign _T_472_bits_size = TLBroadcastTracker_1_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80475.4]
  assign _T_472_bits_source = TLBroadcastTracker_1_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80474.4]
  assign _T_472_bits_opcode = TLBroadcastTracker_1_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80477.4]
  assign _T_472_bits_param = TLBroadcastTracker_1_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80460.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80476.4]
  assign _T_669 = {_T_472_bits_opcode,_T_472_bits_param,_T_472_bits_size,_T_472_bits_source,_T_472_bits_address,_T_472_bits_user_amba_prot_bufferable,_T_472_bits_user_amba_prot_modifiable,_T_472_bits_user_amba_prot_readalloc,_T_661}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80758.4]
  assign _T_670 = _T_593_2 ? _T_669 : 92'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80759.4]
  assign _T_473_bits_mask = TLBroadcastTracker_2_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80484.4]
  assign _T_473_bits_data = TLBroadcastTracker_2_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80483.4]
  assign _T_473_bits_user_amba_prot_secure = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80486.4]
  assign _T_473_bits_user_amba_prot_fetch = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80485.4]
  assign _T_473_bits_user_amba_prot_writealloc = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80488.4]
  assign _T_473_bits_user_amba_prot_privileged = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80487.4]
  assign _T_676 = {_T_473_bits_user_amba_prot_writealloc,_T_473_bits_user_amba_prot_privileged,_T_473_bits_user_amba_prot_secure,_T_473_bits_user_amba_prot_fetch,_T_473_bits_mask,_T_473_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80765.4]
  assign _T_473_bits_user_amba_prot_modifiable = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80490.4]
  assign _T_473_bits_user_amba_prot_readalloc = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80489.4]
  assign _T_473_bits_address = TLBroadcastTracker_2_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80492.4]
  assign _T_473_bits_user_amba_prot_bufferable = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80491.4]
  assign _T_473_bits_size = TLBroadcastTracker_2_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80494.4]
  assign _T_473_bits_source = TLBroadcastTracker_2_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80493.4]
  assign _T_473_bits_opcode = TLBroadcastTracker_2_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80496.4]
  assign _T_473_bits_param = TLBroadcastTracker_2_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80479.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80495.4]
  assign _T_684 = {_T_473_bits_opcode,_T_473_bits_param,_T_473_bits_size,_T_473_bits_source,_T_473_bits_address,_T_473_bits_user_amba_prot_bufferable,_T_473_bits_user_amba_prot_modifiable,_T_473_bits_user_amba_prot_readalloc,_T_676}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80773.4]
  assign _T_685 = _T_593_3 ? _T_684 : 92'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80774.4]
  assign _T_474_bits_mask = TLBroadcastTracker_3_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80503.4]
  assign _T_474_bits_data = TLBroadcastTracker_3_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80502.4]
  assign _T_474_bits_user_amba_prot_secure = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80505.4]
  assign _T_474_bits_user_amba_prot_fetch = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80504.4]
  assign _T_474_bits_user_amba_prot_writealloc = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80507.4]
  assign _T_474_bits_user_amba_prot_privileged = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80506.4]
  assign _T_691 = {_T_474_bits_user_amba_prot_writealloc,_T_474_bits_user_amba_prot_privileged,_T_474_bits_user_amba_prot_secure,_T_474_bits_user_amba_prot_fetch,_T_474_bits_mask,_T_474_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80780.4]
  assign _T_474_bits_user_amba_prot_modifiable = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80509.4]
  assign _T_474_bits_user_amba_prot_readalloc = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80508.4]
  assign _T_474_bits_address = TLBroadcastTracker_3_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80511.4]
  assign _T_474_bits_user_amba_prot_bufferable = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80510.4]
  assign _T_474_bits_size = TLBroadcastTracker_3_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80513.4]
  assign _T_474_bits_source = TLBroadcastTracker_3_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80512.4]
  assign _T_474_bits_opcode = TLBroadcastTracker_3_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80515.4]
  assign _T_474_bits_param = TLBroadcastTracker_3_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@80498.4 ReadyValidCancel.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@80514.4]
  assign _T_699 = {_T_474_bits_opcode,_T_474_bits_param,_T_474_bits_size,_T_474_bits_source,_T_474_bits_address,_T_474_bits_user_amba_prot_bufferable,_T_474_bits_user_amba_prot_modifiable,_T_474_bits_user_amba_prot_readalloc,_T_691}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80788.4]
  assign _T_700 = _T_593_4 ? _T_699 : 92'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80789.4]
  assign _T_701 = _T_640 | _T_655; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80790.4]
  assign _T_702 = _T_701 | _T_670; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80791.4]
  assign _T_703 = _T_702 | _T_685; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80792.4]
  assign _T_704 = _T_703 | _T_700; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@80793.4]
  assign _T_729 = {_T_725, 1'h0}; // @[Broadcast.scala 221:58:freechips.rocketchip.system.DefaultRV32Config.fir@80883.4]
  assign _T_730 = ~_T_729; // @[Broadcast.scala 221:37:freechips.rocketchip.system.DefaultRV32Config.fir@80884.4]
  assign _GEN_16 = {{1'd0}, _T_725}; // @[Broadcast.scala 221:35:freechips.rocketchip.system.DefaultRV32Config.fir@80885.4]
  assign _T_731 = _GEN_16 & _T_730; // @[Broadcast.scala 221:35:freechips.rocketchip.system.DefaultRV32Config.fir@80885.4]
  assign _T_732 = |_T_725; // @[Broadcast.scala 222:38:freechips.rocketchip.system.DefaultRV32Config.fir@80886.4]
  assign _T_800 = auto_in_b_ready & _T_732; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@80972.4]
  assign _T_801 = ~_T_731; // @[Broadcast.scala 230:55:freechips.rocketchip.system.DefaultRV32Config.fir@80974.6]
  assign _T_802 = _GEN_16 & _T_801; // @[Broadcast.scala 230:53:freechips.rocketchip.system.DefaultRV32Config.fir@80975.6]
  assign _GEN_5 = _T_800 ? _T_802 : {{1'd0}, _T_725}; // @[Broadcast.scala 230:26:freechips.rocketchip.system.DefaultRV32Config.fir@80973.4]
  assign _T_817 = _T_814 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@80994.4]
  assign _T_860 = ~_T_817; // @[Broadcast.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@81055.4]
  assign _T_861 = _T_860 | BroadcastFilter_io_request_ready; // @[Broadcast.scala 246:31:freechips.rocketchip.system.DefaultRV32Config.fir@81056.4]
  assign _T_837 = TLBroadcastTracker_3_io_line == auto_in_a_bits_address[31:6]; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81022.4]
  assign _T_835 = TLBroadcastTracker_2_io_line == auto_in_a_bits_address[31:6]; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81020.4]
  assign _T_833 = TLBroadcastTracker_1_io_line == auto_in_a_bits_address[31:6]; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81018.4]
  assign _T_831 = TLBroadcastTracker_io_line == auto_in_a_bits_address[31:6]; // @[Broadcast.scala 239:62:freechips.rocketchip.system.DefaultRV32Config.fir@81016.4]
  assign _T_841 = {_T_837,_T_835,_T_833,_T_831}; // @[Broadcast.scala 239:100:freechips.rocketchip.system.DefaultRV32Config.fir@81031.4]
  assign _T_842 = |_T_841; // @[Broadcast.scala 240:43:freechips.rocketchip.system.DefaultRV32Config.fir@81032.4]
  assign _T_825_3 = TLBroadcastTracker_3_io_idle; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81010.4]
  assign _T_825_2 = TLBroadcastTracker_2_io_idle; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81009.4]
  assign _T_825_1 = TLBroadcastTracker_1_io_idle; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81008.4]
  assign _T_825_0 = TLBroadcastTracker_io_idle; // @[Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81005.4 Broadcast.scala 237:33:freechips.rocketchip.system.DefaultRV32Config.fir@81007.4]
  assign _T_828 = {_T_825_3,_T_825_2,_T_825_1,_T_825_0}; // @[Broadcast.scala 237:64:freechips.rocketchip.system.DefaultRV32Config.fir@81013.4]
  assign _T_843 = {_T_828, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@81033.4]
  assign _T_845 = _T_828 | _T_843[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@81035.4]
  assign _T_846 = {_T_845, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@81036.4]
  assign _T_848 = _T_845 | _T_846[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@81038.4]
  assign _T_850 = {_T_848, 1'h0}; // @[Broadcast.scala 241:64:freechips.rocketchip.system.DefaultRV32Config.fir@81040.4]
  assign _T_851 = ~_T_850; // @[Broadcast.scala 241:41:freechips.rocketchip.system.DefaultRV32Config.fir@81041.4]
  assign _GEN_18 = {{1'd0}, _T_828}; // @[Broadcast.scala 241:39:freechips.rocketchip.system.DefaultRV32Config.fir@81042.4]
  assign _T_852 = _GEN_18 & _T_851; // @[Broadcast.scala 241:39:freechips.rocketchip.system.DefaultRV32Config.fir@81042.4]
  assign _T_853 = _T_842 ? {{1'd0}, _T_841} : _T_852; // @[Broadcast.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@81043.4]
  assign _T_854_3 = TLBroadcastTracker_3_io_in_a_ready; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81049.4]
  assign _T_854_2 = TLBroadcastTracker_2_io_in_a_ready; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81048.4]
  assign _T_854_1 = TLBroadcastTracker_1_io_in_a_ready; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81047.4]
  assign _T_854_0 = TLBroadcastTracker_io_in_a_ready; // @[Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81044.4 Broadcast.scala 243:34:freechips.rocketchip.system.DefaultRV32Config.fir@81046.4]
  assign _T_857 = {_T_854_3,_T_854_2,_T_854_1,_T_854_0}; // @[Broadcast.scala 243:63:freechips.rocketchip.system.DefaultRV32Config.fir@81052.4]
  assign _GEN_19 = {{1'd0}, _T_857}; // @[Broadcast.scala 244:41:freechips.rocketchip.system.DefaultRV32Config.fir@81053.4]
  assign _T_858 = _T_853 & _GEN_19; // @[Broadcast.scala 244:41:freechips.rocketchip.system.DefaultRV32Config.fir@81053.4]
  assign _T_859 = |_T_858; // @[Broadcast.scala 244:61:freechips.rocketchip.system.DefaultRV32Config.fir@81054.4]
  assign _T_862 = _T_861 & _T_859; // @[Broadcast.scala 246:59:freechips.rocketchip.system.DefaultRV32Config.fir@81057.4]
  assign _T_805 = _T_862 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@80982.4]
  assign _T_807 = 13'h3f << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@80984.4]
  assign _T_809 = ~_T_807[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@80986.4]
  assign _T_812 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@80989.4]
  assign _T_816 = _T_814 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@80993.4]
  assign _T_868 = auto_in_a_valid & _T_853[0]; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81064.4]
  assign _T_872 = auto_in_a_valid & _T_853[1]; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81071.4]
  assign _T_876 = auto_in_a_valid & _T_853[2]; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81078.4]
  assign _T_880 = auto_in_a_valid & _T_853[3]; // @[Broadcast.scala 248:36:freechips.rocketchip.system.DefaultRV32Config.fir@81085.4]
  assign _T_884 = auto_in_a_valid & _T_817; // @[Broadcast.scala 253:45:freechips.rocketchip.system.DefaultRV32Config.fir@81092.4]
  assign _T_888 = |_T_853[4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@81097.4]
  assign _GEN_20 = {{3'd0}, _T_853[4]}; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81098.4]
  assign _T_889 = _GEN_20 | _T_853[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81098.4]
  assign _T_892 = |_T_889[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@81101.4]
  assign _T_893 = _T_889[3:2] | _T_889[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@81102.4]
  assign _T_896 = {_T_888,_T_892,_T_893[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81105.4]
  assign _T_901 = 3'h1 == auto_in_a_bits_param; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81113.4]
  assign _T_903 = 3'h2 == auto_in_a_bits_param; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81115.4]
  assign _T_904 = _T_903 | _T_901; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81116.4]
  assign _T_917 = 3'h4 == auto_in_a_bits_opcode; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81131.4]
  assign _T_918 = _T_917 ? 1'h0 : 1'h1; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81132.4]
  assign _T_919 = 3'h5 == auto_in_a_bits_opcode; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81133.4]
  assign _T_920 = _T_919 ? _T_901 : _T_918; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81134.4]
  assign _T_921 = 3'h6 == auto_in_a_bits_opcode; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81135.4]
  assign _T_922 = _T_921 ? _T_904 : _T_920; // @[Mux.scala 80:57:freechips.rocketchip.system.DefaultRV32Config.fir@81136.4]
  assign _T_923 = 3'h7 == auto_in_a_bits_opcode; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@81137.4]
  assign _T_928 = ~BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 260:54:freechips.rocketchip.system.DefaultRV32Config.fir@81144.4]
  assign _T_932 = BroadcastFilter_io_response_ready & BroadcastFilter_io_response_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@81149.4]
  assign _GEN_7 = _T_932 ? {{1'd0}, _T_928} : _GEN_5; // @[Broadcast.scala 263:40:freechips.rocketchip.system.DefaultRV32Config.fir@81150.4]
  assign _T_936 = BroadcastFilter_io_response_bits_mshr; // @[OneHot.scala 64:49:freechips.rocketchip.system.DefaultRV32Config.fir@81158.4]
  assign _T_937 = 4'h1 << _T_936; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@81159.4]
  assign auto_in_a_ready = _T_861 & _T_859; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_b_valid = |_T_725; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_b_bits_param = _T_727; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_b_bits_address = {_T_726, 6'h0}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_c_ready = _T_142 | _T_223; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_valid = _T_324 ? _T_359 : _T_392; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_opcode = _T_415[48:46]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_param = _T_415[45:44]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_size = _T_415[43:41]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_source = _T_415[40:36]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_sink = _T_415[35:34]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_denied = _T_415[33]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_data = _T_415[32:1]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_in_d_bits_corrupt = _T_415[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign auto_out_a_valid = _T_476 ? _T_553 : _T_613; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_opcode = _T_704[91:89]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_param = _T_704[88:86]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_size = _T_704[85:83]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_source = _T_704[82:76]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_address = _T_704[75:44]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_bufferable = _T_704[43]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_modifiable = _T_704[42]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_readalloc = _T_704[41]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_writealloc = _T_704[40]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_privileged = _T_704[39]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_secure = _T_704[38]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_user_amba_prot_fetch = _T_704[37]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_mask = _T_704[36:33]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_data = _T_704[32:1]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_a_bits_corrupt = _T_704[0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign auto_out_d_ready = _T_388 | _T_16; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79690.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79691.4]
  assign TLMonitor_io_in_a_ready = _T_861 & _T_859; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79740.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79739.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79738.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79737.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79736.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79735.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79734.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79726.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79724.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79723.4]
  assign TLMonitor_io_in_b_valid = |_T_725; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79722.4]
  assign TLMonitor_io_in_b_bits_param = _T_727; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79720.4]
  assign TLMonitor_io_in_b_bits_address = {_T_726, 6'h0}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79717.4]
  assign TLMonitor_io_in_c_ready = _T_142 | _T_223; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79713.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79712.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79711.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79710.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79709.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79708.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79707.4]
  assign TLMonitor_io_in_c_bits_corrupt = auto_in_c_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79705.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79704.4]
  assign TLMonitor_io_in_d_valid = _T_324 ? _T_359 : _T_392; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79703.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_415[48:46]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79702.4]
  assign TLMonitor_io_in_d_bits_param = _T_415[45:44]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79701.4]
  assign TLMonitor_io_in_d_bits_size = _T_415[43:41]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79700.4]
  assign TLMonitor_io_in_d_bits_source = _T_415[40:36]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79699.4]
  assign TLMonitor_io_in_d_bits_sink = _T_415[35:34]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79698.4]
  assign TLMonitor_io_in_d_bits_denied = _T_415[33]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79697.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_415[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79695.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79693.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@79692.4]
  assign BroadcastFilter_io_request_valid = _T_884 & _T_859; // @[Broadcast.scala 253:31:freechips.rocketchip.system.DefaultRV32Config.fir@81094.4]
  assign BroadcastFilter_io_request_bits_mshr = _T_896[1:0]; // @[Broadcast.scala 254:38:freechips.rocketchip.system.DefaultRV32Config.fir@81106.4]
  assign BroadcastFilter_io_request_bits_address = auto_in_a_bits_address[31:6]; // @[Broadcast.scala 255:38:freechips.rocketchip.system.DefaultRV32Config.fir@81108.4]
  assign BroadcastFilter_io_request_bits_allocOH = auto_in_a_bits_source == 5'h10; // @[Broadcast.scala 257:38:freechips.rocketchip.system.DefaultRV32Config.fir@81140.4]
  assign BroadcastFilter_io_request_bits_needT = _T_923 ? _T_904 : _T_922; // @[Broadcast.scala 256:38:freechips.rocketchip.system.DefaultRV32Config.fir@81139.4]
  assign BroadcastFilter_io_response_ready = ~_T_732; // @[Broadcast.scala 262:32:freechips.rocketchip.system.DefaultRV32Config.fir@81148.4]
  assign TLBroadcastTracker_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79753.4]
  assign TLBroadcastTracker_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79754.4]
  assign TLBroadcastTracker_io_in_a_first = _T_814 == 4'h0; // @[Broadcast.scala 250:22:freechips.rocketchip.system.DefaultRV32Config.fir@81070.4]
  assign TLBroadcastTracker_io_in_a_valid = _T_868 & _T_861; // @[Broadcast.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@81068.4]
  assign TLBroadcastTracker_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_param = auto_in_a_bits_param; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_size = auto_in_a_bits_size; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_source = auto_in_a_bits_source; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_address = auto_in_a_bits_address; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_in_a_bits_data = auto_in_a_bits_data; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81069.4]
  assign TLBroadcastTracker_io_out_a_ready = auto_out_a_ready & _T_595_1; // @[ReadyValidCancel.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@80459.4]
  assign TLBroadcastTracker_io_probe_valid = _T_932 & _T_937[0]; // @[Broadcast.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@81171.4]
  assign TLBroadcastTracker_io_probe_bits_count = ~BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@81172.4]
  assign TLBroadcastTracker_io_probenack = _T_175 & _T_147; // @[Broadcast.scala 179:27:freechips.rocketchip.system.DefaultRV32Config.fir@79992.4]
  assign TLBroadcastTracker_io_probedack = _T_97 & _T_16; // @[Broadcast.scala 147:27:freechips.rocketchip.system.DefaultRV32Config.fir@79899.4]
  assign TLBroadcastTracker_io_probesack = _T_180 & _T_183; // @[Broadcast.scala 180:27:freechips.rocketchip.system.DefaultRV32Config.fir@80001.4 Broadcast.scala 278:51:freechips.rocketchip.system.DefaultRV32Config.fir@81176.6]
  assign TLBroadcastTracker_io_d_last = _T_94 & _T_33; // @[Broadcast.scala 146:24:freechips.rocketchip.system.DefaultRV32Config.fir@79895.4]
  assign TLBroadcastTracker_io_e_last = _T_2[0] & auto_in_e_valid; // @[Broadcast.scala 117:24:freechips.rocketchip.system.DefaultRV32Config.fir@79775.4]
  assign TLBroadcastTracker_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79757.4]
  assign TLBroadcastTracker_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79758.4]
  assign TLBroadcastTracker_1_io_in_a_first = _T_814 == 4'h0; // @[Broadcast.scala 250:22:freechips.rocketchip.system.DefaultRV32Config.fir@81077.4]
  assign TLBroadcastTracker_1_io_in_a_valid = _T_872 & _T_861; // @[Broadcast.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@81075.4]
  assign TLBroadcastTracker_1_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_param = auto_in_a_bits_param; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_size = auto_in_a_bits_size; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_source = auto_in_a_bits_source; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_address = auto_in_a_bits_address; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_in_a_bits_data = auto_in_a_bits_data; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81076.4]
  assign TLBroadcastTracker_1_io_out_a_ready = auto_out_a_ready & _T_595_2; // @[ReadyValidCancel.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@80478.4]
  assign TLBroadcastTracker_1_io_probe_valid = _T_932 & _T_937[1]; // @[Broadcast.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@81180.4]
  assign TLBroadcastTracker_1_io_probe_bits_count = ~BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@81181.4]
  assign TLBroadcastTracker_1_io_probenack = _T_175 & _T_149; // @[Broadcast.scala 179:27:freechips.rocketchip.system.DefaultRV32Config.fir@80007.4]
  assign TLBroadcastTracker_1_io_probedack = _T_104 & _T_16; // @[Broadcast.scala 147:27:freechips.rocketchip.system.DefaultRV32Config.fir@79908.4]
  assign TLBroadcastTracker_1_io_probesack = _T_192 & _T_183; // @[Broadcast.scala 180:27:freechips.rocketchip.system.DefaultRV32Config.fir@80016.4 Broadcast.scala 278:51:freechips.rocketchip.system.DefaultRV32Config.fir@81185.6]
  assign TLBroadcastTracker_1_io_d_last = _T_101 & _T_33; // @[Broadcast.scala 146:24:freechips.rocketchip.system.DefaultRV32Config.fir@79904.4]
  assign TLBroadcastTracker_1_io_e_last = _T_2[1] & auto_in_e_valid; // @[Broadcast.scala 117:24:freechips.rocketchip.system.DefaultRV32Config.fir@79778.4]
  assign TLBroadcastTracker_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79761.4]
  assign TLBroadcastTracker_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79762.4]
  assign TLBroadcastTracker_2_io_in_a_first = _T_814 == 4'h0; // @[Broadcast.scala 250:22:freechips.rocketchip.system.DefaultRV32Config.fir@81084.4]
  assign TLBroadcastTracker_2_io_in_a_valid = _T_876 & _T_861; // @[Broadcast.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@81082.4]
  assign TLBroadcastTracker_2_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_param = auto_in_a_bits_param; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_size = auto_in_a_bits_size; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_source = auto_in_a_bits_source; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_address = auto_in_a_bits_address; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_in_a_bits_data = auto_in_a_bits_data; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81083.4]
  assign TLBroadcastTracker_2_io_out_a_ready = auto_out_a_ready & _T_595_3; // @[ReadyValidCancel.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@80497.4]
  assign TLBroadcastTracker_2_io_probe_valid = _T_932 & _T_937[2]; // @[Broadcast.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@81189.4]
  assign TLBroadcastTracker_2_io_probe_bits_count = ~BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@81190.4]
  assign TLBroadcastTracker_2_io_probenack = _T_175 & _T_151; // @[Broadcast.scala 179:27:freechips.rocketchip.system.DefaultRV32Config.fir@80022.4]
  assign TLBroadcastTracker_2_io_probedack = _T_111 & _T_16; // @[Broadcast.scala 147:27:freechips.rocketchip.system.DefaultRV32Config.fir@79917.4]
  assign TLBroadcastTracker_2_io_probesack = _T_204 & _T_183; // @[Broadcast.scala 180:27:freechips.rocketchip.system.DefaultRV32Config.fir@80031.4 Broadcast.scala 278:51:freechips.rocketchip.system.DefaultRV32Config.fir@81194.6]
  assign TLBroadcastTracker_2_io_d_last = _T_108 & _T_33; // @[Broadcast.scala 146:24:freechips.rocketchip.system.DefaultRV32Config.fir@79913.4]
  assign TLBroadcastTracker_2_io_e_last = _T_2[2] & auto_in_e_valid; // @[Broadcast.scala 117:24:freechips.rocketchip.system.DefaultRV32Config.fir@79781.4]
  assign TLBroadcastTracker_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79765.4]
  assign TLBroadcastTracker_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79766.4]
  assign TLBroadcastTracker_3_io_in_a_first = _T_814 == 4'h0; // @[Broadcast.scala 250:22:freechips.rocketchip.system.DefaultRV32Config.fir@81091.4]
  assign TLBroadcastTracker_3_io_in_a_valid = _T_880 & _T_861; // @[Broadcast.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@81089.4]
  assign TLBroadcastTracker_3_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_param = auto_in_a_bits_param; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_size = auto_in_a_bits_size; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_source = auto_in_a_bits_source; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_address = auto_in_a_bits_address; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_in_a_bits_data = auto_in_a_bits_data; // @[Broadcast.scala 249:21:freechips.rocketchip.system.DefaultRV32Config.fir@81090.4]
  assign TLBroadcastTracker_3_io_out_a_ready = auto_out_a_ready & _T_595_4; // @[ReadyValidCancel.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@80516.4]
  assign TLBroadcastTracker_3_io_probe_valid = _T_932 & _T_937[3]; // @[Broadcast.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@81198.4]
  assign TLBroadcastTracker_3_io_probe_bits_count = ~BroadcastFilter_io_response_bits_allocOH; // @[Broadcast.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@81199.4]
  assign TLBroadcastTracker_3_io_probenack = _T_175 & _T_153; // @[Broadcast.scala 179:27:freechips.rocketchip.system.DefaultRV32Config.fir@80037.4]
  assign TLBroadcastTracker_3_io_probedack = _T_118 & _T_16; // @[Broadcast.scala 147:27:freechips.rocketchip.system.DefaultRV32Config.fir@79926.4]
  assign TLBroadcastTracker_3_io_probesack = _T_216 & _T_183; // @[Broadcast.scala 180:27:freechips.rocketchip.system.DefaultRV32Config.fir@80046.4 Broadcast.scala 278:51:freechips.rocketchip.system.DefaultRV32Config.fir@81203.6]
  assign TLBroadcastTracker_3_io_d_last = _T_115 & _T_33; // @[Broadcast.scala 146:24:freechips.rocketchip.system.DefaultRV32Config.fir@79922.4]
  assign TLBroadcastTracker_3_io_e_last = _T_2[3] & auto_in_e_valid; // @[Broadcast.scala 117:24:freechips.rocketchip.system.DefaultRV32Config.fir@79784.4]
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
  _T_323 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_27 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  _T_383_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_50 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_383_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_475 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  _T_592_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_592_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_592_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_592_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_592_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_725 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_726 = _RAND_12[25:0];
  _RAND_13 = {1{`RANDOM}};
  _T_727 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  _T_814 = _RAND_14[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_323 <= 4'h0;
    end else if (_T_325) begin
      if (_T_342) begin
        if (_GEN_2[0]) begin
          _T_323 <= _T_23[5:2];
        end else begin
          _T_323 <= 4'h0;
        end
      end else begin
        _T_323 <= 4'h0;
      end
    end else begin
      _T_323 <= _T_380;
    end
    if (reset) begin
      _T_27 <= 4'h0;
    end else if (_T_19) begin
      if (_T_30) begin
        if (_GEN_2[0]) begin
          _T_27 <= _T_23[5:2];
        end else begin
          _T_27 <= 4'h0;
        end
      end else begin
        _T_27 <= _T_29;
      end
    end
    if (reset) begin
      _T_383_1 <= 1'h0;
    end else if (_T_324) begin
      _T_383_1 <= _T_342;
    end
    if (_T_30) begin
      _T_50 <= _T_49;
    end
    if (reset) begin
      _T_383_0 <= 1'h0;
    end else if (_T_324) begin
      _T_383_0 <= _T_341;
    end
    if (reset) begin
      _T_475 <= 4'h0;
    end else if (_T_477) begin
      _T_475 <= _T_584;
    end else begin
      _T_475 <= _T_589;
    end
    if (reset) begin
      _T_592_0 <= 1'h0;
    end else if (_T_476) begin
      _T_592_0 <= _T_511;
    end
    if (reset) begin
      _T_592_1 <= 1'h0;
    end else if (_T_476) begin
      _T_592_1 <= _T_512;
    end
    if (reset) begin
      _T_592_2 <= 1'h0;
    end else if (_T_476) begin
      _T_592_2 <= _T_513;
    end
    if (reset) begin
      _T_592_3 <= 1'h0;
    end else if (_T_476) begin
      _T_592_3 <= _T_514;
    end
    if (reset) begin
      _T_592_4 <= 1'h0;
    end else if (_T_476) begin
      _T_592_4 <= _T_515;
    end
    if (reset) begin
      _T_725 <= 1'h0;
    end else begin
      _T_725 <= _GEN_7[0];
    end
    if (_T_932) begin
      _T_726 <= BroadcastFilter_io_response_bits_address;
    end
    if (_T_932) begin
      if (BroadcastFilter_io_response_bits_needT) begin
        _T_727 <= 2'h2;
      end else begin
        _T_727 <= 2'h1;
      end
    end
    if (reset) begin
      _T_814 <= 4'h0;
    end else if (_T_805) begin
      if (_T_817) begin
        if (_T_812) begin
          _T_814 <= _T_809[5:2];
        end else begin
          _T_814 <= 4'h0;
        end
      end else begin
        _T_814 <= _T_816;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_59) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:129 assert (!out.d.valid || !d_drop || out.d.bits.opcode === TLMessages.AccessAck)\n"); // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79843.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_59) begin
          $fatal; // @[Broadcast.scala 129:14:freechips.rocketchip.system.DefaultRV32Config.fir@79844.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_84) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:141 assert (!d_normal.valid || (d_trackerOH.orR() || d_normal.bits.opcode === TLMessages.ReleaseAck))\n"); // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79881.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_84) begin
          $fatal; // @[Broadcast.scala 141:14:freechips.rocketchip.system.DefaultRV32Config.fir@79882.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_358) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80252.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_358) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80253.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_365) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80263.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_365) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80264.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_372) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80274.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_372) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80275.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_549) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80608.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_549) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@80609.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_562) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80625.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_562) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@80626.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_575) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80642.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_575) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@80643.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
