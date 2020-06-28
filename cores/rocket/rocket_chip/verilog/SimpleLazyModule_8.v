module SimpleLazyModule_8( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61245.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61246.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61247.4]
  output        auto_fragmenter_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input         auto_fragmenter_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [2:0]  auto_fragmenter_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [2:0]  auto_fragmenter_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [2:0]  auto_fragmenter_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [4:0]  auto_fragmenter_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [27:0] auto_fragmenter_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [3:0]  auto_fragmenter_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [31:0] auto_fragmenter_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input         auto_fragmenter_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input         auto_fragmenter_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output        auto_fragmenter_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [2:0]  auto_fragmenter_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [2:0]  auto_fragmenter_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [4:0]  auto_fragmenter_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [31:0] auto_fragmenter_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input         auto_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output        auto_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [2:0]  auto_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [2:0]  auto_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [1:0]  auto_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [9:0]  auto_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [27:0] auto_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [3:0]  auto_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output [31:0] auto_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output        auto_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  output        auto_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input         auto_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [2:0]  auto_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [1:0]  auto_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [9:0]  auto_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
  input  [31:0] auto_fragmenter_out_d_bits_data // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61248.4]
);
  wire  fragmenter_clock; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_reset; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_in_a_ready; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_in_a_valid; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_in_a_bits_opcode; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_in_a_bits_param; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_in_a_bits_size; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [4:0] fragmenter_auto_in_a_bits_source; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [27:0] fragmenter_auto_in_a_bits_address; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [3:0] fragmenter_auto_in_a_bits_mask; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [31:0] fragmenter_auto_in_a_bits_data; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_in_a_bits_corrupt; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_in_d_ready; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_in_d_valid; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_in_d_bits_opcode; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_in_d_bits_size; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [4:0] fragmenter_auto_in_d_bits_source; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [31:0] fragmenter_auto_in_d_bits_data; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_out_a_ready; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_out_a_valid; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_out_a_bits_opcode; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_out_a_bits_param; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [1:0] fragmenter_auto_out_a_bits_size; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [9:0] fragmenter_auto_out_a_bits_source; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [27:0] fragmenter_auto_out_a_bits_address; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [3:0] fragmenter_auto_out_a_bits_mask; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [31:0] fragmenter_auto_out_a_bits_data; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_out_a_bits_corrupt; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_out_d_ready; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire  fragmenter_auto_out_d_valid; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [2:0] fragmenter_auto_out_d_bits_opcode; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [1:0] fragmenter_auto_out_d_bits_size; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [9:0] fragmenter_auto_out_d_bits_source; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  wire [31:0] fragmenter_auto_out_d_bits_data; // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
  TLFragmenter fragmenter ( // @[Fragmenter.scala 325:34:freechips.rocketchip.system.DefaultRV32Config.fir@61253.4]
    .clock(fragmenter_clock),
    .reset(fragmenter_reset),
    .auto_in_a_ready(fragmenter_auto_in_a_ready),
    .auto_in_a_valid(fragmenter_auto_in_a_valid),
    .auto_in_a_bits_opcode(fragmenter_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fragmenter_auto_in_a_bits_param),
    .auto_in_a_bits_size(fragmenter_auto_in_a_bits_size),
    .auto_in_a_bits_source(fragmenter_auto_in_a_bits_source),
    .auto_in_a_bits_address(fragmenter_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fragmenter_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fragmenter_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fragmenter_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fragmenter_auto_in_d_ready),
    .auto_in_d_valid(fragmenter_auto_in_d_valid),
    .auto_in_d_bits_opcode(fragmenter_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fragmenter_auto_in_d_bits_size),
    .auto_in_d_bits_source(fragmenter_auto_in_d_bits_source),
    .auto_in_d_bits_data(fragmenter_auto_in_d_bits_data),
    .auto_out_a_ready(fragmenter_auto_out_a_ready),
    .auto_out_a_valid(fragmenter_auto_out_a_valid),
    .auto_out_a_bits_opcode(fragmenter_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fragmenter_auto_out_a_bits_param),
    .auto_out_a_bits_size(fragmenter_auto_out_a_bits_size),
    .auto_out_a_bits_source(fragmenter_auto_out_a_bits_source),
    .auto_out_a_bits_address(fragmenter_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fragmenter_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fragmenter_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fragmenter_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fragmenter_auto_out_d_ready),
    .auto_out_d_valid(fragmenter_auto_out_d_valid),
    .auto_out_d_bits_opcode(fragmenter_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fragmenter_auto_out_d_bits_size),
    .auto_out_d_bits_source(fragmenter_auto_out_d_bits_source),
    .auto_out_d_bits_data(fragmenter_auto_out_d_bits_data)
  );
  assign auto_fragmenter_in_a_ready = fragmenter_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_in_d_valid = fragmenter_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_in_d_bits_opcode = fragmenter_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_in_d_bits_size = fragmenter_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_in_d_bits_source = fragmenter_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_in_d_bits_data = fragmenter_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign auto_fragmenter_out_a_valid = fragmenter_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_opcode = fragmenter_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_param = fragmenter_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_size = fragmenter_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_source = fragmenter_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_address = fragmenter_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_mask = fragmenter_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_data = fragmenter_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_a_bits_corrupt = fragmenter_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign auto_fragmenter_out_d_ready = fragmenter_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61257.4]
  assign fragmenter_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@61258.4]
  assign fragmenter_auto_in_a_valid = auto_fragmenter_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_opcode = auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_param = auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_size = auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_source = auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_address = auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_mask = auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_data = auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_a_bits_corrupt = auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_in_d_ready = auto_fragmenter_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@61260.4]
  assign fragmenter_auto_out_a_ready = auto_fragmenter_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_auto_out_d_valid = auto_fragmenter_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_auto_out_d_bits_opcode = auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_auto_out_d_bits_size = auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_auto_out_d_bits_source = auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
  assign fragmenter_auto_out_d_bits_data = auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@61259.4]
endmodule
