module SimpleLazyModule_5( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41679.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41680.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41681.4]
  output        auto_axi4index_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [7:0]  auto_axi4index_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [31:0] auto_axi4index_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [7:0]  auto_axi4index_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [2:0]  auto_axi4index_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [1:0]  auto_axi4index_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [3:0]  auto_axi4index_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [2:0]  auto_axi4index_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_axi4index_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [63:0] auto_axi4index_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [7:0]  auto_axi4index_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_axi4index_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [7:0]  auto_axi4index_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [1:0]  auto_axi4index_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_axi4index_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [7:0]  auto_axi4index_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [31:0] auto_axi4index_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [7:0]  auto_axi4index_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [2:0]  auto_axi4index_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [1:0]  auto_axi4index_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [3:0]  auto_axi4index_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [2:0]  auto_axi4index_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_axi4index_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_axi4index_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [7:0]  auto_axi4index_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [63:0] auto_axi4index_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [1:0]  auto_axi4index_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_axi4index_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_buffer_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [2:0]  auto_buffer_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [2:0]  auto_buffer_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [3:0]  auto_buffer_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [3:0]  auto_buffer_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [31:0] auto_buffer_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [3:0]  auto_buffer_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output [31:0] auto_buffer_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  output        auto_buffer_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_buffer_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [2:0]  auto_buffer_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [1:0]  auto_buffer_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [3:0]  auto_buffer_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [3:0]  auto_buffer_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [1:0]  auto_buffer_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_buffer_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input  [31:0] auto_buffer_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
  input         auto_buffer_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41682.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [1:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [3:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [1:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [1:0] fixer_auto_in_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [1:0] fixer_auto_in_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [1:0] fixer_auto_out_d_bits_param; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [3:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [1:0] fixer_auto_out_d_bits_sink; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire [31:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
  wire  widget_clock; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_reset; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_in_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [31:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_bufferable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_modifiable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_readalloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_writealloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_privileged; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_secure; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_user_amba_prot_fetch; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [7:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [63:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [63:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_in_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_out_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [31:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_bufferable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_modifiable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_readalloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_writealloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_privileged; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_secure; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_user_amba_prot_fetch; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [31:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [1:0] widget_auto_out_d_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [3:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [1:0] widget_auto_out_d_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire [31:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  widget_auto_out_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
  wire  axi42tl_clock; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_reset; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_aw_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_aw_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_aw_bits_id; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [31:0] axi42tl_auto_in_aw_bits_addr; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [7:0] axi42tl_auto_in_aw_bits_len; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_in_aw_bits_size; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_in_aw_bits_cache; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_in_aw_bits_prot; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_w_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_w_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [63:0] axi42tl_auto_in_w_bits_data; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [7:0] axi42tl_auto_in_w_bits_strb; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_w_bits_last; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_b_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_b_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_b_bits_id; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [1:0] axi42tl_auto_in_b_bits_resp; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_ar_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_ar_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_ar_bits_id; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [31:0] axi42tl_auto_in_ar_bits_addr; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [7:0] axi42tl_auto_in_ar_bits_len; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_in_ar_bits_size; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_in_ar_bits_cache; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_in_ar_bits_prot; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_r_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_r_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_r_bits_id; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [63:0] axi42tl_auto_in_r_bits_data; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [1:0] axi42tl_auto_in_r_bits_resp; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_in_r_bits_last; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_out_a_bits_opcode; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_out_a_bits_param; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_out_a_bits_size; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_out_a_bits_source; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [31:0] axi42tl_auto_out_a_bits_address; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_bufferable; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_modifiable; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_readalloc; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_writealloc; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_privileged; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_secure; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_fetch; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [7:0] axi42tl_auto_out_a_bits_mask; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [63:0] axi42tl_auto_out_a_bits_data; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_a_bits_corrupt; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_d_ready; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_d_valid; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [2:0] axi42tl_auto_out_d_bits_opcode; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_out_d_bits_size; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [3:0] axi42tl_auto_out_d_bits_source; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_d_bits_denied; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire [63:0] axi42tl_auto_out_d_bits_data; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi42tl_auto_out_d_bits_corrupt; // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
  wire  axi4yank_clock; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_reset; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_aw_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_aw_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_aw_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [31:0] axi4yank_auto_in_aw_bits_addr; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_in_aw_bits_len; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_in_aw_bits_size; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [3:0] axi4yank_auto_in_aw_bits_cache; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_in_aw_bits_prot; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [6:0] axi4yank_auto_in_aw_bits_echo_extra_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_aw_bits_echo_real_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_w_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_w_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [63:0] axi4yank_auto_in_w_bits_data; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_in_w_bits_strb; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_w_bits_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_b_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_b_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_b_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [1:0] axi4yank_auto_in_b_bits_resp; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [6:0] axi4yank_auto_in_b_bits_echo_extra_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_b_bits_echo_real_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_ar_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_ar_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_ar_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [31:0] axi4yank_auto_in_ar_bits_addr; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_in_ar_bits_len; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_in_ar_bits_size; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [3:0] axi4yank_auto_in_ar_bits_cache; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_in_ar_bits_prot; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [6:0] axi4yank_auto_in_ar_bits_echo_extra_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_ar_bits_echo_real_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_r_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_r_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_r_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [63:0] axi4yank_auto_in_r_bits_data; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [1:0] axi4yank_auto_in_r_bits_resp; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [6:0] axi4yank_auto_in_r_bits_echo_extra_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_r_bits_echo_real_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_in_r_bits_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_aw_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_aw_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_aw_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [31:0] axi4yank_auto_out_aw_bits_addr; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_out_aw_bits_len; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_out_aw_bits_size; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [3:0] axi4yank_auto_out_aw_bits_cache; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_out_aw_bits_prot; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_w_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_w_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [63:0] axi4yank_auto_out_w_bits_data; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_out_w_bits_strb; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_w_bits_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_b_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_b_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_b_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [1:0] axi4yank_auto_out_b_bits_resp; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_ar_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_ar_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_ar_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [31:0] axi4yank_auto_out_ar_bits_addr; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [7:0] axi4yank_auto_out_ar_bits_len; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_out_ar_bits_size; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [3:0] axi4yank_auto_out_ar_bits_cache; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [2:0] axi4yank_auto_out_ar_bits_prot; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_r_ready; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_r_valid; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_r_bits_id; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [63:0] axi4yank_auto_out_r_bits_data; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire [1:0] axi4yank_auto_out_r_bits_resp; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4yank_auto_out_r_bits_last; // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
  wire  axi4frag_clock; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_reset; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [31:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [3:0] axi4frag_auto_in_aw_bits_cache; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_in_aw_bits_prot; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_in_aw_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [63:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_in_b_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [31:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [3:0] axi4frag_auto_in_ar_bits_cache; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_in_ar_bits_prot; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_in_ar_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [63:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_in_r_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [31:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_out_aw_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_out_aw_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [3:0] axi4frag_auto_out_aw_bits_cache; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_out_aw_bits_prot; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_out_aw_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_aw_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [63:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_w_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_out_b_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [31:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [7:0] axi4frag_auto_out_ar_bits_len; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_out_ar_bits_size; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [3:0] axi4frag_auto_out_ar_bits_cache; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [2:0] axi4frag_auto_out_ar_bits_prot; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_out_ar_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_ar_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [63:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire [6:0] axi4frag_auto_out_r_bits_echo_extra_id; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
  wire  axi4index_auto_in_aw_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_aw_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_aw_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [31:0] axi4index_auto_in_aw_bits_addr; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_aw_bits_len; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_in_aw_bits_size; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_in_aw_bits_burst; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [3:0] axi4index_auto_in_aw_bits_cache; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_in_aw_bits_prot; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_w_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_w_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [63:0] axi4index_auto_in_w_bits_data; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_w_bits_strb; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_w_bits_last; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_b_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_b_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_b_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_in_b_bits_resp; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_ar_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_ar_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_ar_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [31:0] axi4index_auto_in_ar_bits_addr; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_ar_bits_len; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_in_ar_bits_size; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_in_ar_bits_burst; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [3:0] axi4index_auto_in_ar_bits_cache; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_in_ar_bits_prot; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_r_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_r_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_in_r_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [63:0] axi4index_auto_in_r_bits_data; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_in_r_bits_resp; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_in_r_bits_last; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_aw_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_aw_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_aw_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [31:0] axi4index_auto_out_aw_bits_addr; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_out_aw_bits_len; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_out_aw_bits_size; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_out_aw_bits_burst; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [3:0] axi4index_auto_out_aw_bits_cache; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_out_aw_bits_prot; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [6:0] axi4index_auto_out_aw_bits_echo_extra_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_w_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_w_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [63:0] axi4index_auto_out_w_bits_data; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_out_w_bits_strb; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_w_bits_last; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_b_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_b_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_b_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_out_b_bits_resp; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [6:0] axi4index_auto_out_b_bits_echo_extra_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_ar_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_ar_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_ar_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [31:0] axi4index_auto_out_ar_bits_addr; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [7:0] axi4index_auto_out_ar_bits_len; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_out_ar_bits_size; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_out_ar_bits_burst; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [3:0] axi4index_auto_out_ar_bits_cache; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [2:0] axi4index_auto_out_ar_bits_prot; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [6:0] axi4index_auto_out_ar_bits_echo_extra_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_r_ready; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_r_valid; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_r_bits_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [63:0] axi4index_auto_out_r_bits_data; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [1:0] axi4index_auto_out_r_bits_resp; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire [6:0] axi4index_auto_out_r_bits_echo_extra_id; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  wire  axi4index_auto_out_r_bits_last; // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
  TLBuffer_4 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@41687.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(buffer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(buffer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(buffer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(buffer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(buffer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(buffer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(buffer_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(buffer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(buffer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(buffer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(buffer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(buffer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(buffer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(buffer_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  TLFIFOFixer_2 fixer ( // @[FIFOFixer.scala 146:27:freechips.rocketchip.system.DefaultRV32Config.fir@41693.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(fixer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(fixer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(fixer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(fixer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(fixer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(fixer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(fixer_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(fixer_auto_in_d_bits_param),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(fixer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fixer_auto_out_a_bits_param),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(fixer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(fixer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(fixer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(fixer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(fixer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(fixer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(fixer_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(fixer_auto_out_d_bits_param),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(fixer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  TLWidthWidget_4 widget ( // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@41699.4]
    .clock(widget_clock),
    .reset(widget_reset),
    .auto_in_a_ready(widget_auto_in_a_ready),
    .auto_in_a_valid(widget_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(widget_auto_in_a_bits_param),
    .auto_in_a_bits_size(widget_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(widget_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(widget_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(widget_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(widget_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(widget_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(widget_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(widget_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(widget_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(widget_auto_in_a_bits_corrupt),
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_denied(widget_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_auto_in_d_bits_corrupt),
    .auto_out_a_ready(widget_auto_out_a_ready),
    .auto_out_a_valid(widget_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(widget_auto_out_a_bits_param),
    .auto_out_a_bits_size(widget_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(widget_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(widget_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(widget_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(widget_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(widget_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(widget_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(widget_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(widget_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(widget_auto_out_a_bits_corrupt),
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(widget_auto_out_d_bits_param),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_sink(widget_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(widget_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_auto_out_d_bits_corrupt)
  );
  AXI4ToTL axi42tl ( // @[ToTL.scala 215:29:freechips.rocketchip.system.DefaultRV32Config.fir@41705.4]
    .clock(axi42tl_clock),
    .reset(axi42tl_reset),
    .auto_in_aw_ready(axi42tl_auto_in_aw_ready),
    .auto_in_aw_valid(axi42tl_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi42tl_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi42tl_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi42tl_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi42tl_auto_in_aw_bits_size),
    .auto_in_aw_bits_cache(axi42tl_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi42tl_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi42tl_auto_in_w_ready),
    .auto_in_w_valid(axi42tl_auto_in_w_valid),
    .auto_in_w_bits_data(axi42tl_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi42tl_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi42tl_auto_in_w_bits_last),
    .auto_in_b_ready(axi42tl_auto_in_b_ready),
    .auto_in_b_valid(axi42tl_auto_in_b_valid),
    .auto_in_b_bits_id(axi42tl_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi42tl_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi42tl_auto_in_ar_ready),
    .auto_in_ar_valid(axi42tl_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi42tl_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi42tl_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi42tl_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi42tl_auto_in_ar_bits_size),
    .auto_in_ar_bits_cache(axi42tl_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi42tl_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi42tl_auto_in_r_ready),
    .auto_in_r_valid(axi42tl_auto_in_r_valid),
    .auto_in_r_bits_id(axi42tl_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi42tl_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi42tl_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi42tl_auto_in_r_bits_last),
    .auto_out_a_ready(axi42tl_auto_out_a_ready),
    .auto_out_a_valid(axi42tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(axi42tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(axi42tl_auto_out_a_bits_param),
    .auto_out_a_bits_size(axi42tl_auto_out_a_bits_size),
    .auto_out_a_bits_source(axi42tl_auto_out_a_bits_source),
    .auto_out_a_bits_address(axi42tl_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(axi42tl_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(axi42tl_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(axi42tl_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(axi42tl_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(axi42tl_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(axi42tl_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(axi42tl_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(axi42tl_auto_out_a_bits_mask),
    .auto_out_a_bits_data(axi42tl_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(axi42tl_auto_out_a_bits_corrupt),
    .auto_out_d_ready(axi42tl_auto_out_d_ready),
    .auto_out_d_valid(axi42tl_auto_out_d_valid),
    .auto_out_d_bits_opcode(axi42tl_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(axi42tl_auto_out_d_bits_size),
    .auto_out_d_bits_source(axi42tl_auto_out_d_bits_source),
    .auto_out_d_bits_denied(axi42tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(axi42tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(axi42tl_auto_out_d_bits_corrupt)
  );
  AXI4UserYanker_1 axi4yank ( // @[UserYanker.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@41711.4]
    .clock(axi4yank_clock),
    .reset(axi4yank_reset),
    .auto_in_aw_ready(axi4yank_auto_in_aw_ready),
    .auto_in_aw_valid(axi4yank_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4yank_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4yank_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4yank_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4yank_auto_in_aw_bits_size),
    .auto_in_aw_bits_cache(axi4yank_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4yank_auto_in_aw_bits_prot),
    .auto_in_aw_bits_echo_extra_id(axi4yank_auto_in_aw_bits_echo_extra_id),
    .auto_in_aw_bits_echo_real_last(axi4yank_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(axi4yank_auto_in_w_ready),
    .auto_in_w_valid(axi4yank_auto_in_w_valid),
    .auto_in_w_bits_data(axi4yank_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4yank_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4yank_auto_in_w_bits_last),
    .auto_in_b_ready(axi4yank_auto_in_b_ready),
    .auto_in_b_valid(axi4yank_auto_in_b_valid),
    .auto_in_b_bits_id(axi4yank_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4yank_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_extra_id(axi4yank_auto_in_b_bits_echo_extra_id),
    .auto_in_b_bits_echo_real_last(axi4yank_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(axi4yank_auto_in_ar_ready),
    .auto_in_ar_valid(axi4yank_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4yank_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4yank_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4yank_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4yank_auto_in_ar_bits_size),
    .auto_in_ar_bits_cache(axi4yank_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4yank_auto_in_ar_bits_prot),
    .auto_in_ar_bits_echo_extra_id(axi4yank_auto_in_ar_bits_echo_extra_id),
    .auto_in_ar_bits_echo_real_last(axi4yank_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(axi4yank_auto_in_r_ready),
    .auto_in_r_valid(axi4yank_auto_in_r_valid),
    .auto_in_r_bits_id(axi4yank_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4yank_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4yank_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_extra_id(axi4yank_auto_in_r_bits_echo_extra_id),
    .auto_in_r_bits_echo_real_last(axi4yank_auto_in_r_bits_echo_real_last),
    .auto_in_r_bits_last(axi4yank_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4yank_auto_out_aw_ready),
    .auto_out_aw_valid(axi4yank_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4yank_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4yank_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4yank_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4yank_auto_out_aw_bits_size),
    .auto_out_aw_bits_cache(axi4yank_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4yank_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi4yank_auto_out_w_ready),
    .auto_out_w_valid(axi4yank_auto_out_w_valid),
    .auto_out_w_bits_data(axi4yank_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4yank_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4yank_auto_out_w_bits_last),
    .auto_out_b_ready(axi4yank_auto_out_b_ready),
    .auto_out_b_valid(axi4yank_auto_out_b_valid),
    .auto_out_b_bits_id(axi4yank_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4yank_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4yank_auto_out_ar_ready),
    .auto_out_ar_valid(axi4yank_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4yank_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4yank_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4yank_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4yank_auto_out_ar_bits_size),
    .auto_out_ar_bits_cache(axi4yank_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4yank_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi4yank_auto_out_r_ready),
    .auto_out_r_valid(axi4yank_auto_out_r_valid),
    .auto_out_r_bits_id(axi4yank_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4yank_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4yank_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4yank_auto_out_r_bits_last)
  );
  AXI4Fragmenter axi4frag ( // @[Fragmenter.scala 206:30:freechips.rocketchip.system.DefaultRV32Config.fir@41717.4]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_aw_bits_cache(axi4frag_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4frag_auto_in_aw_bits_prot),
    .auto_in_aw_bits_echo_extra_id(axi4frag_auto_in_aw_bits_echo_extra_id),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_extra_id(axi4frag_auto_in_b_bits_echo_extra_id),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_ar_bits_cache(axi4frag_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4frag_auto_in_ar_bits_prot),
    .auto_in_ar_bits_echo_extra_id(axi4frag_auto_in_ar_bits_echo_extra_id),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_extra_id(axi4frag_auto_in_r_bits_echo_extra_id),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4frag_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4frag_auto_out_aw_bits_size),
    .auto_out_aw_bits_cache(axi4frag_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4frag_auto_out_aw_bits_prot),
    .auto_out_aw_bits_echo_extra_id(axi4frag_auto_out_aw_bits_echo_extra_id),
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
    .auto_out_b_bits_echo_extra_id(axi4frag_auto_out_b_bits_echo_extra_id),
    .auto_out_b_bits_echo_real_last(axi4frag_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4frag_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4frag_auto_out_ar_bits_size),
    .auto_out_ar_bits_cache(axi4frag_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4frag_auto_out_ar_bits_prot),
    .auto_out_ar_bits_echo_extra_id(axi4frag_auto_out_ar_bits_echo_extra_id),
    .auto_out_ar_bits_echo_real_last(axi4frag_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_extra_id(axi4frag_auto_out_r_bits_echo_extra_id),
    .auto_out_r_bits_echo_real_last(axi4frag_auto_out_r_bits_echo_real_last),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  AXI4IdIndexer_1 axi4index ( // @[IdIndexer.scala 84:31:freechips.rocketchip.system.DefaultRV32Config.fir@41723.4]
    .auto_in_aw_ready(axi4index_auto_in_aw_ready),
    .auto_in_aw_valid(axi4index_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4index_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4index_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4index_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4index_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4index_auto_in_aw_bits_burst),
    .auto_in_aw_bits_cache(axi4index_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4index_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4index_auto_in_w_ready),
    .auto_in_w_valid(axi4index_auto_in_w_valid),
    .auto_in_w_bits_data(axi4index_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4index_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4index_auto_in_w_bits_last),
    .auto_in_b_ready(axi4index_auto_in_b_ready),
    .auto_in_b_valid(axi4index_auto_in_b_valid),
    .auto_in_b_bits_id(axi4index_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4index_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4index_auto_in_ar_ready),
    .auto_in_ar_valid(axi4index_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4index_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4index_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4index_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4index_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4index_auto_in_ar_bits_burst),
    .auto_in_ar_bits_cache(axi4index_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4index_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4index_auto_in_r_ready),
    .auto_in_r_valid(axi4index_auto_in_r_valid),
    .auto_in_r_bits_id(axi4index_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4index_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4index_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4index_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4index_auto_out_aw_ready),
    .auto_out_aw_valid(axi4index_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4index_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4index_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4index_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4index_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4index_auto_out_aw_bits_burst),
    .auto_out_aw_bits_cache(axi4index_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4index_auto_out_aw_bits_prot),
    .auto_out_aw_bits_echo_extra_id(axi4index_auto_out_aw_bits_echo_extra_id),
    .auto_out_w_ready(axi4index_auto_out_w_ready),
    .auto_out_w_valid(axi4index_auto_out_w_valid),
    .auto_out_w_bits_data(axi4index_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4index_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4index_auto_out_w_bits_last),
    .auto_out_b_ready(axi4index_auto_out_b_ready),
    .auto_out_b_valid(axi4index_auto_out_b_valid),
    .auto_out_b_bits_id(axi4index_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4index_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_extra_id(axi4index_auto_out_b_bits_echo_extra_id),
    .auto_out_ar_ready(axi4index_auto_out_ar_ready),
    .auto_out_ar_valid(axi4index_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4index_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4index_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4index_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4index_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4index_auto_out_ar_bits_burst),
    .auto_out_ar_bits_cache(axi4index_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4index_auto_out_ar_bits_prot),
    .auto_out_ar_bits_echo_extra_id(axi4index_auto_out_ar_bits_echo_extra_id),
    .auto_out_r_ready(axi4index_auto_out_r_ready),
    .auto_out_r_valid(axi4index_auto_out_r_valid),
    .auto_out_r_bits_id(axi4index_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4index_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4index_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_extra_id(axi4index_auto_out_r_bits_echo_extra_id),
    .auto_out_r_bits_last(axi4index_auto_out_r_bits_last)
  );
  assign auto_axi4index_in_aw_ready = axi4index_auto_in_aw_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_w_ready = axi4index_auto_in_w_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_b_valid = axi4index_auto_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_b_bits_id = axi4index_auto_in_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_b_bits_resp = axi4index_auto_in_b_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_ar_ready = axi4index_auto_in_ar_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_r_valid = axi4index_auto_in_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_r_bits_id = axi4index_auto_in_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_r_bits_data = axi4index_auto_in_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_r_bits_resp = axi4index_auto_in_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_axi4index_in_r_bits_last = axi4index_auto_in_r_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign auto_buffer_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_bufferable = buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_modifiable = buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_readalloc = buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_writealloc = buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_privileged = buffer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_secure = buffer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_user_amba_prot_fetch = buffer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign auto_buffer_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41691.4]
  assign buffer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41692.4]
  assign buffer_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_bufferable = fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_modifiable = fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_readalloc = fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_writealloc = fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_privileged = fixer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_secure = fixer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_user_amba_prot_fetch = fixer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign buffer_auto_out_a_ready = auto_buffer_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_valid = auto_buffer_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_opcode = auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_param = auto_buffer_out_d_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_size = auto_buffer_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_source = auto_buffer_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_sink = auto_buffer_out_d_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_denied = auto_buffer_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_data = auto_buffer_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign buffer_auto_out_d_bits_corrupt = auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@41735.4]
  assign fixer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41697.4]
  assign fixer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41698.4]
  assign fixer_auto_in_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_bufferable = widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_modifiable = widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_readalloc = widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_writealloc = widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_privileged = widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_secure = widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_user_amba_prot_fetch = widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_in_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign fixer_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign fixer_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41729.4]
  assign widget_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41703.4]
  assign widget_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41704.4]
  assign widget_auto_in_a_valid = axi42tl_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_opcode = axi42tl_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_param = axi42tl_auto_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_size = axi42tl_auto_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_source = axi42tl_auto_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_address = axi42tl_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_bufferable = axi42tl_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_modifiable = axi42tl_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_readalloc = axi42tl_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_writealloc = axi42tl_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_privileged = axi42tl_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_secure = axi42tl_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_user_amba_prot_fetch = axi42tl_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_mask = axi42tl_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_data = axi42tl_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_a_bits_corrupt = axi42tl_auto_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_in_d_ready = axi42tl_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign widget_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_param = fixer_auto_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_sink = fixer_auto_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign widget_auto_out_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41730.4]
  assign axi42tl_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41709.4]
  assign axi42tl_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41710.4]
  assign axi42tl_auto_in_aw_valid = axi4yank_auto_out_aw_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_id = axi4yank_auto_out_aw_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_addr = axi4yank_auto_out_aw_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_len = axi4yank_auto_out_aw_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_size = axi4yank_auto_out_aw_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_cache = axi4yank_auto_out_aw_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_aw_bits_prot = axi4yank_auto_out_aw_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_w_valid = axi4yank_auto_out_w_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_w_bits_data = axi4yank_auto_out_w_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_w_bits_strb = axi4yank_auto_out_w_bits_strb; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_w_bits_last = axi4yank_auto_out_w_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_b_ready = axi4yank_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_valid = axi4yank_auto_out_ar_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_id = axi4yank_auto_out_ar_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_addr = axi4yank_auto_out_ar_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_len = axi4yank_auto_out_ar_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_size = axi4yank_auto_out_ar_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_cache = axi4yank_auto_out_ar_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_ar_bits_prot = axi4yank_auto_out_ar_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_in_r_ready = axi4yank_auto_out_r_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi42tl_auto_out_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi42tl_auto_out_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41731.4]
  assign axi4yank_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41715.4]
  assign axi4yank_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41716.4]
  assign axi4yank_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_len = axi4frag_auto_out_aw_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_size = axi4frag_auto_out_aw_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_cache = axi4frag_auto_out_aw_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_prot = axi4frag_auto_out_aw_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_echo_extra_id = axi4frag_auto_out_aw_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_aw_bits_echo_real_last = axi4frag_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_w_bits_last = axi4frag_auto_out_w_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_len = axi4frag_auto_out_ar_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_size = axi4frag_auto_out_ar_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_cache = axi4frag_auto_out_ar_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_prot = axi4frag_auto_out_ar_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_echo_extra_id = axi4frag_auto_out_ar_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_ar_bits_echo_real_last = axi4frag_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4yank_auto_out_aw_ready = axi42tl_auto_in_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_w_ready = axi42tl_auto_in_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_b_valid = axi42tl_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_b_bits_id = axi42tl_auto_in_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_b_bits_resp = axi42tl_auto_in_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_ar_ready = axi42tl_auto_in_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_r_valid = axi42tl_auto_in_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_r_bits_id = axi42tl_auto_in_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_r_bits_data = axi42tl_auto_in_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_r_bits_resp = axi42tl_auto_in_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4yank_auto_out_r_bits_last = axi42tl_auto_in_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41732.4]
  assign axi4frag_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41721.4]
  assign axi4frag_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@41722.4]
  assign axi4frag_auto_in_aw_valid = axi4index_auto_out_aw_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_id = axi4index_auto_out_aw_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_addr = axi4index_auto_out_aw_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_len = axi4index_auto_out_aw_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_size = axi4index_auto_out_aw_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_burst = axi4index_auto_out_aw_bits_burst; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_cache = axi4index_auto_out_aw_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_prot = axi4index_auto_out_aw_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_aw_bits_echo_extra_id = axi4index_auto_out_aw_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_w_valid = axi4index_auto_out_w_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_w_bits_data = axi4index_auto_out_w_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_w_bits_strb = axi4index_auto_out_w_bits_strb; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_w_bits_last = axi4index_auto_out_w_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_b_ready = axi4index_auto_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_valid = axi4index_auto_out_ar_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_id = axi4index_auto_out_ar_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_addr = axi4index_auto_out_ar_bits_addr; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_len = axi4index_auto_out_ar_bits_len; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_size = axi4index_auto_out_ar_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_burst = axi4index_auto_out_ar_bits_burst; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_cache = axi4index_auto_out_ar_bits_cache; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_prot = axi4index_auto_out_ar_bits_prot; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_ar_bits_echo_extra_id = axi4index_auto_out_ar_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_in_r_ready = axi4index_auto_out_r_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4frag_auto_out_aw_ready = axi4yank_auto_in_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_w_ready = axi4yank_auto_in_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_b_valid = axi4yank_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_b_bits_id = axi4yank_auto_in_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_b_bits_resp = axi4yank_auto_in_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_b_bits_echo_extra_id = axi4yank_auto_in_b_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_b_bits_echo_real_last = axi4yank_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_ar_ready = axi4yank_auto_in_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_valid = axi4yank_auto_in_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_id = axi4yank_auto_in_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_data = axi4yank_auto_in_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_resp = axi4yank_auto_in_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_echo_extra_id = axi4yank_auto_in_r_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_echo_real_last = axi4yank_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4frag_auto_out_r_bits_last = axi4yank_auto_in_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41733.4]
  assign axi4index_auto_in_aw_valid = auto_axi4index_in_aw_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_id = auto_axi4index_in_aw_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_addr = auto_axi4index_in_aw_bits_addr; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_len = auto_axi4index_in_aw_bits_len; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_size = auto_axi4index_in_aw_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_burst = auto_axi4index_in_aw_bits_burst; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_cache = auto_axi4index_in_aw_bits_cache; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_aw_bits_prot = auto_axi4index_in_aw_bits_prot; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_w_valid = auto_axi4index_in_w_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_w_bits_data = auto_axi4index_in_w_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_w_bits_strb = auto_axi4index_in_w_bits_strb; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_w_bits_last = auto_axi4index_in_w_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_b_ready = auto_axi4index_in_b_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_valid = auto_axi4index_in_ar_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_id = auto_axi4index_in_ar_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_addr = auto_axi4index_in_ar_bits_addr; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_len = auto_axi4index_in_ar_bits_len; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_size = auto_axi4index_in_ar_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_burst = auto_axi4index_in_ar_bits_burst; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_cache = auto_axi4index_in_ar_bits_cache; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_ar_bits_prot = auto_axi4index_in_ar_bits_prot; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_in_r_ready = auto_axi4index_in_r_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@41736.4]
  assign axi4index_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_b_bits_echo_extra_id = axi4frag_auto_in_b_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_bits_echo_extra_id = axi4frag_auto_in_r_bits_echo_extra_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
  assign axi4index_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@41734.4]
endmodule
