module TLBuffer_8( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210357.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210358.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210359.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_in_b_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_in_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_in_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_in_b_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_b_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [2:0]  auto_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [3:0]  auto_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_in_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [2:0]  auto_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [3:0]  auto_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [31:0] auto_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  input         auto_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output        auto_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
  output [1:0]  auto_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210360.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire [1:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [3:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [1:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [3:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [3:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [1:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [3:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [3:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [3:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [1:0] Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [1:0] Queue_2_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [31:0] Queue_2_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [2:0] Queue_2_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [1:0] Queue_2_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [3:0] Queue_2_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [1:0] Queue_2_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [31:0] Queue_2_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire [3:0] Queue_2_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_2_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [2:0] Queue_3_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [2:0] Queue_3_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [3:0] Queue_3_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [1:0] Queue_3_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [31:0] Queue_3_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [31:0] Queue_3_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [2:0] Queue_3_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [2:0] Queue_3_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [3:0] Queue_3_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [1:0] Queue_3_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [31:0] Queue_3_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire [31:0] Queue_3_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_3_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire [1:0] Queue_4_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  wire [1:0] Queue_4_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
  TLMonitor_48 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@210367.4]
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
  Queue_33 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210416.4]
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
  Queue_34 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210430.4]
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
  Queue_35 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210444.4]
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
  Queue_36 Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210458.4]
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
  Queue_37 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@210471.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_sink(Queue_4_io_enq_bits_sink),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_sink(Queue_4_io_deq_bits_sink)
  );
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_param = Queue_2_io_deq_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_size = Queue_2_io_deq_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_source = Queue_2_io_deq_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_address = Queue_2_io_deq_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_c_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_in_e_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@210415.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_opcode = Queue_3_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_param = Queue_3_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_size = Queue_3_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_source = Queue_3_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_address = Queue_3_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_data = Queue_3_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_c_bits_corrupt = Queue_3_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_e_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign auto_out_e_bits_sink = Queue_4_io_deq_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@210414.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210368.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210369.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210411.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210410.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210409.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210408.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210407.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210406.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210405.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210404.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210402.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210401.4]
  assign TLMonitor_io_in_b_valid = Queue_2_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210400.4]
  assign TLMonitor_io_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210399.4]
  assign TLMonitor_io_in_b_bits_param = Queue_2_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210398.4]
  assign TLMonitor_io_in_b_bits_size = Queue_2_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210397.4]
  assign TLMonitor_io_in_b_bits_source = Queue_2_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210396.4]
  assign TLMonitor_io_in_b_bits_address = Queue_2_io_deq_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210395.4]
  assign TLMonitor_io_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210394.4]
  assign TLMonitor_io_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210392.4]
  assign TLMonitor_io_in_c_ready = Queue_3_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210391.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210390.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210389.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210388.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210387.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210386.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210385.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210382.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210381.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210380.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210379.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210378.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210377.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210376.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210375.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210373.4]
  assign TLMonitor_io_in_e_ready = Queue_4_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210372.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210371.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@210370.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210417.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210418.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210419.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210427.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210426.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210425.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210424.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210423.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210422.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210421.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210420.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:freechips.rocketchip.system.DefaultRV32Config.fir@210429.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210431.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210432.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210433.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210441.4]
  assign Queue_1_io_enq_bits_param = auto_out_d_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210440.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210439.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210438.4]
  assign Queue_1_io_enq_bits_sink = auto_out_d_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210437.4]
  assign Queue_1_io_enq_bits_denied = auto_out_d_bits_denied; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210436.4]
  assign Queue_1_io_enq_bits_data = auto_out_d_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210435.4]
  assign Queue_1_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210434.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:freechips.rocketchip.system.DefaultRV32Config.fir@210443.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210445.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210446.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210447.4]
  assign Queue_2_io_enq_bits_param = auto_out_b_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210454.4]
  assign Queue_2_io_enq_bits_address = auto_out_b_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210451.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Buffer.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@210457.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210459.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210460.4]
  assign Queue_3_io_enq_valid = auto_in_c_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210461.4]
  assign Queue_3_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210468.4]
  assign Queue_3_io_enq_bits_param = auto_in_c_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210467.4]
  assign Queue_3_io_enq_bits_size = auto_in_c_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210466.4]
  assign Queue_3_io_enq_bits_source = auto_in_c_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210465.4]
  assign Queue_3_io_enq_bits_address = auto_in_c_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210464.4]
  assign Queue_3_io_enq_bits_data = auto_in_c_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210463.4]
  assign Queue_3_io_deq_ready = auto_out_c_ready; // @[Buffer.scala 43:15:freechips.rocketchip.system.DefaultRV32Config.fir@210470.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210472.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210473.4]
  assign Queue_4_io_enq_valid = auto_in_e_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@210474.4]
  assign Queue_4_io_enq_bits_sink = auto_in_e_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@210475.4]
endmodule
