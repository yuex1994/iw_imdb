module SimAXIMem_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232206.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232207.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232208.4]
  output        io_axi4_0_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [3:0]  io_axi4_0_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [11:0] io_axi4_0_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [7:0]  io_axi4_0_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [2:0]  io_axi4_0_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [1:0]  io_axi4_0_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output        io_axi4_0_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [31:0] io_axi4_0_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [3:0]  io_axi4_0_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output        io_axi4_0_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output [3:0]  io_axi4_0_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output [1:0]  io_axi4_0_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output        io_axi4_0_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [3:0]  io_axi4_0_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [11:0] io_axi4_0_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [7:0]  io_axi4_0_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [2:0]  io_axi4_0_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input  [1:0]  io_axi4_0_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  input         io_axi4_0_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output        io_axi4_0_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output [3:0]  io_axi4_0_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output [31:0] io_axi4_0_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output [1:0]  io_axi4_0_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
  output        io_axi4_0_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232210.4]
);
  wire  srams_clock; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_reset; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_aw_ready; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_aw_valid; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [3:0] srams_auto_in_aw_bits_id; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [11:0] srams_auto_in_aw_bits_addr; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_aw_bits_echo_real_last; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_w_ready; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_w_valid; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [31:0] srams_auto_in_w_bits_data; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [3:0] srams_auto_in_w_bits_strb; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_b_ready; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_b_valid; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [3:0] srams_auto_in_b_bits_id; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [1:0] srams_auto_in_b_bits_resp; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_b_bits_echo_real_last; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_ar_ready; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_ar_valid; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [3:0] srams_auto_in_ar_bits_id; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [11:0] srams_auto_in_ar_bits_addr; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_ar_bits_echo_real_last; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_r_ready; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_r_valid; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [3:0] srams_auto_in_r_bits_id; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [31:0] srams_auto_in_r_bits_data; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire [1:0] srams_auto_in_r_bits_resp; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  srams_auto_in_r_bits_echo_real_last; // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
  wire  axi4xbar_clock; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_reset; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_aw_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_aw_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_in_aw_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [11:0] axi4xbar_auto_in_aw_bits_addr; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [7:0] axi4xbar_auto_in_aw_bits_len; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [2:0] axi4xbar_auto_in_aw_bits_size; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_in_aw_bits_burst; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_w_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_w_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [31:0] axi4xbar_auto_in_w_bits_data; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_in_w_bits_strb; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_w_bits_last; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_b_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_b_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_in_b_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_in_b_bits_resp; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_ar_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_ar_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_in_ar_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [11:0] axi4xbar_auto_in_ar_bits_addr; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [7:0] axi4xbar_auto_in_ar_bits_len; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [2:0] axi4xbar_auto_in_ar_bits_size; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_in_ar_bits_burst; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_r_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_r_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_in_r_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [31:0] axi4xbar_auto_in_r_bits_data; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_in_r_bits_resp; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_in_r_bits_last; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_aw_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_aw_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_out_aw_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [11:0] axi4xbar_auto_out_aw_bits_addr; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [7:0] axi4xbar_auto_out_aw_bits_len; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [2:0] axi4xbar_auto_out_aw_bits_size; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_out_aw_bits_burst; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_w_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_w_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [31:0] axi4xbar_auto_out_w_bits_data; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_out_w_bits_strb; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_w_bits_last; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_b_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_b_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_out_b_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_out_b_bits_resp; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_ar_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_ar_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_out_ar_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [11:0] axi4xbar_auto_out_ar_bits_addr; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [7:0] axi4xbar_auto_out_ar_bits_len; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [2:0] axi4xbar_auto_out_ar_bits_size; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_out_ar_bits_burst; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_r_ready; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_r_valid; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [3:0] axi4xbar_auto_out_r_bits_id; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [31:0] axi4xbar_auto_out_r_bits_data; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire [1:0] axi4xbar_auto_out_r_bits_resp; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4xbar_auto_out_r_bits_last; // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
  wire  axi4buf_clock; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_reset; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_aw_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_aw_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_in_aw_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [11:0] axi4buf_auto_in_aw_bits_addr; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_aw_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_w_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_w_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [31:0] axi4buf_auto_in_w_bits_data; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_in_w_bits_strb; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_w_bits_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_b_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_b_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_in_b_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [1:0] axi4buf_auto_in_b_bits_resp; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_b_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_ar_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_ar_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_in_ar_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [11:0] axi4buf_auto_in_ar_bits_addr; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_ar_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_r_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_r_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_in_r_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [31:0] axi4buf_auto_in_r_bits_data; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [1:0] axi4buf_auto_in_r_bits_resp; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_r_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_in_r_bits_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_aw_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_aw_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_out_aw_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [11:0] axi4buf_auto_out_aw_bits_addr; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_aw_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_w_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_w_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [31:0] axi4buf_auto_out_w_bits_data; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_out_w_bits_strb; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_b_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_b_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_out_b_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [1:0] axi4buf_auto_out_b_bits_resp; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_b_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_ar_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_ar_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_out_ar_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [11:0] axi4buf_auto_out_ar_bits_addr; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_ar_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_r_ready; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_r_valid; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [3:0] axi4buf_auto_out_r_bits_id; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [31:0] axi4buf_auto_out_r_bits_data; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire [1:0] axi4buf_auto_out_r_bits_resp; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4buf_auto_out_r_bits_echo_real_last; // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
  wire  axi4frag_clock; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_reset; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [11:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [31:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [11:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [31:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [11:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_aw_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [31:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_w_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [11:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_ar_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [3:0] axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [31:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
  AXI4RAM_1 srams ( // @[SimAXIMem.scala 16:15:freechips.rocketchip.system.DefaultRV32Config.fir@232216.4]
    .clock(srams_clock),
    .reset(srams_reset),
    .auto_in_aw_ready(srams_auto_in_aw_ready),
    .auto_in_aw_valid(srams_auto_in_aw_valid),
    .auto_in_aw_bits_id(srams_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(srams_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(srams_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(srams_auto_in_w_ready),
    .auto_in_w_valid(srams_auto_in_w_valid),
    .auto_in_w_bits_data(srams_auto_in_w_bits_data),
    .auto_in_w_bits_strb(srams_auto_in_w_bits_strb),
    .auto_in_b_ready(srams_auto_in_b_ready),
    .auto_in_b_valid(srams_auto_in_b_valid),
    .auto_in_b_bits_id(srams_auto_in_b_bits_id),
    .auto_in_b_bits_resp(srams_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(srams_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(srams_auto_in_ar_ready),
    .auto_in_ar_valid(srams_auto_in_ar_valid),
    .auto_in_ar_bits_id(srams_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(srams_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(srams_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(srams_auto_in_r_ready),
    .auto_in_r_valid(srams_auto_in_r_valid),
    .auto_in_r_bits_id(srams_auto_in_r_bits_id),
    .auto_in_r_bits_data(srams_auto_in_r_bits_data),
    .auto_in_r_bits_resp(srams_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(srams_auto_in_r_bits_echo_real_last)
  );
  AXI4Xbar_1 axi4xbar ( // @[Xbar.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@232222.4]
    .clock(axi4xbar_clock),
    .reset(axi4xbar_reset),
    .auto_in_aw_ready(axi4xbar_auto_in_aw_ready),
    .auto_in_aw_valid(axi4xbar_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4xbar_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4xbar_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4xbar_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4xbar_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4xbar_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4xbar_auto_in_w_ready),
    .auto_in_w_valid(axi4xbar_auto_in_w_valid),
    .auto_in_w_bits_data(axi4xbar_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4xbar_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4xbar_auto_in_w_bits_last),
    .auto_in_b_ready(axi4xbar_auto_in_b_ready),
    .auto_in_b_valid(axi4xbar_auto_in_b_valid),
    .auto_in_b_bits_id(axi4xbar_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4xbar_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4xbar_auto_in_ar_ready),
    .auto_in_ar_valid(axi4xbar_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4xbar_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4xbar_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4xbar_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4xbar_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4xbar_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4xbar_auto_in_r_ready),
    .auto_in_r_valid(axi4xbar_auto_in_r_valid),
    .auto_in_r_bits_id(axi4xbar_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4xbar_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4xbar_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4xbar_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4xbar_auto_out_aw_ready),
    .auto_out_aw_valid(axi4xbar_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4xbar_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4xbar_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4xbar_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4xbar_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4xbar_auto_out_aw_bits_burst),
    .auto_out_w_ready(axi4xbar_auto_out_w_ready),
    .auto_out_w_valid(axi4xbar_auto_out_w_valid),
    .auto_out_w_bits_data(axi4xbar_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4xbar_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4xbar_auto_out_w_bits_last),
    .auto_out_b_ready(axi4xbar_auto_out_b_ready),
    .auto_out_b_valid(axi4xbar_auto_out_b_valid),
    .auto_out_b_bits_id(axi4xbar_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4xbar_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4xbar_auto_out_ar_ready),
    .auto_out_ar_valid(axi4xbar_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4xbar_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4xbar_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4xbar_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4xbar_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4xbar_auto_out_ar_bits_burst),
    .auto_out_r_ready(axi4xbar_auto_out_r_ready),
    .auto_out_r_valid(axi4xbar_auto_out_r_valid),
    .auto_out_r_bits_id(axi4xbar_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4xbar_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4xbar_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4xbar_auto_out_r_bits_last)
  );
  AXI4Buffer_2 axi4buf ( // @[Buffer.scala 58:29:freechips.rocketchip.system.DefaultRV32Config.fir@232228.4]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_aw_ready(axi4buf_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(axi4buf_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(axi4buf_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4buf_auto_in_w_bits_last),
    .auto_in_b_ready(axi4buf_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(axi4buf_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(axi4buf_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(axi4buf_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(axi4buf_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(axi4buf_auto_in_r_bits_echo_real_last),
    .auto_in_r_bits_last(axi4buf_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_auto_out_aw_bits_addr),
    .auto_out_aw_bits_echo_real_last(axi4buf_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4buf_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4buf_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_real_last(axi4buf_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4buf_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4buf_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4buf_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4buf_auto_out_r_bits_echo_real_last)
  );
  AXI4Fragmenter_2 axi4frag ( // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@232234.4]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
    .auto_out_aw_bits_echo_real_last(axi4frag_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4frag_auto_out_w_ready),
    .auto_out_w_valid(axi4frag_auto_out_w_valid),
    .auto_out_w_bits_data(axi4frag_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4frag_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4frag_auto_out_w_bits_last),
    .auto_out_b_ready(axi4frag_auto_out_b_ready),
    .auto_out_b_valid(axi4frag_auto_out_b_valid),
    .auto_out_b_bits_id(axi4frag_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4frag_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_real_last(axi4frag_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4frag_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4frag_auto_out_r_bits_echo_real_last),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  assign io_axi4_0_aw_ready = axi4xbar_auto_in_aw_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_w_ready = axi4xbar_auto_in_w_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_b_valid = axi4xbar_auto_in_b_valid; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_ar_ready = axi4xbar_auto_in_ar_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_r_valid = axi4xbar_auto_in_r_valid; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign io_axi4_0_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@232246.4]
  assign srams_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232220.4]
  assign srams_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232221.4]
  assign srams_auto_in_aw_valid = axi4buf_auto_out_aw_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_aw_bits_id = axi4buf_auto_out_aw_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_aw_bits_addr = axi4buf_auto_out_aw_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_aw_bits_echo_real_last = axi4buf_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_w_valid = axi4buf_auto_out_w_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_w_bits_data = axi4buf_auto_out_w_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_w_bits_strb = axi4buf_auto_out_w_bits_strb; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_b_ready = axi4buf_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_ar_valid = axi4buf_auto_out_ar_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_ar_bits_id = axi4buf_auto_out_ar_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_ar_bits_addr = axi4buf_auto_out_ar_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_ar_bits_echo_real_last = axi4buf_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign srams_auto_in_r_ready = axi4buf_auto_out_r_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232226.4]
  assign axi4xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232227.4]
  assign axi4xbar_auto_in_aw_valid = io_axi4_0_aw_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_aw_bits_id = io_axi4_0_aw_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_aw_bits_addr = io_axi4_0_aw_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_aw_bits_len = io_axi4_0_aw_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_aw_bits_size = io_axi4_0_aw_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_aw_bits_burst = io_axi4_0_aw_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_w_valid = io_axi4_0_w_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_w_bits_data = io_axi4_0_w_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_w_bits_strb = io_axi4_0_w_bits_strb; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_w_bits_last = io_axi4_0_w_bits_last; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_b_ready = io_axi4_0_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_valid = io_axi4_0_ar_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_bits_id = io_axi4_0_ar_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_bits_addr = io_axi4_0_ar_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_bits_len = io_axi4_0_ar_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_bits_size = io_axi4_0_ar_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_ar_bits_burst = io_axi4_0_ar_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_in_r_ready = io_axi4_0_r_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232242.4]
  assign axi4xbar_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4xbar_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4buf_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232232.4]
  assign axi4buf_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232233.4]
  assign axi4buf_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_aw_bits_echo_real_last = axi4frag_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_w_bits_last = axi4frag_auto_out_w_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_ar_bits_echo_real_last = axi4frag_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4buf_auto_out_aw_ready = srams_auto_in_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_w_ready = srams_auto_in_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_b_valid = srams_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_b_bits_id = srams_auto_in_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_b_bits_resp = srams_auto_in_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_b_bits_echo_real_last = srams_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_ar_ready = srams_auto_in_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_r_valid = srams_auto_in_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_r_bits_id = srams_auto_in_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_r_bits_data = srams_auto_in_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_r_bits_resp = srams_auto_in_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4buf_auto_out_r_bits_echo_real_last = srams_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232244.4]
  assign axi4frag_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232238.4]
  assign axi4frag_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232239.4]
  assign axi4frag_auto_in_aw_valid = axi4xbar_auto_out_aw_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_aw_bits_id = axi4xbar_auto_out_aw_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_aw_bits_addr = axi4xbar_auto_out_aw_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_aw_bits_len = axi4xbar_auto_out_aw_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_aw_bits_size = axi4xbar_auto_out_aw_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_aw_bits_burst = axi4xbar_auto_out_aw_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_w_valid = axi4xbar_auto_out_w_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_w_bits_data = axi4xbar_auto_out_w_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_w_bits_strb = axi4xbar_auto_out_w_bits_strb; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_w_bits_last = axi4xbar_auto_out_w_bits_last; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_b_ready = axi4xbar_auto_out_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_valid = axi4xbar_auto_out_ar_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_bits_id = axi4xbar_auto_out_ar_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_bits_addr = axi4xbar_auto_out_ar_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_bits_len = axi4xbar_auto_out_ar_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_bits_size = axi4xbar_auto_out_ar_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_ar_bits_burst = axi4xbar_auto_out_ar_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_in_r_ready = axi4xbar_auto_out_r_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@232243.4]
  assign axi4frag_auto_out_aw_ready = axi4buf_auto_in_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_w_ready = axi4buf_auto_in_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_b_valid = axi4buf_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_b_bits_id = axi4buf_auto_in_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_b_bits_resp = axi4buf_auto_in_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_b_bits_echo_real_last = axi4buf_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_ar_ready = axi4buf_auto_in_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_valid = axi4buf_auto_in_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_bits_id = axi4buf_auto_in_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_bits_data = axi4buf_auto_in_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_bits_resp = axi4buf_auto_in_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_bits_echo_real_last = axi4buf_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
  assign axi4frag_auto_out_r_bits_last = axi4buf_auto_in_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@232245.4]
endmodule
