module TLFragmenter_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62773.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62774.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62775.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [2:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [25:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [2:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [1:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [9:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [25:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [1:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [9:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
  input  [31:0] auto_out_d_bits_data // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62776.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [25:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
  wire  Repeater_clock; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_reset; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_repeat; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_full; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_enq_ready; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_enq_valid; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_enq_bits_opcode; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_enq_bits_param; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_enq_bits_size; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [4:0] Repeater_io_enq_bits_source; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [25:0] Repeater_io_enq_bits_address; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [3:0] Repeater_io_enq_bits_mask; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_enq_bits_corrupt; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_deq_ready; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_deq_valid; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_deq_bits_opcode; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_deq_bits_param; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [2:0] Repeater_io_deq_bits_size; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [4:0] Repeater_io_deq_bits_source; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [25:0] Repeater_io_deq_bits_address; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire [3:0] Repeater_io_deq_bits_mask; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  wire  Repeater_io_deq_bits_corrupt; // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
  reg [3:0] _T_2; // @[Fragmenter.scala 181:29:freechips.rocketchip.system.DefaultRV32Config.fir@62810.4]
  reg [2:0] _T_3; // @[Fragmenter.scala 182:24:freechips.rocketchip.system.DefaultRV32Config.fir@62811.4]
  reg  _T_4; // @[Fragmenter.scala 183:30:freechips.rocketchip.system.DefaultRV32Config.fir@62812.4]
  wire  _T_6; // @[Fragmenter.scala 185:29:freechips.rocketchip.system.DefaultRV32Config.fir@62814.4]
  wire  _T_7; // @[Fragmenter.scala 186:30:freechips.rocketchip.system.DefaultRV32Config.fir@62815.4]
  wire [3:0] _T_9; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@62817.4]
  wire [4:0] _T_12; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62820.4]
  wire [1:0] _T_14; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62822.4]
  wire  _T_28; // @[Fragmenter.scala 196:32:freechips.rocketchip.system.DefaultRV32Config.fir@62840.4]
  wire [5:0] _T_29; // @[Fragmenter.scala 198:47:freechips.rocketchip.system.DefaultRV32Config.fir@62841.4]
  wire [5:0] _GEN_7; // @[Fragmenter.scala 198:69:freechips.rocketchip.system.DefaultRV32Config.fir@62842.4]
  wire [5:0] _T_30; // @[Fragmenter.scala 198:69:freechips.rocketchip.system.DefaultRV32Config.fir@62842.4]
  wire [6:0] _T_31; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@62843.4]
  wire [6:0] _T_32; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@62844.4]
  wire [6:0] _T_33; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62845.4]
  wire [6:0] _T_34; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@62846.4]
  wire [6:0] _T_35; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@62847.4]
  wire  _T_38; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@62850.4]
  wire [3:0] _GEN_8; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62851.4]
  wire [3:0] _T_39; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62851.4]
  wire  _T_42; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@62854.4]
  wire [1:0] _T_43; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62855.4]
  wire [2:0] _T_46; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62858.4]
  wire  _T_52; // @[Fragmenter.scala 214:20:freechips.rocketchip.system.DefaultRV32Config.fir@62871.4]
  wire  _T_54; // @[Fragmenter.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@62873.4]
  wire  _T_55; // @[Fragmenter.scala 214:30:freechips.rocketchip.system.DefaultRV32Config.fir@62874.4]
  wire  _T_56; // @[Fragmenter.scala 215:35:freechips.rocketchip.system.DefaultRV32Config.fir@62875.4]
  wire  _T_47; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@62859.4]
  wire [3:0] _GEN_9; // @[Fragmenter.scala 201:55:freechips.rocketchip.system.DefaultRV32Config.fir@62861.6]
  wire [3:0] _T_49; // @[Fragmenter.scala 201:55:freechips.rocketchip.system.DefaultRV32Config.fir@62862.6]
  wire  _T_57; // @[Fragmenter.scala 216:39:freechips.rocketchip.system.DefaultRV32Config.fir@62877.4]
  wire  _T_79; // @[Fragmenter.scala 277:31:freechips.rocketchip.system.DefaultRV32Config.fir@62910.4]
  wire [2:0] _T_80; // @[Fragmenter.scala 277:24:freechips.rocketchip.system.DefaultRV32Config.fir@62911.4]
  wire [12:0] _T_82; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62913.4]
  wire [5:0] _T_84; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62915.4]
  wire [8:0] _T_86; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62917.4]
  wire [1:0] _T_88; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62919.4]
  wire  _T_90; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@62921.4]
  reg [3:0] _T_92; // @[Fragmenter.scala 283:29:freechips.rocketchip.system.DefaultRV32Config.fir@62923.4]
  wire  _T_93; // @[Fragmenter.scala 284:29:freechips.rocketchip.system.DefaultRV32Config.fir@62924.4]
  wire [3:0] _T_96; // @[Fragmenter.scala 285:79:freechips.rocketchip.system.DefaultRV32Config.fir@62927.4]
  wire [3:0] _T_97; // @[Fragmenter.scala 285:30:freechips.rocketchip.system.DefaultRV32Config.fir@62928.4]
  wire [3:0] _T_98; // @[Fragmenter.scala 286:28:freechips.rocketchip.system.DefaultRV32Config.fir@62929.4]
  wire [3:0] _T_101; // @[Fragmenter.scala 286:26:freechips.rocketchip.system.DefaultRV32Config.fir@62932.4]
  reg  _T_108; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@62939.4]
  wire  _GEN_5; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@62940.4]
  wire  _T_110; // @[Fragmenter.scala 289:23:freechips.rocketchip.system.DefaultRV32Config.fir@62944.4]
  wire  _T_1_a_valid; // @[Nodes.scala 388:84:freechips.rocketchip.system.DefaultRV32Config.fir@62806.4 Fragmenter.scala 295:15:freechips.rocketchip.system.DefaultRV32Config.fir@62953.4]
  wire  _T_111; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@62945.4]
  wire  _T_112; // @[Fragmenter.scala 294:31:freechips.rocketchip.system.DefaultRV32Config.fir@62949.4]
  wire  _T_113; // @[Fragmenter.scala 294:53:freechips.rocketchip.system.DefaultRV32Config.fir@62950.4]
  wire [5:0] _T_115; // @[Fragmenter.scala 296:65:freechips.rocketchip.system.DefaultRV32Config.fir@62954.4]
  wire [5:0] _T_116; // @[Fragmenter.scala 296:90:freechips.rocketchip.system.DefaultRV32Config.fir@62955.4]
  wire [5:0] _T_117; // @[Fragmenter.scala 296:88:freechips.rocketchip.system.DefaultRV32Config.fir@62956.4]
  wire [5:0] _GEN_10; // @[Fragmenter.scala 296:100:freechips.rocketchip.system.DefaultRV32Config.fir@62957.4]
  wire [5:0] _T_118; // @[Fragmenter.scala 296:100:freechips.rocketchip.system.DefaultRV32Config.fir@62957.4]
  wire [5:0] _T_119; // @[Fragmenter.scala 296:111:freechips.rocketchip.system.DefaultRV32Config.fir@62958.4]
  wire [5:0] _T_120; // @[Fragmenter.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@62959.4]
  wire [25:0] _GEN_11; // @[Fragmenter.scala 296:49:freechips.rocketchip.system.DefaultRV32Config.fir@62960.4]
  wire [5:0] _T_122; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62962.4]
  wire  _T_124; // @[Fragmenter.scala 301:17:freechips.rocketchip.system.DefaultRV32Config.fir@62966.4]
  wire  _T_126; // @[Fragmenter.scala 301:35:freechips.rocketchip.system.DefaultRV32Config.fir@62968.4]
  wire  _T_128; // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62970.4]
  wire  _T_129; // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62971.4]
  wire  _T_131; // @[Fragmenter.scala 304:53:freechips.rocketchip.system.DefaultRV32Config.fir@62978.4]
  wire  _T_132; // @[Fragmenter.scala 304:35:freechips.rocketchip.system.DefaultRV32Config.fir@62979.4]
  wire  _T_134; // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62981.4]
  wire  _T_135; // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62982.4]
  TLMonitor_24 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@62783.4]
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
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source)
  );
  Repeater_2 Repeater ( // @[Fragmenter.scala 254:30:freechips.rocketchip.system.DefaultRV32Config.fir@62885.4]
    .clock(Repeater_clock),
    .reset(Repeater_reset),
    .io_repeat(Repeater_io_repeat),
    .io_full(Repeater_io_full),
    .io_enq_ready(Repeater_io_enq_ready),
    .io_enq_valid(Repeater_io_enq_valid),
    .io_enq_bits_opcode(Repeater_io_enq_bits_opcode),
    .io_enq_bits_param(Repeater_io_enq_bits_param),
    .io_enq_bits_size(Repeater_io_enq_bits_size),
    .io_enq_bits_source(Repeater_io_enq_bits_source),
    .io_enq_bits_address(Repeater_io_enq_bits_address),
    .io_enq_bits_mask(Repeater_io_enq_bits_mask),
    .io_enq_bits_corrupt(Repeater_io_enq_bits_corrupt),
    .io_deq_ready(Repeater_io_deq_ready),
    .io_deq_valid(Repeater_io_deq_valid),
    .io_deq_bits_opcode(Repeater_io_deq_bits_opcode),
    .io_deq_bits_param(Repeater_io_deq_bits_param),
    .io_deq_bits_size(Repeater_io_deq_bits_size),
    .io_deq_bits_source(Repeater_io_deq_bits_source),
    .io_deq_bits_address(Repeater_io_deq_bits_address),
    .io_deq_bits_mask(Repeater_io_deq_bits_mask),
    .io_deq_bits_corrupt(Repeater_io_deq_bits_corrupt)
  );
  assign _T_6 = _T_2 == 4'h0; // @[Fragmenter.scala 185:29:freechips.rocketchip.system.DefaultRV32Config.fir@62814.4]
  assign _T_7 = auto_out_d_bits_source[3:0] == 4'h0; // @[Fragmenter.scala 186:30:freechips.rocketchip.system.DefaultRV32Config.fir@62815.4]
  assign _T_9 = 4'h1 << auto_out_d_bits_size; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@62817.4]
  assign _T_12 = 5'h3 << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62820.4]
  assign _T_14 = ~_T_12[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62822.4]
  assign _T_28 = auto_out_d_bits_opcode[0] | _T_9[2]; // @[Fragmenter.scala 196:32:freechips.rocketchip.system.DefaultRV32Config.fir@62840.4]
  assign _T_29 = {auto_out_d_bits_source[3:0], 2'h0}; // @[Fragmenter.scala 198:47:freechips.rocketchip.system.DefaultRV32Config.fir@62841.4]
  assign _GEN_7 = {{4'd0}, _T_14}; // @[Fragmenter.scala 198:69:freechips.rocketchip.system.DefaultRV32Config.fir@62842.4]
  assign _T_30 = _T_29 | _GEN_7; // @[Fragmenter.scala 198:69:freechips.rocketchip.system.DefaultRV32Config.fir@62842.4]
  assign _T_31 = {_T_30, 1'h0}; // @[package.scala 205:35:freechips.rocketchip.system.DefaultRV32Config.fir@62843.4]
  assign _T_32 = _T_31 | 7'h1; // @[package.scala 205:40:freechips.rocketchip.system.DefaultRV32Config.fir@62844.4]
  assign _T_33 = {1'h0,_T_30}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62845.4]
  assign _T_34 = ~_T_33; // @[package.scala 205:53:freechips.rocketchip.system.DefaultRV32Config.fir@62846.4]
  assign _T_35 = _T_32 & _T_34; // @[package.scala 205:51:freechips.rocketchip.system.DefaultRV32Config.fir@62847.4]
  assign _T_38 = |_T_35[6:4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@62850.4]
  assign _GEN_8 = {{1'd0}, _T_35[6:4]}; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62851.4]
  assign _T_39 = _GEN_8 | _T_35[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62851.4]
  assign _T_42 = |_T_39[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@62854.4]
  assign _T_43 = _T_39[3:2] | _T_39[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@62855.4]
  assign _T_46 = {_T_38,_T_42,_T_43[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62858.4]
  assign _T_52 = ~auto_out_d_bits_opcode[0]; // @[Fragmenter.scala 214:20:freechips.rocketchip.system.DefaultRV32Config.fir@62871.4]
  assign _T_54 = ~_T_7; // @[Fragmenter.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@62873.4]
  assign _T_55 = _T_52 & _T_54; // @[Fragmenter.scala 214:30:freechips.rocketchip.system.DefaultRV32Config.fir@62874.4]
  assign _T_56 = auto_in_d_ready | _T_55; // @[Fragmenter.scala 215:35:freechips.rocketchip.system.DefaultRV32Config.fir@62875.4]
  assign _T_47 = _T_56 & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@62859.4]
  assign _GEN_9 = {{3'd0}, _T_28}; // @[Fragmenter.scala 201:55:freechips.rocketchip.system.DefaultRV32Config.fir@62861.6]
  assign _T_49 = _T_2 - _GEN_9; // @[Fragmenter.scala 201:55:freechips.rocketchip.system.DefaultRV32Config.fir@62862.6]
  assign _T_57 = ~_T_55; // @[Fragmenter.scala 216:39:freechips.rocketchip.system.DefaultRV32Config.fir@62877.4]
  assign _T_79 = Repeater_io_deq_bits_size > 3'h2; // @[Fragmenter.scala 277:31:freechips.rocketchip.system.DefaultRV32Config.fir@62910.4]
  assign _T_80 = _T_79 ? 3'h2 : Repeater_io_deq_bits_size; // @[Fragmenter.scala 277:24:freechips.rocketchip.system.DefaultRV32Config.fir@62911.4]
  assign _T_82 = 13'h3f << Repeater_io_deq_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62913.4]
  assign _T_84 = ~_T_82[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62915.4]
  assign _T_86 = 9'h3 << _T_80; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@62917.4]
  assign _T_88 = ~_T_86[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@62919.4]
  assign _T_90 = ~Repeater_io_deq_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@62921.4]
  assign _T_93 = _T_92 == 4'h0; // @[Fragmenter.scala 284:29:freechips.rocketchip.system.DefaultRV32Config.fir@62924.4]
  assign _T_96 = _T_92 - 4'h1; // @[Fragmenter.scala 285:79:freechips.rocketchip.system.DefaultRV32Config.fir@62927.4]
  assign _T_97 = _T_93 ? _T_84[5:2] : _T_96; // @[Fragmenter.scala 285:30:freechips.rocketchip.system.DefaultRV32Config.fir@62928.4]
  assign _T_98 = ~_T_97; // @[Fragmenter.scala 286:28:freechips.rocketchip.system.DefaultRV32Config.fir@62929.4]
  assign _T_101 = ~_T_98; // @[Fragmenter.scala 286:26:freechips.rocketchip.system.DefaultRV32Config.fir@62932.4]
  assign _GEN_5 = _T_93 ? _T_4 : _T_108; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@62940.4]
  assign _T_110 = ~_GEN_5; // @[Fragmenter.scala 289:23:freechips.rocketchip.system.DefaultRV32Config.fir@62944.4]
  assign _T_1_a_valid = Repeater_io_deq_valid; // @[Nodes.scala 388:84:freechips.rocketchip.system.DefaultRV32Config.fir@62806.4 Fragmenter.scala 295:15:freechips.rocketchip.system.DefaultRV32Config.fir@62953.4]
  assign _T_111 = auto_out_a_ready & _T_1_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@62945.4]
  assign _T_112 = ~_T_90; // @[Fragmenter.scala 294:31:freechips.rocketchip.system.DefaultRV32Config.fir@62949.4]
  assign _T_113 = _T_101 != 4'h0; // @[Fragmenter.scala 294:53:freechips.rocketchip.system.DefaultRV32Config.fir@62950.4]
  assign _T_115 = {_T_97, 2'h0}; // @[Fragmenter.scala 296:65:freechips.rocketchip.system.DefaultRV32Config.fir@62954.4]
  assign _T_116 = ~_T_84; // @[Fragmenter.scala 296:90:freechips.rocketchip.system.DefaultRV32Config.fir@62955.4]
  assign _T_117 = _T_115 | _T_116; // @[Fragmenter.scala 296:88:freechips.rocketchip.system.DefaultRV32Config.fir@62956.4]
  assign _GEN_10 = {{4'd0}, _T_88}; // @[Fragmenter.scala 296:100:freechips.rocketchip.system.DefaultRV32Config.fir@62957.4]
  assign _T_118 = _T_117 | _GEN_10; // @[Fragmenter.scala 296:100:freechips.rocketchip.system.DefaultRV32Config.fir@62957.4]
  assign _T_119 = _T_118 | 6'h3; // @[Fragmenter.scala 296:111:freechips.rocketchip.system.DefaultRV32Config.fir@62958.4]
  assign _T_120 = ~_T_119; // @[Fragmenter.scala 296:51:freechips.rocketchip.system.DefaultRV32Config.fir@62959.4]
  assign _GEN_11 = {{20'd0}, _T_120}; // @[Fragmenter.scala 296:49:freechips.rocketchip.system.DefaultRV32Config.fir@62960.4]
  assign _T_122 = {Repeater_io_deq_bits_source,_T_110}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@62962.4]
  assign _T_124 = ~Repeater_io_full; // @[Fragmenter.scala 301:17:freechips.rocketchip.system.DefaultRV32Config.fir@62966.4]
  assign _T_126 = _T_124 | _T_112; // @[Fragmenter.scala 301:35:freechips.rocketchip.system.DefaultRV32Config.fir@62968.4]
  assign _T_128 = _T_126 | reset; // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62970.4]
  assign _T_129 = ~_T_128; // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62971.4]
  assign _T_131 = Repeater_io_deq_bits_mask == 4'hf; // @[Fragmenter.scala 304:53:freechips.rocketchip.system.DefaultRV32Config.fir@62978.4]
  assign _T_132 = _T_124 | _T_131; // @[Fragmenter.scala 304:35:freechips.rocketchip.system.DefaultRV32Config.fir@62979.4]
  assign _T_134 = _T_132 | reset; // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62981.4]
  assign _T_135 = ~_T_134; // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62982.4]
  assign auto_in_a_ready = Repeater_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_in_d_valid = auto_out_d_valid & _T_57; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_in_d_bits_size = _T_6 ? _T_46 : _T_3; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source[9:5]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@62809.4]
  assign auto_out_a_valid = Repeater_io_deq_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_opcode = Repeater_io_deq_bits_opcode; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_param = Repeater_io_deq_bits_param; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_size = _T_80[1:0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_source = {_T_122,_T_101}; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_address = Repeater_io_deq_bits_address | _GEN_11; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_mask = Repeater_io_full ? 4'hf : auto_in_a_bits_mask; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_a_bits_corrupt = Repeater_io_deq_bits_corrupt; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign auto_out_d_ready = auto_in_d_ready | _T_55; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@62808.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62784.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62785.4]
  assign TLMonitor_io_in_a_ready = Repeater_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62805.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62804.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62803.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62802.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62801.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62800.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62799.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62798.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62796.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62795.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_57; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62794.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62793.4]
  assign TLMonitor_io_in_d_bits_size = _T_6 ? _T_46 : _T_3; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62791.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source[9:5]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@62790.4]
  assign Repeater_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62887.4]
  assign Repeater_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@62888.4]
  assign Repeater_io_repeat = _T_112 & _T_113; // @[Fragmenter.scala 294:28:freechips.rocketchip.system.DefaultRV32Config.fir@62952.4]
  assign Repeater_io_enq_valid = auto_in_a_valid; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_param = auto_in_a_bits_param; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_size = auto_in_a_bits_size; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_source = auto_in_a_bits_source; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_address = auto_in_a_bits_address; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_mask = auto_in_a_bits_mask; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Fragmenter.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@62889.4]
  assign Repeater_io_deq_ready = auto_out_a_ready; // @[Fragmenter.scala 295:15:freechips.rocketchip.system.DefaultRV32Config.fir@62953.4]
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
  _T_2 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_3 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_4 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_92 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_108 = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_2 <= 4'h0;
    end else if (_T_47) begin
      if (_T_6) begin
        _T_2 <= auto_out_d_bits_source[3:0];
      end else begin
        _T_2 <= _T_49;
      end
    end
    if (_T_47) begin
      if (_T_6) begin
        _T_3 <= _T_46;
      end
    end
    if (reset) begin
      _T_4 <= 1'h0;
    end else if (_T_47) begin
      if (_T_6) begin
        _T_4 <= auto_out_d_bits_source[4];
      end
    end
    if (reset) begin
      _T_92 <= 4'h0;
    end else if (_T_111) begin
      _T_92 <= _T_101;
    end
    if (_T_93) begin
      _T_108 <= _T_4;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_129) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:301 assert (!repeater.io.full || !aHasData)\n"); // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62973.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_129) begin
          $fatal; // @[Fragmenter.scala 301:16:freechips.rocketchip.system.DefaultRV32Config.fir@62974.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_135) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:304 assert (!repeater.io.full || in_a.bits.mask === fullMask)\n"); // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62984.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_135) begin
          $fatal; // @[Fragmenter.scala 304:16:freechips.rocketchip.system.DefaultRV32Config.fir@62985.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
