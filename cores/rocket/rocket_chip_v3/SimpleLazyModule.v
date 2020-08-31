module SimpleLazyModule( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14565.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14566.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14567.4]
  output        auto_widget_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_widget_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [2:0]  auto_widget_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [2:0]  auto_widget_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [3:0]  auto_widget_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [4:0]  auto_widget_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [27:0] auto_widget_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [3:0]  auto_widget_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [31:0] auto_widget_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_widget_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_widget_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_widget_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [2:0]  auto_widget_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [1:0]  auto_widget_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [3:0]  auto_widget_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [4:0]  auto_widget_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_widget_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_widget_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [31:0] auto_widget_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_widget_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_bus_xing_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_bus_xing_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [2:0]  auto_bus_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [2:0]  auto_bus_xing_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [3:0]  auto_bus_xing_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [4:0]  auto_bus_xing_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [27:0] auto_bus_xing_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [3:0]  auto_bus_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output [31:0] auto_bus_xing_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_bus_xing_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  output        auto_bus_xing_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_bus_xing_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [2:0]  auto_bus_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [1:0]  auto_bus_xing_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [3:0]  auto_bus_xing_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [4:0]  auto_bus_xing_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_bus_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_bus_xing_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input  [31:0] auto_bus_xing_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
  input         auto_bus_xing_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14568.4]
);
  wire  widget_clock; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_reset; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_in_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [4:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [27:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [31:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [1:0] widget_auto_in_d_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [4:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_d_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [31:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_in_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_out_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [4:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [27:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [31:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [1:0] widget_auto_out_d_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [3:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [4:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_d_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire [31:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  wire  widget_auto_out_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
  TLWidthWidget widget ( // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@14573.4]
    .clock(widget_clock),
    .reset(widget_reset),
    .auto_in_a_ready(widget_auto_in_a_ready),
    .auto_in_a_valid(widget_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(widget_auto_in_a_bits_param),
    .auto_in_a_bits_size(widget_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_auto_in_a_bits_address),
    .auto_in_a_bits_mask(widget_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(widget_auto_in_a_bits_corrupt),
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(widget_auto_in_d_bits_param),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_sink(widget_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(widget_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_auto_in_d_bits_corrupt),
    .auto_out_a_ready(widget_auto_out_a_ready),
    .auto_out_a_valid(widget_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(widget_auto_out_a_bits_param),
    .auto_out_a_bits_size(widget_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_auto_out_a_bits_address),
    .auto_out_a_bits_mask(widget_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(widget_auto_out_a_bits_corrupt),
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(widget_auto_out_d_bits_param),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_sink(widget_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(widget_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_auto_out_d_bits_corrupt)
  );
  assign auto_widget_in_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_param = widget_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_sink = widget_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_widget_in_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign auto_bus_xing_out_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign auto_bus_xing_out_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@14585.4]
  assign widget_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14577.4]
  assign widget_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@14578.4]
  assign widget_auto_in_a_valid = auto_widget_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_opcode = auto_widget_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_param = auto_widget_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_size = auto_widget_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_source = auto_widget_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_address = auto_widget_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_mask = auto_widget_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_data = auto_widget_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_a_bits_corrupt = auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_in_d_ready = auto_widget_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@14586.4]
  assign widget_auto_out_a_ready = auto_bus_xing_out_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_valid = auto_bus_xing_out_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_param = auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_source = auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_sink = auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
  assign widget_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@14584.4]
endmodule
