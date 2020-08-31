module TLToAXI4_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74034.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74035.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74036.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [2:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [31:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_aw_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_aw_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [3:0]  auto_out_b_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_b_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [31:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [3:0]  auto_out_ar_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output [1:0]  auto_out_ar_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [3:0]  auto_out_r_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input  [1:0]  auto_out_r_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74037.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [1:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire [1:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire [3:0] Queue_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire [3:0] Queue_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [1:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [31:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [3:0] Queue_1_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [2:0] Queue_1_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [3:0] Queue_1_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [1:0] Queue_1_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_enq_bits_wen; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [1:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [31:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_deq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [3:0] Queue_1_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [2:0] Queue_1_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [3:0] Queue_1_io_deq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [3:0] Queue_1_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire [1:0] Queue_1_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  Queue_1_io_deq_bits_wen; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
  wire  _T_7; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@74100.4]
  reg  _T_189; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@74446.4]
  wire  _T_191; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74448.4]
  reg  _T_161; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@74405.4]
  wire  _T_163; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74407.4]
  reg  _T_133; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@74364.4]
  wire  _T_135; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74366.4]
  reg  _T_105; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@74323.4]
  wire  _T_107; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74325.4]
  wire  _GEN_7; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  wire  _GEN_8; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  wire  _GEN_9; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  reg [3:0] _T_17; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@74110.4]
  wire  _T_20; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@74113.4]
  wire  _T_54; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  wire  _T_55; // @[ToAXI4.scala 195:21:freechips.rocketchip.system.DefaultRV32Config.fir@74235.4]
  reg  _T_36; // @[ToAXI4.scala 160:30:freechips.rocketchip.system.DefaultRV32Config.fir@74188.4]
  wire  _T_28_ready; // @[ToAXI4.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@74124.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@74163.4]
  wire  _T_56; // @[ToAXI4.scala 195:52:freechips.rocketchip.system.DefaultRV32Config.fir@74236.4]
  wire  _T_29_ready; // @[ToAXI4.scala 147:23:freechips.rocketchip.system.DefaultRV32Config.fir@74126.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@74135.4]
  wire  _T_57; // @[ToAXI4.scala 195:70:freechips.rocketchip.system.DefaultRV32Config.fir@74237.4]
  wire  _T_58; // @[ToAXI4.scala 195:34:freechips.rocketchip.system.DefaultRV32Config.fir@74238.4]
  wire  _T_59; // @[ToAXI4.scala 195:28:freechips.rocketchip.system.DefaultRV32Config.fir@74239.4]
  wire  _T_8; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74101.4]
  wire [12:0] _T_10; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@74103.4]
  wire [5:0] _T_12; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@74105.4]
  wire [3:0] _T_16; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@74109.4]
  wire [3:0] _T_19; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@74112.4]
  wire  _T_21; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@74114.4]
  wire  _T_22; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@74115.4]
  wire  _T_23; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@74116.4]
  wire  _T_31_bits_wen; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@74164.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@74165.4]
  wire  _T_32; // @[ToAXI4.scala 154:42:freechips.rocketchip.system.DefaultRV32Config.fir@74181.4]
  wire  _T_31_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@74164.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@74177.4]
  wire  _T_38; // @[ToAXI4.scala 161:38:freechips.rocketchip.system.DefaultRV32Config.fir@74191.6]
  wire [1:0] _GEN_3; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  wire [1:0] _GEN_4; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  wire [1:0] _GEN_5; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  wire [16:0] _T_40; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@74198.4]
  wire [9:0] _T_42; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@74200.4]
  wire  _T_44; // @[ToAXI4.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@74203.4]
  wire  _T_48; // @[ToAXI4.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@74220.4]
  wire [1:0] _T_49; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74227.4]
  wire [1:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74230.4]
  wire [1:0] _T_52; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74231.4]
  wire  _T_61; // @[ToAXI4.scala 196:31:freechips.rocketchip.system.DefaultRV32Config.fir@74242.4]
  wire  _T_62; // @[ToAXI4.scala 196:61:freechips.rocketchip.system.DefaultRV32Config.fir@74243.4]
  wire  _T_63; // @[ToAXI4.scala 196:69:freechips.rocketchip.system.DefaultRV32Config.fir@74244.4]
  wire  _T_64; // @[ToAXI4.scala 196:51:freechips.rocketchip.system.DefaultRV32Config.fir@74245.4]
  wire  _T_65; // @[ToAXI4.scala 196:45:freechips.rocketchip.system.DefaultRV32Config.fir@74246.4]
  wire  _T_68; // @[ToAXI4.scala 198:43:freechips.rocketchip.system.DefaultRV32Config.fir@74250.4]
  reg  _T_71; // @[ToAXI4.scala 205:30:freechips.rocketchip.system.DefaultRV32Config.fir@74257.4]
  wire  _T_72; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74258.4]
  wire  _T_73; // @[ToAXI4.scala 206:42:freechips.rocketchip.system.DefaultRV32Config.fir@74260.6]
  wire  _T_74; // @[ToAXI4.scala 208:32:freechips.rocketchip.system.DefaultRV32Config.fir@74263.4]
  wire  _T_75; // @[ToAXI4.scala 211:36:freechips.rocketchip.system.DefaultRV32Config.fir@74265.4]
  wire  _T_77; // @[ToAXI4.scala 212:24:freechips.rocketchip.system.DefaultRV32Config.fir@74268.4]
  reg  _T_78; // @[ToAXI4.scala 217:28:freechips.rocketchip.system.DefaultRV32Config.fir@74270.4]
  wire  _GEN_11; // @[ToAXI4.scala 218:27:freechips.rocketchip.system.DefaultRV32Config.fir@74272.4]
  wire  _T_80; // @[ToAXI4.scala 219:39:freechips.rocketchip.system.DefaultRV32Config.fir@74275.4]
  reg  _T_81; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@74276.4]
  wire  _GEN_12; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@74277.4]
  wire  _T_83; // @[ToAXI4.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@74281.4]
  wire  _T_84; // @[ToAXI4.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@74282.4]
  wire  _T_85; // @[ToAXI4.scala 223:100:freechips.rocketchip.system.DefaultRV32Config.fir@74283.4]
  wire [3:0] _T_90; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@74308.4]
  wire [1:0] _T_96; // @[ToAXI4.scala 236:31:freechips.rocketchip.system.DefaultRV32Config.fir@74314.4]
  wire [3:0] _T_98; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@74316.4]
  wire  _T_104; // @[ToAXI4.scala 237:23:freechips.rocketchip.system.DefaultRV32Config.fir@74322.4]
  wire  _T_108; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74326.4]
  wire  _T_109; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74327.4]
  wire  _T_110; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74328.4]
  wire  _T_111; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74329.4]
  wire  _T_112; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74330.4]
  wire  _T_114; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74332.4]
  wire  _T_116; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74334.4]
  wire  _T_117; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74336.4]
  wire  _T_119; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74338.4]
  wire  _T_121; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74340.4]
  wire  _T_122; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74341.4]
  wire  _T_123; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74346.4]
  wire  _T_125; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74348.4]
  wire  _T_127; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74350.4]
  wire  _T_128; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74351.4]
  wire  _T_137; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74368.4]
  wire  _T_138; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74369.4]
  wire  _T_140; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74371.4]
  wire  _T_142; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74373.4]
  wire  _T_144; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74375.4]
  wire  _T_145; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74377.4]
  wire  _T_147; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74379.4]
  wire  _T_149; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74381.4]
  wire  _T_150; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74382.4]
  wire  _T_151; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74387.4]
  wire  _T_153; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74389.4]
  wire  _T_155; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74391.4]
  wire  _T_156; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74392.4]
  wire  _T_165; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74409.4]
  wire  _T_166; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74410.4]
  wire  _T_168; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74412.4]
  wire  _T_170; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74414.4]
  wire  _T_172; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74416.4]
  wire  _T_173; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74418.4]
  wire  _T_175; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74420.4]
  wire  _T_177; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74422.4]
  wire  _T_178; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74423.4]
  wire  _T_179; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74428.4]
  wire  _T_181; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74430.4]
  wire  _T_183; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74432.4]
  wire  _T_184; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74433.4]
  wire  _T_193; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74450.4]
  wire  _T_194; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74451.4]
  wire  _T_196; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74453.4]
  wire  _T_198; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74455.4]
  wire  _T_200; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74457.4]
  wire  _T_201; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74459.4]
  wire  _T_203; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74461.4]
  wire  _T_205; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74463.4]
  wire  _T_206; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74464.4]
  wire  _T_207; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74469.4]
  wire  _T_209; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74471.4]
  wire  _T_211; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74473.4]
  wire  _T_212; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74474.4]
  TLMonitor_30 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@74044.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  Queue_10 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74128.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_strb(Queue_io_enq_bits_strb),
    .io_enq_bits_last(Queue_io_enq_bits_last),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_strb(Queue_io_deq_bits_strb),
    .io_deq_bits_last(Queue_io_deq_bits_last)
  );
  Queue_27 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@74147.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_cache(Queue_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_1_io_enq_bits_prot),
    .io_enq_bits_echo_tl_state_size(Queue_1_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(Queue_1_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(Queue_1_io_enq_bits_wen),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_1_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(Queue_1_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(Queue_1_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(Queue_1_io_deq_bits_wen)
  );
  assign _T_7 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@74100.4]
  assign _T_191 = ~_T_189; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74448.4]
  assign _T_163 = ~_T_161; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74407.4]
  assign _T_135 = ~_T_133; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74366.4]
  assign _T_107 = ~_T_105; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@74325.4]
  assign _GEN_7 = 2'h1 == auto_in_a_bits_source ? _T_133 : _T_105; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  assign _GEN_8 = 2'h2 == auto_in_a_bits_source ? _T_161 : _GEN_7; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  assign _GEN_9 = 2'h3 == auto_in_a_bits_source ? _T_189 : _GEN_8; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  assign _T_20 = _T_17 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@74113.4]
  assign _T_54 = _GEN_9 & _T_20; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@74234.4]
  assign _T_55 = ~_T_54; // @[ToAXI4.scala 195:21:freechips.rocketchip.system.DefaultRV32Config.fir@74235.4]
  assign _T_28_ready = Queue_1_io_enq_ready; // @[ToAXI4.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@74124.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@74163.4]
  assign _T_56 = _T_36 | _T_28_ready; // @[ToAXI4.scala 195:52:freechips.rocketchip.system.DefaultRV32Config.fir@74236.4]
  assign _T_29_ready = Queue_io_enq_ready; // @[ToAXI4.scala 147:23:freechips.rocketchip.system.DefaultRV32Config.fir@74126.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@74135.4]
  assign _T_57 = _T_56 & _T_29_ready; // @[ToAXI4.scala 195:70:freechips.rocketchip.system.DefaultRV32Config.fir@74237.4]
  assign _T_58 = _T_7 ? _T_57 : _T_28_ready; // @[ToAXI4.scala 195:34:freechips.rocketchip.system.DefaultRV32Config.fir@74238.4]
  assign _T_59 = _T_55 & _T_58; // @[ToAXI4.scala 195:28:freechips.rocketchip.system.DefaultRV32Config.fir@74239.4]
  assign _T_8 = _T_59 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74101.4]
  assign _T_10 = 13'h3f << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@74103.4]
  assign _T_12 = ~_T_10[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@74105.4]
  assign _T_16 = _T_7 ? _T_12[5:2] : 4'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@74109.4]
  assign _T_19 = _T_17 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@74112.4]
  assign _T_21 = _T_17 == 4'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@74114.4]
  assign _T_22 = _T_16 == 4'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@74115.4]
  assign _T_23 = _T_21 | _T_22; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@74116.4]
  assign _T_31_bits_wen = Queue_1_io_deq_bits_wen; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@74164.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@74165.4]
  assign _T_32 = ~_T_31_bits_wen; // @[ToAXI4.scala 154:42:freechips.rocketchip.system.DefaultRV32Config.fir@74181.4]
  assign _T_31_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@74164.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@74177.4]
  assign _T_38 = ~_T_23; // @[ToAXI4.scala 161:38:freechips.rocketchip.system.DefaultRV32Config.fir@74191.6]
  assign _GEN_3 = 2'h1 == auto_in_a_bits_source ? 2'h1 : 2'h0; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  assign _GEN_4 = 2'h2 == auto_in_a_bits_source ? 2'h2 : _GEN_3; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  assign _GEN_5 = 2'h3 == auto_in_a_bits_source ? 2'h3 : _GEN_4; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@74195.4]
  assign _T_40 = 17'h3ff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@74198.4]
  assign _T_42 = ~_T_40[9:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@74200.4]
  assign _T_44 = auto_in_a_bits_size >= 3'h2; // @[ToAXI4.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@74203.4]
  assign _T_48 = ~auto_in_a_bits_user_amba_prot_secure; // @[ToAXI4.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@74220.4]
  assign _T_49 = {auto_in_a_bits_user_amba_prot_fetch,_T_48}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74227.4]
  assign _T_51 = {auto_in_a_bits_user_amba_prot_modifiable,auto_in_a_bits_user_amba_prot_bufferable}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74230.4]
  assign _T_52 = {auto_in_a_bits_user_amba_prot_writealloc,auto_in_a_bits_user_amba_prot_readalloc}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@74231.4]
  assign _T_61 = _T_55 & auto_in_a_valid; // @[ToAXI4.scala 196:31:freechips.rocketchip.system.DefaultRV32Config.fir@74242.4]
  assign _T_62 = ~_T_36; // @[ToAXI4.scala 196:61:freechips.rocketchip.system.DefaultRV32Config.fir@74243.4]
  assign _T_63 = _T_62 & _T_29_ready; // @[ToAXI4.scala 196:69:freechips.rocketchip.system.DefaultRV32Config.fir@74244.4]
  assign _T_64 = _T_7 ? _T_63 : 1'h1; // @[ToAXI4.scala 196:51:freechips.rocketchip.system.DefaultRV32Config.fir@74245.4]
  assign _T_65 = _T_61 & _T_64; // @[ToAXI4.scala 196:45:freechips.rocketchip.system.DefaultRV32Config.fir@74246.4]
  assign _T_68 = _T_61 & _T_7; // @[ToAXI4.scala 198:43:freechips.rocketchip.system.DefaultRV32Config.fir@74250.4]
  assign _T_72 = auto_in_d_ready & auto_out_r_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74258.4]
  assign _T_73 = ~auto_out_r_bits_last; // @[ToAXI4.scala 206:42:freechips.rocketchip.system.DefaultRV32Config.fir@74260.6]
  assign _T_74 = auto_out_r_valid | _T_71; // @[ToAXI4.scala 208:32:freechips.rocketchip.system.DefaultRV32Config.fir@74263.4]
  assign _T_75 = ~_T_74; // @[ToAXI4.scala 211:36:freechips.rocketchip.system.DefaultRV32Config.fir@74265.4]
  assign _T_77 = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 212:24:freechips.rocketchip.system.DefaultRV32Config.fir@74268.4]
  assign _GEN_11 = _T_72 ? auto_out_r_bits_last : _T_78; // @[ToAXI4.scala 218:27:freechips.rocketchip.system.DefaultRV32Config.fir@74272.4]
  assign _T_80 = auto_out_r_bits_resp == 2'h3; // @[ToAXI4.scala 219:39:freechips.rocketchip.system.DefaultRV32Config.fir@74275.4]
  assign _GEN_12 = _T_78 ? _T_80 : _T_81; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@74277.4]
  assign _T_83 = auto_out_r_bits_resp != 2'h0; // @[ToAXI4.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@74281.4]
  assign _T_84 = auto_out_b_bits_resp != 2'h0; // @[ToAXI4.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@74282.4]
  assign _T_85 = _T_83 | _GEN_12; // @[ToAXI4.scala 223:100:freechips.rocketchip.system.DefaultRV32Config.fir@74283.4]
  assign _T_90 = 4'h1 << _GEN_5; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@74308.4]
  assign _T_96 = _T_74 ? auto_out_r_bits_id : auto_out_b_bits_id; // @[ToAXI4.scala 236:31:freechips.rocketchip.system.DefaultRV32Config.fir@74314.4]
  assign _T_98 = 4'h1 << _T_96; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@74316.4]
  assign _T_104 = _T_74 ? auto_out_r_bits_last : 1'h1; // @[ToAXI4.scala 237:23:freechips.rocketchip.system.DefaultRV32Config.fir@74322.4]
  assign _T_108 = _T_28_ready & _T_65; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74326.4]
  assign _T_109 = _T_90[0] & _T_108; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74327.4]
  assign _T_110 = _T_98[0] & _T_104; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74328.4]
  assign _T_111 = auto_in_d_ready & _T_77; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@74329.4]
  assign _T_112 = _T_110 & _T_111; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74330.4]
  assign _T_114 = _T_105 + _T_109; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74332.4]
  assign _T_116 = _T_114 - _T_112; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74334.4]
  assign _T_117 = ~_T_112; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74336.4]
  assign _T_119 = _T_117 | _T_105; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74338.4]
  assign _T_121 = _T_119 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74340.4]
  assign _T_122 = ~_T_121; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74341.4]
  assign _T_123 = ~_T_109; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74346.4]
  assign _T_125 = _T_123 | _T_107; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74348.4]
  assign _T_127 = _T_125 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74350.4]
  assign _T_128 = ~_T_127; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74351.4]
  assign _T_137 = _T_90[1] & _T_108; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74368.4]
  assign _T_138 = _T_98[1] & _T_104; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74369.4]
  assign _T_140 = _T_138 & _T_111; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74371.4]
  assign _T_142 = _T_133 + _T_137; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74373.4]
  assign _T_144 = _T_142 - _T_140; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74375.4]
  assign _T_145 = ~_T_140; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74377.4]
  assign _T_147 = _T_145 | _T_133; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74379.4]
  assign _T_149 = _T_147 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74381.4]
  assign _T_150 = ~_T_149; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74382.4]
  assign _T_151 = ~_T_137; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74387.4]
  assign _T_153 = _T_151 | _T_135; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74389.4]
  assign _T_155 = _T_153 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74391.4]
  assign _T_156 = ~_T_155; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74392.4]
  assign _T_165 = _T_90[2] & _T_108; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74409.4]
  assign _T_166 = _T_98[2] & _T_104; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74410.4]
  assign _T_168 = _T_166 & _T_111; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74412.4]
  assign _T_170 = _T_161 + _T_165; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74414.4]
  assign _T_172 = _T_170 - _T_168; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74416.4]
  assign _T_173 = ~_T_168; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74418.4]
  assign _T_175 = _T_173 | _T_161; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74420.4]
  assign _T_177 = _T_175 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74422.4]
  assign _T_178 = ~_T_177; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74423.4]
  assign _T_179 = ~_T_165; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74428.4]
  assign _T_181 = _T_179 | _T_163; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74430.4]
  assign _T_183 = _T_181 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74432.4]
  assign _T_184 = ~_T_183; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74433.4]
  assign _T_193 = _T_90[3] & _T_108; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@74450.4]
  assign _T_194 = _T_98[3] & _T_104; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@74451.4]
  assign _T_196 = _T_194 & _T_111; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@74453.4]
  assign _T_198 = _T_189 + _T_193; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@74455.4]
  assign _T_200 = _T_198 - _T_196; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@74457.4]
  assign _T_201 = ~_T_196; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@74459.4]
  assign _T_203 = _T_201 | _T_189; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@74461.4]
  assign _T_205 = _T_203 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74463.4]
  assign _T_206 = ~_T_205; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74464.4]
  assign _T_207 = ~_T_193; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@74469.4]
  assign _T_209 = _T_207 | _T_191; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@74471.4]
  assign _T_211 = _T_209 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74473.4]
  assign _T_212 = ~_T_211; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74474.4]
  assign auto_in_a_ready = _T_55 & _T_58; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_valid = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_opcode = _T_74 ? 3'h1 : 3'h0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_size = _T_74 ? auto_out_r_bits_echo_tl_state_size[2:0] : auto_out_b_bits_echo_tl_state_size[2:0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_source = _T_74 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_denied = _T_74 ? _GEN_12 : _T_84; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_in_d_bits_corrupt = _T_74 & _T_85; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@74077.4]
  assign auto_out_aw_valid = _T_31_valid & _T_31_bits_wen; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_aw_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_w_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_w_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_w_bits_strb = Queue_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_w_bits_last = Queue_io_deq_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_b_ready = auto_in_d_ready & _T_75; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_valid = _T_31_valid & _T_32; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_ar_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign auto_out_r_ready = auto_in_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@74076.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74045.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74046.4]
  assign TLMonitor_io_in_a_ready = _T_55 & _T_58; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74073.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74072.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74071.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74070.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74069.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74068.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74067.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74059.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74057.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74056.4]
  assign TLMonitor_io_in_d_valid = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74055.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_74 ? 3'h1 : 3'h0; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74054.4]
  assign TLMonitor_io_in_d_bits_size = _T_74 ? auto_out_r_bits_echo_tl_state_size[2:0] : auto_out_b_bits_echo_tl_state_size[2:0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74052.4]
  assign TLMonitor_io_in_d_bits_source = _T_74 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74051.4]
  assign TLMonitor_io_in_d_bits_denied = _T_74 ? _GEN_12 : _T_84; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74049.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_74 & _T_85; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@74047.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74129.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74130.4]
  assign Queue_io_enq_valid = _T_68 & _T_56; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@74131.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74134.4]
  assign Queue_io_enq_bits_strb = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74133.4]
  assign Queue_io_enq_bits_last = _T_21 | _T_22; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74132.4]
  assign Queue_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@74141.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74148.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@74149.4]
  assign Queue_1_io_enq_valid = _T_61 & _T_64; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@74150.4]
  assign Queue_1_io_enq_bits_id = 2'h3 == auto_in_a_bits_source ? 2'h3 : _GEN_4; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74162.4]
  assign Queue_1_io_enq_bits_addr = auto_in_a_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74161.4]
  assign Queue_1_io_enq_bits_len = _T_42[9:2]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74160.4]
  assign Queue_1_io_enq_bits_size = _T_44 ? 3'h2 : auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74159.4]
  assign Queue_1_io_enq_bits_cache = {_T_52,_T_51}; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74156.4]
  assign Queue_1_io_enq_bits_prot = {_T_49,auto_in_a_bits_user_amba_prot_privileged}; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74155.4]
  assign Queue_1_io_enq_bits_echo_tl_state_size = {{1'd0}, auto_in_a_bits_size}; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74153.4]
  assign Queue_1_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74152.4]
  assign Queue_1_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@74151.4]
  assign Queue_1_io_deq_ready = _T_31_bits_wen ? auto_out_aw_ready : auto_out_ar_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@74178.4]
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
  _T_189 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_161 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_133 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_105 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_17 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  _T_36 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_71 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_78 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_81 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_189 <= 1'h0;
    end else begin
      _T_189 <= _T_200;
    end
    if (reset) begin
      _T_161 <= 1'h0;
    end else begin
      _T_161 <= _T_172;
    end
    if (reset) begin
      _T_133 <= 1'h0;
    end else begin
      _T_133 <= _T_144;
    end
    if (reset) begin
      _T_105 <= 1'h0;
    end else begin
      _T_105 <= _T_116;
    end
    if (reset) begin
      _T_17 <= 4'h0;
    end else if (_T_8) begin
      if (_T_20) begin
        if (_T_7) begin
          _T_17 <= _T_12[5:2];
        end else begin
          _T_17 <= 4'h0;
        end
      end else begin
        _T_17 <= _T_19;
      end
    end
    if (reset) begin
      _T_36 <= 1'h0;
    end else if (_T_8) begin
      _T_36 <= _T_38;
    end
    if (reset) begin
      _T_71 <= 1'h0;
    end else if (_T_72) begin
      _T_71 <= _T_73;
    end
    _T_78 <= reset | _GEN_11;
    if (_T_78) begin
      _T_81 <= _T_80;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_122) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74343.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_122) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74344.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_128) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74353.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_128) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74354.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_150) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74384.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_150) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74385.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_156) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74394.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_156) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74395.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_178) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74425.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_178) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74426.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_184) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74435.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_184) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74436.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_206) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74466.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_206) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@74467.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_212) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74476.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_212) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@74477.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
