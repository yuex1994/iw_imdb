module AXI4Fragmenter_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230233.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230234.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230235.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [27:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output [27:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230236.4]
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [27:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [27:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [27:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [27:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire [31:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire [3:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire [31:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire [3:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
  reg  _T_4; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@230275.4]
  reg [27:0] _T_5; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@230276.4]
  reg [7:0] _T_6; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@230277.4]
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230268.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@230278.4]
  wire [27:0] _T_2_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230269.4]
  wire [27:0] _T_8; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@230279.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230266.4]
  wire  _T_50; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@230321.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230267.4]
  wire [15:0] _T_59; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@230330.4]
  wire [27:0] _GEN_48; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230331.4]
  wire [27:0] _T_61; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230332.4]
  wire [15:0] _T_62; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230333.4]
  wire [22:0] _GEN_49; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230334.4]
  wire [22:0] _T_63; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230334.4]
  wire  _T_66; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@230339.4]
  wire [27:0] _GEN_50; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230341.6]
  wire [27:0] _T_67; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230341.6]
  wire [27:0] _T_68; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@230342.6]
  wire [27:0] _T_69; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@230343.6]
  wire [27:0] _T_70; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@230344.6]
  wire [27:0] _T_71; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@230345.6]
  wire  _T_73; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@230352.4]
  wire [27:0] _T_75; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@230366.4]
  wire [8:0] _T_77; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@230368.4]
  wire [1:0] _T_79; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@230370.4]
  wire [27:0] _GEN_52; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230371.4]
  wire [27:0] _T_80; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230371.4]
  wire  _T_2_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230271.4]
  wire  _T_82; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230374.4]
  wire  _T_83; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@230376.6]
  wire [8:0] _GEN_53; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230379.6]
  wire [8:0] _T_85; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230380.6]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@230375.4]
  reg  _T_88; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@230411.4]
  reg [27:0] _T_89; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@230412.4]
  reg [7:0] _T_90; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@230413.4]
  wire [7:0] _T_86_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230404.4]
  wire [7:0] _T_91; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@230414.4]
  wire [27:0] _T_86_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230405.4]
  wire [27:0] _T_92; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@230415.4]
  wire [1:0] _T_86_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230402.4]
  wire  _T_134; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@230457.4]
  wire [2:0] _T_86_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230403.4]
  wire [15:0] _T_143; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@230466.4]
  wire [27:0] _GEN_58; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230467.4]
  wire [27:0] _T_145; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230468.4]
  wire [15:0] _T_146; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230469.4]
  wire [22:0] _GEN_59; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230470.4]
  wire [22:0] _T_147; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230470.4]
  wire  _T_150; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@230475.4]
  wire [27:0] _GEN_60; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230477.6]
  wire [27:0] _T_151; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230477.6]
  wire [27:0] _T_152; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@230478.6]
  wire [27:0] _T_153; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@230479.6]
  wire [27:0] _T_154; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@230480.6]
  wire [27:0] _T_155; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@230481.6]
  wire  _T_157; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@230488.4]
  reg [8:0] _T_182; // @[Fragmenter.scala 165:30:freechips.rocketchip.system.DefaultRV32Config.fir@230579.4]
  wire  _T_183; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@230580.4]
  reg  _T_171; // @[Fragmenter.scala 151:35:freechips.rocketchip.system.DefaultRV32Config.fir@230546.4]
  wire  _T_178; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@230562.4]
  wire  _T_179; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@230563.4]
  wire [27:0] _T_159; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@230502.4]
  wire [8:0] _T_161; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@230504.4]
  wire [1:0] _T_163; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@230506.4]
  wire [27:0] _GEN_62; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230507.4]
  wire [27:0] _T_164; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230507.4]
  wire  _T_86_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230407.4]
  wire  _T_166; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230510.4]
  wire  _T_167; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@230512.6]
  wire [8:0] _GEN_63; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230515.6]
  wire [8:0] _T_169; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230516.6]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@230511.4]
  wire  _T_180; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@230565.4]
  wire  _T_181; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@230566.4]
  wire  _T_174; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@230551.4]
  wire  _GEN_10; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@230552.4]
  wire  _T_177; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@230560.4]
  wire  _T_175; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230555.4]
  wire [8:0] _T_184; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@230581.4]
  wire [8:0] _T_185; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@230582.4]
  wire  _T_186; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@230583.4]
  wire  _T_170_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230527.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230531.4]
  wire  _T_197; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@230600.4]
  wire  _T_198; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@230601.4]
  wire  _T_199; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@230602.4]
  wire  _T_187; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230584.4]
  wire [8:0] _GEN_64; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@230585.4]
  wire [8:0] _T_189; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@230586.4]
  wire  _T_191; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@230589.4]
  wire  _T_192; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@230590.4]
  wire  _T_193; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@230591.4]
  wire  _T_195; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230593.4]
  wire  _T_196; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230594.4]
  wire  _T_203; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@230612.4]
  wire  _T_170_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230527.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230528.4]
  wire  _T_204; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@230613.4]
  wire  _T_205; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@230614.4]
  wire  _T_206; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@230615.4]
  wire  _T_208; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230617.4]
  wire  _T_209; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230618.4]
  wire  _T_212; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@230637.4]
  wire  _T_213; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@230638.4]
  reg [1:0] _T_215_0; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_1; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_2; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_3; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_4; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_5; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_6; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_7; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_8; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_9; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_10; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_11; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_12; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_13; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_14; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  reg [1:0] _T_215_15; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@230658.4]
  wire [1:0] _GEN_13; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_14; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_15; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_16; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_17; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_18; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_19; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_20; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_21; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_22; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_23; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_24; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_25; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_26; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [1:0] _GEN_27; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  wire [15:0] _T_218; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@230662.4]
  wire  _T_236; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230680.4]
  wire  _T_237; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230681.4]
  wire [1:0] _T_238; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230683.6]
  wire  _T_241; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230688.4]
  wire [1:0] _T_242; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230690.6]
  wire  _T_245; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230695.4]
  wire [1:0] _T_246; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230697.6]
  wire  _T_249; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230702.4]
  wire [1:0] _T_250; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230704.6]
  wire  _T_253; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230709.4]
  wire [1:0] _T_254; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230711.6]
  wire  _T_257; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230716.4]
  wire [1:0] _T_258; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230718.6]
  wire  _T_261; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230723.4]
  wire [1:0] _T_262; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230725.6]
  wire  _T_265; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230730.4]
  wire [1:0] _T_266; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230732.6]
  wire  _T_269; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230737.4]
  wire [1:0] _T_270; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230739.6]
  wire  _T_273; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230744.4]
  wire [1:0] _T_274; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230746.6]
  wire  _T_277; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230751.4]
  wire [1:0] _T_278; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230753.6]
  wire  _T_281; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230758.4]
  wire [1:0] _T_282; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230760.6]
  wire  _T_285; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230765.4]
  wire [1:0] _T_286; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230767.6]
  wire  _T_289; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230772.4]
  wire [1:0] _T_290; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230774.6]
  wire  _T_293; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230779.4]
  wire [1:0] _T_294; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230781.6]
  wire  _T_297; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230786.4]
  wire [1:0] _T_298; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230788.6]
  Queue_43 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230247.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst)
  );
  Queue_43 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230383.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_1_io_enq_bits_burst),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst)
  );
  Queue_10 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@230519.4]
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
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230268.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@230278.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230269.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@230279.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230266.4]
  assign _T_50 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@230321.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230267.4]
  assign _T_59 = 16'h1 << _T_2_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@230330.4]
  assign _GEN_48 = {{12'd0}, _T_59}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230331.4]
  assign _T_61 = _T_8 + _GEN_48; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230332.4]
  assign _T_62 = {_T_2_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230333.4]
  assign _GEN_49 = {{7'd0}, _T_62}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230334.4]
  assign _T_63 = _GEN_49 << _T_2_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230334.4]
  assign _T_66 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@230339.4]
  assign _GEN_50 = {{13'd0}, _T_63[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230341.6]
  assign _T_67 = _T_61 & _GEN_50; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230341.6]
  assign _T_68 = ~_T_2_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@230342.6]
  assign _T_69 = _T_68 | _GEN_50; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@230343.6]
  assign _T_70 = ~_T_69; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@230344.6]
  assign _T_71 = _T_67 | _T_70; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@230345.6]
  assign _T_73 = 8'h0 == _T_7; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@230352.4]
  assign _T_75 = ~_T_8; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@230366.4]
  assign _T_77 = 9'h3 << _T_2_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@230368.4]
  assign _T_79 = ~_T_77[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@230370.4]
  assign _GEN_52 = {{26'd0}, _T_79}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230371.4]
  assign _T_80 = _T_75 | _GEN_52; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230371.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230261.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230271.4]
  assign _T_82 = auto_out_ar_ready & _T_2_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230374.4]
  assign _T_83 = ~_T_73; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@230376.6]
  assign _GEN_53 = {{1'd0}, _T_7}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230379.6]
  assign _T_85 = _GEN_53 - 9'h1; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230380.6]
  assign _GEN_4 = _T_82 ? _T_85 : {{1'd0}, _T_6}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@230375.4]
  assign _T_86_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230404.4]
  assign _T_91 = _T_88 ? _T_90 : _T_86_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@230414.4]
  assign _T_86_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230405.4]
  assign _T_92 = _T_88 ? _T_89 : _T_86_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@230415.4]
  assign _T_86_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230402.4]
  assign _T_134 = _T_86_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@230457.4]
  assign _T_86_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230403.4]
  assign _T_143 = 16'h1 << _T_86_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@230466.4]
  assign _GEN_58 = {{12'd0}, _T_143}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230467.4]
  assign _T_145 = _T_92 + _GEN_58; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@230468.4]
  assign _T_146 = {_T_86_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230469.4]
  assign _GEN_59 = {{7'd0}, _T_146}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230470.4]
  assign _T_147 = _GEN_59 << _T_86_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@230470.4]
  assign _T_150 = _T_86_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@230475.4]
  assign _GEN_60 = {{13'd0}, _T_147[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230477.6]
  assign _T_151 = _T_145 & _GEN_60; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@230477.6]
  assign _T_152 = ~_T_86_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@230478.6]
  assign _T_153 = _T_152 | _GEN_60; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@230479.6]
  assign _T_154 = ~_T_153; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@230480.6]
  assign _T_155 = _T_151 | _T_154; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@230481.6]
  assign _T_157 = 8'h0 == _T_91; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@230488.4]
  assign _T_183 = _T_182 == 9'h0; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@230580.4]
  assign _T_178 = _T_183 | _T_171; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@230562.4]
  assign _T_179 = auto_out_aw_ready & _T_178; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@230563.4]
  assign _T_159 = ~_T_92; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@230502.4]
  assign _T_161 = 9'h3 << _T_86_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@230504.4]
  assign _T_163 = ~_T_161[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@230506.4]
  assign _GEN_62 = {{26'd0}, _T_163}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230507.4]
  assign _T_164 = _T_159 | _GEN_62; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@230507.4]
  assign _T_86_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230397.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230407.4]
  assign _T_166 = _T_179 & _T_86_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230510.4]
  assign _T_167 = ~_T_157; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@230512.6]
  assign _GEN_63 = {{1'd0}, _T_91}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230515.6]
  assign _T_169 = _GEN_63 - 9'h1; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@230516.6]
  assign _GEN_9 = _T_166 ? _T_169 : {{1'd0}, _T_90}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@230511.4]
  assign _T_180 = ~_T_171; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@230565.4]
  assign _T_181 = _T_86_valid & _T_180; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@230566.4]
  assign _T_174 = _T_181 & _T_183; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@230551.4]
  assign _GEN_10 = _T_174 | _T_171; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@230552.4]
  assign _T_177 = _T_86_valid & _T_178; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@230560.4]
  assign _T_175 = auto_out_aw_ready & _T_177; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230555.4]
  assign _T_184 = _T_181 ? 9'h1 : 9'h0; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@230581.4]
  assign _T_185 = _T_183 ? _T_184 : _T_182; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@230582.4]
  assign _T_186 = _T_185 == 9'h1; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@230583.4]
  assign _T_170_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230527.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@230531.4]
  assign _T_197 = ~_T_183; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@230600.4]
  assign _T_198 = _T_197 | _T_181; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@230601.4]
  assign _T_199 = _T_170_valid & _T_198; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@230602.4]
  assign _T_187 = auto_out_w_ready & _T_199; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230584.4]
  assign _GEN_64 = {{8'd0}, _T_187}; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@230585.4]
  assign _T_189 = _T_185 - _GEN_64; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@230586.4]
  assign _T_191 = ~_T_187; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@230589.4]
  assign _T_192 = _T_185 != 9'h0; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@230590.4]
  assign _T_193 = _T_191 | _T_192; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@230591.4]
  assign _T_195 = _T_193 | reset; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230593.4]
  assign _T_196 = ~_T_195; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230594.4]
  assign _T_203 = ~_T_199; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@230612.4]
  assign _T_170_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@230527.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@230528.4]
  assign _T_204 = ~_T_170_bits_last; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@230613.4]
  assign _T_205 = _T_203 | _T_204; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@230614.4]
  assign _T_206 = _T_205 | _T_186; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@230615.4]
  assign _T_208 = _T_206 | reset; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230617.4]
  assign _T_209 = ~_T_208; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230618.4]
  assign _T_212 = ~auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@230637.4]
  assign _T_213 = auto_in_b_ready | _T_212; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@230638.4]
  assign _GEN_13 = 4'h1 == auto_out_b_bits_id ? _T_215_1 : _T_215_0; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_14 = 4'h2 == auto_out_b_bits_id ? _T_215_2 : _GEN_13; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_15 = 4'h3 == auto_out_b_bits_id ? _T_215_3 : _GEN_14; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_16 = 4'h4 == auto_out_b_bits_id ? _T_215_4 : _GEN_15; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_17 = 4'h5 == auto_out_b_bits_id ? _T_215_5 : _GEN_16; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_18 = 4'h6 == auto_out_b_bits_id ? _T_215_6 : _GEN_17; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_19 = 4'h7 == auto_out_b_bits_id ? _T_215_7 : _GEN_18; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_20 = 4'h8 == auto_out_b_bits_id ? _T_215_8 : _GEN_19; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_21 = 4'h9 == auto_out_b_bits_id ? _T_215_9 : _GEN_20; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_22 = 4'ha == auto_out_b_bits_id ? _T_215_10 : _GEN_21; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_23 = 4'hb == auto_out_b_bits_id ? _T_215_11 : _GEN_22; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_24 = 4'hc == auto_out_b_bits_id ? _T_215_12 : _GEN_23; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_25 = 4'hd == auto_out_b_bits_id ? _T_215_13 : _GEN_24; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_26 = 4'he == auto_out_b_bits_id ? _T_215_14 : _GEN_25; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _GEN_27 = 4'hf == auto_out_b_bits_id ? _T_215_15 : _GEN_26; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@230659.4]
  assign _T_218 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@230662.4]
  assign _T_236 = _T_213 & auto_out_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230680.4]
  assign _T_237 = _T_218[0] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230681.4]
  assign _T_238 = _T_215_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230683.6]
  assign _T_241 = _T_218[1] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230688.4]
  assign _T_242 = _T_215_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230690.6]
  assign _T_245 = _T_218[2] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230695.4]
  assign _T_246 = _T_215_2 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230697.6]
  assign _T_249 = _T_218[3] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230702.4]
  assign _T_250 = _T_215_3 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230704.6]
  assign _T_253 = _T_218[4] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230709.4]
  assign _T_254 = _T_215_4 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230711.6]
  assign _T_257 = _T_218[5] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230716.4]
  assign _T_258 = _T_215_5 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230718.6]
  assign _T_261 = _T_218[6] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230723.4]
  assign _T_262 = _T_215_6 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230725.6]
  assign _T_265 = _T_218[7] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230730.4]
  assign _T_266 = _T_215_7 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230732.6]
  assign _T_269 = _T_218[8] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230737.4]
  assign _T_270 = _T_215_8 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230739.6]
  assign _T_273 = _T_218[9] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230744.4]
  assign _T_274 = _T_215_9 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230746.6]
  assign _T_277 = _T_218[10] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230751.4]
  assign _T_278 = _T_215_10 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230753.6]
  assign _T_281 = _T_218[11] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230758.4]
  assign _T_282 = _T_215_11 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230760.6]
  assign _T_285 = _T_218[12] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230765.4]
  assign _T_286 = _T_215_12 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230767.6]
  assign _T_289 = _T_218[13] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230772.4]
  assign _T_290 = _T_215_13 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230774.6]
  assign _T_293 = _T_218[14] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230779.4]
  assign _T_294 = _T_215_14 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230781.6]
  assign _T_297 = _T_218[15] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@230786.4]
  assign _T_298 = _T_215_15 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@230788.6]
  assign auto_in_aw_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_w_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_27; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_ar_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230246.4]
  assign auto_out_aw_valid = _T_86_valid & _T_178; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_aw_bits_addr = ~_T_164; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_aw_bits_echo_real_last = 8'h0 == _T_91; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_w_valid = _T_170_valid & _T_198; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_w_bits_data = Queue_2_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_w_bits_strb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_w_bits_last = _T_185 == 9'h1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_b_ready = auto_in_b_ready | _T_212; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_ar_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_ar_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_ar_bits_addr = ~_T_80; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_ar_bits_echo_real_last = 8'h0 == _T_7; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@230245.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230248.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230249.4]
  assign Queue_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@230250.4]
  assign Queue_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230259.4]
  assign Queue_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230258.4]
  assign Queue_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230257.4]
  assign Queue_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230256.4]
  assign Queue_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230255.4]
  assign Queue_io_deq_ready = auto_out_ar_ready & _T_73; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@230272.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230384.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230385.4]
  assign Queue_1_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@230386.4]
  assign Queue_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230395.4]
  assign Queue_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230394.4]
  assign Queue_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230393.4]
  assign Queue_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230392.4]
  assign Queue_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230391.4]
  assign Queue_1_io_deq_ready = _T_179 & _T_157; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@230408.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230520.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230521.4]
  assign Queue_2_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@230522.4]
  assign Queue_2_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230525.4]
  assign Queue_2_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230524.4]
  assign Queue_2_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@230523.4]
  assign Queue_2_io_deq_ready = auto_out_w_ready & _T_198; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@230532.4]
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
  _T_5 = _RAND_1[27:0];
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  _T_88 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_89 = _RAND_4[27:0];
  _RAND_5 = {1{`RANDOM}};
  _T_90 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  _T_182 = _RAND_6[8:0];
  _RAND_7 = {1{`RANDOM}};
  _T_171 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_215_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_215_1 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_215_2 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  _T_215_3 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  _T_215_4 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  _T_215_5 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  _T_215_6 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  _T_215_7 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  _T_215_8 = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  _T_215_9 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  _T_215_10 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  _T_215_11 = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  _T_215_12 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  _T_215_13 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  _T_215_14 = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  _T_215_15 = _RAND_23[1:0];
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
    end else if (_T_82) begin
      _T_4 <= _T_83;
    end
    if (_T_82) begin
      if (_T_50) begin
        _T_5 <= _T_2_bits_addr;
      end else if (_T_66) begin
        _T_5 <= _T_71;
      end else begin
        _T_5 <= _T_61;
      end
    end
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_88 <= 1'h0;
    end else if (_T_166) begin
      _T_88 <= _T_167;
    end
    if (_T_166) begin
      if (_T_134) begin
        _T_89 <= _T_86_bits_addr;
      end else if (_T_150) begin
        _T_89 <= _T_155;
      end else begin
        _T_89 <= _T_145;
      end
    end
    _T_90 <= _GEN_9[7:0];
    if (reset) begin
      _T_182 <= 9'h0;
    end else begin
      _T_182 <= _T_189;
    end
    if (reset) begin
      _T_171 <= 1'h0;
    end else if (_T_175) begin
      _T_171 <= 1'h0;
    end else begin
      _T_171 <= _GEN_10;
    end
    if (reset) begin
      _T_215_0 <= 2'h0;
    end else if (_T_237) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_0 <= 2'h0;
      end else begin
        _T_215_0 <= _T_238;
      end
    end
    if (reset) begin
      _T_215_1 <= 2'h0;
    end else if (_T_241) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_1 <= 2'h0;
      end else begin
        _T_215_1 <= _T_242;
      end
    end
    if (reset) begin
      _T_215_2 <= 2'h0;
    end else if (_T_245) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_2 <= 2'h0;
      end else begin
        _T_215_2 <= _T_246;
      end
    end
    if (reset) begin
      _T_215_3 <= 2'h0;
    end else if (_T_249) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_3 <= 2'h0;
      end else begin
        _T_215_3 <= _T_250;
      end
    end
    if (reset) begin
      _T_215_4 <= 2'h0;
    end else if (_T_253) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_4 <= 2'h0;
      end else begin
        _T_215_4 <= _T_254;
      end
    end
    if (reset) begin
      _T_215_5 <= 2'h0;
    end else if (_T_257) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_5 <= 2'h0;
      end else begin
        _T_215_5 <= _T_258;
      end
    end
    if (reset) begin
      _T_215_6 <= 2'h0;
    end else if (_T_261) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_6 <= 2'h0;
      end else begin
        _T_215_6 <= _T_262;
      end
    end
    if (reset) begin
      _T_215_7 <= 2'h0;
    end else if (_T_265) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_7 <= 2'h0;
      end else begin
        _T_215_7 <= _T_266;
      end
    end
    if (reset) begin
      _T_215_8 <= 2'h0;
    end else if (_T_269) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_8 <= 2'h0;
      end else begin
        _T_215_8 <= _T_270;
      end
    end
    if (reset) begin
      _T_215_9 <= 2'h0;
    end else if (_T_273) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_9 <= 2'h0;
      end else begin
        _T_215_9 <= _T_274;
      end
    end
    if (reset) begin
      _T_215_10 <= 2'h0;
    end else if (_T_277) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_10 <= 2'h0;
      end else begin
        _T_215_10 <= _T_278;
      end
    end
    if (reset) begin
      _T_215_11 <= 2'h0;
    end else if (_T_281) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_11 <= 2'h0;
      end else begin
        _T_215_11 <= _T_282;
      end
    end
    if (reset) begin
      _T_215_12 <= 2'h0;
    end else if (_T_285) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_12 <= 2'h0;
      end else begin
        _T_215_12 <= _T_286;
      end
    end
    if (reset) begin
      _T_215_13 <= 2'h0;
    end else if (_T_289) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_13 <= 2'h0;
      end else begin
        _T_215_13 <= _T_290;
      end
    end
    if (reset) begin
      _T_215_14 <= 2'h0;
    end else if (_T_293) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_14 <= 2'h0;
      end else begin
        _T_215_14 <= _T_294;
      end
    end
    if (reset) begin
      _T_215_15 <= 2'h0;
    end else if (_T_297) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_15 <= 2'h0;
      end else begin
        _T_215_15 <= _T_298;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_196) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:170 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230596.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_196) begin
          $fatal; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@230597.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_209) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:179 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230620.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_209) begin
          $fatal; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@230621.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
