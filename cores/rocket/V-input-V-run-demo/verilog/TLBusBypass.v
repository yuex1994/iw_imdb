module TLBusBypass( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103357.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103358.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103359.4]
  input         auto_node_out_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_out_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [2:0]  auto_node_out_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [8:0]  auto_node_out_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [3:0]  auto_node_out_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [31:0] auto_node_out_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_out_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_out_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [2:0]  auto_node_out_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [1:0]  auto_node_out_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [1:0]  auto_node_out_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_out_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_out_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_out_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [31:0] auto_node_out_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_out_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_in_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [2:0]  auto_node_in_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [8:0]  auto_node_in_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [3:0]  auto_node_in_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input  [31:0] auto_node_in_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         auto_node_in_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [2:0]  auto_node_in_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [1:0]  auto_node_in_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [1:0]  auto_node_in_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output [31:0] auto_node_in_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  output        auto_node_in_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103360.4]
  input         io_bypass // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103361.4]
);
  wire  bar_clock; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_reset; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_a_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_a_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_in_a_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [8:0] bar_auto_in_a_bits_address; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [3:0] bar_auto_in_a_bits_mask; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [31:0] bar_auto_in_a_bits_data; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_in_d_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_in_d_bits_param; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_in_d_bits_size; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_bits_source; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_bits_sink; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_bits_denied; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [31:0] bar_auto_in_d_bits_data; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_in_d_bits_corrupt; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_a_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_a_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_out_1_a_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [8:0] bar_auto_out_1_a_bits_address; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [3:0] bar_auto_out_1_a_bits_mask; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [31:0] bar_auto_out_1_a_bits_data; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_out_1_d_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_out_1_d_bits_param; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_out_1_d_bits_size; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_bits_source; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_bits_sink; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_bits_denied; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [31:0] bar_auto_out_1_d_bits_data; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_1_d_bits_corrupt; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_a_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_a_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_out_0_a_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [127:0] bar_auto_out_0_a_bits_address; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [3:0] bar_auto_out_0_a_bits_mask; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_ready; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_valid; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [2:0] bar_auto_out_0_d_bits_opcode; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_out_0_d_bits_param; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [1:0] bar_auto_out_0_d_bits_size; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_bits_source; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_bits_sink; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_bits_denied; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire [31:0] bar_auto_out_0_d_bits_data; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_auto_out_0_d_bits_corrupt; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  bar_io_bypass; // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
  wire  error_clock; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_reset; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_a_ready; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_a_valid; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [2:0] error_auto_in_a_bits_opcode; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [127:0] error_auto_in_a_bits_address; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [3:0] error_auto_in_a_bits_mask; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_ready; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_valid; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [2:0] error_auto_in_d_bits_opcode; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [1:0] error_auto_in_d_bits_param; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [1:0] error_auto_in_d_bits_size; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_bits_source; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_bits_sink; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_bits_denied; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire [31:0] error_auto_in_d_bits_data; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  wire  error_auto_in_d_bits_corrupt; // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
  TLBusBypassBar bar ( // @[BusBypass.scala 20:33:freechips.rocketchip.system.DefaultRV32Config.fir@103367.4]
    .clock(bar_clock),
    .reset(bar_reset),
    .auto_in_a_ready(bar_auto_in_a_ready),
    .auto_in_a_valid(bar_auto_in_a_valid),
    .auto_in_a_bits_opcode(bar_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(bar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(bar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(bar_auto_in_a_bits_data),
    .auto_in_d_ready(bar_auto_in_d_ready),
    .auto_in_d_valid(bar_auto_in_d_valid),
    .auto_in_d_bits_opcode(bar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(bar_auto_in_d_bits_param),
    .auto_in_d_bits_size(bar_auto_in_d_bits_size),
    .auto_in_d_bits_source(bar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(bar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(bar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(bar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(bar_auto_in_d_bits_corrupt),
    .auto_out_1_a_ready(bar_auto_out_1_a_ready),
    .auto_out_1_a_valid(bar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(bar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_address(bar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(bar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(bar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(bar_auto_out_1_d_ready),
    .auto_out_1_d_valid(bar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(bar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(bar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(bar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(bar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(bar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(bar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(bar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(bar_auto_out_1_d_bits_corrupt),
    .auto_out_0_a_ready(bar_auto_out_0_a_ready),
    .auto_out_0_a_valid(bar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(bar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_address(bar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(bar_auto_out_0_a_bits_mask),
    .auto_out_0_d_ready(bar_auto_out_0_d_ready),
    .auto_out_0_d_valid(bar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(bar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(bar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(bar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(bar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(bar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(bar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(bar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(bar_auto_out_0_d_bits_corrupt),
    .io_bypass(bar_io_bypass)
  );
  TLError_1 error ( // @[BusBypass.scala 30:40:freechips.rocketchip.system.DefaultRV32Config.fir@103374.4]
    .clock(error_clock),
    .reset(error_reset),
    .auto_in_a_ready(error_auto_in_a_ready),
    .auto_in_a_valid(error_auto_in_a_valid),
    .auto_in_a_bits_opcode(error_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(error_auto_in_a_bits_address),
    .auto_in_a_bits_mask(error_auto_in_a_bits_mask),
    .auto_in_d_ready(error_auto_in_d_ready),
    .auto_in_d_valid(error_auto_in_d_valid),
    .auto_in_d_bits_opcode(error_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(error_auto_in_d_bits_param),
    .auto_in_d_bits_size(error_auto_in_d_bits_size),
    .auto_in_d_bits_source(error_auto_in_d_bits_source),
    .auto_in_d_bits_sink(error_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(error_auto_in_d_bits_denied),
    .auto_in_d_bits_data(error_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(error_auto_in_d_bits_corrupt)
  );
  assign auto_node_out_out_a_valid = bar_auto_out_1_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_out_out_a_bits_opcode = bar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_out_out_a_bits_address = bar_auto_out_1_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_out_out_a_bits_mask = bar_auto_out_1_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_out_out_a_bits_data = bar_auto_out_1_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_out_out_d_ready = bar_auto_out_1_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@103394.4]
  assign auto_node_in_in_a_ready = bar_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_valid = bar_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_opcode = bar_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_param = bar_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_size = bar_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_source = bar_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_sink = bar_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_denied = bar_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_data = bar_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign auto_node_in_in_d_bits_corrupt = bar_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@103393.4]
  assign bar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103372.4]
  assign bar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103373.4]
  assign bar_auto_in_a_valid = auto_node_in_in_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_in_a_bits_opcode = auto_node_in_in_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_in_a_bits_address = auto_node_in_in_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_in_a_bits_mask = auto_node_in_in_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_in_a_bits_data = auto_node_in_in_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_in_d_ready = auto_node_in_in_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103390.4]
  assign bar_auto_out_1_a_ready = auto_node_out_out_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_valid = auto_node_out_out_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_opcode = auto_node_out_out_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_param = auto_node_out_out_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_size = auto_node_out_out_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_source = auto_node_out_out_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_sink = auto_node_out_out_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_denied = auto_node_out_out_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_data = auto_node_out_out_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_1_d_bits_corrupt = auto_node_out_out_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@103392.4]
  assign bar_auto_out_0_a_ready = error_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_valid = error_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_opcode = error_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_param = error_auto_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_size = error_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_source = error_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_sink = error_auto_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_denied = error_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_data = error_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_auto_out_0_d_bits_corrupt = error_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign bar_io_bypass = io_bypass; // @[BusBypass.scala 47:26:freechips.rocketchip.system.DefaultRV32Config.fir@103395.4]
  assign error_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103378.4]
  assign error_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@103379.4]
  assign error_auto_in_a_valid = bar_auto_out_0_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign error_auto_in_a_bits_opcode = bar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign error_auto_in_a_bits_address = bar_auto_out_0_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign error_auto_in_a_bits_mask = bar_auto_out_0_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
  assign error_auto_in_d_ready = bar_auto_out_0_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@103391.4]
endmodule
