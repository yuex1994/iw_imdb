module TLAsyncCrossingSource( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105546.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105547.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105548.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [8:0]  auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [1:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [2:0]  auto_out_a_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [8:0]  auto_out_a_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [3:0]  auto_out_a_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output [31:0] auto_out_a_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_a_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_a_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_a_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_a_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_a_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_a_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [2:0]  auto_out_d_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [1:0]  auto_out_d_mem_0_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_d_mem_0_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input  [31:0] auto_out_d_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_d_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_d_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_d_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_d_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  input         auto_out_d_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
  output        auto_out_d_safe_sink_reset_n // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105549.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
  wire  AsyncQueueSource_clock; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_reset; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_enq_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [2:0] AsyncQueueSource_io_enq_bits_opcode; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [8:0] AsyncQueueSource_io_enq_bits_address; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [3:0] AsyncQueueSource_io_enq_bits_mask; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [31:0] AsyncQueueSource_io_enq_bits_data; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [2:0] AsyncQueueSource_io_async_mem_0_opcode; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [8:0] AsyncQueueSource_io_async_mem_0_address; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [3:0] AsyncQueueSource_io_async_mem_0_mask; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire [31:0] AsyncQueueSource_io_async_mem_0_data; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_ridx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_widx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSource_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
  wire  AsyncQueueSink_clock; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_reset; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_ready; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [2:0] AsyncQueueSink_io_deq_bits_opcode; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [1:0] AsyncQueueSink_io_deq_bits_param; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [1:0] AsyncQueueSink_io_deq_bits_size; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_bits_source; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_bits_sink; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_bits_denied; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [31:0] AsyncQueueSink_io_deq_bits_data; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_deq_bits_corrupt; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [2:0] AsyncQueueSink_io_async_mem_0_opcode; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [1:0] AsyncQueueSink_io_async_mem_0_size; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_mem_0_source; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire [31:0] AsyncQueueSink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_widx; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  wire  AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
  TLMonitor_43 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@105556.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
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
  AsyncQueueSource AsyncQueueSource ( // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@105583.4]
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_opcode(AsyncQueueSource_io_enq_bits_opcode),
    .io_enq_bits_address(AsyncQueueSource_io_enq_bits_address),
    .io_enq_bits_mask(AsyncQueueSource_io_enq_bits_mask),
    .io_enq_bits_data(AsyncQueueSource_io_enq_bits_data),
    .io_async_mem_0_opcode(AsyncQueueSource_io_async_mem_0_opcode),
    .io_async_mem_0_address(AsyncQueueSource_io_async_mem_0_address),
    .io_async_mem_0_mask(AsyncQueueSource_io_async_mem_0_mask),
    .io_async_mem_0_data(AsyncQueueSource_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSource_io_async_ridx),
    .io_async_widx(AsyncQueueSource_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSource_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSource_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSource_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSource_io_async_safe_sink_reset_n)
  );
  AsyncQueueSink AsyncQueueSink ( // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@105590.4]
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_ready(AsyncQueueSink_io_deq_ready),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_opcode(AsyncQueueSink_io_deq_bits_opcode),
    .io_deq_bits_param(AsyncQueueSink_io_deq_bits_param),
    .io_deq_bits_size(AsyncQueueSink_io_deq_bits_size),
    .io_deq_bits_source(AsyncQueueSink_io_deq_bits_source),
    .io_deq_bits_sink(AsyncQueueSink_io_deq_bits_sink),
    .io_deq_bits_denied(AsyncQueueSink_io_deq_bits_denied),
    .io_deq_bits_data(AsyncQueueSink_io_deq_bits_data),
    .io_deq_bits_corrupt(AsyncQueueSink_io_deq_bits_corrupt),
    .io_async_mem_0_opcode(AsyncQueueSink_io_async_mem_0_opcode),
    .io_async_mem_0_size(AsyncQueueSink_io_async_mem_0_size),
    .io_async_mem_0_source(AsyncQueueSink_io_async_mem_0_source),
    .io_async_mem_0_data(AsyncQueueSink_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSink_io_async_ridx),
    .io_async_widx(AsyncQueueSink_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSink_io_async_safe_sink_reset_n)
  );
  assign auto_in_a_ready = AsyncQueueSource_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_valid = AsyncQueueSink_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_opcode = AsyncQueueSink_io_deq_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_param = AsyncQueueSink_io_deq_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_size = AsyncQueueSink_io_deq_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_source = AsyncQueueSink_io_deq_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_sink = AsyncQueueSink_io_deq_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_denied = AsyncQueueSink_io_deq_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_data = AsyncQueueSink_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_in_d_bits_corrupt = AsyncQueueSink_io_deq_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@105582.4]
  assign auto_out_a_mem_0_opcode = AsyncQueueSource_io_async_mem_0_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_mem_0_address = AsyncQueueSource_io_async_mem_0_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_mem_0_mask = AsyncQueueSource_io_async_mem_0_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_mem_0_data = AsyncQueueSource_io_async_mem_0_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_widx = AsyncQueueSource_io_async_widx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_safe_widx_valid = AsyncQueueSource_io_async_safe_widx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_a_safe_source_reset_n = AsyncQueueSource_io_async_safe_source_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_d_ridx = AsyncQueueSink_io_async_ridx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_d_safe_ridx_valid = AsyncQueueSink_io_async_safe_ridx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign auto_out_d_safe_sink_reset_n = AsyncQueueSink_io_async_safe_sink_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@105581.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105557.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105558.4]
  assign TLMonitor_io_in_a_ready = AsyncQueueSource_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105578.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105577.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105576.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105572.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105571.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105568.4]
  assign TLMonitor_io_in_d_valid = AsyncQueueSink_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105567.4]
  assign TLMonitor_io_in_d_bits_opcode = AsyncQueueSink_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105566.4]
  assign TLMonitor_io_in_d_bits_param = AsyncQueueSink_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105565.4]
  assign TLMonitor_io_in_d_bits_size = AsyncQueueSink_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105564.4]
  assign TLMonitor_io_in_d_bits_source = AsyncQueueSink_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105563.4]
  assign TLMonitor_io_in_d_bits_sink = AsyncQueueSink_io_deq_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105562.4]
  assign TLMonitor_io_in_d_bits_denied = AsyncQueueSink_io_deq_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105561.4]
  assign TLMonitor_io_in_d_bits_corrupt = AsyncQueueSink_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@105559.4]
  assign AsyncQueueSource_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105584.4]
  assign AsyncQueueSource_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105585.4]
  assign AsyncQueueSource_io_enq_valid = auto_in_a_valid; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@105587.4]
  assign AsyncQueueSource_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@105586.4]
  assign AsyncQueueSource_io_enq_bits_address = auto_in_a_bits_address; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@105586.4]
  assign AsyncQueueSource_io_enq_bits_mask = auto_in_a_bits_mask; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@105586.4]
  assign AsyncQueueSource_io_enq_bits_data = auto_in_a_bits_data; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@105586.4]
  assign AsyncQueueSource_io_async_ridx = auto_out_a_ridx; // @[AsyncCrossing.scala 25:13:freechips.rocketchip.system.DefaultRV32Config.fir@105589.4]
  assign AsyncQueueSource_io_async_safe_ridx_valid = auto_out_a_safe_ridx_valid; // @[AsyncCrossing.scala 25:13:freechips.rocketchip.system.DefaultRV32Config.fir@105589.4]
  assign AsyncQueueSource_io_async_safe_sink_reset_n = auto_out_a_safe_sink_reset_n; // @[AsyncCrossing.scala 25:13:freechips.rocketchip.system.DefaultRV32Config.fir@105589.4]
  assign AsyncQueueSink_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105591.4]
  assign AsyncQueueSink_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105592.4]
  assign AsyncQueueSink_io_deq_ready = auto_in_d_ready; // @[AsyncCrossing.scala 26:12:freechips.rocketchip.system.DefaultRV32Config.fir@105600.4]
  assign AsyncQueueSink_io_async_mem_0_opcode = auto_out_d_mem_0_opcode; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105599.4]
  assign AsyncQueueSink_io_async_mem_0_size = auto_out_d_mem_0_size; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105599.4]
  assign AsyncQueueSink_io_async_mem_0_source = auto_out_d_mem_0_source; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105599.4]
  assign AsyncQueueSink_io_async_mem_0_data = auto_out_d_mem_0_data; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105599.4]
  assign AsyncQueueSink_io_async_widx = auto_out_d_widx; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105597.4]
  assign AsyncQueueSink_io_async_safe_widx_valid = auto_out_d_safe_widx_valid; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105595.4]
  assign AsyncQueueSink_io_async_safe_source_reset_n = auto_out_d_safe_source_reset_n; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@105594.4]
endmodule
