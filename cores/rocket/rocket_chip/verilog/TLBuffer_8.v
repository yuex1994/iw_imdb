module TLBuffer_8( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210773.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210774.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210775.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_in_b_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_in_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_in_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_in_b_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_b_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [2:0]  auto_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [3:0]  auto_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_in_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [2:0]  auto_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [3:0]  auto_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [31:0] auto_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  input         auto_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output        auto_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
  output [1:0]  auto_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210776.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire [1:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [3:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [1:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [3:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [3:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [1:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [3:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [3:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [3:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [1:0] Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [1:0] Queue_2_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [31:0] Queue_2_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [2:0] Queue_2_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [1:0] Queue_2_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [3:0] Queue_2_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [1:0] Queue_2_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [31:0] Queue_2_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire [3:0] Queue_2_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_2_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [2:0] Queue_3_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [2:0] Queue_3_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [3:0] Queue_3_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [1:0] Queue_3_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [31:0] Queue_3_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [31:0] Queue_3_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [2:0] Queue_3_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [2:0] Queue_3_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [3:0] Queue_3_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [1:0] Queue_3_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [31:0] Queue_3_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire [31:0] Queue_3_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_3_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire [1:0] Queue_4_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  wire [1:0] Queue_4_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
  TLMonitor_48 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210783.4]
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
  Queue_33 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210832.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_34 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210846.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_denied(Queue_1_io_enq_bits_denied),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_1_io_enq_bits_corrupt),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_denied(Queue_1_io_deq_bits_denied),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_1_io_deq_bits_corrupt)
  );
  Queue_35 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210860.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_param(Queue_2_io_enq_bits_param),
    .io_enq_bits_address(Queue_2_io_enq_bits_address),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_opcode(Queue_2_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_2_io_deq_bits_param),
    .io_deq_bits_size(Queue_2_io_deq_bits_size),
    .io_deq_bits_source(Queue_2_io_deq_bits_source),
    .io_deq_bits_address(Queue_2_io_deq_bits_address),
    .io_deq_bits_mask(Queue_2_io_deq_bits_mask),
    .io_deq_bits_corrupt(Queue_2_io_deq_bits_corrupt)
  );
  Queue_36 Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210874.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_opcode(Queue_3_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_3_io_enq_bits_param),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_source(Queue_3_io_enq_bits_source),
    .io_enq_bits_address(Queue_3_io_enq_bits_address),
    .io_enq_bits_data(Queue_3_io_enq_bits_data),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_opcode(Queue_3_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_3_io_deq_bits_param),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_source(Queue_3_io_deq_bits_source),
    .io_deq_bits_address(Queue_3_io_deq_bits_address),
    .io_deq_bits_data(Queue_3_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_3_io_deq_bits_corrupt)
  );
  Queue_37 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210887.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_sink(Queue_4_io_enq_bits_sink),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_sink(Queue_4_io_deq_bits_sink)
  );
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_param = Queue_2_io_deq_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_size = Queue_2_io_deq_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_source = Queue_2_io_deq_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_address = Queue_2_io_deq_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_c_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_in_e_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210831.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_opcode = Queue_3_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_param = Queue_3_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_size = Queue_3_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_source = Queue_3_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_address = Queue_3_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_data = Queue_3_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_c_bits_corrupt = Queue_3_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_e_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign auto_out_e_bits_sink = Queue_4_io_deq_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210830.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210784.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210785.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210827.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210826.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210825.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210824.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210823.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210822.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210821.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210820.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210818.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210817.4]
  assign TLMonitor_io_in_b_valid = Queue_2_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210816.4]
  assign TLMonitor_io_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210815.4]
  assign TLMonitor_io_in_b_bits_param = Queue_2_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210814.4]
  assign TLMonitor_io_in_b_bits_size = Queue_2_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210813.4]
  assign TLMonitor_io_in_b_bits_source = Queue_2_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210812.4]
  assign TLMonitor_io_in_b_bits_address = Queue_2_io_deq_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210811.4]
  assign TLMonitor_io_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210810.4]
  assign TLMonitor_io_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210808.4]
  assign TLMonitor_io_in_c_ready = Queue_3_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210807.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210806.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210805.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210804.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210803.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210802.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210801.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210798.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210797.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210796.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210795.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210794.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210793.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210792.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210791.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210789.4]
  assign TLMonitor_io_in_e_ready = Queue_4_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210788.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210787.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210786.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210833.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210834.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210835.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210843.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210842.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210841.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210840.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210839.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210838.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210837.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210836.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:freechips.rocketchip.system.DefaultRV32Config.fir@210845.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210847.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210848.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210849.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210857.4]
  assign Queue_1_io_enq_bits_param = auto_out_d_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210856.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210855.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210854.4]
  assign Queue_1_io_enq_bits_sink = auto_out_d_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210853.4]
  assign Queue_1_io_enq_bits_denied = auto_out_d_bits_denied; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210852.4]
  assign Queue_1_io_enq_bits_data = auto_out_d_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210851.4]
  assign Queue_1_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210850.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:freechips.rocketchip.system.DefaultRV32Config.fir@210859.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210861.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210862.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210863.4]
  assign Queue_2_io_enq_bits_param = auto_out_b_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210870.4]
  assign Queue_2_io_enq_bits_address = auto_out_b_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210867.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Buffer.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@210873.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210875.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210876.4]
  assign Queue_3_io_enq_valid = auto_in_c_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210877.4]
  assign Queue_3_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210884.4]
  assign Queue_3_io_enq_bits_param = auto_in_c_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210883.4]
  assign Queue_3_io_enq_bits_size = auto_in_c_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210882.4]
  assign Queue_3_io_enq_bits_source = auto_in_c_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210881.4]
  assign Queue_3_io_enq_bits_address = auto_in_c_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210880.4]
  assign Queue_3_io_enq_bits_data = auto_in_c_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210879.4]
  assign Queue_3_io_deq_ready = auto_out_c_ready; // @[Buffer.scala 43:15:freechips.rocketchip.system.DefaultRV32Config.fir@210886.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210888.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210889.4]
  assign Queue_4_io_enq_valid = auto_in_e_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210890.4]
  assign Queue_4_io_enq_bits_sink = auto_in_e_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210891.4]
endmodule
