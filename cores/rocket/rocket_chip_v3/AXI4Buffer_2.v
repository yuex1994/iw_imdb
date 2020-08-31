module AXI4Buffer_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231320.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231321.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231322.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [11:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [11:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [11:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output [11:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
  input         auto_out_r_bits_echo_real_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231323.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire [11:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire [11:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire [3:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire [3:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_1_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_2_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire [11:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire [11:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_3_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [31:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [31:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
  Queue_46 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231334.4]
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
  Queue_1 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231363.4]
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
  Queue_40 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231378.4]
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
  Queue_46 Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231393.4]
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
  Queue_42 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@231422.4]
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
  assign auto_in_aw_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_w_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_b_bits_id = Queue_2_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_b_bits_resp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_b_bits_echo_real_last = Queue_2_io_deq_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_ar_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_bits_id = Queue_4_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_bits_data = Queue_4_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_bits_resp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_bits_echo_real_last = Queue_4_io_deq_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_in_r_bits_last = Queue_4_io_deq_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@231333.4]
  assign auto_out_aw_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_aw_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_aw_bits_addr = Queue_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_aw_bits_echo_real_last = Queue_io_deq_bits_echo_real_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_w_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_w_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_w_bits_strb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_ar_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_ar_bits_id = Queue_3_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_ar_bits_addr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_ar_bits_echo_real_last = Queue_3_io_deq_bits_echo_real_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign auto_out_r_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@231332.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231335.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231336.4]
  assign Queue_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231337.4]
  assign Queue_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231347.4]
  assign Queue_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231346.4]
  assign Queue_io_enq_bits_echo_real_last = auto_in_aw_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231338.4]
  assign Queue_io_deq_ready = auto_out_aw_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231361.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231364.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231365.4]
  assign Queue_1_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231366.4]
  assign Queue_1_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231369.4]
  assign Queue_1_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231368.4]
  assign Queue_1_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231367.4]
  assign Queue_1_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231376.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231379.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231380.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231381.4]
  assign Queue_2_io_enq_bits_id = auto_out_b_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231384.4]
  assign Queue_2_io_enq_bits_resp = auto_out_b_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231383.4]
  assign Queue_2_io_enq_bits_echo_real_last = auto_out_b_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231382.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231391.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231394.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231395.4]
  assign Queue_3_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231396.4]
  assign Queue_3_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231406.4]
  assign Queue_3_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231405.4]
  assign Queue_3_io_enq_bits_echo_real_last = auto_in_ar_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231397.4]
  assign Queue_3_io_deq_ready = auto_out_ar_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231420.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231423.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@231424.4]
  assign Queue_4_io_enq_valid = auto_out_r_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@231425.4]
  assign Queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231430.4]
  assign Queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231429.4]
  assign Queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231428.4]
  assign Queue_4_io_enq_bits_echo_real_last = auto_out_r_bits_echo_real_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@231427.4]
  assign Queue_4_io_deq_ready = auto_in_r_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@231439.4]
endmodule
