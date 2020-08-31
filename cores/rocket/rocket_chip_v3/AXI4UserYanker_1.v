module AXI4UserYanker_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40712.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40713.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40714.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [31:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [3:0]  auto_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [2:0]  auto_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [6:0]  auto_in_aw_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [63:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [6:0]  auto_in_b_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [31:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [3:0]  auto_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [2:0]  auto_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [6:0]  auto_in_ar_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [63:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [6:0]  auto_in_r_bits_echo_extra_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [31:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [63:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [7:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [31:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [63:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40715.4]
);
  wire  QueueCompatibility_clock; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_reset; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_enq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_enq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire [6:0] QueueCompatibility_io_enq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_enq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire [6:0] QueueCompatibility_io_deq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_io_deq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire [6:0] QueueCompatibility_1_io_enq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_enq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire [6:0] QueueCompatibility_1_io_deq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_1_io_deq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire [6:0] QueueCompatibility_2_io_enq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_enq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire [6:0] QueueCompatibility_2_io_deq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_2_io_deq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire [6:0] QueueCompatibility_3_io_enq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_enq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire [6:0] QueueCompatibility_3_io_deq_bits_extra_id; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  QueueCompatibility_3_io_deq_bits_real_last; // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
  wire  _T_2_0; // @[UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40742.4 UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40744.4]
  wire  _T_2_1; // @[UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40742.4 UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40745.4]
  wire  _GEN_1; // @[UserYanker.scala 48:36:freechips.rocketchip.system.DefaultRV32Config.fir@40746.4]
  wire  _T_7; // @[UserYanker.scala 55:15:freechips.rocketchip.system.DefaultRV32Config.fir@40767.4]
  wire  _T_5_0; // @[UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40759.4 UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40761.4]
  wire  _T_5_1; // @[UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40759.4 UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40762.4]
  wire  _GEN_3; // @[UserYanker.scala 55:28:freechips.rocketchip.system.DefaultRV32Config.fir@40768.4]
  wire  _T_8; // @[UserYanker.scala 55:28:freechips.rocketchip.system.DefaultRV32Config.fir@40768.4]
  wire  _T_10; // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40770.4]
  wire  _T_11; // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40771.4]
  wire [6:0] _T_6_0_extra_id; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40765.4]
  wire  _T_6_0_real_last; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40765.4]
  wire [6:0] _T_6_1_extra_id; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40766.4]
  wire  _T_6_1_real_last; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40766.4]
  wire [1:0] _T_13; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40787.4]
  wire [1:0] _T_18; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40792.4]
  wire  _T_22; // @[UserYanker.scala 62:37:freechips.rocketchip.system.DefaultRV32Config.fir@40796.4]
  wire  _T_23; // @[UserYanker.scala 62:53:freechips.rocketchip.system.DefaultRV32Config.fir@40797.4]
  wire  _T_25; // @[UserYanker.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@40800.4]
  wire  _T_28; // @[UserYanker.scala 62:53:freechips.rocketchip.system.DefaultRV32Config.fir@40806.4]
  wire  _T_32_0; // @[UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40814.4 UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40816.4]
  wire  _T_32_1; // @[UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40814.4 UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40817.4]
  wire  _GEN_9; // @[UserYanker.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@40818.4]
  wire  _T_37; // @[UserYanker.scala 76:15:freechips.rocketchip.system.DefaultRV32Config.fir@40839.4]
  wire  _T_35_0; // @[UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40831.4 UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40833.4]
  wire  _T_35_1; // @[UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40831.4 UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40834.4]
  wire  _GEN_11; // @[UserYanker.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@40840.4]
  wire  _T_38; // @[UserYanker.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@40840.4]
  wire  _T_40; // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40842.4]
  wire  _T_41; // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40843.4]
  wire [6:0] _T_36_0_extra_id; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40837.4]
  wire  _T_36_0_real_last; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40837.4]
  wire [6:0] _T_36_1_extra_id; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40838.4]
  wire  _T_36_1_real_last; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40838.4]
  wire [1:0] _T_43; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40857.4]
  wire [1:0] _T_48; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40862.4]
  wire  _T_52; // @[UserYanker.scala 83:37:freechips.rocketchip.system.DefaultRV32Config.fir@40866.4]
  wire  _T_54; // @[UserYanker.scala 84:37:freechips.rocketchip.system.DefaultRV32Config.fir@40869.4]
  QueueCompatibility_10 QueueCompatibility ( // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40726.4]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_extra_id(QueueCompatibility_io_enq_bits_extra_id),
    .io_enq_bits_real_last(QueueCompatibility_io_enq_bits_real_last),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_extra_id(QueueCompatibility_io_deq_bits_extra_id),
    .io_deq_bits_real_last(QueueCompatibility_io_deq_bits_real_last)
  );
  QueueCompatibility_10 QueueCompatibility_1 ( // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40730.4]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_extra_id(QueueCompatibility_1_io_enq_bits_extra_id),
    .io_enq_bits_real_last(QueueCompatibility_1_io_enq_bits_real_last),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_extra_id(QueueCompatibility_1_io_deq_bits_extra_id),
    .io_deq_bits_real_last(QueueCompatibility_1_io_deq_bits_real_last)
  );
  QueueCompatibility_10 QueueCompatibility_2 ( // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40734.4]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_extra_id(QueueCompatibility_2_io_enq_bits_extra_id),
    .io_enq_bits_real_last(QueueCompatibility_2_io_enq_bits_real_last),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_extra_id(QueueCompatibility_2_io_deq_bits_extra_id),
    .io_deq_bits_real_last(QueueCompatibility_2_io_deq_bits_real_last)
  );
  QueueCompatibility_10 QueueCompatibility_3 ( // @[UserYanker.scala 39:17:freechips.rocketchip.system.DefaultRV32Config.fir@40738.4]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_extra_id(QueueCompatibility_3_io_enq_bits_extra_id),
    .io_enq_bits_real_last(QueueCompatibility_3_io_enq_bits_real_last),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_extra_id(QueueCompatibility_3_io_deq_bits_extra_id),
    .io_deq_bits_real_last(QueueCompatibility_3_io_deq_bits_real_last)
  );
  assign _T_2_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40742.4 UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40744.4]
  assign _T_2_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40742.4 UserYanker.scala 47:25:freechips.rocketchip.system.DefaultRV32Config.fir@40745.4]
  assign _GEN_1 = auto_in_ar_bits_id ? _T_2_1 : _T_2_0; // @[UserYanker.scala 48:36:freechips.rocketchip.system.DefaultRV32Config.fir@40746.4]
  assign _T_7 = ~auto_out_r_valid; // @[UserYanker.scala 55:15:freechips.rocketchip.system.DefaultRV32Config.fir@40767.4]
  assign _T_5_0 = QueueCompatibility_io_deq_valid; // @[UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40759.4 UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40761.4]
  assign _T_5_1 = QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40759.4 UserYanker.scala 53:24:freechips.rocketchip.system.DefaultRV32Config.fir@40762.4]
  assign _GEN_3 = auto_out_r_bits_id ? _T_5_1 : _T_5_0; // @[UserYanker.scala 55:28:freechips.rocketchip.system.DefaultRV32Config.fir@40768.4]
  assign _T_8 = _T_7 | _GEN_3; // @[UserYanker.scala 55:28:freechips.rocketchip.system.DefaultRV32Config.fir@40768.4]
  assign _T_10 = _T_8 | reset; // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40770.4]
  assign _T_11 = ~_T_10; // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40771.4]
  assign _T_6_0_extra_id = QueueCompatibility_io_deq_bits_extra_id; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40765.4]
  assign _T_6_0_real_last = QueueCompatibility_io_deq_bits_real_last; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40765.4]
  assign _T_6_1_extra_id = QueueCompatibility_1_io_deq_bits_extra_id; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40766.4]
  assign _T_6_1_real_last = QueueCompatibility_1_io_deq_bits_real_last; // @[UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40763.4 UserYanker.scala 54:23:freechips.rocketchip.system.DefaultRV32Config.fir@40766.4]
  assign _T_13 = 2'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40787.4]
  assign _T_18 = 2'h1 << auto_out_r_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40792.4]
  assign _T_22 = auto_out_r_valid & auto_in_r_ready; // @[UserYanker.scala 62:37:freechips.rocketchip.system.DefaultRV32Config.fir@40796.4]
  assign _T_23 = _T_22 & _T_18[0]; // @[UserYanker.scala 62:53:freechips.rocketchip.system.DefaultRV32Config.fir@40797.4]
  assign _T_25 = auto_in_ar_valid & auto_out_ar_ready; // @[UserYanker.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@40800.4]
  assign _T_28 = _T_22 & _T_18[1]; // @[UserYanker.scala 62:53:freechips.rocketchip.system.DefaultRV32Config.fir@40806.4]
  assign _T_32_0 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40814.4 UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40816.4]
  assign _T_32_1 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40814.4 UserYanker.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@40817.4]
  assign _GEN_9 = auto_in_aw_bits_id ? _T_32_1 : _T_32_0; // @[UserYanker.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@40818.4]
  assign _T_37 = ~auto_out_b_valid; // @[UserYanker.scala 76:15:freechips.rocketchip.system.DefaultRV32Config.fir@40839.4]
  assign _T_35_0 = QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40831.4 UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40833.4]
  assign _T_35_1 = QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40831.4 UserYanker.scala 74:24:freechips.rocketchip.system.DefaultRV32Config.fir@40834.4]
  assign _GEN_11 = auto_out_b_bits_id ? _T_35_1 : _T_35_0; // @[UserYanker.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@40840.4]
  assign _T_38 = _T_37 | _GEN_11; // @[UserYanker.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@40840.4]
  assign _T_40 = _T_38 | reset; // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40842.4]
  assign _T_41 = ~_T_40; // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40843.4]
  assign _T_36_0_extra_id = QueueCompatibility_2_io_deq_bits_extra_id; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40837.4]
  assign _T_36_0_real_last = QueueCompatibility_2_io_deq_bits_real_last; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40837.4]
  assign _T_36_1_extra_id = QueueCompatibility_3_io_deq_bits_extra_id; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40838.4]
  assign _T_36_1_real_last = QueueCompatibility_3_io_deq_bits_real_last; // @[UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40835.4 UserYanker.scala 75:23:freechips.rocketchip.system.DefaultRV32Config.fir@40838.4]
  assign _T_43 = 2'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40857.4]
  assign _T_48 = 2'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@40862.4]
  assign _T_52 = auto_out_b_valid & auto_in_b_ready; // @[UserYanker.scala 83:37:freechips.rocketchip.system.DefaultRV32Config.fir@40866.4]
  assign _T_54 = auto_in_aw_valid & auto_out_aw_ready; // @[UserYanker.scala 84:37:freechips.rocketchip.system.DefaultRV32Config.fir@40869.4]
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_9; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_b_bits_echo_extra_id = auto_out_b_bits_id ? _T_36_1_extra_id : _T_36_0_extra_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_b_bits_echo_real_last = auto_out_b_bits_id ? _T_36_1_real_last : _T_36_0_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN_1; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_echo_extra_id = auto_out_r_bits_id ? _T_6_1_extra_id : _T_6_0_extra_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_echo_real_last = auto_out_r_bits_id ? _T_6_1_real_last : _T_6_0_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@40725.4]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_9; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_valid = auto_in_ar_valid & _GEN_1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@40724.4]
  assign QueueCompatibility_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40728.4]
  assign QueueCompatibility_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40729.4]
  assign QueueCompatibility_io_enq_valid = _T_25 & _T_13[0]; // @[UserYanker.scala 63:21:freechips.rocketchip.system.DefaultRV32Config.fir@40802.4]
  assign QueueCompatibility_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40804.4]
  assign QueueCompatibility_io_enq_bits_real_last = auto_in_ar_bits_echo_real_last; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40803.4]
  assign QueueCompatibility_io_deq_ready = _T_23 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:freechips.rocketchip.system.DefaultRV32Config.fir@40799.4]
  assign QueueCompatibility_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40732.4]
  assign QueueCompatibility_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40733.4]
  assign QueueCompatibility_1_io_enq_valid = _T_25 & _T_13[1]; // @[UserYanker.scala 63:21:freechips.rocketchip.system.DefaultRV32Config.fir@40811.4]
  assign QueueCompatibility_1_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40813.4]
  assign QueueCompatibility_1_io_enq_bits_real_last = auto_in_ar_bits_echo_real_last; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40812.4]
  assign QueueCompatibility_1_io_deq_ready = _T_28 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:freechips.rocketchip.system.DefaultRV32Config.fir@40808.4]
  assign QueueCompatibility_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40736.4]
  assign QueueCompatibility_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40737.4]
  assign QueueCompatibility_2_io_enq_valid = _T_54 & _T_43[0]; // @[UserYanker.scala 84:21:freechips.rocketchip.system.DefaultRV32Config.fir@40871.4]
  assign QueueCompatibility_2_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40873.4]
  assign QueueCompatibility_2_io_enq_bits_real_last = auto_in_aw_bits_echo_real_last; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40872.4]
  assign QueueCompatibility_2_io_deq_ready = _T_52 & _T_48[0]; // @[UserYanker.scala 83:21:freechips.rocketchip.system.DefaultRV32Config.fir@40868.4]
  assign QueueCompatibility_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40740.4]
  assign QueueCompatibility_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@40741.4]
  assign QueueCompatibility_3_io_enq_valid = _T_54 & _T_43[1]; // @[UserYanker.scala 84:21:freechips.rocketchip.system.DefaultRV32Config.fir@40879.4]
  assign QueueCompatibility_3_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40881.4]
  assign QueueCompatibility_3_io_enq_bits_real_last = auto_in_aw_bits_echo_real_last; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@40880.4]
  assign QueueCompatibility_3_io_deq_ready = _T_52 & _T_48[1]; // @[UserYanker.scala 83:21:freechips.rocketchip.system.DefaultRV32Config.fir@40876.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_11) begin
          $fwrite(32'h80000002,"Assertion failed\n    at UserYanker.scala:55 assert (!out.r.valid || r_valid) // Q must be ready faster than the response\n"); // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40773.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_11) begin
          $fatal; // @[UserYanker.scala 55:14:freechips.rocketchip.system.DefaultRV32Config.fir@40774.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_41) begin
          $fwrite(32'h80000002,"Assertion failed\n    at UserYanker.scala:76 assert (!out.b.valid || b_valid) // Q must be ready faster than the response\n"); // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40845.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_41) begin
          $fatal; // @[UserYanker.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@40846.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
