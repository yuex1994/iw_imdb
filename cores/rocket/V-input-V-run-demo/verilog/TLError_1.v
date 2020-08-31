module TLError_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102942.2]
  input          clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102943.4]
  input          reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102944.4]
  output         auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  input          auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  input  [2:0]   auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  input  [127:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  input  [3:0]   auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  input          auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output         auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output [2:0]   auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output [1:0]   auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output [1:0]   auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output         auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output         auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output         auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output [31:0]  auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
  output         auto_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102945.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [127:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
  reg  idle; // @[Error.scala 46:23:freechips.rocketchip.system.DefaultRV32Config.fir@102978.4]
  reg  _T_116; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@103178.4]
  wire  _T_117; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@103179.4]
  wire  da_valid; // @[Error.scala 53:35:freechips.rocketchip.system.DefaultRV32Config.fir@103038.4]
  wire [1:0] _T_123; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@103185.4]
  wire [2:0] _T_124; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@103186.4]
  wire [1:0] _T_126; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@103188.4]
  wire [2:0] _T_128; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@103190.4]
  wire [1:0] _T_130; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@103192.4]
  reg  _T_176_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@103259.4]
  wire  _T_179_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@103264.4]
  wire  da_ready; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@103267.4]
  reg  _T_27; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@103010.4]
  wire [2:0] _GEN_4; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire [2:0] _GEN_5; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire [2:0] _GEN_6; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire [2:0] _GEN_7; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire [2:0] _GEN_8; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire [2:0] da_bits_opcode; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  wire  _T_19; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@103002.4]
  wire  _T_29; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@103012.4]
  wire  da_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@103013.4]
  wire  _T_36; // @[Error.scala 51:18:freechips.rocketchip.system.DefaultRV32Config.fir@103024.4]
  wire  _T_38; // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103026.4]
  wire  _T_39; // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103027.4]
  wire  _T_89; // @[Error.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@103108.4]
  wire  _T_90; // @[Error.scala 72:23:freechips.rocketchip.system.DefaultRV32Config.fir@103109.4]
  wire  _GEN_12; // @[Error.scala 72:52:freechips.rocketchip.system.DefaultRV32Config.fir@103110.4]
  wire  _T_118; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@103180.4]
  wire  _T_135; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@103199.4]
  wire  _T_153; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@103225.4]
  wire  _T_155; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@103227.4]
  wire  _T_157; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103229.4]
  wire  _T_158; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103230.4]
  wire  _T_162; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@103238.4]
  wire  _T_164; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103240.4]
  wire  _T_165; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103241.4]
  wire  _T_177_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@103260.4]
  wire  _T_184; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103271.4]
  wire  in_d_valid; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@103275.4]
  wire  _T_171; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@103251.4]
  wire  _T_173; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@103253.4]
  wire [42:0] _T_206; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103297.4]
  wire [42:0] _T_207; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103298.4]
  TLMonitor_42 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@102952.4]
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
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_117 = ~_T_116; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@103179.4]
  assign da_valid = auto_in_a_valid & idle; // @[Error.scala 53:35:freechips.rocketchip.system.DefaultRV32Config.fir@103038.4]
  assign _T_123 = {da_valid,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@103185.4]
  assign _T_124 = {_T_123, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@103186.4]
  assign _T_126 = _T_123 | _T_124[1:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@103188.4]
  assign _T_128 = {_T_126, 1'h0}; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@103190.4]
  assign _T_130 = ~_T_128[1:0]; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@103192.4]
  assign _T_179_1 = _T_117 ? _T_130[1] : _T_176_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@103264.4]
  assign da_ready = auto_in_d_ready & _T_179_1; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@103267.4]
  assign _GEN_4 = 3'h2 == auto_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign _GEN_5 = 3'h3 == auto_in_a_bits_opcode ? 3'h1 : _GEN_4; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign _GEN_6 = 3'h4 == auto_in_a_bits_opcode ? 3'h1 : _GEN_5; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign _GEN_7 = 3'h5 == auto_in_a_bits_opcode ? 3'h2 : _GEN_6; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign _GEN_8 = 3'h6 == auto_in_a_bits_opcode ? 3'h4 : _GEN_7; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign da_bits_opcode = 3'h7 == auto_in_a_bits_opcode ? 3'h4 : _GEN_8; // @[Error.scala 55:21:freechips.rocketchip.system.DefaultRV32Config.fir@103050.4]
  assign _T_19 = da_ready & da_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@103002.4]
  assign _T_29 = _T_27 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@103012.4]
  assign da_first = ~_T_27; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@103013.4]
  assign _T_36 = idle | da_first; // @[Error.scala 51:18:freechips.rocketchip.system.DefaultRV32Config.fir@103024.4]
  assign _T_38 = _T_36 | reset; // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103026.4]
  assign _T_39 = ~_T_38; // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103027.4]
  assign _T_89 = da_bits_opcode == 3'h4; // @[Error.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@103108.4]
  assign _T_90 = _T_19 & _T_89; // @[Error.scala 72:23:freechips.rocketchip.system.DefaultRV32Config.fir@103109.4]
  assign _GEN_12 = _T_90 ? 1'h0 : idle; // @[Error.scala 72:52:freechips.rocketchip.system.DefaultRV32Config.fir@103110.4]
  assign _T_118 = _T_117 & auto_in_d_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@103180.4]
  assign _T_135 = _T_130[1] & da_valid; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@103199.4]
  assign _T_153 = ~da_valid; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@103225.4]
  assign _T_155 = _T_153 | _T_135; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@103227.4]
  assign _T_157 = _T_155 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103229.4]
  assign _T_158 = ~_T_157; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103230.4]
  assign _T_162 = _T_153 | da_valid; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@103238.4]
  assign _T_164 = _T_162 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103240.4]
  assign _T_165 = ~_T_164; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103241.4]
  assign _T_177_1 = _T_117 ? _T_135 : _T_176_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@103260.4]
  assign _T_184 = _T_176_1 & da_valid; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103271.4]
  assign in_d_valid = _T_117 ? da_valid : _T_184; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@103275.4]
  assign _T_171 = auto_in_d_ready & in_d_valid; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@103251.4]
  assign _T_173 = _T_116 - _T_171; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@103253.4]
  assign _T_206 = {da_bits_opcode,2'h0,3'h4,2'h1,32'h0,da_bits_opcode[0]}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103297.4]
  assign _T_207 = _T_177_1 ? _T_206 : 43'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@103298.4]
  assign auto_in_a_ready = da_ready & idle; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_valid = _T_117 ? da_valid : _T_184; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_opcode = _T_207[42:40]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_param = _T_207[39:38]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_size = _T_207[37:36]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_source = _T_207[35]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_sink = _T_207[34]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_denied = _T_207[33]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_data = _T_207[32:1]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign auto_in_d_bits_corrupt = _T_207[0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@102975.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102953.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@102954.4]
  assign TLMonitor_io_in_a_ready = da_ready & idle; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102974.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102973.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102972.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102968.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102967.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102964.4]
  assign TLMonitor_io_in_d_valid = _T_117 ? da_valid : _T_184; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102963.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_207[42:40]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102962.4]
  assign TLMonitor_io_in_d_bits_param = _T_207[39:38]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102961.4]
  assign TLMonitor_io_in_d_bits_size = _T_207[37:36]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102960.4]
  assign TLMonitor_io_in_d_bits_source = _T_207[35]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102959.4]
  assign TLMonitor_io_in_d_bits_sink = _T_207[34]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102958.4]
  assign TLMonitor_io_in_d_bits_denied = _T_207[33]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102957.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_207[0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@102955.4]
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
  idle = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_116 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_176_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_27 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    idle <= reset | _GEN_12;
    if (reset) begin
      _T_116 <= 1'h0;
    end else if (_T_118) begin
      _T_116 <= 1'h0;
    end else begin
      _T_116 <= _T_173;
    end
    if (reset) begin
      _T_176_1 <= 1'h0;
    end else if (_T_117) begin
      _T_176_1 <= _T_135;
    end
    if (reset) begin
      _T_27 <= 1'h0;
    end else if (_T_19) begin
      if (da_first) begin
        _T_27 <= 1'h0;
      end else begin
        _T_27 <= _T_29;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_39) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Error.scala:51 assert (idle || da_first) // we only send Grant, never GrantData => simplified flow control below\n"); // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103029.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_39) begin
          $fatal; // @[Error.scala 51:12:freechips.rocketchip.system.DefaultRV32Config.fir@103030.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103232.6]
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
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@103233.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_165) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103243.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_165) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@103244.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
