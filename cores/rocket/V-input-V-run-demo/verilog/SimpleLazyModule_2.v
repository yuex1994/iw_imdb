module SimpleLazyModule_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19278.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19279.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19280.4]
  output        auto_widget_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [4:0]  auto_widget_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [3:0]  auto_widget_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [1:0]  auto_widget_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [4:0]  auto_widget_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [1:0]  auto_widget_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [4:0]  auto_widget_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [1:0]  auto_widget_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [1:0]  auto_widget_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [4:0]  auto_widget_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [3:0]  auto_widget_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [1:0]  auto_widget_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [2:0]  auto_widget_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [4:0]  auto_widget_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [31:0] auto_widget_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [1:0]  auto_widget_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [2:0]  auto_widget_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [4:0]  auto_widget_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [1:0]  auto_widget_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input  [31:0] auto_widget_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  input         auto_widget_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output        auto_widget_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
  output [1:0]  auto_widget_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19281.4]
);
  wire  widget_clock; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_reset; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_bufferable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_modifiable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_readalloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_writealloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_privileged; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_secure; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_user_amba_prot_fetch; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [3:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_b_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_b_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_in_b_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_b_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_c_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_c_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_c_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_c_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_c_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_in_c_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_c_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_c_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_c_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_in_d_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_in_d_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_in_e_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_in_e_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_a_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_bufferable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_modifiable; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_readalloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_writealloc; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_privileged; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_secure; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_user_amba_prot_fetch; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [3:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_a_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_b_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_b_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_out_b_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_b_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_c_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_c_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_c_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_c_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_c_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_out_c_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_c_bits_address; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_c_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_c_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_out_d_bits_param; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [2:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [4:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_out_d_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_d_bits_denied; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [31:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_d_bits_corrupt; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire  widget_auto_out_e_valid; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  wire [1:0] widget_auto_out_e_bits_sink; // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
  TLWidthWidget_2 widget ( // @[WidthWidget.scala 210:28:freechips.rocketchip.system.DefaultRV32Config.fir@19286.4]
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
    .auto_in_b_ready(widget_auto_in_b_ready),
    .auto_in_b_valid(widget_auto_in_b_valid),
    .auto_in_b_bits_param(widget_auto_in_b_bits_param),
    .auto_in_b_bits_address(widget_auto_in_b_bits_address),
    .auto_in_c_ready(widget_auto_in_c_ready),
    .auto_in_c_valid(widget_auto_in_c_valid),
    .auto_in_c_bits_opcode(widget_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(widget_auto_in_c_bits_param),
    .auto_in_c_bits_size(widget_auto_in_c_bits_size),
    .auto_in_c_bits_source(widget_auto_in_c_bits_source),
    .auto_in_c_bits_address(widget_auto_in_c_bits_address),
    .auto_in_c_bits_data(widget_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(widget_auto_in_c_bits_corrupt),
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(widget_auto_in_d_bits_param),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_sink(widget_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(widget_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_auto_in_d_bits_corrupt),
    .auto_in_e_valid(widget_auto_in_e_valid),
    .auto_in_e_bits_sink(widget_auto_in_e_bits_sink),
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
    .auto_out_b_ready(widget_auto_out_b_ready),
    .auto_out_b_valid(widget_auto_out_b_valid),
    .auto_out_b_bits_param(widget_auto_out_b_bits_param),
    .auto_out_b_bits_address(widget_auto_out_b_bits_address),
    .auto_out_c_ready(widget_auto_out_c_ready),
    .auto_out_c_valid(widget_auto_out_c_valid),
    .auto_out_c_bits_opcode(widget_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(widget_auto_out_c_bits_param),
    .auto_out_c_bits_size(widget_auto_out_c_bits_size),
    .auto_out_c_bits_source(widget_auto_out_c_bits_source),
    .auto_out_c_bits_address(widget_auto_out_c_bits_address),
    .auto_out_c_bits_data(widget_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(widget_auto_out_c_bits_corrupt),
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(widget_auto_out_d_bits_param),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_sink(widget_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(widget_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_auto_out_d_bits_corrupt),
    .auto_out_e_valid(widget_auto_out_e_valid),
    .auto_out_e_bits_sink(widget_auto_out_e_bits_sink)
  );
  assign auto_widget_in_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_b_valid = widget_auto_in_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_b_bits_param = widget_auto_in_b_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_b_bits_address = widget_auto_in_b_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_c_ready = widget_auto_in_c_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_param = widget_auto_in_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_sink = widget_auto_in_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_in_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign auto_widget_out_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_bufferable = widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_modifiable = widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_readalloc = widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_writealloc = widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_privileged = widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_secure = widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_user_amba_prot_fetch = widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_b_ready = widget_auto_out_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_valid = widget_auto_out_c_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_opcode = widget_auto_out_c_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_param = widget_auto_out_c_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_size = widget_auto_out_c_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_source = widget_auto_out_c_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_address = widget_auto_out_c_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_data = widget_auto_out_c_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_c_bits_corrupt = widget_auto_out_c_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_e_valid = widget_auto_out_e_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign auto_widget_out_e_bits_sink = widget_auto_out_e_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19290.4]
  assign widget_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@19291.4]
  assign widget_auto_in_a_valid = auto_widget_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_opcode = auto_widget_in_a_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_param = auto_widget_in_a_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_size = auto_widget_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_source = auto_widget_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_address = auto_widget_in_a_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_bufferable = auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_modifiable = auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_readalloc = auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_writealloc = auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_privileged = auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_secure = auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_user_amba_prot_fetch = auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_mask = auto_widget_in_a_bits_mask; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_data = auto_widget_in_a_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_a_bits_corrupt = auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_b_ready = auto_widget_in_b_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_valid = auto_widget_in_c_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_opcode = auto_widget_in_c_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_param = auto_widget_in_c_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_size = auto_widget_in_c_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_source = auto_widget_in_c_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_address = auto_widget_in_c_bits_address; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_data = auto_widget_in_c_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_c_bits_corrupt = auto_widget_in_c_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_d_ready = auto_widget_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_e_valid = auto_widget_in_e_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_in_e_bits_sink = auto_widget_in_e_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@19293.4]
  assign widget_auto_out_a_ready = auto_widget_out_a_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_b_valid = auto_widget_out_b_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_b_bits_param = auto_widget_out_b_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_b_bits_address = auto_widget_out_b_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_c_ready = auto_widget_out_c_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_valid = auto_widget_out_d_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_opcode = auto_widget_out_d_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_param = auto_widget_out_d_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_size = auto_widget_out_d_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_source = auto_widget_out_d_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_sink = auto_widget_out_d_bits_sink; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_denied = auto_widget_out_d_bits_denied; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_data = auto_widget_out_d_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
  assign widget_auto_out_d_bits_corrupt = auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@19292.4]
endmodule
