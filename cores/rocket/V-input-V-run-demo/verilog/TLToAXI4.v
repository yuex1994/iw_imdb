module TLToAXI4( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26787.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26788.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26789.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [30:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [30:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_aw_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [4:0]  auto_out_aw_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [2:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [3:0]  auto_out_b_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [4:0]  auto_out_b_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [30:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [3:0]  auto_out_ar_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output [4:0]  auto_out_ar_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [2:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [3:0]  auto_out_r_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input  [4:0]  auto_out_r_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26790.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [30:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire [3:0] Queue_io_enq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_enq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire [3:0] Queue_io_deq_bits_strb; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_io_deq_bits_last; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [30:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [3:0] Queue_1_io_enq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_enq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [3:0] Queue_1_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [4:0] Queue_1_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_enq_bits_wen; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [30:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_deq_bits_lock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [3:0] Queue_1_io_deq_bits_cache; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [2:0] Queue_1_io_deq_bits_prot; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [3:0] Queue_1_io_deq_bits_qos; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [3:0] Queue_1_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire [4:0] Queue_1_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  Queue_1_io_deq_bits_wen; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
  wire  _T_7; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@26884.4]
  reg  _T_107; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@27109.4]
  wire  _T_109; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27111.4]
  reg  _T_193; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@27234.4]
  wire  _T_195; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27236.4]
  reg  _T_221; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@27275.4]
  wire  _T_223; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27277.4]
  reg [3:0] _T_164; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@27192.4]
  wire  _T_166; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27194.4]
  wire  _T_189; // @[ToAXI4.scala 261:15:freechips.rocketchip.system.DefaultRV32Config.fir@27229.4]
  reg  _T_165; // @[ToAXI4.scala 248:24:freechips.rocketchip.system.DefaultRV32Config.fir@27193.4]
  wire  _T_188; // @[ToAXI4.scala 260:50:freechips.rocketchip.system.DefaultRV32Config.fir@27228.4]
  wire  _T_190; // @[ToAXI4.scala 261:21:freechips.rocketchip.system.DefaultRV32Config.fir@27230.4]
  wire  _T_191; // @[ToAXI4.scala 261:44:freechips.rocketchip.system.DefaultRV32Config.fir@27231.4]
  wire  _T_192; // @[ToAXI4.scala 261:34:freechips.rocketchip.system.DefaultRV32Config.fir@27232.4]
  reg [3:0] _T_135; // @[ToAXI4.scala 247:28:freechips.rocketchip.system.DefaultRV32Config.fir@27150.4]
  wire  _T_137; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27152.4]
  wire  _T_160; // @[ToAXI4.scala 261:15:freechips.rocketchip.system.DefaultRV32Config.fir@27187.4]
  reg  _T_136; // @[ToAXI4.scala 248:24:freechips.rocketchip.system.DefaultRV32Config.fir@27151.4]
  wire  _T_159; // @[ToAXI4.scala 260:50:freechips.rocketchip.system.DefaultRV32Config.fir@27186.4]
  wire  _T_161; // @[ToAXI4.scala 261:21:freechips.rocketchip.system.DefaultRV32Config.fir@27188.4]
  wire  _T_162; // @[ToAXI4.scala 261:44:freechips.rocketchip.system.DefaultRV32Config.fir@27189.4]
  wire  _T_163; // @[ToAXI4.scala 261:34:freechips.rocketchip.system.DefaultRV32Config.fir@27190.4]
  wire  _GEN_29; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_30; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_31; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_32; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_33; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_34; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_35; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_36; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_37; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_38; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _GEN_39; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  reg [5:0] _T_17; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@26894.4]
  wire  _T_20; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@26897.4]
  wire  _T_54; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  wire  _T_55; // @[ToAXI4.scala 195:21:freechips.rocketchip.system.DefaultRV32Config.fir@27019.4]
  reg  _T_36; // @[ToAXI4.scala 160:30:freechips.rocketchip.system.DefaultRV32Config.fir@26972.4]
  wire  _T_28_ready; // @[ToAXI4.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@26908.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@26947.4]
  wire  _T_56; // @[ToAXI4.scala 195:52:freechips.rocketchip.system.DefaultRV32Config.fir@27020.4]
  wire  _T_29_ready; // @[ToAXI4.scala 147:23:freechips.rocketchip.system.DefaultRV32Config.fir@26910.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@26919.4]
  wire  _T_57; // @[ToAXI4.scala 195:70:freechips.rocketchip.system.DefaultRV32Config.fir@27021.4]
  wire  _T_58; // @[ToAXI4.scala 195:34:freechips.rocketchip.system.DefaultRV32Config.fir@27022.4]
  wire  _T_59; // @[ToAXI4.scala 195:28:freechips.rocketchip.system.DefaultRV32Config.fir@27023.4]
  wire  _T_8; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26885.4]
  wire [22:0] _T_10; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@26887.4]
  wire [7:0] _T_12; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@26889.4]
  wire [5:0] _T_16; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@26893.4]
  wire [5:0] _T_19; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@26896.4]
  wire  _T_21; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@26898.4]
  wire  _T_22; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@26899.4]
  wire  _T_23; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@26900.4]
  wire  _T_31_bits_wen; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@26948.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@26949.4]
  wire  _T_32; // @[ToAXI4.scala 154:42:freechips.rocketchip.system.DefaultRV32Config.fir@26965.4]
  wire  _T_31_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@26948.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@26961.4]
  wire  _T_38; // @[ToAXI4.scala 161:38:freechips.rocketchip.system.DefaultRV32Config.fir@26975.6]
  wire [2:0] _GEN_10; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_11; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_12; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_13; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_14; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_15; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_16; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_17; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_18; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_19; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [2:0] _GEN_20; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  wire [24:0] _T_40; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@26982.4]
  wire [9:0] _T_42; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@26984.4]
  wire  _T_44; // @[ToAXI4.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@26987.4]
  wire [3:0] _T_45; // @[ToAXI4.scala 168:23:freechips.rocketchip.system.DefaultRV32Config.fir@26988.4]
  wire  _T_48; // @[ToAXI4.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@27004.4]
  wire [1:0] _T_49; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27011.4]
  wire [1:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27014.4]
  wire [1:0] _T_52; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27015.4]
  wire  _T_61; // @[ToAXI4.scala 196:31:freechips.rocketchip.system.DefaultRV32Config.fir@27026.4]
  wire  _T_62; // @[ToAXI4.scala 196:61:freechips.rocketchip.system.DefaultRV32Config.fir@27027.4]
  wire  _T_63; // @[ToAXI4.scala 196:69:freechips.rocketchip.system.DefaultRV32Config.fir@27028.4]
  wire  _T_64; // @[ToAXI4.scala 196:51:freechips.rocketchip.system.DefaultRV32Config.fir@27029.4]
  wire  _T_65; // @[ToAXI4.scala 196:45:freechips.rocketchip.system.DefaultRV32Config.fir@27030.4]
  wire  _T_68; // @[ToAXI4.scala 198:43:freechips.rocketchip.system.DefaultRV32Config.fir@27034.4]
  reg  _T_71; // @[ToAXI4.scala 205:30:freechips.rocketchip.system.DefaultRV32Config.fir@27041.4]
  wire  _T_72; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27042.4]
  wire  _T_73; // @[ToAXI4.scala 206:42:freechips.rocketchip.system.DefaultRV32Config.fir@27044.6]
  wire  _T_74; // @[ToAXI4.scala 208:32:freechips.rocketchip.system.DefaultRV32Config.fir@27047.4]
  wire  _T_75; // @[ToAXI4.scala 211:36:freechips.rocketchip.system.DefaultRV32Config.fir@27049.4]
  wire  _T_77; // @[ToAXI4.scala 212:24:freechips.rocketchip.system.DefaultRV32Config.fir@27052.4]
  reg  _T_78; // @[ToAXI4.scala 217:28:freechips.rocketchip.system.DefaultRV32Config.fir@27054.4]
  wire  _GEN_41; // @[ToAXI4.scala 218:27:freechips.rocketchip.system.DefaultRV32Config.fir@27056.4]
  wire  _T_80; // @[ToAXI4.scala 219:39:freechips.rocketchip.system.DefaultRV32Config.fir@27059.4]
  reg  _T_81; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@27060.4]
  wire  _GEN_42; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@27061.4]
  wire  _T_83; // @[ToAXI4.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@27065.4]
  wire  _T_84; // @[ToAXI4.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@27066.4]
  wire  _T_85; // @[ToAXI4.scala 223:100:freechips.rocketchip.system.DefaultRV32Config.fir@27067.4]
  wire [7:0] _T_90; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27092.4]
  wire [2:0] _T_97; // @[ToAXI4.scala 236:31:freechips.rocketchip.system.DefaultRV32Config.fir@27099.4]
  wire [7:0] _T_99; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27101.4]
  wire  _T_106; // @[ToAXI4.scala 237:23:freechips.rocketchip.system.DefaultRV32Config.fir@27108.4]
  wire  _T_110; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27112.4]
  wire  _T_111; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27113.4]
  wire  _T_112; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27114.4]
  wire  _T_113; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27115.4]
  wire  _T_114; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27116.4]
  wire  _T_116; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27118.4]
  wire  _T_118; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27120.4]
  wire  _T_119; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27122.4]
  wire  _T_121; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27124.4]
  wire  _T_123; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27126.4]
  wire  _T_124; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27127.4]
  wire  _T_125; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27132.4]
  wire  _T_127; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27134.4]
  wire  _T_129; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27136.4]
  wire  _T_130; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27137.4]
  wire  _T_139; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27154.4]
  wire  _T_140; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27155.4]
  wire  _T_142; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27157.4]
  wire [3:0] _GEN_48; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27158.4]
  wire [3:0] _T_144; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27159.4]
  wire [3:0] _GEN_49; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27160.4]
  wire [3:0] _T_146; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27161.4]
  wire  _T_147; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27163.4]
  wire  _T_148; // @[ToAXI4.scala 255:31:freechips.rocketchip.system.DefaultRV32Config.fir@27164.4]
  wire  _T_149; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27165.4]
  wire  _T_151; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27167.4]
  wire  _T_152; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27168.4]
  wire  _T_153; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27173.4]
  wire  _T_154; // @[ToAXI4.scala 256:31:freechips.rocketchip.system.DefaultRV32Config.fir@27174.4]
  wire  _T_155; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27175.4]
  wire  _T_157; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27177.4]
  wire  _T_158; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27178.4]
  wire  _T_168; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27196.4]
  wire  _T_169; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27197.4]
  wire  _T_171; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27199.4]
  wire [3:0] _GEN_50; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27200.4]
  wire [3:0] _T_173; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27201.4]
  wire [3:0] _GEN_51; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27202.4]
  wire [3:0] _T_175; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27203.4]
  wire  _T_176; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27205.4]
  wire  _T_177; // @[ToAXI4.scala 255:31:freechips.rocketchip.system.DefaultRV32Config.fir@27206.4]
  wire  _T_178; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27207.4]
  wire  _T_180; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27209.4]
  wire  _T_181; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27210.4]
  wire  _T_182; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27215.4]
  wire  _T_183; // @[ToAXI4.scala 256:31:freechips.rocketchip.system.DefaultRV32Config.fir@27216.4]
  wire  _T_184; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27217.4]
  wire  _T_186; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27219.4]
  wire  _T_187; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27220.4]
  wire  _T_197; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27238.4]
  wire  _T_198; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27239.4]
  wire  _T_200; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27241.4]
  wire  _T_202; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27243.4]
  wire  _T_204; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27245.4]
  wire  _T_205; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27247.4]
  wire  _T_207; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27249.4]
  wire  _T_209; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27251.4]
  wire  _T_210; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27252.4]
  wire  _T_211; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27257.4]
  wire  _T_213; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27259.4]
  wire  _T_215; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27261.4]
  wire  _T_216; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27262.4]
  wire  _T_225; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27279.4]
  wire  _T_226; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27280.4]
  wire  _T_228; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27282.4]
  wire  _T_230; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27284.4]
  wire  _T_232; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27286.4]
  wire  _T_233; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27288.4]
  wire  _T_235; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27290.4]
  wire  _T_237; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27292.4]
  wire  _T_238; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27293.4]
  wire  _T_239; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27298.4]
  wire  _T_241; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27300.4]
  wire  _T_243; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27302.4]
  wire  _T_244; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27303.4]
  TLMonitor_8 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@26797.4]
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
  Queue_10 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26912.4]
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
  Queue_11 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@26931.4]
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
  assign _T_7 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@26884.4]
  assign _T_109 = ~_T_107; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27111.4]
  assign _T_195 = ~_T_193; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27236.4]
  assign _T_223 = ~_T_221; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27277.4]
  assign _T_166 = _T_164 == 4'h0; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27194.4]
  assign _T_189 = ~_T_166; // @[ToAXI4.scala 261:15:freechips.rocketchip.system.DefaultRV32Config.fir@27229.4]
  assign _T_188 = _T_165 != _T_7; // @[ToAXI4.scala 260:50:freechips.rocketchip.system.DefaultRV32Config.fir@27228.4]
  assign _T_190 = _T_189 & _T_188; // @[ToAXI4.scala 261:21:freechips.rocketchip.system.DefaultRV32Config.fir@27230.4]
  assign _T_191 = _T_164 == 4'h8; // @[ToAXI4.scala 261:44:freechips.rocketchip.system.DefaultRV32Config.fir@27231.4]
  assign _T_192 = _T_190 | _T_191; // @[ToAXI4.scala 261:34:freechips.rocketchip.system.DefaultRV32Config.fir@27232.4]
  assign _T_137 = _T_135 == 4'h0; // @[ToAXI4.scala 249:26:freechips.rocketchip.system.DefaultRV32Config.fir@27152.4]
  assign _T_160 = ~_T_137; // @[ToAXI4.scala 261:15:freechips.rocketchip.system.DefaultRV32Config.fir@27187.4]
  assign _T_159 = _T_136 != _T_7; // @[ToAXI4.scala 260:50:freechips.rocketchip.system.DefaultRV32Config.fir@27186.4]
  assign _T_161 = _T_160 & _T_159; // @[ToAXI4.scala 261:21:freechips.rocketchip.system.DefaultRV32Config.fir@27188.4]
  assign _T_162 = _T_135 == 4'h8; // @[ToAXI4.scala 261:44:freechips.rocketchip.system.DefaultRV32Config.fir@27189.4]
  assign _T_163 = _T_161 | _T_162; // @[ToAXI4.scala 261:34:freechips.rocketchip.system.DefaultRV32Config.fir@27190.4]
  assign _GEN_29 = 5'h8 == auto_in_a_bits_source ? _T_192 : _T_163; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_30 = 5'h9 == auto_in_a_bits_source ? _T_192 : _GEN_29; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_31 = 5'ha == auto_in_a_bits_source ? _T_192 : _GEN_30; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_32 = 5'hb == auto_in_a_bits_source ? _T_192 : _GEN_31; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_33 = 5'hc == auto_in_a_bits_source ? _T_192 : _GEN_32; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_34 = 5'hd == auto_in_a_bits_source ? _T_192 : _GEN_33; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_35 = 5'he == auto_in_a_bits_source ? _T_192 : _GEN_34; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_36 = 5'hf == auto_in_a_bits_source ? _T_192 : _GEN_35; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_37 = 5'h10 == auto_in_a_bits_source ? _T_221 : _GEN_36; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_38 = 5'h11 == auto_in_a_bits_source ? _T_193 : _GEN_37; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _GEN_39 = 5'h12 == auto_in_a_bits_source ? _T_107 : _GEN_38; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _T_20 = _T_17 == 6'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@26897.4]
  assign _T_54 = _GEN_39 & _T_20; // @[ToAXI4.scala 194:49:freechips.rocketchip.system.DefaultRV32Config.fir@27018.4]
  assign _T_55 = ~_T_54; // @[ToAXI4.scala 195:21:freechips.rocketchip.system.DefaultRV32Config.fir@27019.4]
  assign _T_28_ready = Queue_1_io_enq_ready; // @[ToAXI4.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@26908.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@26947.4]
  assign _T_56 = _T_36 | _T_28_ready; // @[ToAXI4.scala 195:52:freechips.rocketchip.system.DefaultRV32Config.fir@27020.4]
  assign _T_29_ready = Queue_io_enq_ready; // @[ToAXI4.scala 147:23:freechips.rocketchip.system.DefaultRV32Config.fir@26910.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@26919.4]
  assign _T_57 = _T_56 & _T_29_ready; // @[ToAXI4.scala 195:70:freechips.rocketchip.system.DefaultRV32Config.fir@27021.4]
  assign _T_58 = _T_7 ? _T_57 : _T_28_ready; // @[ToAXI4.scala 195:34:freechips.rocketchip.system.DefaultRV32Config.fir@27022.4]
  assign _T_59 = _T_55 & _T_58; // @[ToAXI4.scala 195:28:freechips.rocketchip.system.DefaultRV32Config.fir@27023.4]
  assign _T_8 = _T_59 & auto_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26885.4]
  assign _T_10 = 23'hff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@26887.4]
  assign _T_12 = ~_T_10[7:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@26889.4]
  assign _T_16 = _T_7 ? _T_12[7:2] : 6'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@26893.4]
  assign _T_19 = _T_17 - 6'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@26896.4]
  assign _T_21 = _T_17 == 6'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@26898.4]
  assign _T_22 = _T_16 == 6'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@26899.4]
  assign _T_23 = _T_21 | _T_22; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@26900.4]
  assign _T_31_bits_wen = Queue_1_io_deq_bits_wen; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@26948.4 Decoupled.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@26949.4]
  assign _T_32 = ~_T_31_bits_wen; // @[ToAXI4.scala 154:42:freechips.rocketchip.system.DefaultRV32Config.fir@26965.4]
  assign _T_31_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:freechips.rocketchip.system.DefaultRV32Config.fir@26948.4 Decoupled.scala 310:15:freechips.rocketchip.system.DefaultRV32Config.fir@26961.4]
  assign _T_38 = ~_T_23; // @[ToAXI4.scala 161:38:freechips.rocketchip.system.DefaultRV32Config.fir@26975.6]
  assign _GEN_10 = 5'h8 == auto_in_a_bits_source ? 3'h2 : 3'h1; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_11 = 5'h9 == auto_in_a_bits_source ? 3'h2 : _GEN_10; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_12 = 5'ha == auto_in_a_bits_source ? 3'h2 : _GEN_11; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_13 = 5'hb == auto_in_a_bits_source ? 3'h2 : _GEN_12; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_14 = 5'hc == auto_in_a_bits_source ? 3'h2 : _GEN_13; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_15 = 5'hd == auto_in_a_bits_source ? 3'h2 : _GEN_14; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_16 = 5'he == auto_in_a_bits_source ? 3'h2 : _GEN_15; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_17 = 5'hf == auto_in_a_bits_source ? 3'h2 : _GEN_16; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_18 = 5'h10 == auto_in_a_bits_source ? 3'h4 : _GEN_17; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_19 = 5'h11 == auto_in_a_bits_source ? 3'h3 : _GEN_18; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _GEN_20 = 5'h12 == auto_in_a_bits_source ? 3'h0 : _GEN_19; // @[ToAXI4.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@26979.4]
  assign _T_40 = 25'h3ff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@26982.4]
  assign _T_42 = ~_T_40[9:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@26984.4]
  assign _T_44 = auto_in_a_bits_size >= 4'h2; // @[ToAXI4.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@26987.4]
  assign _T_45 = _T_44 ? 4'h2 : auto_in_a_bits_size; // @[ToAXI4.scala 168:23:freechips.rocketchip.system.DefaultRV32Config.fir@26988.4]
  assign _T_48 = ~auto_in_a_bits_user_amba_prot_secure; // @[ToAXI4.scala 184:20:freechips.rocketchip.system.DefaultRV32Config.fir@27004.4]
  assign _T_49 = {auto_in_a_bits_user_amba_prot_fetch,_T_48}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27011.4]
  assign _T_51 = {auto_in_a_bits_user_amba_prot_modifiable,auto_in_a_bits_user_amba_prot_bufferable}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27014.4]
  assign _T_52 = {auto_in_a_bits_user_amba_prot_writealloc,auto_in_a_bits_user_amba_prot_readalloc}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@27015.4]
  assign _T_61 = _T_55 & auto_in_a_valid; // @[ToAXI4.scala 196:31:freechips.rocketchip.system.DefaultRV32Config.fir@27026.4]
  assign _T_62 = ~_T_36; // @[ToAXI4.scala 196:61:freechips.rocketchip.system.DefaultRV32Config.fir@27027.4]
  assign _T_63 = _T_62 & _T_29_ready; // @[ToAXI4.scala 196:69:freechips.rocketchip.system.DefaultRV32Config.fir@27028.4]
  assign _T_64 = _T_7 ? _T_63 : 1'h1; // @[ToAXI4.scala 196:51:freechips.rocketchip.system.DefaultRV32Config.fir@27029.4]
  assign _T_65 = _T_61 & _T_64; // @[ToAXI4.scala 196:45:freechips.rocketchip.system.DefaultRV32Config.fir@27030.4]
  assign _T_68 = _T_61 & _T_7; // @[ToAXI4.scala 198:43:freechips.rocketchip.system.DefaultRV32Config.fir@27034.4]
  assign _T_72 = auto_in_d_ready & auto_out_r_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27042.4]
  assign _T_73 = ~auto_out_r_bits_last; // @[ToAXI4.scala 206:42:freechips.rocketchip.system.DefaultRV32Config.fir@27044.6]
  assign _T_74 = auto_out_r_valid | _T_71; // @[ToAXI4.scala 208:32:freechips.rocketchip.system.DefaultRV32Config.fir@27047.4]
  assign _T_75 = ~_T_74; // @[ToAXI4.scala 211:36:freechips.rocketchip.system.DefaultRV32Config.fir@27049.4]
  assign _T_77 = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 212:24:freechips.rocketchip.system.DefaultRV32Config.fir@27052.4]
  assign _GEN_41 = _T_72 ? auto_out_r_bits_last : _T_78; // @[ToAXI4.scala 218:27:freechips.rocketchip.system.DefaultRV32Config.fir@27056.4]
  assign _T_80 = auto_out_r_bits_resp == 2'h3; // @[ToAXI4.scala 219:39:freechips.rocketchip.system.DefaultRV32Config.fir@27059.4]
  assign _GEN_42 = _T_78 ? _T_80 : _T_81; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@27061.4]
  assign _T_83 = auto_out_r_bits_resp != 2'h0; // @[ToAXI4.scala 220:39:freechips.rocketchip.system.DefaultRV32Config.fir@27065.4]
  assign _T_84 = auto_out_b_bits_resp != 2'h0; // @[ToAXI4.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@27066.4]
  assign _T_85 = _T_83 | _GEN_42; // @[ToAXI4.scala 223:100:freechips.rocketchip.system.DefaultRV32Config.fir@27067.4]
  assign _T_90 = 8'h1 << _GEN_20; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27092.4]
  assign _T_97 = _T_74 ? auto_out_r_bits_id : auto_out_b_bits_id; // @[ToAXI4.scala 236:31:freechips.rocketchip.system.DefaultRV32Config.fir@27099.4]
  assign _T_99 = 8'h1 << _T_97; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@27101.4]
  assign _T_106 = _T_74 ? auto_out_r_bits_last : 1'h1; // @[ToAXI4.scala 237:23:freechips.rocketchip.system.DefaultRV32Config.fir@27108.4]
  assign _T_110 = _T_28_ready & _T_65; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27112.4]
  assign _T_111 = _T_90[0] & _T_110; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27113.4]
  assign _T_112 = _T_99[0] & _T_106; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27114.4]
  assign _T_113 = auto_in_d_ready & _T_77; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@27115.4]
  assign _T_114 = _T_112 & _T_113; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27116.4]
  assign _T_116 = _T_107 + _T_111; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27118.4]
  assign _T_118 = _T_116 - _T_114; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27120.4]
  assign _T_119 = ~_T_114; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27122.4]
  assign _T_121 = _T_119 | _T_107; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27124.4]
  assign _T_123 = _T_121 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27126.4]
  assign _T_124 = ~_T_123; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27127.4]
  assign _T_125 = ~_T_111; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27132.4]
  assign _T_127 = _T_125 | _T_109; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27134.4]
  assign _T_129 = _T_127 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27136.4]
  assign _T_130 = ~_T_129; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27137.4]
  assign _T_139 = _T_90[1] & _T_110; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27154.4]
  assign _T_140 = _T_99[1] & _T_106; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27155.4]
  assign _T_142 = _T_140 & _T_113; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27157.4]
  assign _GEN_48 = {{3'd0}, _T_139}; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27158.4]
  assign _T_144 = _T_135 + _GEN_48; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27159.4]
  assign _GEN_49 = {{3'd0}, _T_142}; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27160.4]
  assign _T_146 = _T_144 - _GEN_49; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27161.4]
  assign _T_147 = ~_T_142; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27163.4]
  assign _T_148 = _T_135 != 4'h0; // @[ToAXI4.scala 255:31:freechips.rocketchip.system.DefaultRV32Config.fir@27164.4]
  assign _T_149 = _T_147 | _T_148; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27165.4]
  assign _T_151 = _T_149 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27167.4]
  assign _T_152 = ~_T_151; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27168.4]
  assign _T_153 = ~_T_139; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27173.4]
  assign _T_154 = _T_135 != 4'h8; // @[ToAXI4.scala 256:31:freechips.rocketchip.system.DefaultRV32Config.fir@27174.4]
  assign _T_155 = _T_153 | _T_154; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27175.4]
  assign _T_157 = _T_155 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27177.4]
  assign _T_158 = ~_T_157; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27178.4]
  assign _T_168 = _T_90[2] & _T_110; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27196.4]
  assign _T_169 = _T_99[2] & _T_106; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27197.4]
  assign _T_171 = _T_169 & _T_113; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27199.4]
  assign _GEN_50 = {{3'd0}, _T_168}; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27200.4]
  assign _T_173 = _T_164 + _GEN_50; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27201.4]
  assign _GEN_51 = {{3'd0}, _T_171}; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27202.4]
  assign _T_175 = _T_173 - _GEN_51; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27203.4]
  assign _T_176 = ~_T_171; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27205.4]
  assign _T_177 = _T_164 != 4'h0; // @[ToAXI4.scala 255:31:freechips.rocketchip.system.DefaultRV32Config.fir@27206.4]
  assign _T_178 = _T_176 | _T_177; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27207.4]
  assign _T_180 = _T_178 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27209.4]
  assign _T_181 = ~_T_180; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27210.4]
  assign _T_182 = ~_T_168; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27215.4]
  assign _T_183 = _T_164 != 4'h8; // @[ToAXI4.scala 256:31:freechips.rocketchip.system.DefaultRV32Config.fir@27216.4]
  assign _T_184 = _T_182 | _T_183; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27217.4]
  assign _T_186 = _T_184 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27219.4]
  assign _T_187 = ~_T_186; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27220.4]
  assign _T_197 = _T_90[3] & _T_110; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27238.4]
  assign _T_198 = _T_99[3] & _T_106; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27239.4]
  assign _T_200 = _T_198 & _T_113; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27241.4]
  assign _T_202 = _T_193 + _T_197; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27243.4]
  assign _T_204 = _T_202 - _T_200; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27245.4]
  assign _T_205 = ~_T_200; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27247.4]
  assign _T_207 = _T_205 | _T_193; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27249.4]
  assign _T_209 = _T_207 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27251.4]
  assign _T_210 = ~_T_209; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27252.4]
  assign _T_211 = ~_T_197; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27257.4]
  assign _T_213 = _T_211 | _T_195; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27259.4]
  assign _T_215 = _T_213 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27261.4]
  assign _T_216 = ~_T_215; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27262.4]
  assign _T_225 = _T_90[4] & _T_110; // @[ToAXI4.scala 251:22:freechips.rocketchip.system.DefaultRV32Config.fir@27279.4]
  assign _T_226 = _T_99[4] & _T_106; // @[ToAXI4.scala 252:22:freechips.rocketchip.system.DefaultRV32Config.fir@27280.4]
  assign _T_228 = _T_226 & _T_113; // @[ToAXI4.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@27282.4]
  assign _T_230 = _T_221 + _T_225; // @[ToAXI4.scala 253:24:freechips.rocketchip.system.DefaultRV32Config.fir@27284.4]
  assign _T_232 = _T_230 - _T_228; // @[ToAXI4.scala 253:37:freechips.rocketchip.system.DefaultRV32Config.fir@27286.4]
  assign _T_233 = ~_T_228; // @[ToAXI4.scala 255:17:freechips.rocketchip.system.DefaultRV32Config.fir@27288.4]
  assign _T_235 = _T_233 | _T_221; // @[ToAXI4.scala 255:22:freechips.rocketchip.system.DefaultRV32Config.fir@27290.4]
  assign _T_237 = _T_235 | reset; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27292.4]
  assign _T_238 = ~_T_237; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27293.4]
  assign _T_239 = ~_T_225; // @[ToAXI4.scala 256:17:freechips.rocketchip.system.DefaultRV32Config.fir@27298.4]
  assign _T_241 = _T_239 | _T_223; // @[ToAXI4.scala 256:22:freechips.rocketchip.system.DefaultRV32Config.fir@27300.4]
  assign _T_243 = _T_241 | reset; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27302.4]
  assign _T_244 = ~_T_243; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27303.4]
  assign auto_in_a_ready = _T_55 & _T_58; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_valid = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_opcode = _T_74 ? 3'h1 : 3'h0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_size = _T_74 ? auto_out_r_bits_echo_tl_state_size : auto_out_b_bits_echo_tl_state_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_source = _T_74 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_denied = _T_74 ? _GEN_42 : _T_84; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_in_d_bits_corrupt = _T_74 & _T_85; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@26830.4]
  assign auto_out_aw_valid = _T_31_valid & _T_31_bits_wen; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_aw_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_w_valid = Queue_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_w_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_w_bits_strb = Queue_io_deq_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_w_bits_last = Queue_io_deq_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_b_ready = auto_in_d_ready & _T_75; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_valid = _T_31_valid & _T_32; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_ar_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign auto_out_r_ready = auto_in_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@26829.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26798.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26799.4]
  assign TLMonitor_io_in_a_ready = _T_55 & _T_58; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26826.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26825.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26824.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26823.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26822.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26821.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26820.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26812.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26810.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26809.4]
  assign TLMonitor_io_in_d_valid = _T_74 ? auto_out_r_valid : auto_out_b_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26808.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_74 ? 3'h1 : 3'h0; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26807.4]
  assign TLMonitor_io_in_d_bits_size = _T_74 ? auto_out_r_bits_echo_tl_state_size : auto_out_b_bits_echo_tl_state_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26805.4]
  assign TLMonitor_io_in_d_bits_source = _T_74 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26804.4]
  assign TLMonitor_io_in_d_bits_denied = _T_74 ? _GEN_42 : _T_84; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26802.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_74 & _T_85; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@26800.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26913.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26914.4]
  assign Queue_io_enq_valid = _T_68 & _T_56; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@26915.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26918.4]
  assign Queue_io_enq_bits_strb = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26917.4]
  assign Queue_io_enq_bits_last = _T_21 | _T_22; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26916.4]
  assign Queue_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@26925.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26932.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26933.4]
  assign Queue_1_io_enq_valid = _T_61 & _T_64; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@26934.4]
  assign Queue_1_io_enq_bits_id = 5'h12 == auto_in_a_bits_source ? 3'h0 : _GEN_19; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26946.4]
  assign Queue_1_io_enq_bits_addr = auto_in_a_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26945.4]
  assign Queue_1_io_enq_bits_len = _T_42[9:2]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26944.4]
  assign Queue_1_io_enq_bits_size = _T_45[2:0]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26943.4]
  assign Queue_1_io_enq_bits_cache = {_T_52,_T_51}; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26940.4]
  assign Queue_1_io_enq_bits_prot = {_T_49,auto_in_a_bits_user_amba_prot_privileged}; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26939.4]
  assign Queue_1_io_enq_bits_echo_tl_state_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26937.4]
  assign Queue_1_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26936.4]
  assign Queue_1_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@26935.4]
  assign Queue_1_io_deq_ready = _T_31_bits_wen ? auto_out_aw_ready : auto_out_ar_ready; // @[Decoupled.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@26962.4]
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
  _T_107 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_193 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_221 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_164 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_165 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_135 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  _T_136 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_17 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  _T_36 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_71 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_78 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_81 = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_107 <= 1'h0;
    end else begin
      _T_107 <= _T_118;
    end
    if (reset) begin
      _T_193 <= 1'h0;
    end else begin
      _T_193 <= _T_204;
    end
    if (reset) begin
      _T_221 <= 1'h0;
    end else begin
      _T_221 <= _T_232;
    end
    if (reset) begin
      _T_164 <= 4'h0;
    end else begin
      _T_164 <= _T_175;
    end
    if (_T_168) begin
      _T_165 <= _T_7;
    end
    if (reset) begin
      _T_135 <= 4'h0;
    end else begin
      _T_135 <= _T_146;
    end
    if (_T_139) begin
      _T_136 <= _T_7;
    end
    if (reset) begin
      _T_17 <= 6'h0;
    end else if (_T_8) begin
      if (_T_20) begin
        if (_T_7) begin
          _T_17 <= _T_12[7:2];
        end else begin
          _T_17 <= 6'h0;
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
    _T_78 <= reset | _GEN_41;
    if (_T_78) begin
      _T_81 <= _T_80;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_124) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27129.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_124) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27130.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_130) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27139.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_130) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27140.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_152) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27170.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_152) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27171.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_158) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27180.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_158) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27181.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_181) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27212.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_181) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27213.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_187) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27222.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_187) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27223.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_210) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27254.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_210) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27255.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_216) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27264.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_216) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27265.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_238) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:255 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27295.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_238) begin
          $fatal; // @[ToAXI4.scala 255:16:freechips.rocketchip.system.DefaultRV32Config.fir@27296.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_244) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:256 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27305.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_244) begin
          $fatal; // @[ToAXI4.scala 256:16:freechips.rocketchip.system.DefaultRV32Config.fir@27306.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
