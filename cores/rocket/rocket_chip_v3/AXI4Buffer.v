module AXI4Buffer( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22645.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22646.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22647.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [30:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [2:0]  auto_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [30:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [2:0]  auto_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_in_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [30:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [30:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22648.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [30:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_enq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [2:0] Queue_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_enq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [30:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_io_deq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [2:0] Queue_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire [3:0] Queue_io_deq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire [3:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire [3:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_1_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [30:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [7:0] Queue_3_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [2:0] Queue_3_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [1:0] Queue_3_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_enq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [2:0] Queue_3_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_enq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [30:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [7:0] Queue_3_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [2:0] Queue_3_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [1:0] Queue_3_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_3_io_deq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [2:0] Queue_3_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire [3:0] Queue_3_io_deq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [31:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [31:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
  Queue Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22659.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_io_enq_bits_qos),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_io_deq_bits_qos)
  );
  Queue_1 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22686.4]
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
  Queue_2 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22701.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_id(Queue_2_io_enq_bits_id),
    .io_enq_bits_resp(Queue_2_io_enq_bits_resp),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_id(Queue_2_io_deq_bits_id),
    .io_deq_bits_resp(Queue_2_io_deq_bits_resp)
  );
  Queue Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22714.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_id(Queue_3_io_enq_bits_id),
    .io_enq_bits_addr(Queue_3_io_enq_bits_addr),
    .io_enq_bits_len(Queue_3_io_enq_bits_len),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_burst(Queue_3_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_3_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_3_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_3_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_3_io_enq_bits_qos),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_id(Queue_3_io_deq_bits_id),
    .io_deq_bits_addr(Queue_3_io_deq_bits_addr),
    .io_deq_bits_len(Queue_3_io_deq_bits_len),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_burst(Queue_3_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_3_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_3_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_3_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_3_io_deq_bits_qos)
  );
  Queue_4 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@22741.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_id(Queue_4_io_enq_bits_id),
    .io_enq_bits_data(Queue_4_io_enq_bits_data),
    .io_enq_bits_resp(Queue_4_io_enq_bits_resp),
    .io_enq_bits_last(Queue_4_io_enq_bits_last),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_id(Queue_4_io_deq_bits_id),
    .io_deq_bits_data(Queue_4_io_deq_bits_data),
    .io_deq_bits_resp(Queue_4_io_deq_bits_resp),
    .io_deq_bits_last(Queue_4_io_deq_bits_last)
  );
  assign auto_in_aw_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_w_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_b_bits_id = Queue_2_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_b_bits_resp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_ar_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_r_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_r_bits_id = Queue_4_io_deq_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_r_bits_data = Queue_4_io_deq_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_r_bits_resp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_in_r_bits_last = Queue_4_io_deq_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@22658.4]
  assign auto_out_aw_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_addr = Queue_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_len = Queue_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_burst = Queue_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_lock = Queue_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_cache = Queue_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_prot = Queue_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_aw_bits_qos = Queue_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_w_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_w_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_w_bits_strb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_w_bits_last = Queue_1_io_deq_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_id = Queue_3_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_addr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_len = Queue_3_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_size = Queue_3_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_burst = Queue_3_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_lock = Queue_3_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_cache = Queue_3_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_prot = Queue_3_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_ar_bits_qos = Queue_3_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign auto_out_r_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@22657.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22660.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22661.4]
  assign Queue_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@22662.4]
  assign Queue_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22671.4]
  assign Queue_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22670.4]
  assign Queue_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22669.4]
  assign Queue_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22668.4]
  assign Queue_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22667.4]
  assign Queue_io_enq_bits_lock = auto_in_aw_bits_lock; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22666.4]
  assign Queue_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22665.4]
  assign Queue_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22664.4]
  assign Queue_io_enq_bits_qos = auto_in_aw_bits_qos; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22663.4]
  assign Queue_io_deq_ready = auto_out_aw_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@22684.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22687.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22688.4]
  assign Queue_1_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@22689.4]
  assign Queue_1_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22692.4]
  assign Queue_1_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22691.4]
  assign Queue_1_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22690.4]
  assign Queue_1_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@22699.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22702.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22703.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@22704.4]
  assign Queue_2_io_enq_bits_id = auto_out_b_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22706.4]
  assign Queue_2_io_enq_bits_resp = auto_out_b_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22705.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@22712.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22715.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22716.4]
  assign Queue_3_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@22717.4]
  assign Queue_3_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22726.4]
  assign Queue_3_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22725.4]
  assign Queue_3_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22724.4]
  assign Queue_3_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22723.4]
  assign Queue_3_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22722.4]
  assign Queue_3_io_enq_bits_lock = auto_in_ar_bits_lock; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22721.4]
  assign Queue_3_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22720.4]
  assign Queue_3_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22719.4]
  assign Queue_3_io_enq_bits_qos = auto_in_ar_bits_qos; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22718.4]
  assign Queue_3_io_deq_ready = auto_out_ar_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@22739.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22742.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22743.4]
  assign Queue_4_io_enq_valid = auto_out_r_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@22744.4]
  assign Queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22748.4]
  assign Queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22747.4]
  assign Queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22746.4]
  assign Queue_4_io_enq_bits_last = auto_out_r_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@22745.4]
  assign Queue_4_io_deq_ready = auto_in_r_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@22756.4]
endmodule
