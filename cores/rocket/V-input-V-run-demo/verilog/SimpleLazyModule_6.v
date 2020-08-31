module SimpleLazyModule_6( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57676.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57677.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57678.4]
  output        auto_buffer_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input         auto_buffer_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [2:0]  auto_buffer_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [2:0]  auto_buffer_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [3:0]  auto_buffer_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [4:0]  auto_buffer_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [13:0] auto_buffer_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input  [3:0]  auto_buffer_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input         auto_buffer_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  input         auto_buffer_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output        auto_buffer_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output [2:0]  auto_buffer_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output [1:0]  auto_buffer_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output [3:0]  auto_buffer_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output [4:0]  auto_buffer_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output        auto_buffer_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output        auto_buffer_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output [31:0] auto_buffer_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
  output        auto_buffer_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57679.4]
);
  wire  error_clock; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_reset; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_a_ready; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_a_valid; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [2:0] error_auto_in_a_bits_opcode; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [2:0] error_auto_in_a_bits_param; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [3:0] error_auto_in_a_bits_size; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [4:0] error_auto_in_a_bits_source; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [13:0] error_auto_in_a_bits_address; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [3:0] error_auto_in_a_bits_mask; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_a_bits_corrupt; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_d_ready; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_d_valid; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [2:0] error_auto_in_d_bits_opcode; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [3:0] error_auto_in_d_bits_size; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire [4:0] error_auto_in_d_bits_source; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  error_auto_in_d_bits_corrupt; // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [4:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [13:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [4:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [4:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [13:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire [4:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
  TLError error ( // @[CanHaveBuiltInDevices.scala 29:29:freechips.rocketchip.system.DefaultRV32Config.fir@57684.4]
    .clock(error_clock),
    .reset(error_reset),
    .auto_in_a_ready(error_auto_in_a_ready),
    .auto_in_a_valid(error_auto_in_a_valid),
    .auto_in_a_bits_opcode(error_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(error_auto_in_a_bits_param),
    .auto_in_a_bits_size(error_auto_in_a_bits_size),
    .auto_in_a_bits_source(error_auto_in_a_bits_source),
    .auto_in_a_bits_address(error_auto_in_a_bits_address),
    .auto_in_a_bits_mask(error_auto_in_a_bits_mask),
    .auto_in_a_bits_corrupt(error_auto_in_a_bits_corrupt),
    .auto_in_d_ready(error_auto_in_d_ready),
    .auto_in_d_valid(error_auto_in_d_valid),
    .auto_in_d_bits_opcode(error_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(error_auto_in_d_bits_size),
    .auto_in_d_bits_source(error_auto_in_d_bits_source),
    .auto_in_d_bits_corrupt(error_auto_in_d_bits_corrupt)
  );
  TLBuffer_6 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@57690.4]
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
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
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
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  assign auto_buffer_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign auto_buffer_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign error_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57688.4]
  assign error_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57689.4]
  assign error_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign error_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57694.4]
  assign buffer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57695.4]
  assign buffer_auto_in_a_valid = auto_buffer_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_opcode = auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_param = auto_buffer_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_size = auto_buffer_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_source = auto_buffer_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_address = auto_buffer_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_mask = auto_buffer_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_a_bits_corrupt = auto_buffer_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_in_d_ready = auto_buffer_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@57697.4]
  assign buffer_auto_out_a_ready = error_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_auto_out_d_valid = error_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_auto_out_d_bits_opcode = error_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_auto_out_d_bits_size = error_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_auto_out_d_bits_source = error_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
  assign buffer_auto_out_d_bits_corrupt = error_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@57696.4]
endmodule
