module AXI4Fragmenter( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41098.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41099.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41100.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [31:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [3:0]  auto_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [2:0]  auto_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [6:0]  auto_in_aw_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [63:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [6:0]  auto_in_b_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [31:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [3:0]  auto_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [2:0]  auto_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [6:0]  auto_in_ar_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [63:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [6:0]  auto_in_r_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [31:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [6:0]  auto_out_aw_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [63:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [7:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [6:0]  auto_out_b_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [31:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output [6:0]  auto_out_ar_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [63:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input  [6:0]  auto_out_r_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41101.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [31:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [3:0] Queue_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [2:0] Queue_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [6:0] Queue_io_enq_bits_echo_extra_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [31:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [3:0] Queue_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [2:0] Queue_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire [6:0] Queue_io_deq_bits_echo_extra_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [31:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [3:0] Queue_1_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [2:0] Queue_1_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [6:0] Queue_1_io_enq_bits_echo_extra_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [31:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [3:0] Queue_1_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [2:0] Queue_1_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire [6:0] Queue_1_io_deq_bits_echo_extra_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire [63:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire [7:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire [63:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire [7:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
  reg  _T_4; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@41142.4]
  reg [31:0] _T_5; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@41143.4]
  reg [7:0] _T_6; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@41144.4]
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41135.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@41145.4]
  wire [31:0] _T_2_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41136.4]
  wire [31:0] _T_8; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@41146.4]
  wire [32:0] _T_12; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41150.4]
  wire [32:0] _T_14; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41152.4]
  wire  _T_15; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41153.4]
  wire [31:0] _T_16; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41154.4]
  wire [32:0] _T_17; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41155.4]
  wire [32:0] _T_19; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41157.4]
  wire  _T_20; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41158.4]
  wire [31:0] _T_21; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41159.4]
  wire [32:0] _T_22; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41160.4]
  wire [32:0] _T_24; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41162.4]
  wire  _T_25; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41163.4]
  wire [31:0] _T_26; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41164.4]
  wire [32:0] _T_27; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41165.4]
  wire [32:0] _T_29; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41167.4]
  wire  _T_30; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41168.4]
  wire [31:0] _T_31; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41169.4]
  wire [32:0] _T_32; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41170.4]
  wire [32:0] _T_34; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41172.4]
  wire  _T_35; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41173.4]
  wire [31:0] _T_36; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41174.4]
  wire [32:0] _T_37; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41175.4]
  wire [32:0] _T_39; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41177.4]
  wire  _T_40; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41178.4]
  wire  _T_41; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41179.4]
  wire  _T_42; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41180.4]
  wire  _T_43; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41181.4]
  wire  _T_44; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41182.4]
  wire  _T_45; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41183.4]
  wire [31:0] _T_46; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41184.4]
  wire [32:0] _T_47; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41185.4]
  wire [32:0] _T_49; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41187.4]
  wire  _T_50; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41188.4]
  wire [2:0] _T_51; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41189.4]
  wire [7:0] _T_52; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41190.4]
  wire [7:0] _GEN_16; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41191.4]
  wire [7:0] _T_53; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41191.4]
  wire [7:0] _GEN_17; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41195.4]
  wire [7:0] _T_56; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41195.4]
  wire [7:0] _GEN_18; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41197.4]
  wire [7:0] _T_58; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41197.4]
  wire [7:0] _GEN_19; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41199.4]
  wire [7:0] _T_60; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41199.4]
  wire [7:0] _T_63; // @[Fragmenter.scala 87:32:freechips.rocketchip.system.DefaultRV32Config.fir@41202.4]
  wire [8:0] _T_64; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41203.4]
  wire [7:0] _T_66; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41205.4]
  wire [9:0] _T_67; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41206.4]
  wire [7:0] _T_69; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41208.4]
  wire [11:0] _T_70; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41209.4]
  wire [7:0] _T_72; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41211.4]
  wire [7:0] _T_74; // @[Fragmenter.scala 87:24:freechips.rocketchip.system.DefaultRV32Config.fir@41213.4]
  wire [7:0] _GEN_20; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41214.4]
  wire [7:0] _T_75; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41214.4]
  wire [8:0] _T_76; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41215.4]
  wire [7:0] _T_78; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41217.4]
  wire [9:0] _T_79; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41218.4]
  wire [7:0] _T_81; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41220.4]
  wire [11:0] _T_82; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41221.4]
  wire [7:0] _T_84; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41223.4]
  wire [7:0] _T_86; // @[Fragmenter.scala 89:24:freechips.rocketchip.system.DefaultRV32Config.fir@41225.4]
  wire [7:0] _T_87; // @[Fragmenter.scala 90:37:freechips.rocketchip.system.DefaultRV32Config.fir@41226.4]
  wire [7:0] _T_88; // @[Fragmenter.scala 90:46:freechips.rocketchip.system.DefaultRV32Config.fir@41227.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41133.4]
  wire  _T_89; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@41228.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41134.4]
  wire  _T_90; // @[Fragmenter.scala 94:34:freechips.rocketchip.system.DefaultRV32Config.fir@41229.4]
  wire  _T_91; // @[Fragmenter.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@41230.4]
  wire [7:0] _T_92; // @[Fragmenter.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@41231.4]
  wire [8:0] _T_93; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@41232.4]
  wire [8:0] _T_94; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@41233.4]
  wire [8:0] _T_95; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41234.4]
  wire [8:0] _T_96; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@41235.4]
  wire [8:0] _T_97; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@41236.4]
  wire [15:0] _GEN_21; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41237.4]
  wire [15:0] _T_98; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41237.4]
  wire [31:0] _GEN_22; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41238.4]
  wire [31:0] _T_100; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41239.4]
  wire [15:0] _T_101; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41240.4]
  wire [22:0] _GEN_23; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41241.4]
  wire [22:0] _T_102; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41241.4]
  wire  _T_105; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@41246.4]
  wire [31:0] _GEN_24; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41248.6]
  wire [31:0] _T_106; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41248.6]
  wire [31:0] _T_107; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@41249.6]
  wire [31:0] _T_108; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@41250.6]
  wire [31:0] _T_109; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@41251.6]
  wire [31:0] _T_110; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@41252.6]
  wire  _T_112; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@41259.4]
  wire [31:0] _T_114; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@41274.4]
  wire [9:0] _T_116; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@41276.4]
  wire [2:0] _T_118; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@41278.4]
  wire [31:0] _GEN_26; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41279.4]
  wire [31:0] _T_119; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41279.4]
  wire  _T_2_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41138.4]
  wire  _T_121; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41282.4]
  wire  _T_122; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@41284.6]
  wire [8:0] _GEN_27; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41287.6]
  wire [8:0] _T_124; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41288.6]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@41283.4]
  reg  _T_127; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@41321.4]
  reg [31:0] _T_128; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@41322.4]
  reg [7:0] _T_129; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@41323.4]
  wire [7:0] _T_125_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41314.4]
  wire [7:0] _T_130; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@41324.4]
  wire [31:0] _T_125_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41315.4]
  wire [31:0] _T_131; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@41325.4]
  wire [31:0] _T_134; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41328.4]
  wire [32:0] _T_135; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41329.4]
  wire [32:0] _T_137; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41331.4]
  wire  _T_138; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41332.4]
  wire [32:0] _T_140; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41334.4]
  wire [32:0] _T_142; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41336.4]
  wire  _T_143; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41337.4]
  wire [31:0] _T_144; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41338.4]
  wire [32:0] _T_145; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41339.4]
  wire [32:0] _T_147; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41341.4]
  wire  _T_148; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41342.4]
  wire [31:0] _T_149; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41343.4]
  wire [32:0] _T_150; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41344.4]
  wire [32:0] _T_152; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41346.4]
  wire  _T_153; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41347.4]
  wire [31:0] _T_154; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41348.4]
  wire [32:0] _T_155; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41349.4]
  wire [32:0] _T_157; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41351.4]
  wire  _T_158; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41352.4]
  wire  _T_159; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41353.4]
  wire  _T_160; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41354.4]
  wire  _T_161; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41355.4]
  wire [31:0] _T_162; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41356.4]
  wire [32:0] _T_163; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41357.4]
  wire [32:0] _T_165; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41359.4]
  wire  _T_166; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41360.4]
  wire [4:0] _T_167; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41361.4]
  wire [2:0] _T_168; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41362.4]
  wire [7:0] _T_169; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41363.4]
  wire [4:0] _GEN_28; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41364.4]
  wire [4:0] _T_170; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41364.4]
  wire [7:0] _GEN_29; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41365.4]
  wire [7:0] _T_171; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41365.4]
  wire [7:0] _GEN_30; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41369.4]
  wire [7:0] _T_174; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41369.4]
  wire [7:0] _GEN_31; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41371.4]
  wire [7:0] _T_176; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41371.4]
  wire [7:0] _GEN_32; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41373.4]
  wire [7:0] _T_178; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41373.4]
  wire [7:0] _T_181; // @[Fragmenter.scala 87:32:freechips.rocketchip.system.DefaultRV32Config.fir@41376.4]
  wire [8:0] _T_182; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41377.4]
  wire [7:0] _T_184; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41379.4]
  wire [9:0] _T_185; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41380.4]
  wire [7:0] _T_187; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41382.4]
  wire [11:0] _T_188; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41383.4]
  wire [7:0] _T_190; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41385.4]
  wire [7:0] _T_192; // @[Fragmenter.scala 87:24:freechips.rocketchip.system.DefaultRV32Config.fir@41387.4]
  wire [7:0] _GEN_33; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41388.4]
  wire [7:0] _T_193; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41388.4]
  wire [8:0] _T_194; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41389.4]
  wire [7:0] _T_196; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41391.4]
  wire [9:0] _T_197; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41392.4]
  wire [7:0] _T_199; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41394.4]
  wire [11:0] _T_200; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41395.4]
  wire [7:0] _T_202; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41397.4]
  wire [7:0] _T_204; // @[Fragmenter.scala 89:24:freechips.rocketchip.system.DefaultRV32Config.fir@41399.4]
  wire [7:0] _T_205; // @[Fragmenter.scala 90:37:freechips.rocketchip.system.DefaultRV32Config.fir@41400.4]
  wire [7:0] _T_206; // @[Fragmenter.scala 90:46:freechips.rocketchip.system.DefaultRV32Config.fir@41401.4]
  wire [1:0] _T_125_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41312.4]
  wire  _T_207; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@41402.4]
  wire [2:0] _T_125_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41313.4]
  wire  _T_208; // @[Fragmenter.scala 94:34:freechips.rocketchip.system.DefaultRV32Config.fir@41403.4]
  wire  _T_209; // @[Fragmenter.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@41404.4]
  wire [7:0] _T_210; // @[Fragmenter.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@41405.4]
  wire [8:0] _T_211; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@41406.4]
  wire [8:0] _T_212; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@41407.4]
  wire [8:0] _T_213; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41408.4]
  wire [8:0] _T_214; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@41409.4]
  wire [8:0] _T_215; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@41410.4]
  wire [15:0] _GEN_34; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41411.4]
  wire [15:0] _T_216; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41411.4]
  wire [31:0] _GEN_35; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41412.4]
  wire [31:0] _T_218; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41413.4]
  wire [15:0] _T_219; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41414.4]
  wire [22:0] _GEN_36; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41415.4]
  wire [22:0] _T_220; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41415.4]
  wire  _T_223; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@41420.4]
  wire [31:0] _GEN_37; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41422.6]
  wire [31:0] _T_224; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41422.6]
  wire [31:0] _T_225; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@41423.6]
  wire [31:0] _T_226; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@41424.6]
  wire [31:0] _T_227; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@41425.6]
  wire [31:0] _T_228; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@41426.6]
  wire  _T_230; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@41433.4]
  reg [8:0] _T_255; // @[Fragmenter.scala 165:30:freechips.rocketchip.system.DefaultRV32Config.fir@41527.4]
  wire  _T_256; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@41528.4]
  reg  _T_244; // @[Fragmenter.scala 151:35:freechips.rocketchip.system.DefaultRV32Config.fir@41493.4]
  wire  _T_251; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@41509.4]
  wire  _T_252; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@41510.4]
  wire [31:0] _T_232; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@41448.4]
  wire [9:0] _T_234; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@41450.4]
  wire [2:0] _T_236; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@41452.4]
  wire [31:0] _GEN_39; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41453.4]
  wire [31:0] _T_237; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41453.4]
  wire  _T_125_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41317.4]
  wire  _T_239; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41456.4]
  wire  _T_240; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@41458.6]
  wire [8:0] _GEN_40; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41461.6]
  wire [8:0] _T_242; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41462.6]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@41457.4]
  wire  _T_253; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@41512.4]
  wire  _T_254; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@41513.4]
  wire  _T_247; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@41498.4]
  wire  _GEN_10; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@41499.4]
  wire  _T_250; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@41507.4]
  wire  _T_248; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41502.4]
  wire [8:0] _T_257; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@41529.4]
  wire [8:0] _T_258; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@41530.4]
  wire  _T_259; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@41531.4]
  wire  _T_243_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41473.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41477.4]
  wire  _T_270; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@41548.4]
  wire  _T_271; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@41549.4]
  wire  _T_272; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@41550.4]
  wire  _T_260; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41532.4]
  wire [8:0] _GEN_41; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@41533.4]
  wire [8:0] _T_262; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@41534.4]
  wire  _T_264; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@41537.4]
  wire  _T_265; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@41538.4]
  wire  _T_266; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@41539.4]
  wire  _T_268; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41541.4]
  wire  _T_269; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41542.4]
  wire  _T_276; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@41560.4]
  wire  _T_243_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41473.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41474.4]
  wire  _T_277; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@41561.4]
  wire  _T_278; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@41562.4]
  wire  _T_279; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@41563.4]
  wire  _T_281; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41565.4]
  wire  _T_282; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41566.4]
  wire  _T_285; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@41587.4]
  wire  _T_286; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@41588.4]
  reg [1:0] _T_288_0; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@41594.4]
  reg [1:0] _T_288_1; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@41594.4]
  wire [1:0] _GEN_13; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@41595.4]
  wire [1:0] _T_291; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@41598.4]
  wire  _T_295; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41602.4]
  wire  _T_296; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@41603.4]
  wire [1:0] _T_297; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@41605.6]
  wire  _T_300; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@41610.4]
  wire [1:0] _T_301; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@41612.6]
  Queue_18 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41112.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_enq_bits_cache(Queue_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_io_enq_bits_prot),
    .io_enq_bits_echo_extra_id(Queue_io_enq_bits_echo_extra_id),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst),
    .io_deq_bits_cache(Queue_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_io_deq_bits_prot),
    .io_deq_bits_echo_extra_id(Queue_io_deq_bits_echo_extra_id)
  );
  Queue_18 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41291.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_1_io_enq_bits_burst),
    .io_enq_bits_cache(Queue_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_1_io_enq_bits_prot),
    .io_enq_bits_echo_extra_id(Queue_1_io_enq_bits_echo_extra_id),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst),
    .io_deq_bits_cache(Queue_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_1_io_deq_bits_prot),
    .io_deq_bits_echo_extra_id(Queue_1_io_deq_bits_echo_extra_id)
  );
  Queue_20 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@41465.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_data(Queue_2_io_enq_bits_data),
    .io_enq_bits_strb(Queue_2_io_enq_bits_strb),
    .io_enq_bits_last(Queue_2_io_enq_bits_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_data(Queue_2_io_deq_bits_data),
    .io_deq_bits_strb(Queue_2_io_deq_bits_strb),
    .io_deq_bits_last(Queue_2_io_deq_bits_last)
  );
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41135.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@41145.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41136.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@41146.4]
  assign _T_12 = {1'b0,$signed(_T_8)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41150.4]
  assign _T_14 = $signed(_T_12) & 33'shca012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41152.4]
  assign _T_15 = $signed(_T_14) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41153.4]
  assign _T_16 = _T_8 ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41154.4]
  assign _T_17 = {1'b0,$signed(_T_16)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41155.4]
  assign _T_19 = $signed(_T_17) & 33'shca010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41157.4]
  assign _T_20 = $signed(_T_19) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41158.4]
  assign _T_21 = _T_8 ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41159.4]
  assign _T_22 = {1'b0,$signed(_T_21)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41160.4]
  assign _T_24 = $signed(_T_22) & 33'shca010000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41162.4]
  assign _T_25 = $signed(_T_24) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41163.4]
  assign _T_26 = _T_8 ^ 32'h8000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41164.4]
  assign _T_27 = {1'b0,$signed(_T_26)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41165.4]
  assign _T_29 = $signed(_T_27) & 33'shc8000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41167.4]
  assign _T_30 = $signed(_T_29) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41168.4]
  assign _T_31 = _T_8 ^ 32'h40000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41169.4]
  assign _T_32 = {1'b0,$signed(_T_31)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41170.4]
  assign _T_34 = $signed(_T_32) & 33'shc0000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41172.4]
  assign _T_35 = $signed(_T_34) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41173.4]
  assign _T_36 = _T_8 ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41174.4]
  assign _T_37 = {1'b0,$signed(_T_36)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41175.4]
  assign _T_39 = $signed(_T_37) & 33'shc0000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41177.4]
  assign _T_40 = $signed(_T_39) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41178.4]
  assign _T_41 = _T_15 | _T_20; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41179.4]
  assign _T_42 = _T_41 | _T_25; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41180.4]
  assign _T_43 = _T_42 | _T_30; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41181.4]
  assign _T_44 = _T_43 | _T_35; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41182.4]
  assign _T_45 = _T_44 | _T_40; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41183.4]
  assign _T_46 = _T_8 ^ 32'h2000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41184.4]
  assign _T_47 = {1'b0,$signed(_T_46)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41185.4]
  assign _T_49 = $signed(_T_47) & 33'shca012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41187.4]
  assign _T_50 = $signed(_T_49) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41188.4]
  assign _T_51 = _T_45 ? 3'h7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41189.4]
  assign _T_52 = _T_50 ? 8'hff : 8'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41190.4]
  assign _GEN_16 = {{5'd0}, _T_51}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41191.4]
  assign _T_53 = _GEN_16 | _T_52; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41191.4]
  assign _GEN_17 = {{1'd0}, _T_7[7:1]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41195.4]
  assign _T_56 = _T_7 | _GEN_17; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41195.4]
  assign _GEN_18 = {{2'd0}, _T_56[7:2]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41197.4]
  assign _T_58 = _T_56 | _GEN_18; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41197.4]
  assign _GEN_19 = {{4'd0}, _T_58[7:4]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41199.4]
  assign _T_60 = _T_58 | _GEN_19; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41199.4]
  assign _T_63 = ~_T_7; // @[Fragmenter.scala 87:32:freechips.rocketchip.system.DefaultRV32Config.fir@41202.4]
  assign _T_64 = {_T_63, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41203.4]
  assign _T_66 = _T_63 | _T_64[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41205.4]
  assign _T_67 = {_T_66, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41206.4]
  assign _T_69 = _T_66 | _T_67[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41208.4]
  assign _T_70 = {_T_69, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41209.4]
  assign _T_72 = _T_69 | _T_70[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41211.4]
  assign _T_74 = ~_T_72; // @[Fragmenter.scala 87:24:freechips.rocketchip.system.DefaultRV32Config.fir@41213.4]
  assign _GEN_20 = {{1'd0}, _T_60[7:1]}; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41214.4]
  assign _T_75 = _GEN_20 | _T_74; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41214.4]
  assign _T_76 = {_T_8[10:3], 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41215.4]
  assign _T_78 = _T_8[10:3] | _T_76[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41217.4]
  assign _T_79 = {_T_78, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41218.4]
  assign _T_81 = _T_78 | _T_79[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41220.4]
  assign _T_82 = {_T_81, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41221.4]
  assign _T_84 = _T_81 | _T_82[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41223.4]
  assign _T_86 = ~_T_84; // @[Fragmenter.scala 89:24:freechips.rocketchip.system.DefaultRV32Config.fir@41225.4]
  assign _T_87 = _T_75 & _T_86; // @[Fragmenter.scala 90:37:freechips.rocketchip.system.DefaultRV32Config.fir@41226.4]
  assign _T_88 = _T_87 & _T_53; // @[Fragmenter.scala 90:46:freechips.rocketchip.system.DefaultRV32Config.fir@41227.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41133.4]
  assign _T_89 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@41228.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41134.4]
  assign _T_90 = _T_2_bits_size != 3'h3; // @[Fragmenter.scala 94:34:freechips.rocketchip.system.DefaultRV32Config.fir@41229.4]
  assign _T_91 = _T_89 | _T_90; // @[Fragmenter.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@41230.4]
  assign _T_92 = _T_91 ? 8'h0 : _T_88; // @[Fragmenter.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@41231.4]
  assign _T_93 = {_T_92, 1'h0}; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@41232.4]
  assign _T_94 = _T_93 | 9'h1; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@41233.4]
  assign _T_95 = {1'h0,_T_92}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41234.4]
  assign _T_96 = ~_T_95; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@41235.4]
  assign _T_97 = _T_94 & _T_96; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@41236.4]
  assign _GEN_21 = {{7'd0}, _T_97}; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41237.4]
  assign _T_98 = _GEN_21 << _T_2_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41237.4]
  assign _GEN_22 = {{16'd0}, _T_98}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41238.4]
  assign _T_100 = _T_8 + _GEN_22; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41239.4]
  assign _T_101 = {_T_2_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41240.4]
  assign _GEN_23 = {{7'd0}, _T_101}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41241.4]
  assign _T_102 = _GEN_23 << _T_2_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41241.4]
  assign _T_105 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@41246.4]
  assign _GEN_24 = {{17'd0}, _T_102[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41248.6]
  assign _T_106 = _T_100 & _GEN_24; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41248.6]
  assign _T_107 = ~_T_2_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@41249.6]
  assign _T_108 = _T_107 | _GEN_24; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@41250.6]
  assign _T_109 = ~_T_108; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@41251.6]
  assign _T_110 = _T_106 | _T_109; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@41252.6]
  assign _T_112 = _T_92 == _T_7; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@41259.4]
  assign _T_114 = ~_T_8; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@41274.4]
  assign _T_116 = 10'h7 << _T_2_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@41276.4]
  assign _T_118 = ~_T_116[2:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@41278.4]
  assign _GEN_26 = {{29'd0}, _T_118}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41279.4]
  assign _T_119 = _T_114 | _GEN_26; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41279.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41127.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41138.4]
  assign _T_121 = auto_out_ar_ready & _T_2_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41282.4]
  assign _T_122 = ~_T_112; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@41284.6]
  assign _GEN_27 = {{1'd0}, _T_7}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41287.6]
  assign _T_124 = _GEN_27 - _T_97; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41288.6]
  assign _GEN_4 = _T_121 ? _T_124 : {{1'd0}, _T_6}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@41283.4]
  assign _T_125_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41314.4]
  assign _T_130 = _T_127 ? _T_129 : _T_125_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@41324.4]
  assign _T_125_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41315.4]
  assign _T_131 = _T_127 ? _T_128 : _T_125_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@41325.4]
  assign _T_134 = _T_131 ^ 32'h40000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41328.4]
  assign _T_135 = {1'b0,$signed(_T_134)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41329.4]
  assign _T_137 = $signed(_T_135) & 33'shc0000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41331.4]
  assign _T_138 = $signed(_T_137) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41332.4]
  assign _T_140 = {1'b0,$signed(_T_131)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41334.4]
  assign _T_142 = $signed(_T_140) & 33'shca002000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41336.4]
  assign _T_143 = $signed(_T_142) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41337.4]
  assign _T_144 = _T_131 ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41338.4]
  assign _T_145 = {1'b0,$signed(_T_144)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41339.4]
  assign _T_147 = $signed(_T_145) & 33'shca000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41341.4]
  assign _T_148 = $signed(_T_147) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41342.4]
  assign _T_149 = _T_131 ^ 32'h8000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41343.4]
  assign _T_150 = {1'b0,$signed(_T_149)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41344.4]
  assign _T_152 = $signed(_T_150) & 33'shc8000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41346.4]
  assign _T_153 = $signed(_T_152) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41347.4]
  assign _T_154 = _T_131 ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41348.4]
  assign _T_155 = {1'b0,$signed(_T_154)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41349.4]
  assign _T_157 = $signed(_T_155) & 33'shc0000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41351.4]
  assign _T_158 = $signed(_T_157) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41352.4]
  assign _T_159 = _T_143 | _T_148; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41353.4]
  assign _T_160 = _T_159 | _T_153; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41354.4]
  assign _T_161 = _T_160 | _T_158; // @[Fragmenter.scala 77:100:freechips.rocketchip.system.DefaultRV32Config.fir@41355.4]
  assign _T_162 = _T_131 ^ 32'h2000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@41356.4]
  assign _T_163 = {1'b0,$signed(_T_162)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@41357.4]
  assign _T_165 = $signed(_T_163) & 33'shca002000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@41359.4]
  assign _T_166 = $signed(_T_165) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@41360.4]
  assign _T_167 = _T_138 ? 5'h1f : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41361.4]
  assign _T_168 = _T_161 ? 3'h7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41362.4]
  assign _T_169 = _T_166 ? 8'hff : 8'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41363.4]
  assign _GEN_28 = {{2'd0}, _T_168}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41364.4]
  assign _T_170 = _T_167 | _GEN_28; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41364.4]
  assign _GEN_29 = {{3'd0}, _T_170}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41365.4]
  assign _T_171 = _GEN_29 | _T_169; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@41365.4]
  assign _GEN_30 = {{1'd0}, _T_130[7:1]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41369.4]
  assign _T_174 = _T_130 | _GEN_30; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41369.4]
  assign _GEN_31 = {{2'd0}, _T_174[7:2]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41371.4]
  assign _T_176 = _T_174 | _GEN_31; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41371.4]
  assign _GEN_32 = {{4'd0}, _T_176[7:4]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41373.4]
  assign _T_178 = _T_176 | _GEN_32; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@41373.4]
  assign _T_181 = ~_T_130; // @[Fragmenter.scala 87:32:freechips.rocketchip.system.DefaultRV32Config.fir@41376.4]
  assign _T_182 = {_T_181, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41377.4]
  assign _T_184 = _T_181 | _T_182[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41379.4]
  assign _T_185 = {_T_184, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41380.4]
  assign _T_187 = _T_184 | _T_185[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41382.4]
  assign _T_188 = {_T_187, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41383.4]
  assign _T_190 = _T_187 | _T_188[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41385.4]
  assign _T_192 = ~_T_190; // @[Fragmenter.scala 87:24:freechips.rocketchip.system.DefaultRV32Config.fir@41387.4]
  assign _GEN_33 = {{1'd0}, _T_178[7:1]}; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41388.4]
  assign _T_193 = _GEN_33 | _T_192; // @[Fragmenter.scala 88:32:freechips.rocketchip.system.DefaultRV32Config.fir@41388.4]
  assign _T_194 = {_T_131[10:3], 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41389.4]
  assign _T_196 = _T_131[10:3] | _T_194[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41391.4]
  assign _T_197 = {_T_196, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41392.4]
  assign _T_199 = _T_196 | _T_197[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41394.4]
  assign _T_200 = {_T_199, 4'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@41395.4]
  assign _T_202 = _T_199 | _T_200[7:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@41397.4]
  assign _T_204 = ~_T_202; // @[Fragmenter.scala 89:24:freechips.rocketchip.system.DefaultRV32Config.fir@41399.4]
  assign _T_205 = _T_193 & _T_204; // @[Fragmenter.scala 90:37:freechips.rocketchip.system.DefaultRV32Config.fir@41400.4]
  assign _T_206 = _T_205 & _T_171; // @[Fragmenter.scala 90:46:freechips.rocketchip.system.DefaultRV32Config.fir@41401.4]
  assign _T_125_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41312.4]
  assign _T_207 = _T_125_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@41402.4]
  assign _T_125_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41313.4]
  assign _T_208 = _T_125_bits_size != 3'h3; // @[Fragmenter.scala 94:34:freechips.rocketchip.system.DefaultRV32Config.fir@41403.4]
  assign _T_209 = _T_207 | _T_208; // @[Fragmenter.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@41404.4]
  assign _T_210 = _T_209 ? 8'h0 : _T_206; // @[Fragmenter.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@41405.4]
  assign _T_211 = {_T_210, 1'h0}; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@41406.4]
  assign _T_212 = _T_211 | 9'h1; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@41407.4]
  assign _T_213 = {1'h0,_T_210}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41408.4]
  assign _T_214 = ~_T_213; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@41409.4]
  assign _T_215 = _T_212 & _T_214; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@41410.4]
  assign _GEN_34 = {{7'd0}, _T_215}; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41411.4]
  assign _T_216 = _GEN_34 << _T_125_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@41411.4]
  assign _GEN_35 = {{16'd0}, _T_216}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41412.4]
  assign _T_218 = _T_131 + _GEN_35; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@41413.4]
  assign _T_219 = {_T_125_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@41414.4]
  assign _GEN_36 = {{7'd0}, _T_219}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41415.4]
  assign _T_220 = _GEN_36 << _T_125_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@41415.4]
  assign _T_223 = _T_125_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@41420.4]
  assign _GEN_37 = {{17'd0}, _T_220[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41422.6]
  assign _T_224 = _T_218 & _GEN_37; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@41422.6]
  assign _T_225 = ~_T_125_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@41423.6]
  assign _T_226 = _T_225 | _GEN_37; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@41424.6]
  assign _T_227 = ~_T_226; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@41425.6]
  assign _T_228 = _T_224 | _T_227; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@41426.6]
  assign _T_230 = _T_210 == _T_130; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@41433.4]
  assign _T_256 = _T_255 == 9'h0; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@41528.4]
  assign _T_251 = _T_256 | _T_244; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@41509.4]
  assign _T_252 = auto_out_aw_ready & _T_251; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@41510.4]
  assign _T_232 = ~_T_131; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@41448.4]
  assign _T_234 = 10'h7 << _T_125_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@41450.4]
  assign _T_236 = ~_T_234[2:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@41452.4]
  assign _GEN_39 = {{29'd0}, _T_236}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41453.4]
  assign _T_237 = _T_232 | _GEN_39; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@41453.4]
  assign _T_125_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41306.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41317.4]
  assign _T_239 = _T_252 & _T_125_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41456.4]
  assign _T_240 = ~_T_230; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@41458.6]
  assign _GEN_40 = {{1'd0}, _T_130}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41461.6]
  assign _T_242 = _GEN_40 - _T_215; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@41462.6]
  assign _GEN_9 = _T_239 ? _T_242 : {{1'd0}, _T_129}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@41457.4]
  assign _T_253 = ~_T_244; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@41512.4]
  assign _T_254 = _T_125_valid & _T_253; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@41513.4]
  assign _T_247 = _T_254 & _T_256; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@41498.4]
  assign _GEN_10 = _T_247 | _T_244; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@41499.4]
  assign _T_250 = _T_125_valid & _T_251; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@41507.4]
  assign _T_248 = auto_out_aw_ready & _T_250; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41502.4]
  assign _T_257 = _T_254 ? _T_215 : 9'h0; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@41529.4]
  assign _T_258 = _T_256 ? _T_257 : _T_255; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@41530.4]
  assign _T_259 = _T_258 == 9'h1; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@41531.4]
  assign _T_243_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41473.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@41477.4]
  assign _T_270 = ~_T_256; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@41548.4]
  assign _T_271 = _T_270 | _T_254; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@41549.4]
  assign _T_272 = _T_243_valid & _T_271; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@41550.4]
  assign _T_260 = auto_out_w_ready & _T_272; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41532.4]
  assign _GEN_41 = {{8'd0}, _T_260}; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@41533.4]
  assign _T_262 = _T_258 - _GEN_41; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@41534.4]
  assign _T_264 = ~_T_260; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@41537.4]
  assign _T_265 = _T_258 != 9'h0; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@41538.4]
  assign _T_266 = _T_264 | _T_265; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@41539.4]
  assign _T_268 = _T_266 | reset; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41541.4]
  assign _T_269 = ~_T_268; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41542.4]
  assign _T_276 = ~_T_272; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@41560.4]
  assign _T_243_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@41473.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@41474.4]
  assign _T_277 = ~_T_243_bits_last; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@41561.4]
  assign _T_278 = _T_276 | _T_277; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@41562.4]
  assign _T_279 = _T_278 | _T_259; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@41563.4]
  assign _T_281 = _T_279 | reset; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41565.4]
  assign _T_282 = ~_T_281; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41566.4]
  assign _T_285 = ~auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@41587.4]
  assign _T_286 = auto_in_b_ready | _T_285; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@41588.4]
  assign _GEN_13 = auto_out_b_bits_id ? _T_288_1 : _T_288_0; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@41595.4]
  assign _T_291 = 2'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@41598.4]
  assign _T_295 = _T_286 & auto_out_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@41602.4]
  assign _T_296 = _T_291[0] & _T_295; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@41603.4]
  assign _T_297 = _T_288_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@41605.6]
  assign _T_300 = _T_291[1] & _T_295; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@41610.4]
  assign _T_301 = _T_288_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@41612.6]
  assign auto_in_aw_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_w_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_13; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_b_bits_echo_extra_id = auto_out_b_bits_echo_extra_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_ar_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_bits_echo_extra_id = auto_out_r_bits_echo_extra_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41111.4]
  assign auto_out_aw_valid = _T_125_valid & _T_251; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_addr = ~_T_237; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_len = _T_209 ? 8'h0 : _T_206; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_echo_extra_id = Queue_1_io_deq_bits_echo_extra_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_aw_bits_echo_real_last = _T_210 == _T_130; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_w_valid = _T_243_valid & _T_271; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_w_bits_data = Queue_2_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_w_bits_strb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_w_bits_last = _T_258 == 9'h1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_b_ready = auto_in_b_ready | _T_285; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_addr = ~_T_119; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_len = _T_91 ? 8'h0 : _T_88; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_cache = Queue_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_prot = Queue_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_echo_extra_id = Queue_io_deq_bits_echo_extra_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_ar_bits_echo_real_last = _T_92 == _T_7; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41110.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41113.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41114.4]
  assign Queue_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@41115.4]
  assign Queue_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41125.4]
  assign Queue_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41124.4]
  assign Queue_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41123.4]
  assign Queue_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41122.4]
  assign Queue_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41121.4]
  assign Queue_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41119.4]
  assign Queue_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41118.4]
  assign Queue_io_enq_bits_echo_extra_id = auto_in_ar_bits_echo_extra_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41116.4]
  assign Queue_io_deq_ready = auto_out_ar_ready & _T_112; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@41139.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41292.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41293.4]
  assign Queue_1_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@41294.4]
  assign Queue_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41304.4]
  assign Queue_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41303.4]
  assign Queue_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41302.4]
  assign Queue_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41301.4]
  assign Queue_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41300.4]
  assign Queue_1_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41298.4]
  assign Queue_1_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41297.4]
  assign Queue_1_io_enq_bits_echo_extra_id = auto_in_aw_bits_echo_extra_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41295.4]
  assign Queue_1_io_deq_ready = _T_252 & _T_230; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@41318.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41466.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41467.4]
  assign Queue_2_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@41468.4]
  assign Queue_2_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41471.4]
  assign Queue_2_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41470.4]
  assign Queue_2_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@41469.4]
  assign Queue_2_io_deq_ready = auto_out_w_ready & _T_271; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@41478.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_4 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_5 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  _T_127 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_128 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  _T_129 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  _T_255 = _RAND_6[8:0];
  _RAND_7 = {1{`RANDOM}};
  _T_244 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_288_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_288_1 = _RAND_9[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_4 <= 1'h0;
    end else if (_T_121) begin
      _T_4 <= _T_122;
    end
    if (_T_121) begin
      if (_T_89) begin
        _T_5 <= _T_2_bits_addr;
      end else if (_T_105) begin
        _T_5 <= _T_110;
      end else begin
        _T_5 <= _T_100;
      end
    end
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_127 <= 1'h0;
    end else if (_T_239) begin
      _T_127 <= _T_240;
    end
    if (_T_239) begin
      if (_T_207) begin
        _T_128 <= _T_125_bits_addr;
      end else if (_T_223) begin
        _T_128 <= _T_228;
      end else begin
        _T_128 <= _T_218;
      end
    end
    _T_129 <= _GEN_9[7:0];
    if (reset) begin
      _T_255 <= 9'h0;
    end else begin
      _T_255 <= _T_262;
    end
    if (reset) begin
      _T_244 <= 1'h0;
    end else if (_T_248) begin
      _T_244 <= 1'h0;
    end else begin
      _T_244 <= _GEN_10;
    end
    if (reset) begin
      _T_288_0 <= 2'h0;
    end else if (_T_296) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_288_0 <= 2'h0;
      end else begin
        _T_288_0 <= _T_297;
      end
    end
    if (reset) begin
      _T_288_1 <= 2'h0;
    end else if (_T_300) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_288_1 <= 2'h0;
      end else begin
        _T_288_1 <= _T_301;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_269) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:170 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41544.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_269) begin
          $fatal; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@41545.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_282) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:179 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41568.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_282) begin
          $fatal; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@41569.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
