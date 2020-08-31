module TLAsyncCrossingSink( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169429.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169430.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169431.4]
  input  [2:0]  auto_in_a_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [8:0]  auto_in_a_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [3:0]  auto_in_a_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [31:0] auto_in_a_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_a_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_a_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_a_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_a_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_a_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_a_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [2:0]  auto_in_d_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [1:0]  auto_in_d_mem_0_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_d_mem_0_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [31:0] auto_in_d_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_d_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_d_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_d_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_d_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_in_d_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_in_d_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [1:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [8:0]  auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [1:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input         auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
  input  [31:0] auto_out_d_bits_data // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169432.4]
);
  wire  AsyncQueueSink_clock; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_reset; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_deq_ready; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_deq_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [2:0] AsyncQueueSink_io_deq_bits_opcode; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [2:0] AsyncQueueSink_io_deq_bits_param; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [1:0] AsyncQueueSink_io_deq_bits_size; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_deq_bits_source; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [8:0] AsyncQueueSink_io_deq_bits_address; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [3:0] AsyncQueueSink_io_deq_bits_mask; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [31:0] AsyncQueueSink_io_deq_bits_data; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_deq_bits_corrupt; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [2:0] AsyncQueueSink_io_async_mem_0_opcode; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [8:0] AsyncQueueSink_io_async_mem_0_address; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [3:0] AsyncQueueSink_io_async_mem_0_mask; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire [31:0] AsyncQueueSink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_widx; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
  wire  AsyncQueueSource_clock; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_reset; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_enq_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [2:0] AsyncQueueSource_io_enq_bits_opcode; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [1:0] AsyncQueueSource_io_enq_bits_size; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_enq_bits_source; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [31:0] AsyncQueueSource_io_enq_bits_data; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [2:0] AsyncQueueSource_io_async_mem_0_opcode; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [1:0] AsyncQueueSource_io_async_mem_0_size; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_mem_0_source; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire [31:0] AsyncQueueSource_io_async_mem_0_data; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_ridx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_widx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  wire  AsyncQueueSource_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
  AsyncQueueSink_1 AsyncQueueSink ( // @[AsyncQueue.scala 207:22:freechips.rocketchip.system.DefaultRV32Config.fir@169443.4]
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_ready(AsyncQueueSink_io_deq_ready),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_opcode(AsyncQueueSink_io_deq_bits_opcode),
    .io_deq_bits_param(AsyncQueueSink_io_deq_bits_param),
    .io_deq_bits_size(AsyncQueueSink_io_deq_bits_size),
    .io_deq_bits_source(AsyncQueueSink_io_deq_bits_source),
    .io_deq_bits_address(AsyncQueueSink_io_deq_bits_address),
    .io_deq_bits_mask(AsyncQueueSink_io_deq_bits_mask),
    .io_deq_bits_data(AsyncQueueSink_io_deq_bits_data),
    .io_deq_bits_corrupt(AsyncQueueSink_io_deq_bits_corrupt),
    .io_async_mem_0_opcode(AsyncQueueSink_io_async_mem_0_opcode),
    .io_async_mem_0_address(AsyncQueueSink_io_async_mem_0_address),
    .io_async_mem_0_mask(AsyncQueueSink_io_async_mem_0_mask),
    .io_async_mem_0_data(AsyncQueueSink_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSink_io_async_ridx),
    .io_async_widx(AsyncQueueSink_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_2 AsyncQueueSource ( // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@169454.4]
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_opcode(AsyncQueueSource_io_enq_bits_opcode),
    .io_enq_bits_size(AsyncQueueSource_io_enq_bits_size),
    .io_enq_bits_source(AsyncQueueSource_io_enq_bits_source),
    .io_enq_bits_data(AsyncQueueSource_io_enq_bits_data),
    .io_async_mem_0_opcode(AsyncQueueSource_io_async_mem_0_opcode),
    .io_async_mem_0_size(AsyncQueueSource_io_async_mem_0_size),
    .io_async_mem_0_source(AsyncQueueSource_io_async_mem_0_source),
    .io_async_mem_0_data(AsyncQueueSource_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSource_io_async_ridx),
    .io_async_widx(AsyncQueueSource_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSource_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSource_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSource_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSource_io_async_safe_sink_reset_n)
  );
  assign auto_in_a_ridx = AsyncQueueSink_io_async_ridx; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_a_safe_ridx_valid = AsyncQueueSink_io_async_safe_ridx_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_a_safe_sink_reset_n = AsyncQueueSink_io_async_safe_sink_reset_n; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_mem_0_opcode = AsyncQueueSource_io_async_mem_0_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_mem_0_size = AsyncQueueSource_io_async_mem_0_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_mem_0_source = AsyncQueueSource_io_async_mem_0_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_mem_0_data = AsyncQueueSource_io_async_mem_0_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_widx = AsyncQueueSource_io_async_widx; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_safe_widx_valid = AsyncQueueSource_io_async_safe_widx_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_in_d_safe_source_reset_n = AsyncQueueSource_io_async_safe_source_reset_n; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@169442.4]
  assign auto_out_a_valid = AsyncQueueSink_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_opcode = AsyncQueueSink_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_param = AsyncQueueSink_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_size = AsyncQueueSink_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_source = AsyncQueueSink_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_address = AsyncQueueSink_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_mask = AsyncQueueSink_io_deq_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_data = AsyncQueueSink_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_a_bits_corrupt = AsyncQueueSink_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign auto_out_d_ready = AsyncQueueSource_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@169441.4]
  assign AsyncQueueSink_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169444.4]
  assign AsyncQueueSink_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169445.4]
  assign AsyncQueueSink_io_deq_ready = auto_out_a_ready; // @[AsyncCrossing.scala 57:13:freechips.rocketchip.system.DefaultRV32Config.fir@169453.4]
  assign AsyncQueueSink_io_async_mem_0_opcode = auto_in_a_mem_0_opcode; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169452.4]
  assign AsyncQueueSink_io_async_mem_0_address = auto_in_a_mem_0_address; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169452.4]
  assign AsyncQueueSink_io_async_mem_0_mask = auto_in_a_mem_0_mask; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169452.4]
  assign AsyncQueueSink_io_async_mem_0_data = auto_in_a_mem_0_data; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169452.4]
  assign AsyncQueueSink_io_async_widx = auto_in_a_widx; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169450.4]
  assign AsyncQueueSink_io_async_safe_widx_valid = auto_in_a_safe_widx_valid; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169448.4]
  assign AsyncQueueSink_io_async_safe_source_reset_n = auto_in_a_safe_source_reset_n; // @[AsyncQueue.scala 208:19:freechips.rocketchip.system.DefaultRV32Config.fir@169447.4]
  assign AsyncQueueSource_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169455.4]
  assign AsyncQueueSource_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169456.4]
  assign AsyncQueueSource_io_enq_valid = auto_out_d_valid; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@169458.4]
  assign AsyncQueueSource_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@169457.4]
  assign AsyncQueueSource_io_enq_bits_size = auto_out_d_bits_size; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@169457.4]
  assign AsyncQueueSource_io_enq_bits_source = auto_out_d_bits_source; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@169457.4]
  assign AsyncQueueSource_io_enq_bits_data = auto_out_d_bits_data; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@169457.4]
  assign AsyncQueueSource_io_async_ridx = auto_in_d_ridx; // @[AsyncCrossing.scala 58:12:freechips.rocketchip.system.DefaultRV32Config.fir@169460.4]
  assign AsyncQueueSource_io_async_safe_ridx_valid = auto_in_d_safe_ridx_valid; // @[AsyncCrossing.scala 58:12:freechips.rocketchip.system.DefaultRV32Config.fir@169460.4]
  assign AsyncQueueSource_io_async_safe_sink_reset_n = auto_in_d_safe_sink_reset_n; // @[AsyncCrossing.scala 58:12:freechips.rocketchip.system.DefaultRV32Config.fir@169460.4]
endmodule
