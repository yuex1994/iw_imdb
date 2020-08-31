module AXI4Fragmenter_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232172.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232173.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232174.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [11:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [11:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [11:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output [11:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_r_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232175.4]
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
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [11:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [11:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [11:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [11:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire [31:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire [3:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire [31:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire [3:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
  reg  _T_4; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@232214.4]
  reg [11:0] _T_5; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@232215.4]
  reg [7:0] _T_6; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232207.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@232217.4]
  wire [11:0] _T_2_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232208.4]
  wire [11:0] _T_8; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@232218.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232205.4]
  wire  _T_50; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@232260.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232206.4]
  wire [15:0] _T_59; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@232269.4]
  wire [15:0] _GEN_48; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232270.4]
  wire [15:0] _T_61; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232271.4]
  wire [15:0] _T_62; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@232272.4]
  wire [22:0] _GEN_49; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232273.4]
  wire [22:0] _T_63; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232273.4]
  wire  _T_66; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@232278.4]
  wire [15:0] _GEN_50; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232280.6]
  wire [15:0] _T_67; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232280.6]
  wire [11:0] _T_68; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@232281.6]
  wire [14:0] _GEN_51; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232282.6]
  wire [14:0] _T_69; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232282.6]
  wire [14:0] _T_70; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@232283.6]
  wire [15:0] _GEN_52; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232284.6]
  wire [15:0] _T_71; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232284.6]
  wire [15:0] _GEN_0; // @[Fragmenter.scala 104:59:freechips.rocketchip.system.DefaultRV32Config.fir@232279.4]
  wire [15:0] _GEN_1; // @[Fragmenter.scala 107:60:freechips.rocketchip.system.DefaultRV32Config.fir@232288.4]
  wire  _T_73; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@232291.4]
  wire [11:0] _T_75; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@232305.4]
  wire [8:0] _T_77; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@232307.4]
  wire [1:0] _T_79; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@232309.4]
  wire [11:0] _GEN_53; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232310.4]
  wire [11:0] _T_80; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232310.4]
  wire  _T_2_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  wire  _T_82; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232313.4]
  wire  _T_83; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@232315.6]
  wire [8:0] _GEN_54; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232318.6]
  wire [8:0] _T_85; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232319.6]
  wire [15:0] _GEN_3; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232314.4]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232314.4]
  reg  _T_88; // @[Fragmenter.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@232350.4]
  reg [11:0] _T_89; // @[Fragmenter.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@232351.4]
  reg [7:0] _T_90; // @[Fragmenter.scala 63:25:freechips.rocketchip.system.DefaultRV32Config.fir@232352.4]
  wire [7:0] _T_86_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232343.4]
  wire [7:0] _T_91; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@232353.4]
  wire [11:0] _T_86_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232344.4]
  wire [11:0] _T_92; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@232354.4]
  wire [1:0] _T_86_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232341.4]
  wire  _T_134; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@232396.4]
  wire [2:0] _T_86_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232342.4]
  wire [15:0] _T_143; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@232405.4]
  wire [15:0] _GEN_59; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232406.4]
  wire [15:0] _T_145; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232407.4]
  wire [15:0] _T_146; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@232408.4]
  wire [22:0] _GEN_60; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232409.4]
  wire [22:0] _T_147; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232409.4]
  wire  _T_150; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@232414.4]
  wire [15:0] _GEN_61; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232416.6]
  wire [15:0] _T_151; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232416.6]
  wire [11:0] _T_152; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@232417.6]
  wire [14:0] _GEN_62; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232418.6]
  wire [14:0] _T_153; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232418.6]
  wire [14:0] _T_154; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@232419.6]
  wire [15:0] _GEN_63; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232420.6]
  wire [15:0] _T_155; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232420.6]
  wire [15:0] _GEN_5; // @[Fragmenter.scala 104:59:freechips.rocketchip.system.DefaultRV32Config.fir@232415.4]
  wire [15:0] _GEN_6; // @[Fragmenter.scala 107:60:freechips.rocketchip.system.DefaultRV32Config.fir@232424.4]
  wire  _T_157; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@232427.4]
  reg [8:0] _T_182; // @[Fragmenter.scala 165:30:freechips.rocketchip.system.DefaultRV32Config.fir@232518.4]
  wire  _T_183; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@232519.4]
  reg  _T_171; // @[Fragmenter.scala 151:35:freechips.rocketchip.system.DefaultRV32Config.fir@232485.4]
  wire  _T_178; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@232501.4]
  wire  _T_179; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@232502.4]
  wire [11:0] _T_159; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@232441.4]
  wire [8:0] _T_161; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@232443.4]
  wire [1:0] _T_163; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@232445.4]
  wire [11:0] _GEN_64; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232446.4]
  wire [11:0] _T_164; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232446.4]
  wire  _T_86_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232346.4]
  wire  _T_166; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232449.4]
  wire  _T_167; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@232451.6]
  wire [8:0] _GEN_65; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232454.6]
  wire [8:0] _T_169; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232455.6]
  wire [15:0] _GEN_8; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232450.4]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232450.4]
  wire  _T_180; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@232504.4]
  wire  _T_181; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@232505.4]
  wire  _T_174; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@232490.4]
  wire  _GEN_10; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@232491.4]
  wire  _T_177; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@232499.4]
  wire  _T_175; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232494.4]
  wire [8:0] _T_184; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@232520.4]
  wire [8:0] _T_185; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@232521.4]
  wire  _T_186; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@232522.4]
  wire  _T_170_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232466.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232470.4]
  wire  _T_197; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@232539.4]
  wire  _T_198; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@232540.4]
  wire  _T_199; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@232541.4]
  wire  _T_187; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232523.4]
  wire [8:0] _GEN_66; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@232524.4]
  wire [8:0] _T_189; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@232525.4]
  wire  _T_191; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@232528.4]
  wire  _T_192; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@232529.4]
  wire  _T_193; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@232530.4]
  wire  _T_195; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232532.4]
  wire  _T_196; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232533.4]
  wire  _T_203; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@232551.4]
  wire  _T_170_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232466.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232467.4]
  wire  _T_204; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@232552.4]
  wire  _T_205; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@232553.4]
  wire  _T_206; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@232554.4]
  wire  _T_208; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232556.4]
  wire  _T_209; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232557.4]
  wire  _T_212; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@232576.4]
  wire  _T_213; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@232577.4]
  reg [1:0] _T_215_0; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_1; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_2; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_3; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_4; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_5; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_6; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_7; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_8; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_9; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_10; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_11; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_12; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_13; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_14; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  reg [1:0] _T_215_15; // @[Fragmenter.scala 193:26:freechips.rocketchip.system.DefaultRV32Config.fir@232597.4]
  wire [1:0] _GEN_13; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_14; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_15; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_16; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_17; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_18; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_19; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_20; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_21; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_22; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_23; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_24; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_25; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_26; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [1:0] _GEN_27; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  wire [15:0] _T_218; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@232601.4]
  wire  _T_236; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232619.4]
  wire  _T_237; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232620.4]
  wire [1:0] _T_238; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232622.6]
  wire  _T_241; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232627.4]
  wire [1:0] _T_242; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232629.6]
  wire  _T_245; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232634.4]
  wire [1:0] _T_246; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232636.6]
  wire  _T_249; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232641.4]
  wire [1:0] _T_250; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232643.6]
  wire  _T_253; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232648.4]
  wire [1:0] _T_254; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232650.6]
  wire  _T_257; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232655.4]
  wire [1:0] _T_258; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232657.6]
  wire  _T_261; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232662.4]
  wire [1:0] _T_262; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232664.6]
  wire  _T_265; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232669.4]
  wire [1:0] _T_266; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232671.6]
  wire  _T_269; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232676.4]
  wire [1:0] _T_270; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232678.6]
  wire  _T_273; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232683.4]
  wire [1:0] _T_274; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232685.6]
  wire  _T_277; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232690.4]
  wire [1:0] _T_278; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232692.6]
  wire  _T_281; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232697.4]
  wire [1:0] _T_282; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232699.6]
  wire  _T_285; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232704.4]
  wire [1:0] _T_286; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232706.6]
  wire  _T_289; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232711.4]
  wire [1:0] _T_290; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232713.6]
  wire  _T_293; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232718.4]
  wire [1:0] _T_294; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232720.6]
  wire  _T_297; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232725.4]
  wire [1:0] _T_298; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232727.6]
  Queue_51 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232186.4]
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
  Queue_51 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
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
  Queue_10 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@232458.4]
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
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232207.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@232217.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232208.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@232218.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232205.4]
  assign _T_50 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@232260.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232206.4]
  assign _T_59 = 16'h1 << _T_2_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@232269.4]
  assign _GEN_48 = {{4'd0}, _T_8}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232270.4]
  assign _T_61 = _GEN_48 + _T_59; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232271.4]
  assign _T_62 = {_T_2_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@232272.4]
  assign _GEN_49 = {{7'd0}, _T_62}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232273.4]
  assign _T_63 = _GEN_49 << _T_2_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232273.4]
  assign _T_66 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@232278.4]
  assign _GEN_50 = {{1'd0}, _T_63[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232280.6]
  assign _T_67 = _T_61 & _GEN_50; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232280.6]
  assign _T_68 = ~_T_2_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@232281.6]
  assign _GEN_51 = {{3'd0}, _T_68}; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232282.6]
  assign _T_69 = _GEN_51 | _T_63[22:8]; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232282.6]
  assign _T_70 = ~_T_69; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@232283.6]
  assign _GEN_52 = {{1'd0}, _T_70}; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232284.6]
  assign _T_71 = _T_67 | _GEN_52; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232284.6]
  assign _GEN_0 = _T_66 ? _T_71 : _T_61; // @[Fragmenter.scala 104:59:freechips.rocketchip.system.DefaultRV32Config.fir@232279.4]
  assign _GEN_1 = _T_50 ? {{4'd0}, _T_2_bits_addr} : _GEN_0; // @[Fragmenter.scala 107:60:freechips.rocketchip.system.DefaultRV32Config.fir@232288.4]
  assign _T_73 = 8'h0 == _T_7; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@232291.4]
  assign _T_75 = ~_T_8; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@232305.4]
  assign _T_77 = 9'h3 << _T_2_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@232307.4]
  assign _T_79 = ~_T_77[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@232309.4]
  assign _GEN_53 = {{10'd0}, _T_79}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232310.4]
  assign _T_80 = _T_75 | _GEN_53; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232310.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232200.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  assign _T_82 = auto_out_ar_ready & _T_2_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232313.4]
  assign _T_83 = ~_T_73; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@232315.6]
  assign _GEN_54 = {{1'd0}, _T_7}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232318.6]
  assign _T_85 = _GEN_54 - 9'h1; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232319.6]
  assign _GEN_3 = _T_82 ? _GEN_1 : {{4'd0}, _T_5}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232314.4]
  assign _GEN_4 = _T_82 ? _T_85 : {{1'd0}, _T_6}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232314.4]
  assign _T_86_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232343.4]
  assign _T_91 = _T_88 ? _T_90 : _T_86_bits_len; // @[Fragmenter.scala 65:23:freechips.rocketchip.system.DefaultRV32Config.fir@232353.4]
  assign _T_86_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232344.4]
  assign _T_92 = _T_88 ? _T_89 : _T_86_bits_addr; // @[Fragmenter.scala 66:23:freechips.rocketchip.system.DefaultRV32Config.fir@232354.4]
  assign _T_86_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232341.4]
  assign _T_134 = _T_86_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@232396.4]
  assign _T_86_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232342.4]
  assign _T_143 = 16'h1 << _T_86_bits_size; // @[Fragmenter.scala 101:38:freechips.rocketchip.system.DefaultRV32Config.fir@232405.4]
  assign _GEN_59 = {{4'd0}, _T_92}; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232406.4]
  assign _T_145 = _GEN_59 + _T_143; // @[Fragmenter.scala 101:29:freechips.rocketchip.system.DefaultRV32Config.fir@232407.4]
  assign _T_146 = {_T_86_bits_len,8'hff}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@232408.4]
  assign _GEN_60 = {{7'd0}, _T_146}; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232409.4]
  assign _T_147 = _GEN_60 << _T_86_bits_size; // @[Bundles.scala 30:21:freechips.rocketchip.system.DefaultRV32Config.fir@232409.4]
  assign _T_150 = _T_86_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:freechips.rocketchip.system.DefaultRV32Config.fir@232414.4]
  assign _GEN_61 = {{1'd0}, _T_147[22:8]}; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232416.6]
  assign _T_151 = _T_145 & _GEN_61; // @[Fragmenter.scala 105:33:freechips.rocketchip.system.DefaultRV32Config.fir@232416.6]
  assign _T_152 = ~_T_86_bits_addr; // @[Fragmenter.scala 105:49:freechips.rocketchip.system.DefaultRV32Config.fir@232417.6]
  assign _GEN_62 = {{3'd0}, _T_152}; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232418.6]
  assign _T_153 = _GEN_62 | _T_147[22:8]; // @[Fragmenter.scala 105:62:freechips.rocketchip.system.DefaultRV32Config.fir@232418.6]
  assign _T_154 = ~_T_153; // @[Fragmenter.scala 105:47:freechips.rocketchip.system.DefaultRV32Config.fir@232419.6]
  assign _GEN_63 = {{1'd0}, _T_154}; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232420.6]
  assign _T_155 = _T_151 | _GEN_63; // @[Fragmenter.scala 105:45:freechips.rocketchip.system.DefaultRV32Config.fir@232420.6]
  assign _GEN_5 = _T_150 ? _T_155 : _T_145; // @[Fragmenter.scala 104:59:freechips.rocketchip.system.DefaultRV32Config.fir@232415.4]
  assign _GEN_6 = _T_134 ? {{4'd0}, _T_86_bits_addr} : _GEN_5; // @[Fragmenter.scala 107:60:freechips.rocketchip.system.DefaultRV32Config.fir@232424.4]
  assign _T_157 = 8'h0 == _T_91; // @[Fragmenter.scala 111:27:freechips.rocketchip.system.DefaultRV32Config.fir@232427.4]
  assign _T_183 = _T_182 == 9'h0; // @[Fragmenter.scala 166:30:freechips.rocketchip.system.DefaultRV32Config.fir@232519.4]
  assign _T_178 = _T_183 | _T_171; // @[Fragmenter.scala 159:52:freechips.rocketchip.system.DefaultRV32Config.fir@232501.4]
  assign _T_179 = auto_out_aw_ready & _T_178; // @[Fragmenter.scala 159:35:freechips.rocketchip.system.DefaultRV32Config.fir@232502.4]
  assign _T_159 = ~_T_92; // @[Fragmenter.scala 123:28:freechips.rocketchip.system.DefaultRV32Config.fir@232441.4]
  assign _T_161 = 9'h3 << _T_86_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@232443.4]
  assign _T_163 = ~_T_161[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@232445.4]
  assign _GEN_64 = {{10'd0}, _T_163}; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232446.4]
  assign _T_164 = _T_159 | _GEN_64; // @[Fragmenter.scala 123:34:freechips.rocketchip.system.DefaultRV32Config.fir@232446.4]
  assign _T_86_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232336.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232346.4]
  assign _T_166 = _T_179 & _T_86_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232449.4]
  assign _T_167 = ~_T_157; // @[Fragmenter.scala 126:19:freechips.rocketchip.system.DefaultRV32Config.fir@232451.6]
  assign _GEN_65 = {{1'd0}, _T_91}; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232454.6]
  assign _T_169 = _GEN_65 - 9'h1; // @[Fragmenter.scala 128:25:freechips.rocketchip.system.DefaultRV32Config.fir@232455.6]
  assign _GEN_8 = _T_166 ? _GEN_6 : {{4'd0}, _T_89}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232450.4]
  assign _GEN_9 = _T_166 ? _T_169 : {{1'd0}, _T_90}; // @[Fragmenter.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@232450.4]
  assign _T_180 = ~_T_171; // @[Fragmenter.scala 160:38:freechips.rocketchip.system.DefaultRV32Config.fir@232504.4]
  assign _T_181 = _T_86_valid & _T_180; // @[Fragmenter.scala 160:35:freechips.rocketchip.system.DefaultRV32Config.fir@232505.4]
  assign _T_174 = _T_181 & _T_183; // @[Fragmenter.scala 154:26:freechips.rocketchip.system.DefaultRV32Config.fir@232490.4]
  assign _GEN_10 = _T_174 | _T_171; // @[Fragmenter.scala 154:43:freechips.rocketchip.system.DefaultRV32Config.fir@232491.4]
  assign _T_177 = _T_86_valid & _T_178; // @[Fragmenter.scala 158:35:freechips.rocketchip.system.DefaultRV32Config.fir@232499.4]
  assign _T_175 = auto_out_aw_ready & _T_177; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232494.4]
  assign _T_184 = _T_181 ? 9'h1 : 9'h0; // @[Fragmenter.scala 167:35:freechips.rocketchip.system.DefaultRV32Config.fir@232520.4]
  assign _T_185 = _T_183 ? _T_184 : _T_182; // @[Fragmenter.scala 167:23:freechips.rocketchip.system.DefaultRV32Config.fir@232521.4]
  assign _T_186 = _T_185 == 9'h1; // @[Fragmenter.scala 168:27:freechips.rocketchip.system.DefaultRV32Config.fir@232522.4]
  assign _T_170_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232466.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@232470.4]
  assign _T_197 = ~_T_183; // @[Fragmenter.scala 174:37:freechips.rocketchip.system.DefaultRV32Config.fir@232539.4]
  assign _T_198 = _T_197 | _T_181; // @[Fragmenter.scala 174:51:freechips.rocketchip.system.DefaultRV32Config.fir@232540.4]
  assign _T_199 = _T_170_valid & _T_198; // @[Fragmenter.scala 174:33:freechips.rocketchip.system.DefaultRV32Config.fir@232541.4]
  assign _T_187 = auto_out_w_ready & _T_199; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232523.4]
  assign _GEN_66 = {{8'd0}, _T_187}; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@232524.4]
  assign _T_189 = _T_185 - _GEN_66; // @[Fragmenter.scala 169:27:freechips.rocketchip.system.DefaultRV32Config.fir@232525.4]
  assign _T_191 = ~_T_187; // @[Fragmenter.scala 170:15:freechips.rocketchip.system.DefaultRV32Config.fir@232528.4]
  assign _T_192 = _T_185 != 9'h0; // @[Fragmenter.scala 170:39:freechips.rocketchip.system.DefaultRV32Config.fir@232529.4]
  assign _T_193 = _T_191 | _T_192; // @[Fragmenter.scala 170:29:freechips.rocketchip.system.DefaultRV32Config.fir@232530.4]
  assign _T_195 = _T_193 | reset; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232532.4]
  assign _T_196 = ~_T_195; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232533.4]
  assign _T_203 = ~_T_199; // @[Fragmenter.scala 179:15:freechips.rocketchip.system.DefaultRV32Config.fir@232551.4]
  assign _T_170_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@232466.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@232467.4]
  assign _T_204 = ~_T_170_bits_last; // @[Fragmenter.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@232552.4]
  assign _T_205 = _T_203 | _T_204; // @[Fragmenter.scala 179:28:freechips.rocketchip.system.DefaultRV32Config.fir@232553.4]
  assign _T_206 = _T_205 | _T_186; // @[Fragmenter.scala 179:47:freechips.rocketchip.system.DefaultRV32Config.fir@232554.4]
  assign _T_208 = _T_206 | reset; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232556.4]
  assign _T_209 = ~_T_208; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232557.4]
  assign _T_212 = ~auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 190:36:freechips.rocketchip.system.DefaultRV32Config.fir@232576.4]
  assign _T_213 = auto_in_b_ready | _T_212; // @[Fragmenter.scala 190:33:freechips.rocketchip.system.DefaultRV32Config.fir@232577.4]
  assign _GEN_13 = 4'h1 == auto_out_b_bits_id ? _T_215_1 : _T_215_0; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_14 = 4'h2 == auto_out_b_bits_id ? _T_215_2 : _GEN_13; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_15 = 4'h3 == auto_out_b_bits_id ? _T_215_3 : _GEN_14; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_16 = 4'h4 == auto_out_b_bits_id ? _T_215_4 : _GEN_15; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_17 = 4'h5 == auto_out_b_bits_id ? _T_215_5 : _GEN_16; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_18 = 4'h6 == auto_out_b_bits_id ? _T_215_6 : _GEN_17; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_19 = 4'h7 == auto_out_b_bits_id ? _T_215_7 : _GEN_18; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_20 = 4'h8 == auto_out_b_bits_id ? _T_215_8 : _GEN_19; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_21 = 4'h9 == auto_out_b_bits_id ? _T_215_9 : _GEN_20; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_22 = 4'ha == auto_out_b_bits_id ? _T_215_10 : _GEN_21; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_23 = 4'hb == auto_out_b_bits_id ? _T_215_11 : _GEN_22; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_24 = 4'hc == auto_out_b_bits_id ? _T_215_12 : _GEN_23; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_25 = 4'hd == auto_out_b_bits_id ? _T_215_13 : _GEN_24; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_26 = 4'he == auto_out_b_bits_id ? _T_215_14 : _GEN_25; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _GEN_27 = 4'hf == auto_out_b_bits_id ? _T_215_15 : _GEN_26; // @[Fragmenter.scala 194:41:freechips.rocketchip.system.DefaultRV32Config.fir@232598.4]
  assign _T_218 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@232601.4]
  assign _T_236 = _T_213 & auto_out_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@232619.4]
  assign _T_237 = _T_218[0] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232620.4]
  assign _T_238 = _T_215_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232622.6]
  assign _T_241 = _T_218[1] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232627.4]
  assign _T_242 = _T_215_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232629.6]
  assign _T_245 = _T_218[2] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232634.4]
  assign _T_246 = _T_215_2 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232636.6]
  assign _T_249 = _T_218[3] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232641.4]
  assign _T_250 = _T_215_3 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232643.6]
  assign _T_253 = _T_218[4] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232648.4]
  assign _T_254 = _T_215_4 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232650.6]
  assign _T_257 = _T_218[5] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232655.4]
  assign _T_258 = _T_215_5 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232657.6]
  assign _T_261 = _T_218[6] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232662.4]
  assign _T_262 = _T_215_6 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232664.6]
  assign _T_265 = _T_218[7] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232669.4]
  assign _T_266 = _T_215_7 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232671.6]
  assign _T_269 = _T_218[8] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232676.4]
  assign _T_270 = _T_215_8 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232678.6]
  assign _T_273 = _T_218[9] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232683.4]
  assign _T_274 = _T_215_9 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232685.6]
  assign _T_277 = _T_218[10] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232690.4]
  assign _T_278 = _T_215_10 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232692.6]
  assign _T_281 = _T_218[11] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232697.4]
  assign _T_282 = _T_215_11 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232699.6]
  assign _T_285 = _T_218[12] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232704.4]
  assign _T_286 = _T_215_12 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232706.6]
  assign _T_289 = _T_218[13] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232711.4]
  assign _T_290 = _T_215_13 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232713.6]
  assign _T_293 = _T_218[14] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232718.4]
  assign _T_294 = _T_215_14 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232720.6]
  assign _T_297 = _T_218[15] & _T_236; // @[Fragmenter.scala 196:19:freechips.rocketchip.system.DefaultRV32Config.fir@232725.4]
  assign _T_298 = _T_215_15 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:freechips.rocketchip.system.DefaultRV32Config.fir@232727.6]
  assign auto_in_aw_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_w_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_27; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_ar_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232185.4]
  assign auto_out_aw_valid = _T_86_valid & _T_178; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_aw_bits_addr = ~_T_164; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_aw_bits_echo_real_last = 8'h0 == _T_91; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_w_valid = _T_170_valid & _T_198; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_w_bits_data = Queue_2_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_w_bits_strb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_w_bits_last = _T_185 == 9'h1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_b_ready = auto_in_b_ready | _T_212; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_ar_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_ar_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_ar_bits_addr = ~_T_80; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_ar_bits_echo_real_last = 8'h0 == _T_7; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232184.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232187.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232188.4]
  assign Queue_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@232189.4]
  assign Queue_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232198.4]
  assign Queue_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232197.4]
  assign Queue_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232196.4]
  assign Queue_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232195.4]
  assign Queue_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232194.4]
  assign Queue_io_deq_ready = auto_out_ar_ready & _T_73; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@232211.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232323.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  assign Queue_1_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@232325.4]
  assign Queue_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign Queue_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign Queue_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232332.4]
  assign Queue_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232331.4]
  assign Queue_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232330.4]
  assign Queue_1_io_deq_ready = _T_179 & _T_157; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@232347.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232459.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232460.4]
  assign Queue_2_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@232461.4]
  assign Queue_2_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232464.4]
  assign Queue_2_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232463.4]
  assign Queue_2_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@232462.4]
  assign Queue_2_io_deq_ready = auto_out_w_ready & _T_198; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@232471.4]
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
  _T_5 = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  _T_88 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_89 = _RAND_4[11:0];
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
    _T_5 <= _GEN_3[11:0];
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_88 <= 1'h0;
    end else if (_T_166) begin
      _T_88 <= _T_167;
    end
    _T_89 <= _GEN_8[11:0];
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
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:170 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232535.6]
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
          $fatal; // @[Fragmenter.scala 170:14:freechips.rocketchip.system.DefaultRV32Config.fir@232536.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:179 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232559.6]
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
          $fatal; // @[Fragmenter.scala 179:14:freechips.rocketchip.system.DefaultRV32Config.fir@232560.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
