module SimpleLazyModule_3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22328.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22329.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22330.4]
  input         auto_buffer_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [2:0]  auto_buffer_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [2:0]  auto_buffer_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [3:0]  auto_buffer_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_buffer_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_buffer_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [3:0]  auto_buffer_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_buffer_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_buffer_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_buffer_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_buffer_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_buffer_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [2:0]  auto_buffer_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [2:0]  auto_buffer_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [3:0]  auto_buffer_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_buffer_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_buffer_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_buffer_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_buffer_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [2:0]  auto_buffer_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_buffer_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [3:0]  auto_buffer_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_buffer_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_buffer_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_buffer_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_buffer_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_buffer_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_buffer_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_buffer_out_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [2:0]  auto_tl_master_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [2:0]  auto_tl_master_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [3:0]  auto_tl_master_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_tl_master_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_tl_master_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [3:0]  auto_tl_master_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_tl_master_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_tl_master_xing_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_tl_master_xing_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [2:0]  auto_tl_master_xing_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [2:0]  auto_tl_master_xing_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [3:0]  auto_tl_master_xing_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_tl_master_xing_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_tl_master_xing_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [31:0] auto_tl_master_xing_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [2:0]  auto_tl_master_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_tl_master_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [3:0]  auto_tl_master_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_tl_master_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [1:0]  auto_tl_master_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output [31:0] auto_tl_master_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  output        auto_tl_master_xing_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input         auto_tl_master_xing_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
  input  [1:0]  auto_tl_master_xing_in_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22331.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_b_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_b_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_b_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_b_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_c_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_c_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_in_c_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_in_c_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_in_c_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_c_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_c_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_c_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_c_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_in_e_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_in_e_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_b_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_b_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_b_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_b_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_c_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_c_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_out_c_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_out_c_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_out_c_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_c_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_c_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_c_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_c_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire  buffer_auto_out_e_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  wire [1:0] buffer_auto_out_e_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
  TLBuffer buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@22336.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_b_ready(buffer_auto_in_b_ready),
    .auto_in_b_valid(buffer_auto_in_b_valid),
    .auto_in_b_bits_param(buffer_auto_in_b_bits_param),
    .auto_in_b_bits_address(buffer_auto_in_b_bits_address),
    .auto_in_c_ready(buffer_auto_in_c_ready),
    .auto_in_c_valid(buffer_auto_in_c_valid),
    .auto_in_c_bits_opcode(buffer_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(buffer_auto_in_c_bits_param),
    .auto_in_c_bits_size(buffer_auto_in_c_bits_size),
    .auto_in_c_bits_source(buffer_auto_in_c_bits_source),
    .auto_in_c_bits_address(buffer_auto_in_c_bits_address),
    .auto_in_c_bits_data(buffer_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(buffer_auto_in_c_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_in_e_valid(buffer_auto_in_e_valid),
    .auto_in_e_bits_sink(buffer_auto_in_e_bits_sink),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_b_ready(buffer_auto_out_b_ready),
    .auto_out_b_valid(buffer_auto_out_b_valid),
    .auto_out_b_bits_param(buffer_auto_out_b_bits_param),
    .auto_out_b_bits_address(buffer_auto_out_b_bits_address),
    .auto_out_c_ready(buffer_auto_out_c_ready),
    .auto_out_c_valid(buffer_auto_out_c_valid),
    .auto_out_c_bits_opcode(buffer_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(buffer_auto_out_c_bits_param),
    .auto_out_c_bits_size(buffer_auto_out_c_bits_size),
    .auto_out_c_bits_source(buffer_auto_out_c_bits_source),
    .auto_out_c_bits_address(buffer_auto_out_c_bits_address),
    .auto_out_c_bits_data(buffer_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(buffer_auto_out_c_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt),
    .auto_out_e_valid(buffer_auto_out_e_valid),
    .auto_out_e_bits_sink(buffer_auto_out_e_bits_sink)
  );
  assign auto_buffer_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_b_ready = buffer_auto_out_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_valid = buffer_auto_out_c_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_opcode = buffer_auto_out_c_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_param = buffer_auto_out_c_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_size = buffer_auto_out_c_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_source = buffer_auto_out_c_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_address = buffer_auto_out_c_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_data = buffer_auto_out_c_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_c_bits_corrupt = buffer_auto_out_c_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_e_valid = buffer_auto_out_e_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_buffer_out_e_bits_sink = buffer_auto_out_e_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign auto_tl_master_xing_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_b_valid = buffer_auto_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_b_bits_param = buffer_auto_in_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_b_bits_address = buffer_auto_in_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_c_ready = buffer_auto_in_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign auto_tl_master_xing_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22348.4]
  assign buffer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22340.4]
  assign buffer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22341.4]
  assign buffer_auto_in_a_valid = auto_tl_master_xing_in_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_opcode = auto_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_param = auto_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_size = auto_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_source = auto_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_address = auto_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_mask = auto_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_data = auto_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_a_bits_corrupt = auto_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_b_ready = auto_tl_master_xing_in_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_valid = auto_tl_master_xing_in_c_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_opcode = auto_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_param = auto_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_size = auto_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_source = auto_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_address = auto_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_data = auto_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_c_bits_corrupt = auto_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_d_ready = auto_tl_master_xing_in_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_e_valid = auto_tl_master_xing_in_e_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_in_e_bits_sink = auto_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@22347.4]
  assign buffer_auto_out_a_ready = auto_buffer_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_b_valid = auto_buffer_out_b_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_b_bits_param = auto_buffer_out_b_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_b_bits_address = auto_buffer_out_b_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_c_ready = auto_buffer_out_c_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_valid = auto_buffer_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_opcode = auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_param = auto_buffer_out_d_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_size = auto_buffer_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_source = auto_buffer_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_sink = auto_buffer_out_d_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_denied = auto_buffer_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_data = auto_buffer_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
  assign buffer_auto_out_d_bits_corrupt = auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22349.4]
endmodule
