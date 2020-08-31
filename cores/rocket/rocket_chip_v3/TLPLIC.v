module TLPLIC( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90460.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90461.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90462.4]
  input         auto_int_in_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input         auto_int_in_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output        auto_int_out_1_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output        auto_int_out_0_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [1:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [9:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [27:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output [1:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output [9:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
  output [31:0] auto_in_d_bits_data // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90463.4]
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
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [9:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [27:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire [9:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
  wire  LevelGateway_clock; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_reset; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_io_interrupt; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_io_plic_valid; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_io_plic_ready; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_io_plic_complete; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
  wire  LevelGateway_1_clock; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire  LevelGateway_1_reset; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire  LevelGateway_1_io_interrupt; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire  LevelGateway_1_io_plic_valid; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire  LevelGateway_1_io_plic_ready; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire  LevelGateway_1_io_plic_complete; // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
  wire [1:0] PLICFanIn_io_prio_0; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
  wire [1:0] PLICFanIn_io_prio_1; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
  wire [1:0] PLICFanIn_io_ip; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
  wire [1:0] PLICFanIn_io_dev; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
  wire [1:0] PLICFanIn_io_max; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
  wire [1:0] PLICFanIn_1_io_prio_0; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
  wire [1:0] PLICFanIn_1_io_prio_1; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
  wire [1:0] PLICFanIn_1_io_ip; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
  wire [1:0] PLICFanIn_1_io_dev; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
  wire [1:0] PLICFanIn_1_io_max; // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_enq_bits_read; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [23:0] Queue_io_enq_bits_index; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [3:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [9:0] Queue_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [1:0] Queue_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire  Queue_io_deq_bits_read; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [23:0] Queue_io_deq_bits_index; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [3:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [9:0] Queue_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  wire [1:0] Queue_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
  reg [1:0] priority_0; // @[Plic.scala 162:31:freechips.rocketchip.system.DefaultRV32Config.fir@90513.4]
  reg [1:0] priority_1; // @[Plic.scala 162:31:freechips.rocketchip.system.DefaultRV32Config.fir@90513.4]
  reg [1:0] threshold_0; // @[Plic.scala 165:31:freechips.rocketchip.system.DefaultRV32Config.fir@90514.4]
  reg [1:0] threshold_1; // @[Plic.scala 165:31:freechips.rocketchip.system.DefaultRV32Config.fir@90514.4]
  reg  pending_0; // @[Plic.scala 167:22:freechips.rocketchip.system.DefaultRV32Config.fir@90519.4]
  reg  pending_1; // @[Plic.scala 167:22:freechips.rocketchip.system.DefaultRV32Config.fir@90519.4]
  reg [1:0] enables_0_0; // @[Plic.scala 173:26:freechips.rocketchip.system.DefaultRV32Config.fir@90520.4]
  reg [1:0] enables_1_0; // @[Plic.scala 173:26:freechips.rocketchip.system.DefaultRV32Config.fir@90521.4]
  wire [2:0] enableVec0_0; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90526.4]
  wire [2:0] enableVec0_1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90527.4]
  reg [1:0] maxDevs_0; // @[Plic.scala 180:22:freechips.rocketchip.system.DefaultRV32Config.fir@90532.4]
  reg [1:0] maxDevs_1; // @[Plic.scala 180:22:freechips.rocketchip.system.DefaultRV32Config.fir@90532.4]
  wire [1:0] pendingUInt; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90533.4]
  reg [1:0] _T_5; // @[Plic.scala 187:41:freechips.rocketchip.system.DefaultRV32Config.fir@90542.4]
  reg [1:0] _T_8; // @[Plic.scala 187:41:freechips.rocketchip.system.DefaultRV32Config.fir@90554.4]
  wire  _T_923; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91785.4]
  wire  _T_924; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91786.4]
  wire [4:0] _T_525; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@91163.4]
  wire [31:0] _T_559; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@91197.4]
  wire  _T_1031; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91950.4]
  wire [23:0] _T_56; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90658.4]
  wire  _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90676.4]
  wire  _T_1032; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91951.4]
  wire [7:0] _T_105; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90711.4]
  wire [7:0] _T_103; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90709.4]
  wire [7:0] _T_101; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90707.4]
  wire [7:0] _T_99; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90705.4]
  wire [31:0] _T_108; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90714.4]
  wire  _T_443; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91074.4]
  wire  claimer_1; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91078.4]
  wire  _T_1011; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91919.4]
  wire  _T_1012; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91920.4]
  wire  claimer_0; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90791.4]
  wire [1:0] _T_10; // @[Plic.scala 238:21:freechips.rocketchip.system.DefaultRV32Config.fir@90560.4]
  wire [1:0] _T_13; // @[Plic.scala 238:46:freechips.rocketchip.system.DefaultRV32Config.fir@90563.4]
  wire [1:0] _T_14; // @[Plic.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@90564.4]
  wire  _T_15; // @[Plic.scala 238:58:freechips.rocketchip.system.DefaultRV32Config.fir@90565.4]
  wire  _T_17; // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90567.4]
  wire  _T_18; // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90568.4]
  wire [1:0] _T_19; // @[Plic.scala 239:49:freechips.rocketchip.system.DefaultRV32Config.fir@90573.4]
  wire [1:0] _T_20; // @[Plic.scala 239:49:freechips.rocketchip.system.DefaultRV32Config.fir@90574.4]
  wire [1:0] claiming; // @[Plic.scala 239:96:freechips.rocketchip.system.DefaultRV32Config.fir@90575.4]
  wire [3:0] _T_22; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@90577.4]
  wire  claimedDevs_1; // @[Plic.scala 240:58:freechips.rocketchip.system.DefaultRV32Config.fir@90580.4]
  wire  claimedDevs_2; // @[Plic.scala 240:58:freechips.rocketchip.system.DefaultRV32Config.fir@90581.4]
  wire  _T_28; // @[Plic.scala 244:15:freechips.rocketchip.system.DefaultRV32Config.fir@90589.4]
  wire  _T_29; // @[Plic.scala 244:34:freechips.rocketchip.system.DefaultRV32Config.fir@90591.6]
  wire  _T_31; // @[Plic.scala 244:15:freechips.rocketchip.system.DefaultRV32Config.fir@90596.4]
  wire  _T_32; // @[Plic.scala 244:34:freechips.rocketchip.system.DefaultRV32Config.fir@90598.6]
  wire  _T_1089; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92063.4]
  wire  _T_1090; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92064.4]
  wire  _T_1197; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92228.4]
  wire  _T_1198; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92229.4]
  wire  _T_445; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91076.4]
  wire  _T_449; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91080.4]
  wire [31:0] _T_450; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91082.4]
  wire [1:0] completerDev; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@91092.4]
  wire [2:0] _T_457; // @[Plic.scala 288:51:freechips.rocketchip.system.DefaultRV32Config.fir@91094.4]
  wire  completer_1; // @[Plic.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@91096.4]
  wire  _T_1177; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92197.4]
  wire  _T_1178; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92198.4]
  wire  _T_187; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90793.4]
  wire [2:0] _T_195; // @[Plic.scala 288:51:freechips.rocketchip.system.DefaultRV32Config.fir@90807.4]
  wire  completer_0; // @[Plic.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@90809.4]
  wire [1:0] _T_33; // @[Plic.scala 255:23:freechips.rocketchip.system.DefaultRV32Config.fir@90603.4]
  wire [1:0] _T_36; // @[Plic.scala 255:50:freechips.rocketchip.system.DefaultRV32Config.fir@90606.4]
  wire [1:0] _T_37; // @[Plic.scala 255:30:freechips.rocketchip.system.DefaultRV32Config.fir@90607.4]
  wire  _T_38; // @[Plic.scala 255:62:freechips.rocketchip.system.DefaultRV32Config.fir@90608.4]
  wire  _T_40; // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90610.4]
  wire  _T_41; // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90611.4]
  wire  _T_42; // @[Plic.scala 257:48:freechips.rocketchip.system.DefaultRV32Config.fir@90618.4]
  wire [3:0] _T_44; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@90620.4]
  wire [2:0] completedDevs; // @[Plic.scala 257:28:freechips.rocketchip.system.DefaultRV32Config.fir@90622.4]
  wire  _T_66; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90668.4]
  wire [2:0] _T_173; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90779.4]
  wire  _T_190; // @[Plic.scala 285:33:freechips.rocketchip.system.DefaultRV32Config.fir@90797.4]
  wire  _T_192; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90799.4]
  wire  _T_193; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90800.4]
  wire [31:0] _T_206; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90819.4]
  wire  _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90828.4]
  wire  _T_1097; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92075.4]
  wire  _T_1098; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92076.4]
  wire  _T_219; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90832.4]
  wire  _T_1142; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92144.4]
  wire  _T_1143; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92145.4]
  wire  _T_259; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90875.4]
  wire  _T_263; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90879.4]
  wire  _T_1092; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92067.4]
  wire  _T_1093; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92068.4]
  wire  _T_288; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90907.4]
  wire  _T_1192; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92219.4]
  wire  _T_1193; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92220.4]
  wire  _T_311; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90933.4]
  wire [2:0] _T_343; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90968.4]
  wire [31:0] _T_344; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90969.4]
  wire  _T_1172; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92188.4]
  wire  _T_1173; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92189.4]
  wire  _T_357; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90982.4]
  wire [2:0] _T_389; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@91017.4]
  wire [31:0] _T_390; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91018.4]
  wire  _T_1132; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92128.4]
  wire  _T_1133; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92129.4]
  wire  _T_424; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91052.4]
  wire [31:0] _T_468; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91106.4]
  wire  _T_1261; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92354.4]
  wire  _T_1262; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92359.6]
  wire  _T_1263; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92364.8]
  wire  _T_1264; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92369.10]
  wire  _T_1265; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92374.12]
  wire  _T_1266; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92379.14]
  wire  _T_1267; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92384.16]
  wire  _T_1268; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92389.18]
  wire  _T_1269; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92394.20]
  wire  _GEN_136; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92395.20]
  wire  _GEN_137; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92390.18]
  wire  _GEN_138; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92385.16]
  wire  _GEN_139; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92380.14]
  wire  _GEN_140; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92375.12]
  wire  _GEN_141; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92370.10]
  wire  _GEN_142; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92365.8]
  wire  _GEN_143; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92360.6]
  wire  _GEN_144; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@92355.4]
  wire [31:0] _GEN_145; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92442.20]
  wire [31:0] _GEN_146; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92437.18]
  wire [31:0] _GEN_147; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92432.16]
  wire [31:0] _GEN_148; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92427.14]
  wire [31:0] _GEN_149; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92422.12]
  wire [31:0] _GEN_150; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92417.10]
  wire [31:0] _GEN_151; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92412.8]
  wire [31:0] _GEN_152; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92407.6]
  wire [31:0] _GEN_153; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@92402.4]
  wire  _T_52_bits_read; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90640.4 RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92350.4]
  TLMonitor_37 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@90470.4]
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
  LevelGateway LevelGateway ( // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90503.4]
    .clock(LevelGateway_clock),
    .reset(LevelGateway_reset),
    .io_interrupt(LevelGateway_io_interrupt),
    .io_plic_valid(LevelGateway_io_plic_valid),
    .io_plic_ready(LevelGateway_io_plic_ready),
    .io_plic_complete(LevelGateway_io_plic_complete)
  );
  LevelGateway LevelGateway_1 ( // @[Plic.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@90508.4]
    .clock(LevelGateway_1_clock),
    .reset(LevelGateway_1_reset),
    .io_interrupt(LevelGateway_1_io_interrupt),
    .io_plic_valid(LevelGateway_1_io_plic_valid),
    .io_plic_ready(LevelGateway_1_io_plic_ready),
    .io_plic_complete(LevelGateway_1_io_plic_complete)
  );
  PLICFanIn PLICFanIn ( // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90534.4]
    .io_prio_0(PLICFanIn_io_prio_0),
    .io_prio_1(PLICFanIn_io_prio_1),
    .io_ip(PLICFanIn_io_ip),
    .io_dev(PLICFanIn_io_dev),
    .io_max(PLICFanIn_io_max)
  );
  PLICFanIn PLICFanIn_1 ( // @[Plic.scala 183:25:freechips.rocketchip.system.DefaultRV32Config.fir@90546.4]
    .io_prio_0(PLICFanIn_1_io_prio_0),
    .io_prio_1(PLICFanIn_1_io_prio_1),
    .io_ip(PLICFanIn_1_io_ip),
    .io_dev(PLICFanIn_1_io_dev),
    .io_max(PLICFanIn_1_io_max)
  );
  Queue_32 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@90645.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_read(Queue_io_enq_bits_read),
    .io_enq_bits_index(Queue_io_enq_bits_index),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(Queue_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(Queue_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_read(Queue_io_deq_bits_read),
    .io_deq_bits_index(Queue_io_deq_bits_index),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(Queue_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(Queue_io_deq_bits_extra_tlrr_extra_size)
  );
  assign enableVec0_0 = {enables_0_0,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90526.4]
  assign enableVec0_1 = {enables_1_0,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90527.4]
  assign pendingUInt = {pending_1,pending_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90533.4]
  assign _T_923 = Queue_io_deq_valid & auto_in_d_ready; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91785.4]
  assign _T_924 = _T_923 & Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91786.4]
  assign _T_525 = {Queue_io_deq_bits_index[19],Queue_io_deq_bits_index[11],Queue_io_deq_bits_index[10],Queue_io_deq_bits_index[5],Queue_io_deq_bits_index[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@91163.4]
  assign _T_559 = 32'h1 << _T_525; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@91197.4]
  assign _T_1031 = _T_924 & _T_559[21]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91950.4]
  assign _T_56 = Queue_io_deq_bits_index & 24'hf7f3de; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90658.4]
  assign _T_74 = _T_56 == 24'h0; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90676.4]
  assign _T_1032 = _T_1031 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91951.4]
  assign _T_105 = Queue_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90711.4]
  assign _T_103 = Queue_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90709.4]
  assign _T_101 = Queue_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90707.4]
  assign _T_99 = Queue_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@90705.4]
  assign _T_108 = {_T_105,_T_103,_T_101,_T_99}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90714.4]
  assign _T_443 = |_T_108; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91074.4]
  assign claimer_1 = _T_1032 & _T_443; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91078.4]
  assign _T_1011 = _T_924 & _T_559[17]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91919.4]
  assign _T_1012 = _T_1011 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91920.4]
  assign claimer_0 = _T_1012 & _T_443; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90791.4]
  assign _T_10 = {claimer_1,claimer_0}; // @[Plic.scala 238:21:freechips.rocketchip.system.DefaultRV32Config.fir@90560.4]
  assign _T_13 = _T_10 - 2'h1; // @[Plic.scala 238:46:freechips.rocketchip.system.DefaultRV32Config.fir@90563.4]
  assign _T_14 = _T_10 & _T_13; // @[Plic.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@90564.4]
  assign _T_15 = _T_14 == 2'h0; // @[Plic.scala 238:58:freechips.rocketchip.system.DefaultRV32Config.fir@90565.4]
  assign _T_17 = _T_15 | reset; // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90567.4]
  assign _T_18 = ~_T_17; // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90568.4]
  assign _T_19 = claimer_0 ? maxDevs_0 : 2'h0; // @[Plic.scala 239:49:freechips.rocketchip.system.DefaultRV32Config.fir@90573.4]
  assign _T_20 = claimer_1 ? maxDevs_1 : 2'h0; // @[Plic.scala 239:49:freechips.rocketchip.system.DefaultRV32Config.fir@90574.4]
  assign claiming = _T_19 | _T_20; // @[Plic.scala 239:96:freechips.rocketchip.system.DefaultRV32Config.fir@90575.4]
  assign _T_22 = 4'h1 << claiming; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@90577.4]
  assign claimedDevs_1 = _T_22[1]; // @[Plic.scala 240:58:freechips.rocketchip.system.DefaultRV32Config.fir@90580.4]
  assign claimedDevs_2 = _T_22[2]; // @[Plic.scala 240:58:freechips.rocketchip.system.DefaultRV32Config.fir@90581.4]
  assign _T_28 = claimedDevs_1 | LevelGateway_io_plic_valid; // @[Plic.scala 244:15:freechips.rocketchip.system.DefaultRV32Config.fir@90589.4]
  assign _T_29 = ~claimedDevs_1; // @[Plic.scala 244:34:freechips.rocketchip.system.DefaultRV32Config.fir@90591.6]
  assign _T_31 = claimedDevs_2 | LevelGateway_1_io_plic_valid; // @[Plic.scala 244:15:freechips.rocketchip.system.DefaultRV32Config.fir@90596.4]
  assign _T_32 = ~claimedDevs_2; // @[Plic.scala 244:34:freechips.rocketchip.system.DefaultRV32Config.fir@90598.6]
  assign _T_1089 = ~Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92063.4]
  assign _T_1090 = _T_923 & _T_1089; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92064.4]
  assign _T_1197 = _T_1090 & _T_559[21]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92228.4]
  assign _T_1198 = _T_1197 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92229.4]
  assign _T_445 = &_T_108; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91076.4]
  assign _T_449 = _T_1198 & _T_445; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91080.4]
  assign _T_450 = Queue_io_deq_bits_data; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91082.4]
  assign completerDev = _T_450[1:0]; // @[package.scala 138:13:freechips.rocketchip.system.DefaultRV32Config.fir@91092.4]
  assign _T_457 = enableVec0_1 >> completerDev; // @[Plic.scala 288:51:freechips.rocketchip.system.DefaultRV32Config.fir@91094.4]
  assign completer_1 = _T_449 & _T_457[0]; // @[Plic.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@91096.4]
  assign _T_1177 = _T_1090 & _T_559[17]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92197.4]
  assign _T_1178 = _T_1177 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92198.4]
  assign _T_187 = _T_1178 & _T_445; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90793.4]
  assign _T_195 = enableVec0_0 >> completerDev; // @[Plic.scala 288:51:freechips.rocketchip.system.DefaultRV32Config.fir@90807.4]
  assign completer_0 = _T_187 & _T_195[0]; // @[Plic.scala 288:35:freechips.rocketchip.system.DefaultRV32Config.fir@90809.4]
  assign _T_33 = {completer_1,completer_0}; // @[Plic.scala 255:23:freechips.rocketchip.system.DefaultRV32Config.fir@90603.4]
  assign _T_36 = _T_33 - 2'h1; // @[Plic.scala 255:50:freechips.rocketchip.system.DefaultRV32Config.fir@90606.4]
  assign _T_37 = _T_33 & _T_36; // @[Plic.scala 255:30:freechips.rocketchip.system.DefaultRV32Config.fir@90607.4]
  assign _T_38 = _T_37 == 2'h0; // @[Plic.scala 255:62:freechips.rocketchip.system.DefaultRV32Config.fir@90608.4]
  assign _T_40 = _T_38 | reset; // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90610.4]
  assign _T_41 = ~_T_40; // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90611.4]
  assign _T_42 = completer_0 | completer_1; // @[Plic.scala 257:48:freechips.rocketchip.system.DefaultRV32Config.fir@90618.4]
  assign _T_44 = 4'h1 << completerDev; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@90620.4]
  assign completedDevs = _T_42 ? _T_44[2:0] : 3'h0; // @[Plic.scala 257:28:freechips.rocketchip.system.DefaultRV32Config.fir@90622.4]
  assign _T_66 = _T_56 == 24'h2; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90668.4]
  assign _T_173 = {pending_1,pending_0,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90779.4]
  assign _T_190 = completerDev == completerDev; // @[Plic.scala 285:33:freechips.rocketchip.system.DefaultRV32Config.fir@90797.4]
  assign _T_192 = _T_190 | reset; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90799.4]
  assign _T_193 = ~_T_192; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90800.4]
  assign _T_206 = {{30'd0}, maxDevs_0}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90819.4]
  assign _T_215 = &_T_108[1:0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90828.4]
  assign _T_1097 = _T_1090 & _T_559[1]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92075.4]
  assign _T_1098 = _T_1097 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92076.4]
  assign _T_219 = _T_1098 & _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90832.4]
  assign _T_1142 = _T_1090 & _T_559[10]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92144.4]
  assign _T_1143 = _T_1142 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92145.4]
  assign _T_259 = &_T_108[2:1]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90875.4]
  assign _T_263 = _T_1143 & _T_259; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90879.4]
  assign _T_1092 = _T_1090 & _T_559[0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92067.4]
  assign _T_1093 = _T_1092 & _T_66; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92068.4]
  assign _T_288 = _T_1093 & _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90907.4]
  assign _T_1192 = _T_1090 & _T_559[20]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92219.4]
  assign _T_1193 = _T_1192 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92220.4]
  assign _T_311 = _T_1193 & _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90933.4]
  assign _T_343 = {1'h0,threshold_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90968.4]
  assign _T_344 = {{29'd0}, _T_343}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90969.4]
  assign _T_1172 = _T_1090 & _T_559[16]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92188.4]
  assign _T_1173 = _T_1172 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92189.4]
  assign _T_357 = _T_1173 & _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90982.4]
  assign _T_389 = {1'h0,threshold_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@91017.4]
  assign _T_390 = {{29'd0}, _T_389}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91018.4]
  assign _T_1132 = _T_1090 & _T_559[8]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92128.4]
  assign _T_1133 = _T_1132 & _T_74; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92129.4]
  assign _T_424 = _T_1133 & _T_259; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91052.4]
  assign _T_468 = {{30'd0}, maxDevs_1}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@91106.4]
  assign _T_1261 = 5'h0 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92354.4]
  assign _T_1262 = 5'h1 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92359.6]
  assign _T_1263 = 5'h4 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92364.8]
  assign _T_1264 = 5'h8 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92369.10]
  assign _T_1265 = 5'ha == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92374.12]
  assign _T_1266 = 5'h10 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92379.14]
  assign _T_1267 = 5'h11 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92384.16]
  assign _T_1268 = 5'h14 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92389.18]
  assign _T_1269 = 5'h15 == _T_525; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@92394.20]
  assign _GEN_136 = _T_1269 ? _T_74 : 1'h1; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92395.20]
  assign _GEN_137 = _T_1268 ? _T_74 : _GEN_136; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92390.18]
  assign _GEN_138 = _T_1267 ? _T_74 : _GEN_137; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92385.16]
  assign _GEN_139 = _T_1266 ? _T_74 : _GEN_138; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92380.14]
  assign _GEN_140 = _T_1265 ? _T_74 : _GEN_139; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92375.12]
  assign _GEN_141 = _T_1264 ? _T_74 : _GEN_140; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92370.10]
  assign _GEN_142 = _T_1263 ? _T_74 : _GEN_141; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92365.8]
  assign _GEN_143 = _T_1262 ? _T_74 : _GEN_142; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92360.6]
  assign _GEN_144 = _T_1261 ? _T_66 : _GEN_143; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@92355.4]
  assign _GEN_145 = _T_1269 ? _T_468 : 32'h0; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92442.20]
  assign _GEN_146 = _T_1268 ? _T_344 : _GEN_145; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92437.18]
  assign _GEN_147 = _T_1267 ? _T_206 : _GEN_146; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92432.16]
  assign _GEN_148 = _T_1266 ? _T_390 : _GEN_147; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92427.14]
  assign _GEN_149 = _T_1265 ? {{29'd0}, enableVec0_1} : _GEN_148; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92422.12]
  assign _GEN_150 = _T_1264 ? {{29'd0}, enableVec0_0} : _GEN_149; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92417.10]
  assign _GEN_151 = _T_1263 ? {{29'd0}, _T_173} : _GEN_150; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92412.8]
  assign _GEN_152 = _T_1262 ? {{30'd0}, priority_0} : _GEN_151; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@92407.6]
  assign _GEN_153 = _T_1261 ? {{30'd0}, priority_1} : _GEN_152; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@92402.4]
  assign _T_52_bits_read = Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@90640.4 RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92350.4]
  assign auto_int_out_1_0 = _T_8 > threshold_1; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@90501.4]
  assign auto_int_out_0_0 = _T_5 > threshold_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@90500.4]
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign auto_in_d_valid = Queue_io_deq_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign auto_in_d_bits_opcode = {{2'd0}, _T_52_bits_read}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign auto_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign auto_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign auto_in_d_bits_data = _GEN_144 ? _GEN_153 : 32'h0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@90499.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90471.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90472.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90492.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90491.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90490.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90489.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90488.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90487.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90486.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90485.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90483.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90482.4]
  assign TLMonitor_io_in_d_valid = Queue_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90481.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_52_bits_read}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90480.4]
  assign TLMonitor_io_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90478.4]
  assign TLMonitor_io_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@90477.4]
  assign LevelGateway_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90505.4]
  assign LevelGateway_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90506.4]
  assign LevelGateway_io_interrupt = auto_int_in_0; // @[Plic.scala 156:28:freechips.rocketchip.system.DefaultRV32Config.fir@90507.4]
  assign LevelGateway_io_plic_ready = ~pending_0; // @[Plic.scala 243:15:freechips.rocketchip.system.DefaultRV32Config.fir@90588.4]
  assign LevelGateway_io_plic_complete = completedDevs[1]; // @[Plic.scala 259:19:freechips.rocketchip.system.DefaultRV32Config.fir@90626.4]
  assign LevelGateway_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90510.4]
  assign LevelGateway_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90511.4]
  assign LevelGateway_1_io_interrupt = auto_int_in_1; // @[Plic.scala 156:28:freechips.rocketchip.system.DefaultRV32Config.fir@90512.4]
  assign LevelGateway_1_io_plic_ready = ~pending_1; // @[Plic.scala 243:15:freechips.rocketchip.system.DefaultRV32Config.fir@90595.4]
  assign LevelGateway_1_io_plic_complete = completedDevs[2]; // @[Plic.scala 259:19:freechips.rocketchip.system.DefaultRV32Config.fir@90627.4]
  assign PLICFanIn_io_prio_0 = priority_0; // @[Plic.scala 184:21:freechips.rocketchip.system.DefaultRV32Config.fir@90538.4]
  assign PLICFanIn_io_prio_1 = priority_1; // @[Plic.scala 184:21:freechips.rocketchip.system.DefaultRV32Config.fir@90538.4]
  assign PLICFanIn_io_ip = enables_0_0 & pendingUInt; // @[Plic.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@90540.4]
  assign PLICFanIn_1_io_prio_0 = priority_0; // @[Plic.scala 184:21:freechips.rocketchip.system.DefaultRV32Config.fir@90550.4]
  assign PLICFanIn_1_io_prio_1 = priority_1; // @[Plic.scala 184:21:freechips.rocketchip.system.DefaultRV32Config.fir@90550.4]
  assign PLICFanIn_1_io_ip = enables_1_0 & pendingUInt; // @[Plic.scala 185:21:freechips.rocketchip.system.DefaultRV32Config.fir@90552.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90646.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90647.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@90648.4]
  assign Queue_io_enq_bits_read = auto_in_a_bits_opcode == 3'h4; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90654.4]
  assign Queue_io_enq_bits_index = auto_in_a_bits_address[25:2]; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90653.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90652.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90651.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90650.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@90649.4]
  assign Queue_io_deq_ready = auto_in_d_ready; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@92347.4]
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
  priority_0 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  priority_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  threshold_0 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  threshold_1 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  pending_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  pending_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  enables_0_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  enables_1_0 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  maxDevs_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  maxDevs_1 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_5 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  _T_8 = _RAND_11[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_219) begin
      priority_0 <= Queue_io_deq_bits_data[1:0];
    end
    if (_T_288) begin
      priority_1 <= Queue_io_deq_bits_data[1:0];
    end
    if (_T_357) begin
      threshold_0 <= Queue_io_deq_bits_data[1:0];
    end
    if (_T_311) begin
      threshold_1 <= Queue_io_deq_bits_data[1:0];
    end
    if (reset) begin
      pending_0 <= 1'h0;
    end else if (_T_28) begin
      pending_0 <= _T_29;
    end
    if (reset) begin
      pending_1 <= 1'h0;
    end else if (_T_31) begin
      pending_1 <= _T_32;
    end
    if (_T_424) begin
      enables_0_0 <= Queue_io_deq_bits_data[2:1];
    end
    if (_T_263) begin
      enables_1_0 <= Queue_io_deq_bits_data[2:1];
    end
    maxDevs_0 <= PLICFanIn_io_dev;
    maxDevs_1 <= PLICFanIn_1_io_dev;
    _T_5 <= PLICFanIn_io_max;
    _T_8 <= PLICFanIn_1_io_max;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_18) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Plic.scala:238 assert((claimer.asUInt & (claimer.asUInt - UInt(1))) === UInt(0)) // One-Hot\n"); // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90570.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_18) begin
          $fatal; // @[Plic.scala 238:11:freechips.rocketchip.system.DefaultRV32Config.fir@90571.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_41) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Plic.scala:255 assert((completer.asUInt & (completer.asUInt - UInt(1))) === UInt(0)) // One-Hot\n"); // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90613.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_41) begin
          $fatal; // @[Plic.scala 255:11:freechips.rocketchip.system.DefaultRV32Config.fir@90614.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_193) begin
          $fwrite(32'h80000002,"Assertion failed: completerDev should be consistent for all harts\n    at Plic.scala:285 assert(completerDev === data.extract(log2Ceil(nDevices+1)-1, 0),\n"); // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90802.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_193) begin
          $fatal; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@90803.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_193) begin
          $fwrite(32'h80000002,"Assertion failed: completerDev should be consistent for all harts\n    at Plic.scala:285 assert(completerDev === data.extract(log2Ceil(nDevices+1)-1, 0),\n"); // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@91089.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_193) begin
          $fatal; // @[Plic.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@91090.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
