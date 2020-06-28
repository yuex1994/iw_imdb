module TLXbar_7( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96320.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96321.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96322.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [8:0]  auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_1_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_out_1_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [6:0]  auto_out_1_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [3:0]  auto_out_1_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [31:0] auto_out_1_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_out_1_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_1_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [31:0] auto_out_1_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_out_0_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [8:0]  auto_out_0_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [3:0]  auto_out_0_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output [31:0] auto_out_0_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  output        auto_out_0_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [1:0]  auto_out_0_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input  [31:0] auto_out_0_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
  input         auto_out_0_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96323.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
  wire [9:0] _T_15; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96599.4]
  wire [9:0] _T_17; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96601.4]
  wire  _T_18; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96602.4]
  wire [8:0] _T_19; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96603.4]
  wire [9:0] _T_20; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96604.4]
  wire [9:0] _T_22; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96606.4]
  wire  _T_23; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96607.4]
  wire [8:0] _T_24; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96608.4]
  wire [9:0] _T_25; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96609.4]
  wire [9:0] _T_27; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96611.4]
  wire  _T_28; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96612.4]
  wire [8:0] _T_29; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96613.4]
  wire [9:0] _T_30; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96614.4]
  wire [9:0] _T_32; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96616.4]
  wire  _T_33; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96617.4]
  wire [8:0] _T_34; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96618.4]
  wire [9:0] _T_35; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96619.4]
  wire [9:0] _T_37; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96621.4]
  wire  _T_38; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96622.4]
  wire [8:0] _T_39; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96623.4]
  wire [9:0] _T_40; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96624.4]
  wire [9:0] _T_42; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96626.4]
  wire  _T_43; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96627.4]
  wire  _T_44; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96628.4]
  wire  _T_45; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96629.4]
  wire  _T_46; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96630.4]
  wire  _T_47; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96631.4]
  wire  _T_48; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96632.4]
  wire [8:0] _T_50; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96634.4]
  wire [9:0] _T_51; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96635.4]
  wire [9:0] _T_53; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96637.4]
  wire  _T_54; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96638.4]
  wire [8:0] _T_55; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96639.4]
  wire [9:0] _T_56; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96640.4]
  wire [9:0] _T_58; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96642.4]
  wire  _T_59; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96643.4]
  wire  _T_60; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96644.4]
  wire  _T_128; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@96732.4]
  wire  _T_129; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@96733.4]
  reg  _T_185; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@97005.4]
  wire  _T_186; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@97006.4]
  wire  _T_187; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@97007.4]
  wire [1:0] _T_192; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@97012.4]
  reg [1:0] _T_198; // @[Arbiter.scala 22:23:freechips.rocketchip.system.DefaultRV32Config.fir@97022.4]
  wire [1:0] _T_199; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@97023.4]
  wire [1:0] _T_200; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@97024.4]
  wire [3:0] _T_201; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@97025.4]
  wire [3:0] _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@97027.4]
  wire [3:0] _T_203; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@97027.4]
  wire [3:0] _T_206; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@97030.4]
  wire [3:0] _GEN_2; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@97031.4]
  wire [3:0] _T_207; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@97031.4]
  wire [1:0] _T_210; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@97034.4]
  wire [1:0] _T_211; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@97035.4]
  wire  _T_212; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@97036.4]
  wire  _T_213; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@97037.4]
  wire [1:0] _T_214; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@97039.6]
  wire [2:0] _T_215; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@97040.6]
  wire [1:0] _T_217; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@97042.6]
  wire  _T_223; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@97052.4]
  wire  _T_224; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@97053.4]
  wire  _T_230; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@97063.4]
  wire  _T_232; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@97065.4]
  wire  _T_235; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@97068.4]
  wire  _T_236; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@97069.4]
  wire  _T_239; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97072.4]
  wire  _T_240; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97073.4]
  wire  _T_241; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@97078.4]
  wire  _T_242; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@97079.4]
  wire  _T_244; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@97081.4]
  wire  _T_246; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97083.4]
  wire  _T_247; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97084.4]
  wire  _T_251; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@97092.4]
  wire  _T_253; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97094.4]
  wire  _T_254; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97095.4]
  reg  _T_265_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@97113.4]
  wire  _T_266_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@97114.4]
  reg  _T_265_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@97113.4]
  wire  _T_266_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@97114.4]
  wire  _T_272; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97124.4]
  wire  _T_273; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97125.4]
  wire  _T_274; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97126.4]
  wire  _T_276; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@97129.4]
  wire  _T_260; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@97105.4]
  wire  _T_262; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@97107.4]
  wire  _T_268_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@97118.4]
  wire  _T_268_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@97118.4]
  wire [42:0] _T_287; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97143.4]
  wire [42:0] _T_288; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97144.4]
  wire [42:0] _T_295; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97151.4]
  wire [42:0] _T_296; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97152.4]
  wire [42:0] _T_297; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97153.4]
  TLMonitor_39 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@96330.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_15 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96599.4]
  assign _T_17 = $signed(_T_15) & 10'sh1c0; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96601.4]
  assign _T_18 = $signed(_T_17) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96602.4]
  assign _T_19 = auto_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96603.4]
  assign _T_20 = {1'b0,$signed(_T_19)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96604.4]
  assign _T_22 = $signed(_T_20) & 10'sh1fc; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96606.4]
  assign _T_23 = $signed(_T_22) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96607.4]
  assign _T_24 = auto_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96608.4]
  assign _T_25 = {1'b0,$signed(_T_24)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96609.4]
  assign _T_27 = $signed(_T_25) & 10'sh1e8; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96611.4]
  assign _T_28 = $signed(_T_27) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96612.4]
  assign _T_29 = auto_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96613.4]
  assign _T_30 = {1'b0,$signed(_T_29)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96614.4]
  assign _T_32 = $signed(_T_30) & 10'sh1e0; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96616.4]
  assign _T_33 = $signed(_T_32) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96617.4]
  assign _T_34 = auto_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96618.4]
  assign _T_35 = {1'b0,$signed(_T_34)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96619.4]
  assign _T_37 = $signed(_T_35) & 10'sh180; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96621.4]
  assign _T_38 = $signed(_T_37) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96622.4]
  assign _T_39 = auto_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96623.4]
  assign _T_40 = {1'b0,$signed(_T_39)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96624.4]
  assign _T_42 = $signed(_T_40) & 10'sh100; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96626.4]
  assign _T_43 = $signed(_T_42) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96627.4]
  assign _T_44 = _T_18 | _T_23; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96628.4]
  assign _T_45 = _T_44 | _T_28; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96629.4]
  assign _T_46 = _T_45 | _T_33; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96630.4]
  assign _T_47 = _T_46 | _T_38; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96631.4]
  assign _T_48 = _T_47 | _T_43; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96632.4]
  assign _T_50 = auto_in_a_bits_address ^ 9'h40; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96634.4]
  assign _T_51 = {1'b0,$signed(_T_50)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96635.4]
  assign _T_53 = $signed(_T_51) & 10'sh1fc; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96637.4]
  assign _T_54 = $signed(_T_53) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96638.4]
  assign _T_55 = auto_in_a_bits_address ^ 9'h50; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@96639.4]
  assign _T_56 = {1'b0,$signed(_T_55)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@96640.4]
  assign _T_58 = $signed(_T_56) & 10'sh1f8; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@96642.4]
  assign _T_59 = $signed(_T_58) == 10'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@96643.4]
  assign _T_60 = _T_54 | _T_59; // @[Xbar.scala 357:92:freechips.rocketchip.system.DefaultRV32Config.fir@96644.4]
  assign _T_128 = _T_48 & auto_out_0_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@96732.4]
  assign _T_129 = _T_60 & auto_out_1_a_ready; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@96733.4]
  assign _T_186 = ~_T_185; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@97006.4]
  assign _T_187 = _T_186 & auto_in_d_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@97007.4]
  assign _T_192 = {auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@97012.4]
  assign _T_199 = ~_T_198; // @[Arbiter.scala 23:30:freechips.rocketchip.system.DefaultRV32Config.fir@97023.4]
  assign _T_200 = _T_192 & _T_199; // @[Arbiter.scala 23:28:freechips.rocketchip.system.DefaultRV32Config.fir@97024.4]
  assign _T_201 = {_T_200,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@97025.4]
  assign _GEN_1 = {{1'd0}, _T_201[3:1]}; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@97027.4]
  assign _T_203 = _T_201 | _GEN_1; // @[package.scala 226:43:freechips.rocketchip.system.DefaultRV32Config.fir@97027.4]
  assign _T_206 = {_T_198, 2'h0}; // @[Arbiter.scala 24:66:freechips.rocketchip.system.DefaultRV32Config.fir@97030.4]
  assign _GEN_2 = {{1'd0}, _T_203[3:1]}; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@97031.4]
  assign _T_207 = _GEN_2 | _T_206; // @[Arbiter.scala 24:58:freechips.rocketchip.system.DefaultRV32Config.fir@97031.4]
  assign _T_210 = _T_207[3:2] & _T_207[1:0]; // @[Arbiter.scala 25:39:freechips.rocketchip.system.DefaultRV32Config.fir@97034.4]
  assign _T_211 = ~_T_210; // @[Arbiter.scala 25:18:freechips.rocketchip.system.DefaultRV32Config.fir@97035.4]
  assign _T_212 = |_T_192; // @[Arbiter.scala 26:27:freechips.rocketchip.system.DefaultRV32Config.fir@97036.4]
  assign _T_213 = _T_187 & _T_212; // @[Arbiter.scala 26:18:freechips.rocketchip.system.DefaultRV32Config.fir@97037.4]
  assign _T_214 = _T_211 & _T_192; // @[Arbiter.scala 27:29:freechips.rocketchip.system.DefaultRV32Config.fir@97039.6]
  assign _T_215 = {_T_214, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@97040.6]
  assign _T_217 = _T_214 | _T_215[1:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@97042.6]
  assign _T_223 = _T_211[0] & auto_out_0_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@97052.4]
  assign _T_224 = _T_211[1] & auto_out_1_d_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@97053.4]
  assign _T_230 = _T_223 | _T_224; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@97063.4]
  assign _T_232 = ~_T_223; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@97065.4]
  assign _T_235 = ~_T_224; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@97068.4]
  assign _T_236 = _T_232 | _T_235; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@97069.4]
  assign _T_239 = _T_236 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97072.4]
  assign _T_240 = ~_T_239; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97073.4]
  assign _T_241 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@97078.4]
  assign _T_242 = ~_T_241; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@97079.4]
  assign _T_244 = _T_242 | _T_230; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@97081.4]
  assign _T_246 = _T_244 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97083.4]
  assign _T_247 = ~_T_246; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97084.4]
  assign _T_251 = _T_242 | _T_241; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@97092.4]
  assign _T_253 = _T_251 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97094.4]
  assign _T_254 = ~_T_253; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97095.4]
  assign _T_266_0 = _T_186 ? _T_223 : _T_265_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@97114.4]
  assign _T_266_1 = _T_186 ? _T_224 : _T_265_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@97114.4]
  assign _T_272 = _T_265_0 & auto_out_0_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97124.4]
  assign _T_273 = _T_265_1 & auto_out_1_d_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97125.4]
  assign _T_274 = _T_272 | _T_273; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97126.4]
  assign _T_276 = _T_186 ? _T_241 : _T_274; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@97129.4]
  assign _T_260 = auto_in_d_ready & _T_276; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@97105.4]
  assign _T_262 = _T_185 - _T_260; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@97107.4]
  assign _T_268_0 = _T_186 ? _T_211[0] : _T_265_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@97118.4]
  assign _T_268_1 = _T_186 ? _T_211[1] : _T_265_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@97118.4]
  assign _T_287 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97143.4]
  assign _T_288 = _T_266_0 ? _T_287 : 43'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97144.4]
  assign _T_295 = {auto_out_1_d_bits_opcode,2'h0,3'h4,2'h0,auto_out_1_d_bits_data,1'h0}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97151.4]
  assign _T_296 = _T_266_1 ? _T_295 : 43'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97152.4]
  assign _T_297 = _T_288 | _T_296; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@97153.4]
  assign auto_in_a_ready = _T_128 | _T_129; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@96359.4]
  assign auto_in_d_valid = _T_186 ? _T_241 : _T_274; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@96359.4]
  assign auto_in_d_bits_denied = _T_297[33]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@96359.4]
  assign auto_in_d_bits_data = _T_297[32:1]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@96359.4]
  assign auto_in_d_bits_corrupt = _T_297[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@96359.4]
  assign auto_out_1_a_valid = auto_in_a_valid & _T_60; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[6:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_1_d_ready = auto_in_d_ready & _T_268_1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96358.4]
  assign auto_out_0_a_valid = auto_in_a_valid & _T_48; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign auto_out_0_d_ready = auto_in_d_ready & _T_268_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@96357.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96331.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@96332.4]
  assign TLMonitor_io_in_a_ready = _T_128 | _T_129; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96352.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96351.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96350.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96346.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96345.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96342.4]
  assign TLMonitor_io_in_d_valid = _T_186 ? _T_241 : _T_274; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96341.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_297[42:40]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96340.4]
  assign TLMonitor_io_in_d_bits_param = _T_297[39:38]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96339.4]
  assign TLMonitor_io_in_d_bits_size = _T_297[37:36]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96338.4]
  assign TLMonitor_io_in_d_bits_sink = _T_297[34]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96336.4]
  assign TLMonitor_io_in_d_bits_denied = _T_297[33]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96335.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_297[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@96333.4]
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
  _T_185 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_198 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  _T_265_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_265_1 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_185 <= 1'h0;
    end else if (_T_187) begin
      _T_185 <= 1'h0;
    end else begin
      _T_185 <= _T_262;
    end
    if (reset) begin
      _T_198 <= 2'h3;
    end else if (_T_213) begin
      _T_198 <= _T_217;
    end
    if (reset) begin
      _T_265_0 <= 1'h0;
    end else if (_T_186) begin
      _T_265_0 <= _T_223;
    end
    if (reset) begin
      _T_265_1 <= 1'h0;
    end else if (_T_186) begin
      _T_265_1 <= _T_224;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_240) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97075.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_240) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@97076.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_247) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97086.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_247) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@97087.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97097.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_254) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@97098.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
