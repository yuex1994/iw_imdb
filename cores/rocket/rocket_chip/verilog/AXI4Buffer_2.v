module AXI4Buffer_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231846.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231847.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231848.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [11:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [11:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [11:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output [11:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
  input         auto_out_r_bits_echo_real_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231849.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire [11:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire [11:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire [3:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire [3:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_1_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_2_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire [11:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire [11:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_3_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [31:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [31:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
  Queue_46 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231860.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_echo_real_last(Queue_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_echo_real_last(Queue_io_deq_bits_echo_real_last)
  );
  Queue_1 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231889.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_strb(Queue_1_io_enq_bits_strb),
    .io_enq_bits_last(Queue_1_io_enq_bits_last),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_strb(Queue_1_io_deq_bits_strb),
    .io_deq_bits_last(Queue_1_io_deq_bits_last)
  );
  Queue_40 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231904.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_id(Queue_2_io_enq_bits_id),
    .io_enq_bits_resp(Queue_2_io_enq_bits_resp),
    .io_enq_bits_echo_real_last(Queue_2_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_id(Queue_2_io_deq_bits_id),
    .io_deq_bits_resp(Queue_2_io_deq_bits_resp),
    .io_deq_bits_echo_real_last(Queue_2_io_deq_bits_echo_real_last)
  );
  Queue_46 Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231919.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_id(Queue_3_io_enq_bits_id),
    .io_enq_bits_addr(Queue_3_io_enq_bits_addr),
    .io_enq_bits_echo_real_last(Queue_3_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_id(Queue_3_io_deq_bits_id),
    .io_deq_bits_addr(Queue_3_io_deq_bits_addr),
    .io_deq_bits_echo_real_last(Queue_3_io_deq_bits_echo_real_last)
  );
  Queue_42 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231948.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_id(Queue_4_io_enq_bits_id),
    .io_enq_bits_data(Queue_4_io_enq_bits_data),
    .io_enq_bits_resp(Queue_4_io_enq_bits_resp),
    .io_enq_bits_echo_real_last(Queue_4_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_id(Queue_4_io_deq_bits_id),
    .io_deq_bits_data(Queue_4_io_deq_bits_data),
    .io_deq_bits_resp(Queue_4_io_deq_bits_resp),
    .io_deq_bits_echo_real_last(Queue_4_io_deq_bits_echo_real_last),
    .io_deq_bits_last(Queue_4_io_deq_bits_last)
  );
  assign auto_in_aw_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_w_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_b_bits_id = Queue_2_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_b_bits_resp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_b_bits_echo_real_last = Queue_2_io_deq_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_ar_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_bits_id = Queue_4_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_bits_data = Queue_4_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_bits_resp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_bits_echo_real_last = Queue_4_io_deq_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_in_r_bits_last = Queue_4_io_deq_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231859.4]
  assign auto_out_aw_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_aw_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_aw_bits_addr = Queue_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_aw_bits_echo_real_last = Queue_io_deq_bits_echo_real_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_w_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_w_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_w_bits_strb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_ar_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_ar_bits_id = Queue_3_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_ar_bits_addr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_ar_bits_echo_real_last = Queue_3_io_deq_bits_echo_real_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign auto_out_r_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231858.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231861.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231862.4]
  assign Queue_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231863.4]
  assign Queue_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231873.4]
  assign Queue_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231872.4]
  assign Queue_io_enq_bits_echo_real_last = auto_in_aw_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231864.4]
  assign Queue_io_deq_ready = auto_out_aw_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231887.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231890.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231891.4]
  assign Queue_1_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231892.4]
  assign Queue_1_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231895.4]
  assign Queue_1_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231894.4]
  assign Queue_1_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231893.4]
  assign Queue_1_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231902.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231905.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231906.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231907.4]
  assign Queue_2_io_enq_bits_id = auto_out_b_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231910.4]
  assign Queue_2_io_enq_bits_resp = auto_out_b_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231909.4]
  assign Queue_2_io_enq_bits_echo_real_last = auto_out_b_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231908.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231917.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231920.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231921.4]
  assign Queue_3_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231922.4]
  assign Queue_3_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231932.4]
  assign Queue_3_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231931.4]
  assign Queue_3_io_enq_bits_echo_real_last = auto_in_ar_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231923.4]
  assign Queue_3_io_deq_ready = auto_out_ar_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231946.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231949.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231950.4]
  assign Queue_4_io_enq_valid = auto_out_r_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231951.4]
  assign Queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231956.4]
  assign Queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231955.4]
  assign Queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231954.4]
  assign Queue_4_io_enq_bits_echo_real_last = auto_out_r_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231953.4]
  assign Queue_4_io_deq_ready = auto_in_r_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231965.4]
endmodule
