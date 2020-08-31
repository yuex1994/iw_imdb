module TLWidthWidget_4( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39225.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39226.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39227.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [3:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [63:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [3:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [63:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [3:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [3:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39228.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [3:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [3:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
  wire  Repeater_clock; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_reset; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_repeat; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_ready; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_valid; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [2:0] Repeater_io_enq_bits_opcode; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [2:0] Repeater_io_enq_bits_param; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [3:0] Repeater_io_enq_bits_size; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [3:0] Repeater_io_enq_bits_source; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [31:0] Repeater_io_enq_bits_address; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_bufferable; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_modifiable; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_readalloc; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_writealloc; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_privileged; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_secure; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_user_amba_prot_fetch; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [7:0] Repeater_io_enq_bits_mask; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [63:0] Repeater_io_enq_bits_data; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_enq_bits_corrupt; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_ready; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_valid; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [2:0] Repeater_io_deq_bits_opcode; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [2:0] Repeater_io_deq_bits_param; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [3:0] Repeater_io_deq_bits_size; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [3:0] Repeater_io_deq_bits_source; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [31:0] Repeater_io_deq_bits_address; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_bufferable; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_modifiable; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_readalloc; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_writealloc; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_privileged; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_secure; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_user_amba_prot_fetch; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [7:0] Repeater_io_deq_bits_mask; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [63:0] Repeater_io_deq_bits_data; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire  Repeater_io_deq_bits_corrupt; // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
  wire [63:0] _T_6; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@39283.4]
  wire [2:0] _T_3_bits_opcode; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  wire  _T_8; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@39286.4]
  wire [3:0] _T_3_bits_size; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  wire [17:0] _T_10; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@39288.4]
  wire [2:0] _T_12; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@39290.4]
  reg  _T_14; // @[WidthWidget.scala 90:26:freechips.rocketchip.system.DefaultRV32Config.fir@39292.4]
  wire  _T_16; // @[WidthWidget.scala 92:25:freechips.rocketchip.system.DefaultRV32Config.fir@39294.4]
  wire  _T_17; // @[WidthWidget.scala 92:38:freechips.rocketchip.system.DefaultRV32Config.fir@39295.4]
  wire  _T_18; // @[WidthWidget.scala 92:35:freechips.rocketchip.system.DefaultRV32Config.fir@39296.4]
  wire  _T_3_valid; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39279.4]
  wire  _T_19; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39297.4]
  wire  _T_21; // @[WidthWidget.scala 95:24:freechips.rocketchip.system.DefaultRV32Config.fir@39300.6]
  wire [31:0] _T_3_bits_address; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  wire  _T_23; // @[WidthWidget.scala 111:24:freechips.rocketchip.system.DefaultRV32Config.fir@39307.4]
  wire [7:0] _T_3_bits_mask; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  wire [17:0] _T_33; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@39341.4]
  wire [2:0] _T_35; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@39343.4]
  reg  _T_37; // @[WidthWidget.scala 32:27:freechips.rocketchip.system.DefaultRV32Config.fir@39345.4]
  wire  _T_39; // @[WidthWidget.scala 34:26:freechips.rocketchip.system.DefaultRV32Config.fir@39347.4]
  wire  _T_40; // @[WidthWidget.scala 34:39:freechips.rocketchip.system.DefaultRV32Config.fir@39348.4]
  wire  _T_41; // @[WidthWidget.scala 34:36:freechips.rocketchip.system.DefaultRV32Config.fir@39349.4]
  wire  _T_43; // @[WidthWidget.scala 35:63:freechips.rocketchip.system.DefaultRV32Config.fir@39351.4]
  wire  _T_44; // @[WidthWidget.scala 35:72:freechips.rocketchip.system.DefaultRV32Config.fir@39352.4]
  wire  _T_45; // @[WidthWidget.scala 35:47:freechips.rocketchip.system.DefaultRV32Config.fir@39353.4]
  reg  _T_50; // @[WidthWidget.scala 37:32:freechips.rocketchip.system.DefaultRV32Config.fir@39358.4]
  wire  _T_51; // @[WidthWidget.scala 39:36:freechips.rocketchip.system.DefaultRV32Config.fir@39359.4]
  wire  _T_55; // @[WidthWidget.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@39371.4]
  wire  _T_56; // @[WidthWidget.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@39372.4]
  wire  _T_52; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39360.4]
  wire  _T_54; // @[WidthWidget.scala 42:24:freechips.rocketchip.system.DefaultRV32Config.fir@39363.6]
  reg [31:0] _T_60_0; // @[WidthWidget.scala 52:24:freechips.rocketchip.system.DefaultRV32Config.fir@39388.4]
  wire [31:0] _T_61; // @[WidthWidget.scala 54:81:freechips.rocketchip.system.DefaultRV32Config.fir@39389.4]
  wire  _T_65; // @[WidthWidget.scala 55:25:freechips.rocketchip.system.DefaultRV32Config.fir@39393.4]
  TLMonitor_14 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@39235.4]
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
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  Repeater Repeater ( // @[Repeater.scala 35:26:freechips.rocketchip.system.DefaultRV32Config.fir@39270.4]
    .clock(Repeater_clock),
    .reset(Repeater_reset),
    .io_repeat(Repeater_io_repeat),
    .io_enq_ready(Repeater_io_enq_ready),
    .io_enq_valid(Repeater_io_enq_valid),
    .io_enq_bits_opcode(Repeater_io_enq_bits_opcode),
    .io_enq_bits_param(Repeater_io_enq_bits_param),
    .io_enq_bits_size(Repeater_io_enq_bits_size),
    .io_enq_bits_source(Repeater_io_enq_bits_source),
    .io_enq_bits_address(Repeater_io_enq_bits_address),
    .io_enq_bits_user_amba_prot_bufferable(Repeater_io_enq_bits_user_amba_prot_bufferable),
    .io_enq_bits_user_amba_prot_modifiable(Repeater_io_enq_bits_user_amba_prot_modifiable),
    .io_enq_bits_user_amba_prot_readalloc(Repeater_io_enq_bits_user_amba_prot_readalloc),
    .io_enq_bits_user_amba_prot_writealloc(Repeater_io_enq_bits_user_amba_prot_writealloc),
    .io_enq_bits_user_amba_prot_privileged(Repeater_io_enq_bits_user_amba_prot_privileged),
    .io_enq_bits_user_amba_prot_secure(Repeater_io_enq_bits_user_amba_prot_secure),
    .io_enq_bits_user_amba_prot_fetch(Repeater_io_enq_bits_user_amba_prot_fetch),
    .io_enq_bits_mask(Repeater_io_enq_bits_mask),
    .io_enq_bits_data(Repeater_io_enq_bits_data),
    .io_enq_bits_corrupt(Repeater_io_enq_bits_corrupt),
    .io_deq_ready(Repeater_io_deq_ready),
    .io_deq_valid(Repeater_io_deq_valid),
    .io_deq_bits_opcode(Repeater_io_deq_bits_opcode),
    .io_deq_bits_param(Repeater_io_deq_bits_param),
    .io_deq_bits_size(Repeater_io_deq_bits_size),
    .io_deq_bits_source(Repeater_io_deq_bits_source),
    .io_deq_bits_address(Repeater_io_deq_bits_address),
    .io_deq_bits_user_amba_prot_bufferable(Repeater_io_deq_bits_user_amba_prot_bufferable),
    .io_deq_bits_user_amba_prot_modifiable(Repeater_io_deq_bits_user_amba_prot_modifiable),
    .io_deq_bits_user_amba_prot_readalloc(Repeater_io_deq_bits_user_amba_prot_readalloc),
    .io_deq_bits_user_amba_prot_writealloc(Repeater_io_deq_bits_user_amba_prot_writealloc),
    .io_deq_bits_user_amba_prot_privileged(Repeater_io_deq_bits_user_amba_prot_privileged),
    .io_deq_bits_user_amba_prot_secure(Repeater_io_deq_bits_user_amba_prot_secure),
    .io_deq_bits_user_amba_prot_fetch(Repeater_io_deq_bits_user_amba_prot_fetch),
    .io_deq_bits_mask(Repeater_io_deq_bits_mask),
    .io_deq_bits_data(Repeater_io_deq_bits_data),
    .io_deq_bits_corrupt(Repeater_io_deq_bits_corrupt)
  );
  assign _T_6 = {Repeater_io_deq_bits_data[63:32],auto_in_a_bits_data[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@39283.4]
  assign _T_3_bits_opcode = Repeater_io_deq_bits_opcode; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  assign _T_8 = ~_T_3_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@39286.4]
  assign _T_3_bits_size = Repeater_io_deq_bits_size; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  assign _T_10 = 18'h7 << _T_3_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@39288.4]
  assign _T_12 = ~_T_10[2:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@39290.4]
  assign _T_16 = _T_14 == _T_12[2]; // @[WidthWidget.scala 92:25:freechips.rocketchip.system.DefaultRV32Config.fir@39294.4]
  assign _T_17 = ~_T_8; // @[WidthWidget.scala 92:38:freechips.rocketchip.system.DefaultRV32Config.fir@39295.4]
  assign _T_18 = _T_16 | _T_17; // @[WidthWidget.scala 92:35:freechips.rocketchip.system.DefaultRV32Config.fir@39296.4]
  assign _T_3_valid = Repeater_io_deq_valid; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39279.4]
  assign _T_19 = auto_out_a_ready & _T_3_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39297.4]
  assign _T_21 = _T_14 + 1'h1; // @[WidthWidget.scala 95:24:freechips.rocketchip.system.DefaultRV32Config.fir@39300.6]
  assign _T_3_bits_address = Repeater_io_deq_bits_address; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  assign _T_23 = _T_3_bits_address[2] | _T_14; // @[WidthWidget.scala 111:24:freechips.rocketchip.system.DefaultRV32Config.fir@39307.4]
  assign _T_3_bits_mask = Repeater_io_deq_bits_mask; // @[WidthWidget.scala 146:25:freechips.rocketchip.system.DefaultRV32Config.fir@39277.4 WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39278.4]
  assign _T_33 = 18'h7 << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@39341.4]
  assign _T_35 = ~_T_33[2:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@39343.4]
  assign _T_39 = _T_37 == _T_35[2]; // @[WidthWidget.scala 34:26:freechips.rocketchip.system.DefaultRV32Config.fir@39347.4]
  assign _T_40 = ~auto_out_d_bits_opcode[0]; // @[WidthWidget.scala 34:39:freechips.rocketchip.system.DefaultRV32Config.fir@39348.4]
  assign _T_41 = _T_39 | _T_40; // @[WidthWidget.scala 34:36:freechips.rocketchip.system.DefaultRV32Config.fir@39349.4]
  assign _T_43 = _T_37 & _T_35[2]; // @[WidthWidget.scala 35:63:freechips.rocketchip.system.DefaultRV32Config.fir@39351.4]
  assign _T_44 = |_T_43; // @[WidthWidget.scala 35:72:freechips.rocketchip.system.DefaultRV32Config.fir@39352.4]
  assign _T_45 = ~_T_44; // @[WidthWidget.scala 35:47:freechips.rocketchip.system.DefaultRV32Config.fir@39353.4]
  assign _T_51 = auto_out_d_bits_corrupt | _T_50; // @[WidthWidget.scala 39:36:freechips.rocketchip.system.DefaultRV32Config.fir@39359.4]
  assign _T_55 = ~_T_41; // @[WidthWidget.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@39371.4]
  assign _T_56 = auto_in_d_ready | _T_55; // @[WidthWidget.scala 61:29:freechips.rocketchip.system.DefaultRV32Config.fir@39372.4]
  assign _T_52 = _T_56 & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39360.4]
  assign _T_54 = _T_37 + 1'h1; // @[WidthWidget.scala 42:24:freechips.rocketchip.system.DefaultRV32Config.fir@39363.6]
  assign _T_61 = _T_45 ? auto_out_d_bits_data : _T_60_0; // @[WidthWidget.scala 54:81:freechips.rocketchip.system.DefaultRV32Config.fir@39389.4]
  assign _T_65 = _T_52 & _T_55; // @[WidthWidget.scala 55:25:freechips.rocketchip.system.DefaultRV32Config.fir@39393.4]
  assign auto_in_a_ready = Repeater_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_valid = auto_out_d_valid & _T_41; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_data = {auto_out_d_bits_data,_T_61}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt | _T_50; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@39268.4]
  assign auto_out_a_valid = Repeater_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_opcode = Repeater_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_param = Repeater_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_size = Repeater_io_deq_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_source = Repeater_io_deq_bits_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_address = Repeater_io_deq_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_bufferable = Repeater_io_deq_bits_user_amba_prot_bufferable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_modifiable = Repeater_io_deq_bits_user_amba_prot_modifiable; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_readalloc = Repeater_io_deq_bits_user_amba_prot_readalloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_writealloc = Repeater_io_deq_bits_user_amba_prot_writealloc; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_privileged = Repeater_io_deq_bits_user_amba_prot_privileged; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_secure = Repeater_io_deq_bits_user_amba_prot_secure; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_user_amba_prot_fetch = Repeater_io_deq_bits_user_amba_prot_fetch; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_mask = _T_23 ? _T_3_bits_mask[7:4] : _T_3_bits_mask[3:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_data = _T_23 ? _T_6[63:32] : _T_6[31:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_a_bits_corrupt = Repeater_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign auto_out_d_ready = auto_in_d_ready | _T_55; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@39267.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39236.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39237.4]
  assign TLMonitor_io_in_a_ready = Repeater_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39264.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39263.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39262.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39261.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39260.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39259.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39258.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39250.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39248.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39247.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_41; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39246.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39245.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39244.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39243.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39242.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39241.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39240.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt | _T_50; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@39238.4]
  assign Repeater_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39271.4]
  assign Repeater_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39272.4]
  assign Repeater_io_repeat = ~_T_18; // @[Repeater.scala 36:24:freechips.rocketchip.system.DefaultRV32Config.fir@39273.4]
  assign Repeater_io_enq_valid = auto_in_a_valid; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39275.4]
  assign Repeater_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_param = auto_in_a_bits_param; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_size = auto_in_a_bits_size; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_source = auto_in_a_bits_source; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_address = auto_in_a_bits_address; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_mask = auto_in_a_bits_mask; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_data = auto_in_a_bits_data; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Repeater.scala 37:21:freechips.rocketchip.system.DefaultRV32Config.fir@39274.4]
  assign Repeater_io_deq_ready = auto_out_a_ready; // @[WidthWidget.scala 147:15:freechips.rocketchip.system.DefaultRV32Config.fir@39280.4]
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
  _T_14 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_37 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_50 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_60_0 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_14 <= 1'h0;
    end else if (_T_19) begin
      if (_T_18) begin
        _T_14 <= 1'h0;
      end else begin
        _T_14 <= _T_21;
      end
    end
    if (reset) begin
      _T_37 <= 1'h0;
    end else if (_T_52) begin
      if (_T_41) begin
        _T_37 <= 1'h0;
      end else begin
        _T_37 <= _T_54;
      end
    end
    if (reset) begin
      _T_50 <= 1'h0;
    end else if (_T_52) begin
      if (_T_41) begin
        _T_50 <= 1'h0;
      end else begin
        _T_50 <= _T_51;
      end
    end
    if (_T_65) begin
      if (_T_45) begin
        _T_60_0 <= auto_out_d_bits_data;
      end
    end
  end
endmodule
