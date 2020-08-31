module TLDebugModuleOuterAsync( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105944.2]
  output [2:0]  auto_asource_out_a_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output [8:0]  auto_asource_out_a_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output [3:0]  auto_asource_out_a_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output [31:0] auto_asource_out_a_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_a_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_a_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_a_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_a_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_a_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_a_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input  [2:0]  auto_asource_out_d_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input  [1:0]  auto_asource_out_d_mem_0_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_d_mem_0_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input  [31:0] auto_asource_out_d_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_d_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_d_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_d_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_d_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         auto_asource_out_d_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_asource_out_d_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  output        auto_intsource_out_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105945.4]
  input         io_dmi_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_dmi_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_dmi_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_dmi_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input  [6:0]  io_dmi_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input  [31:0] io_dmi_req_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input  [1:0]  io_dmi_req_bits_op, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_dmi_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_dmi_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output [31:0] io_dmi_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output [1:0]  io_dmi_resp_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_ctrl_ndreset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_ctrl_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_ctrl_dmactiveAck, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_mem_0_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_mem_0_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_mem_0_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_innerCtrl_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_innerCtrl_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  output        io_innerCtrl_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_innerCtrl_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
  input         io_hgDebugInt_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105946.4]
);
  wire  dmiXbar_clock; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_reset; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_a_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_a_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [2:0] dmiXbar_auto_in_a_bits_opcode; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [8:0] dmiXbar_auto_in_a_bits_address; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [3:0] dmiXbar_auto_in_a_bits_mask; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_in_a_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_d_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_d_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_d_bits_denied; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_in_d_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_in_d_bits_corrupt; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_1_a_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_1_a_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [2:0] dmiXbar_auto_out_1_a_bits_opcode; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [6:0] dmiXbar_auto_out_1_a_bits_address; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [3:0] dmiXbar_auto_out_1_a_bits_mask; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_out_1_a_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_1_d_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_1_d_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [2:0] dmiXbar_auto_out_1_d_bits_opcode; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_out_1_d_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_a_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_a_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [2:0] dmiXbar_auto_out_0_a_bits_opcode; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [8:0] dmiXbar_auto_out_0_a_bits_address; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [3:0] dmiXbar_auto_out_0_a_bits_mask; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_out_0_a_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_ready; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_valid; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [2:0] dmiXbar_auto_out_0_d_bits_opcode; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [1:0] dmiXbar_auto_out_0_d_bits_param; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [1:0] dmiXbar_auto_out_0_d_bits_size; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_bits_source; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_bits_sink; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_bits_denied; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire [31:0] dmiXbar_auto_out_0_d_bits_data; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmiXbar_auto_out_0_d_bits_corrupt; // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
  wire  dmi2tl_auto_out_a_ready; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_auto_out_a_valid; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [2:0] dmi2tl_auto_out_a_bits_opcode; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [8:0] dmi2tl_auto_out_a_bits_address; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [3:0] dmi2tl_auto_out_a_bits_mask; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [31:0] dmi2tl_auto_out_a_bits_data; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_auto_out_d_ready; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_auto_out_d_valid; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_auto_out_d_bits_denied; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [31:0] dmi2tl_auto_out_d_bits_data; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_auto_out_d_bits_corrupt; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_io_dmi_req_ready; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_io_dmi_req_valid; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [6:0] dmi2tl_io_dmi_req_bits_addr; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [31:0] dmi2tl_io_dmi_req_bits_data; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [1:0] dmi2tl_io_dmi_req_bits_op; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_io_dmi_resp_ready; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmi2tl_io_dmi_resp_valid; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [31:0] dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire [1:0] dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
  wire  dmOuter_clock; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_reset; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_auto_dmi_in_a_ready; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_auto_dmi_in_a_valid; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [2:0] dmOuter_auto_dmi_in_a_bits_opcode; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [6:0] dmOuter_auto_dmi_in_a_bits_address; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [3:0] dmOuter_auto_dmi_in_a_bits_mask; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [31:0] dmOuter_auto_dmi_in_a_bits_data; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_auto_dmi_in_d_ready; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_auto_dmi_in_d_valid; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [2:0] dmOuter_auto_dmi_in_d_bits_opcode; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [31:0] dmOuter_auto_dmi_in_d_bits_data; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_auto_int_out_0; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_ctrl_ndreset; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_ctrl_dmactive; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_ctrl_dmactiveAck; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_innerCtrl_ready; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_innerCtrl_valid; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_innerCtrl_bits_resumereq; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire [9:0] dmOuter_io_innerCtrl_bits_hartsel; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_innerCtrl_bits_ackhavereset; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_innerCtrl_bits_hrmask_0; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  dmOuter_io_hgDebugInt_0; // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@105979.4]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@105979.4]
  wire  dmiBypass_clock; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_reset; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_a_ready; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_a_valid; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [2:0] dmiBypass_auto_node_out_out_a_bits_opcode; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [8:0] dmiBypass_auto_node_out_out_a_bits_address; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [3:0] dmiBypass_auto_node_out_out_a_bits_mask; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [31:0] dmiBypass_auto_node_out_out_a_bits_data; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_ready; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_valid; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [2:0] dmiBypass_auto_node_out_out_d_bits_opcode; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [1:0] dmiBypass_auto_node_out_out_d_bits_param; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [1:0] dmiBypass_auto_node_out_out_d_bits_size; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_bits_source; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_bits_sink; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_bits_denied; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [31:0] dmiBypass_auto_node_out_out_d_bits_data; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_out_out_d_bits_corrupt; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_a_ready; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_a_valid; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [2:0] dmiBypass_auto_node_in_in_a_bits_opcode; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [8:0] dmiBypass_auto_node_in_in_a_bits_address; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [3:0] dmiBypass_auto_node_in_in_a_bits_mask; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [31:0] dmiBypass_auto_node_in_in_a_bits_data; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_ready; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_valid; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [2:0] dmiBypass_auto_node_in_in_d_bits_opcode; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [1:0] dmiBypass_auto_node_in_in_d_bits_param; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [1:0] dmiBypass_auto_node_in_in_d_bits_size; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_bits_source; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_bits_sink; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_bits_denied; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire [31:0] dmiBypass_auto_node_in_in_d_bits_data; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_auto_node_in_in_d_bits_corrupt; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  dmiBypass_io_bypass; // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
  wire  asource_clock; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_reset; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_a_ready; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_a_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [2:0] asource_auto_in_a_bits_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [8:0] asource_auto_in_a_bits_address; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [3:0] asource_auto_in_a_bits_mask; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [31:0] asource_auto_in_a_bits_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_ready; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [2:0] asource_auto_in_d_bits_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [1:0] asource_auto_in_d_bits_param; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [1:0] asource_auto_in_d_bits_size; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_bits_source; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_bits_sink; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_bits_denied; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [31:0] asource_auto_in_d_bits_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_in_d_bits_corrupt; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [2:0] asource_auto_out_a_mem_0_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [8:0] asource_auto_out_a_mem_0_address; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [3:0] asource_auto_out_a_mem_0_mask; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [31:0] asource_auto_out_a_mem_0_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_ridx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_widx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_safe_ridx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_safe_widx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_safe_source_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_a_safe_sink_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [2:0] asource_auto_out_d_mem_0_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [1:0] asource_auto_out_d_mem_0_size; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_mem_0_source; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire [31:0] asource_auto_out_d_mem_0_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_ridx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_widx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_safe_ridx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_safe_widx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_safe_source_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  asource_auto_out_d_safe_sink_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
  wire  dmactiveAckSync_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@106008.4]
  wire  dmactiveAckSync_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@106008.4]
  wire  dmactiveAckSync_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@106008.4]
  wire  dmactiveAckSync_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@106008.4]
  wire  AsyncQueueSource_clock; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_reset; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_enq_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_enq_bits_resumereq; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_enq_bits_ackhavereset; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_enq_bits_hrmask_0; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_mem_0_resumereq; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_mem_0_ackhavereset; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_mem_0_hrmask_0; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_ridx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_widx; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  AsyncQueueSource_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
  wire  _T_2; // @[Debug.scala 658:37:freechips.rocketchip.system.DefaultRV32Config.fir@106014.4]
  wire  _T_1; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@106012.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@106013.4]
  wire  _T_3; // @[Debug.scala 658:57:freechips.rocketchip.system.DefaultRV32Config.fir@106015.4]
  TLXbar_7 dmiXbar ( // @[Debug.scala 602:28:freechips.rocketchip.system.DefaultRV32Config.fir@105959.4]
    .clock(dmiXbar_clock),
    .reset(dmiXbar_reset),
    .auto_in_a_ready(dmiXbar_auto_in_a_ready),
    .auto_in_a_valid(dmiXbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(dmiXbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(dmiXbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(dmiXbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(dmiXbar_auto_in_a_bits_data),
    .auto_in_d_ready(dmiXbar_auto_in_d_ready),
    .auto_in_d_valid(dmiXbar_auto_in_d_valid),
    .auto_in_d_bits_denied(dmiXbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(dmiXbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(dmiXbar_auto_in_d_bits_corrupt),
    .auto_out_1_a_ready(dmiXbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(dmiXbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(dmiXbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_address(dmiXbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(dmiXbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(dmiXbar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(dmiXbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(dmiXbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(dmiXbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_data(dmiXbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(dmiXbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(dmiXbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(dmiXbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_address(dmiXbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(dmiXbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(dmiXbar_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(dmiXbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(dmiXbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(dmiXbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(dmiXbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(dmiXbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(dmiXbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(dmiXbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(dmiXbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(dmiXbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(dmiXbar_auto_out_0_d_bits_corrupt)
  );
  DMIToTL dmi2tl ( // @[Debug.scala 605:28:freechips.rocketchip.system.DefaultRV32Config.fir@105965.4]
    .auto_out_a_ready(dmi2tl_auto_out_a_ready),
    .auto_out_a_valid(dmi2tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(dmi2tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_address(dmi2tl_auto_out_a_bits_address),
    .auto_out_a_bits_mask(dmi2tl_auto_out_a_bits_mask),
    .auto_out_a_bits_data(dmi2tl_auto_out_a_bits_data),
    .auto_out_d_ready(dmi2tl_auto_out_d_ready),
    .auto_out_d_valid(dmi2tl_auto_out_d_valid),
    .auto_out_d_bits_denied(dmi2tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(dmi2tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(dmi2tl_auto_out_d_bits_corrupt),
    .io_dmi_req_ready(dmi2tl_io_dmi_req_ready),
    .io_dmi_req_valid(dmi2tl_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmi2tl_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmi2tl_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmi2tl_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmi2tl_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmi2tl_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmi2tl_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmi2tl_io_dmi_resp_bits_resp)
  );
  TLDebugModuleOuter dmOuter ( // @[Debug.scala 627:27:freechips.rocketchip.system.DefaultRV32Config.fir@105972.4]
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .auto_dmi_in_a_ready(dmOuter_auto_dmi_in_a_ready),
    .auto_dmi_in_a_valid(dmOuter_auto_dmi_in_a_valid),
    .auto_dmi_in_a_bits_opcode(dmOuter_auto_dmi_in_a_bits_opcode),
    .auto_dmi_in_a_bits_address(dmOuter_auto_dmi_in_a_bits_address),
    .auto_dmi_in_a_bits_mask(dmOuter_auto_dmi_in_a_bits_mask),
    .auto_dmi_in_a_bits_data(dmOuter_auto_dmi_in_a_bits_data),
    .auto_dmi_in_d_ready(dmOuter_auto_dmi_in_d_ready),
    .auto_dmi_in_d_valid(dmOuter_auto_dmi_in_d_valid),
    .auto_dmi_in_d_bits_opcode(dmOuter_auto_dmi_in_d_bits_opcode),
    .auto_dmi_in_d_bits_data(dmOuter_auto_dmi_in_d_bits_data),
    .auto_int_out_0(dmOuter_auto_int_out_0),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(dmOuter_io_ctrl_dmactiveAck),
    .io_innerCtrl_ready(dmOuter_io_innerCtrl_ready),
    .io_innerCtrl_valid(dmOuter_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmOuter_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmOuter_io_innerCtrl_bits_hartsel),
    .io_innerCtrl_bits_ackhavereset(dmOuter_io_innerCtrl_bits_ackhavereset),
    .io_innerCtrl_bits_hrmask_0(dmOuter_io_innerCtrl_bits_hrmask_0),
    .io_hgDebugInt_0(dmOuter_io_hgDebugInt_0)
  );
  IntSyncCrossingSource intsource ( // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@105979.4]
    .auto_in_0(intsource_auto_in_0),
    .auto_out_sync_0(intsource_auto_out_sync_0)
  );
  TLBusBypass dmiBypass ( // @[Debug.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@105985.4]
    .clock(dmiBypass_clock),
    .reset(dmiBypass_reset),
    .auto_node_out_out_a_ready(dmiBypass_auto_node_out_out_a_ready),
    .auto_node_out_out_a_valid(dmiBypass_auto_node_out_out_a_valid),
    .auto_node_out_out_a_bits_opcode(dmiBypass_auto_node_out_out_a_bits_opcode),
    .auto_node_out_out_a_bits_address(dmiBypass_auto_node_out_out_a_bits_address),
    .auto_node_out_out_a_bits_mask(dmiBypass_auto_node_out_out_a_bits_mask),
    .auto_node_out_out_a_bits_data(dmiBypass_auto_node_out_out_a_bits_data),
    .auto_node_out_out_d_ready(dmiBypass_auto_node_out_out_d_ready),
    .auto_node_out_out_d_valid(dmiBypass_auto_node_out_out_d_valid),
    .auto_node_out_out_d_bits_opcode(dmiBypass_auto_node_out_out_d_bits_opcode),
    .auto_node_out_out_d_bits_param(dmiBypass_auto_node_out_out_d_bits_param),
    .auto_node_out_out_d_bits_size(dmiBypass_auto_node_out_out_d_bits_size),
    .auto_node_out_out_d_bits_source(dmiBypass_auto_node_out_out_d_bits_source),
    .auto_node_out_out_d_bits_sink(dmiBypass_auto_node_out_out_d_bits_sink),
    .auto_node_out_out_d_bits_denied(dmiBypass_auto_node_out_out_d_bits_denied),
    .auto_node_out_out_d_bits_data(dmiBypass_auto_node_out_out_d_bits_data),
    .auto_node_out_out_d_bits_corrupt(dmiBypass_auto_node_out_out_d_bits_corrupt),
    .auto_node_in_in_a_ready(dmiBypass_auto_node_in_in_a_ready),
    .auto_node_in_in_a_valid(dmiBypass_auto_node_in_in_a_valid),
    .auto_node_in_in_a_bits_opcode(dmiBypass_auto_node_in_in_a_bits_opcode),
    .auto_node_in_in_a_bits_address(dmiBypass_auto_node_in_in_a_bits_address),
    .auto_node_in_in_a_bits_mask(dmiBypass_auto_node_in_in_a_bits_mask),
    .auto_node_in_in_a_bits_data(dmiBypass_auto_node_in_in_a_bits_data),
    .auto_node_in_in_d_ready(dmiBypass_auto_node_in_in_d_ready),
    .auto_node_in_in_d_valid(dmiBypass_auto_node_in_in_d_valid),
    .auto_node_in_in_d_bits_opcode(dmiBypass_auto_node_in_in_d_bits_opcode),
    .auto_node_in_in_d_bits_param(dmiBypass_auto_node_in_in_d_bits_param),
    .auto_node_in_in_d_bits_size(dmiBypass_auto_node_in_in_d_bits_size),
    .auto_node_in_in_d_bits_source(dmiBypass_auto_node_in_in_d_bits_source),
    .auto_node_in_in_d_bits_sink(dmiBypass_auto_node_in_in_d_bits_sink),
    .auto_node_in_in_d_bits_denied(dmiBypass_auto_node_in_in_d_bits_denied),
    .auto_node_in_in_d_bits_data(dmiBypass_auto_node_in_in_d_bits_data),
    .auto_node_in_in_d_bits_corrupt(dmiBypass_auto_node_in_in_d_bits_corrupt),
    .io_bypass(dmiBypass_io_bypass)
  );
  TLAsyncCrossingSource asource ( // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@105992.4]
    .clock(asource_clock),
    .reset(asource_reset),
    .auto_in_a_ready(asource_auto_in_a_ready),
    .auto_in_a_valid(asource_auto_in_a_valid),
    .auto_in_a_bits_opcode(asource_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(asource_auto_in_a_bits_address),
    .auto_in_a_bits_mask(asource_auto_in_a_bits_mask),
    .auto_in_a_bits_data(asource_auto_in_a_bits_data),
    .auto_in_d_ready(asource_auto_in_d_ready),
    .auto_in_d_valid(asource_auto_in_d_valid),
    .auto_in_d_bits_opcode(asource_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(asource_auto_in_d_bits_param),
    .auto_in_d_bits_size(asource_auto_in_d_bits_size),
    .auto_in_d_bits_source(asource_auto_in_d_bits_source),
    .auto_in_d_bits_sink(asource_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(asource_auto_in_d_bits_denied),
    .auto_in_d_bits_data(asource_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(asource_auto_in_d_bits_corrupt),
    .auto_out_a_mem_0_opcode(asource_auto_out_a_mem_0_opcode),
    .auto_out_a_mem_0_address(asource_auto_out_a_mem_0_address),
    .auto_out_a_mem_0_mask(asource_auto_out_a_mem_0_mask),
    .auto_out_a_mem_0_data(asource_auto_out_a_mem_0_data),
    .auto_out_a_ridx(asource_auto_out_a_ridx),
    .auto_out_a_widx(asource_auto_out_a_widx),
    .auto_out_a_safe_ridx_valid(asource_auto_out_a_safe_ridx_valid),
    .auto_out_a_safe_widx_valid(asource_auto_out_a_safe_widx_valid),
    .auto_out_a_safe_source_reset_n(asource_auto_out_a_safe_source_reset_n),
    .auto_out_a_safe_sink_reset_n(asource_auto_out_a_safe_sink_reset_n),
    .auto_out_d_mem_0_opcode(asource_auto_out_d_mem_0_opcode),
    .auto_out_d_mem_0_size(asource_auto_out_d_mem_0_size),
    .auto_out_d_mem_0_source(asource_auto_out_d_mem_0_source),
    .auto_out_d_mem_0_data(asource_auto_out_d_mem_0_data),
    .auto_out_d_ridx(asource_auto_out_d_ridx),
    .auto_out_d_widx(asource_auto_out_d_widx),
    .auto_out_d_safe_ridx_valid(asource_auto_out_d_safe_ridx_valid),
    .auto_out_d_safe_widx_valid(asource_auto_out_d_safe_widx_valid),
    .auto_out_d_safe_source_reset_n(asource_auto_out_d_safe_source_reset_n),
    .auto_out_d_safe_sink_reset_n(asource_auto_out_d_safe_sink_reset_n)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 dmactiveAckSync ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@106008.4]
    .clock(dmactiveAckSync_clock),
    .reset(dmactiveAckSync_reset),
    .io_d(dmactiveAckSync_io_d),
    .io_q(dmactiveAckSync_io_q)
  );
  AsyncQueueSource_1 AsyncQueueSource ( // @[AsyncQueue.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@106020.4]
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_resumereq(AsyncQueueSource_io_enq_bits_resumereq),
    .io_enq_bits_ackhavereset(AsyncQueueSource_io_enq_bits_ackhavereset),
    .io_enq_bits_hrmask_0(AsyncQueueSource_io_enq_bits_hrmask_0),
    .io_async_mem_0_resumereq(AsyncQueueSource_io_async_mem_0_resumereq),
    .io_async_mem_0_ackhavereset(AsyncQueueSource_io_async_mem_0_ackhavereset),
    .io_async_mem_0_hrmask_0(AsyncQueueSource_io_async_mem_0_hrmask_0),
    .io_async_ridx(AsyncQueueSource_io_async_ridx),
    .io_async_widx(AsyncQueueSource_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSource_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSource_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSource_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSource_io_async_safe_sink_reset_n)
  );
  assign _T_2 = ~io_ctrl_dmactive; // @[Debug.scala 658:37:freechips.rocketchip.system.DefaultRV32Config.fir@106014.4]
  assign _T_1 = dmactiveAckSync_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@106012.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@106013.4]
  assign _T_3 = ~_T_1; // @[Debug.scala 658:57:freechips.rocketchip.system.DefaultRV32Config.fir@106015.4]
  assign auto_asource_out_a_mem_0_opcode = asource_auto_out_a_mem_0_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_mem_0_address = asource_auto_out_a_mem_0_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_mem_0_mask = asource_auto_out_a_mem_0_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_mem_0_data = asource_auto_out_a_mem_0_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_widx = asource_auto_out_a_widx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_safe_widx_valid = asource_auto_out_a_safe_widx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_a_safe_source_reset_n = asource_auto_out_a_safe_source_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_d_ridx = asource_auto_out_d_ridx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_d_safe_ridx_valid = asource_auto_out_d_safe_ridx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_asource_out_d_safe_sink_reset_n = asource_auto_out_d_safe_sink_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign auto_intsource_out_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106003.4]
  assign io_dmi_req_ready = dmi2tl_io_dmi_req_ready; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign io_dmi_resp_valid = dmi2tl_io_dmi_resp_valid; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign io_dmi_resp_bits_data = dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign io_dmi_resp_bits_resp = dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset; // @[Debug.scala 660:15:freechips.rocketchip.system.DefaultRV32Config.fir@106018.4]
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 660:15:freechips.rocketchip.system.DefaultRV32Config.fir@106018.4]
  assign io_innerCtrl_mem_0_resumereq = AsyncQueueSource_io_async_mem_0_resumereq; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106032.4]
  assign io_innerCtrl_mem_0_ackhavereset = AsyncQueueSource_io_async_mem_0_ackhavereset; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106032.4]
  assign io_innerCtrl_mem_0_hrmask_0 = AsyncQueueSource_io_async_mem_0_hrmask_0; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106032.4]
  assign io_innerCtrl_widx = AsyncQueueSource_io_async_widx; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106030.4]
  assign io_innerCtrl_safe_widx_valid = AsyncQueueSource_io_async_safe_widx_valid; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106028.4]
  assign io_innerCtrl_safe_source_reset_n = AsyncQueueSource_io_async_safe_source_reset_n; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106027.4]
  assign dmiXbar_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105963.4]
  assign dmiXbar_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105964.4]
  assign dmiXbar_auto_in_a_valid = dmi2tl_auto_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_in_a_bits_opcode = dmi2tl_auto_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_in_a_bits_address = dmi2tl_auto_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_in_a_bits_mask = dmi2tl_auto_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_in_a_bits_data = dmi2tl_auto_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_in_d_ready = dmi2tl_auto_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmiXbar_auto_out_1_a_ready = dmOuter_auto_dmi_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmiXbar_auto_out_1_d_valid = dmOuter_auto_dmi_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmiXbar_auto_out_1_d_bits_opcode = dmOuter_auto_dmi_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmiXbar_auto_out_1_d_bits_data = dmOuter_auto_dmi_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmiXbar_auto_out_0_a_ready = dmiBypass_auto_node_in_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_valid = dmiBypass_auto_node_in_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_opcode = dmiBypass_auto_node_in_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_param = dmiBypass_auto_node_in_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_size = dmiBypass_auto_node_in_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_source = dmiBypass_auto_node_in_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_sink = dmiBypass_auto_node_in_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_denied = dmiBypass_auto_node_in_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_data = dmiBypass_auto_node_in_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiXbar_auto_out_0_d_bits_corrupt = dmiBypass_auto_node_in_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmi2tl_auto_out_a_ready = dmiXbar_auto_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmi2tl_auto_out_d_valid = dmiXbar_auto_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmi2tl_auto_out_d_bits_denied = dmiXbar_auto_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmi2tl_auto_out_d_bits_data = dmiXbar_auto_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmi2tl_auto_out_d_bits_corrupt = dmiXbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@106000.4]
  assign dmi2tl_io_dmi_req_valid = io_dmi_req_valid; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign dmi2tl_io_dmi_req_bits_addr = io_dmi_req_bits_addr; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign dmi2tl_io_dmi_req_bits_data = io_dmi_req_bits_data; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign dmi2tl_io_dmi_req_bits_op = io_dmi_req_bits_op; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign dmi2tl_io_dmi_resp_ready = io_dmi_resp_ready; // @[Debug.scala 655:43:freechips.rocketchip.system.DefaultRV32Config.fir@106007.4]
  assign dmOuter_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105977.4]
  assign dmOuter_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105978.4]
  assign dmOuter_auto_dmi_in_a_valid = dmiXbar_auto_out_1_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_auto_dmi_in_a_bits_opcode = dmiXbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_auto_dmi_in_a_bits_address = dmiXbar_auto_out_1_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_auto_dmi_in_a_bits_mask = dmiXbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_auto_dmi_in_a_bits_data = dmiXbar_auto_out_1_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_auto_dmi_in_d_ready = dmiXbar_auto_out_1_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105999.4]
  assign dmOuter_io_ctrl_dmactiveAck = dmactiveAckSync_io_q; // @[Debug.scala 660:15:freechips.rocketchip.system.DefaultRV32Config.fir@106018.4 Debug.scala 661:42:freechips.rocketchip.system.DefaultRV32Config.fir@106019.4]
  assign dmOuter_io_innerCtrl_ready = AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@106025.4]
  assign dmOuter_io_hgDebugInt_0 = io_hgDebugInt_0; // @[Debug.scala 663:36:freechips.rocketchip.system.DefaultRV32Config.fir@106033.4]
  assign intsource_auto_in_0 = dmOuter_auto_int_out_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106001.4]
  assign dmiBypass_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105990.4]
  assign dmiBypass_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105991.4]
  assign dmiBypass_auto_node_out_out_a_ready = asource_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_valid = asource_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_opcode = asource_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_param = asource_auto_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_size = asource_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_source = asource_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_sink = asource_auto_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_denied = asource_auto_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_data = asource_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_out_out_d_bits_corrupt = asource_auto_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign dmiBypass_auto_node_in_in_a_valid = dmiXbar_auto_out_0_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_auto_node_in_in_a_bits_opcode = dmiXbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_auto_node_in_in_a_bits_address = dmiXbar_auto_out_0_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_auto_node_in_in_a_bits_mask = dmiXbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_auto_node_in_in_a_bits_data = dmiXbar_auto_out_0_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_auto_node_in_in_d_ready = dmiXbar_auto_out_0_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@105998.4]
  assign dmiBypass_io_bypass = _T_2 | _T_3; // @[Debug.scala 658:34:freechips.rocketchip.system.DefaultRV32Config.fir@106017.4]
  assign asource_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105996.4]
  assign asource_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105997.4]
  assign asource_auto_in_a_valid = dmiBypass_auto_node_out_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_in_a_bits_opcode = dmiBypass_auto_node_out_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_in_a_bits_address = dmiBypass_auto_node_out_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_in_a_bits_mask = dmiBypass_auto_node_out_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_in_a_bits_data = dmiBypass_auto_node_out_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_in_d_ready = dmiBypass_auto_node_out_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@106002.4]
  assign asource_auto_out_a_ridx = auto_asource_out_a_ridx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_a_safe_ridx_valid = auto_asource_out_a_safe_ridx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_a_safe_sink_reset_n = auto_asource_out_a_safe_sink_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_mem_0_opcode = auto_asource_out_d_mem_0_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_mem_0_size = auto_asource_out_d_mem_0_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_mem_0_source = auto_asource_out_d_mem_0_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_mem_0_data = auto_asource_out_d_mem_0_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_widx = auto_asource_out_d_widx; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_safe_widx_valid = auto_asource_out_d_safe_widx_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign asource_auto_out_d_safe_source_reset_n = auto_asource_out_d_safe_source_reset_n; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@106004.4]
  assign dmactiveAckSync_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106009.4]
  assign dmactiveAckSync_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106010.4]
  assign dmactiveAckSync_io_d = io_ctrl_dmactiveAck; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@106011.4]
  assign AsyncQueueSource_clock = io_dmi_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106021.4]
  assign AsyncQueueSource_reset = io_dmi_reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@106022.4]
  assign AsyncQueueSource_io_enq_valid = dmOuter_io_innerCtrl_valid; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@106024.4]
  assign AsyncQueueSource_io_enq_bits_resumereq = dmOuter_io_innerCtrl_bits_resumereq; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@106023.4]
  assign AsyncQueueSource_io_enq_bits_ackhavereset = dmOuter_io_innerCtrl_bits_ackhavereset; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@106023.4]
  assign AsyncQueueSource_io_enq_bits_hrmask_0 = dmOuter_io_innerCtrl_bits_hrmask_0; // @[AsyncQueue.scala 217:19:freechips.rocketchip.system.DefaultRV32Config.fir@106023.4]
  assign AsyncQueueSource_io_async_ridx = io_innerCtrl_ridx; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106031.4]
  assign AsyncQueueSource_io_async_safe_ridx_valid = io_innerCtrl_safe_ridx_valid; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106029.4]
  assign AsyncQueueSource_io_async_safe_sink_reset_n = io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 662:20:freechips.rocketchip.system.DefaultRV32Config.fir@106026.4]
endmodule
