module ICache( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196122.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196123.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196124.4]
  input         auto_master_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  output        auto_master_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  output [31:0] auto_master_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  input         auto_master_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  input  [2:0]  auto_master_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  input  [3:0]  auto_master_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  input  [31:0] auto_master_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  input         auto_master_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196125.4]
  output        io_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input  [31:0] io_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input  [31:0] io_s1_paddr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input         io_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input         io_s2_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  output [31:0] io_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  output        io_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  output        io_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
  input         io_invalidate // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196126.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
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
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [20:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
  wire [9:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire [31:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
  wire  s0_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196142.4]
  reg  s1_valid; // @[ICache.scala 165:21:freechips.rocketchip.system.DefaultRV32Config.fir@196143.4]
  reg [255:0] vb_array; // @[ICache.scala 227:21:freechips.rocketchip.system.DefaultRV32Config.fir@196326.4]
  wire [6:0] _T_109; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196369.4]
  wire [255:0] _T_110; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196370.4]
  wire  _T_116; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196376.4]
  wire  s1_tag_hit_0; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196377.4]
  wire [6:0] _T_137; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196400.4]
  wire [255:0] _T_138; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196401.4]
  wire  _T_144; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196407.4]
  wire  s1_tag_hit_1; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196408.4]
  wire  _T; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196150.4]
  wire [7:0] _T_165; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196431.4]
  wire [255:0] _T_166; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196432.4]
  wire  _T_172; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196438.4]
  wire  s1_tag_hit_2; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196439.4]
  wire  _T_1; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196151.4]
  wire [7:0] _T_193; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196462.4]
  wire [255:0] _T_194; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196463.4]
  wire  _T_200; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196469.4]
  wire  s1_tag_hit_3; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196470.4]
  wire  _T_2; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196152.4]
  wire  s1_hit; // @[ICache.scala 168:40:freechips.rocketchip.system.DefaultRV32Config.fir@196154.4]
  wire  _T_4; // @[ICache.scala 170:38:freechips.rocketchip.system.DefaultRV32Config.fir@196155.4]
  wire  _T_5; // @[ICache.scala 170:35:freechips.rocketchip.system.DefaultRV32Config.fir@196156.4]
  reg  s2_valid; // @[ICache.scala 170:25:freechips.rocketchip.system.DefaultRV32Config.fir@196157.4]
  reg  s2_hit; // @[ICache.scala 171:23:freechips.rocketchip.system.DefaultRV32Config.fir@196159.4]
  reg  invalidated; // @[ICache.scala 173:24:freechips.rocketchip.system.DefaultRV32Config.fir@196161.4]
  reg  refill_valid; // @[ICache.scala 174:29:freechips.rocketchip.system.DefaultRV32Config.fir@196162.4]
  wire  _T_8; // @[ICache.scala 178:29:freechips.rocketchip.system.DefaultRV32Config.fir@196168.4]
  wire  _T_9; // @[ICache.scala 178:26:freechips.rocketchip.system.DefaultRV32Config.fir@196169.4]
  wire  _T_10; // @[ICache.scala 178:40:freechips.rocketchip.system.DefaultRV32Config.fir@196170.4]
  wire  s2_miss; // @[ICache.scala 178:37:freechips.rocketchip.system.DefaultRV32Config.fir@196171.4]
  reg  _T_12; // @[ICache.scala 180:45:freechips.rocketchip.system.DefaultRV32Config.fir@196174.4]
  wire  s2_request_refill; // @[ICache.scala 180:35:freechips.rocketchip.system.DefaultRV32Config.fir@196176.4]
  wire  refill_fire; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196164.4]
  wire  _T_11; // @[ICache.scala 179:41:freechips.rocketchip.system.DefaultRV32Config.fir@196172.4]
  wire  s1_can_request_refill; // @[ICache.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@196173.4]
  wire  _T_13; // @[ICache.scala 181:54:freechips.rocketchip.system.DefaultRV32Config.fir@196177.4]
  reg [31:0] refill_paddr; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196178.4]
  wire [19:0] refill_tag; // @[ICache.scala 183:33:freechips.rocketchip.system.DefaultRV32Config.fir@196187.4]
  wire [5:0] refill_idx; // @[ICache.scala 479:21:freechips.rocketchip.system.DefaultRV32Config.fir@196188.4]
  wire  refill_one_beat; // @[ICache.scala 185:41:freechips.rocketchip.system.DefaultRV32Config.fir@196191.4]
  wire [26:0] _T_22; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@196199.4]
  wire [11:0] _T_24; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@196201.4]
  wire [9:0] _T_27; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@196204.4]
  reg [9:0] _T_28; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@196205.4]
  wire [9:0] _T_30; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@196207.4]
  wire  _T_31; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@196208.4]
  wire  _T_32; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@196209.4]
  wire  _T_33; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@196210.4]
  wire  _T_34; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@196211.4]
  wire  d_done; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@196212.4]
  wire [9:0] _T_35; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@196213.4]
  wire [9:0] refill_cnt; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@196214.4]
  wire  refill_done; // @[ICache.scala 191:37:freechips.rocketchip.system.DefaultRV32Config.fir@196219.4]
  wire [7:0] _T_44; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@196249.4]
  wire [15:0] _T_52; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@196257.4]
  wire [1:0] repl_way; // @[ICache.scala 197:35:freechips.rocketchip.system.DefaultRV32Config.fir@196258.4]
  wire [7:0] _T_55; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196260.4]
  wire  _T_67; // @[ICache.scala 214:70:freechips.rocketchip.system.DefaultRV32Config.fir@196278.4]
  wire  _T_68; // @[ICache.scala 214:83:freechips.rocketchip.system.DefaultRV32Config.fir@196279.4]
  reg  accruedRefillError; // @[ICache.scala 215:31:freechips.rocketchip.system.DefaultRV32Config.fir@196289.4]
  wire  _T_72; // @[ICache.scala 216:58:freechips.rocketchip.system.DefaultRV32Config.fir@196290.4]
  wire  _T_73; // @[ICache.scala 216:62:freechips.rocketchip.system.DefaultRV32Config.fir@196291.4]
  wire  refillError; // @[ICache.scala 216:43:freechips.rocketchip.system.DefaultRV32Config.fir@196292.4]
  wire  _T_87; // @[ICache.scala 231:75:freechips.rocketchip.system.DefaultRV32Config.fir@196330.6]
  wire  _T_88; // @[ICache.scala 231:72:freechips.rocketchip.system.DefaultRV32Config.fir@196331.6]
  wire [255:0] _T_89; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196332.6]
  wire [255:0] _T_90; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196333.6]
  wire [255:0] _T_91; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196334.6]
  wire [255:0] _T_92; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196335.6]
  wire [255:0] _T_93; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196336.6]
  wire  s2_tag_disparity; // @[ICache.scala 304:72:freechips.rocketchip.system.DefaultRV32Config.fir@196614.4]
  wire  _T_297; // @[ICache.scala 327:22:freechips.rocketchip.system.DefaultRV32Config.fir@196641.4]
  wire  invalidate; // @[ICache.scala 327:39:freechips.rocketchip.system.DefaultRV32Config.fir@196642.4]
  wire  _GEN_30; // @[ICache.scala 234:21:freechips.rocketchip.system.DefaultRV32Config.fir@196343.4]
  wire  s1_tl_error_0; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196382.4]
  wire  s1_tl_error_1; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196413.4]
  wire  s1_tl_error_2; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196444.4]
  wire  s1_tl_error_3; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196475.4]
  wire  _T_208; // @[ICache.scala 263:10:freechips.rocketchip.system.DefaultRV32Config.fir@196480.4]
  wire [1:0] _T_217; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196489.4]
  wire [1:0] _T_219; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196491.4]
  wire [2:0] _T_221; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196493.4]
  wire  _T_223; // @[ICache.scala 263:115:freechips.rocketchip.system.DefaultRV32Config.fir@196495.4]
  wire  _T_224; // @[ICache.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@196496.4]
  wire  _T_226; // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196498.4]
  wire  _T_227; // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196499.4]
  wire  _T_234; // @[ICache.scala 281:32:freechips.rocketchip.system.DefaultRV32Config.fir@196511.4]
  wire [9:0] _T_238; // @[ICache.scala 282:52:freechips.rocketchip.system.DefaultRV32Config.fir@196515.4]
  wire [9:0] _T_239; // @[ICache.scala 282:79:freechips.rocketchip.system.DefaultRV32Config.fir@196516.4]
  wire  _T_255; // @[ICache.scala 291:41:freechips.rocketchip.system.DefaultRV32Config.fir@196551.4]
  wire  _T_256; // @[ICache.scala 291:46:freechips.rocketchip.system.DefaultRV32Config.fir@196552.4]
  wire [31:0] s1_dout_0; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  wire [31:0] s1_dout_1; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  wire [31:0] s1_dout_2; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  wire [31:0] s1_dout_3; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  reg  s2_tag_hit_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196568.4]
  reg  s2_tag_hit_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196568.4]
  reg  s2_tag_hit_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196568.4]
  reg  s2_tag_hit_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196568.4]
  reg [31:0] s2_dout_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196588.4]
  reg [31:0] s2_dout_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196588.4]
  reg [31:0] s2_dout_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196588.4]
  reg [31:0] s2_dout_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196588.4]
  wire [31:0] _T_274; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196595.4]
  wire [31:0] _T_275; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196596.4]
  wire [31:0] _T_276; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196597.4]
  wire [31:0] _T_277; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196598.4]
  wire [31:0] _T_278; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196599.4]
  wire [31:0] _T_279; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196600.4]
  wire [3:0] _T_287; // @[ICache.scala 305:43:freechips.rocketchip.system.DefaultRV32Config.fir@196617.4]
  wire  _T_288; // @[ICache.scala 305:50:freechips.rocketchip.system.DefaultRV32Config.fir@196618.4]
  reg  s2_tl_error; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@196619.4]
  wire  _T_395; // @[ICache.scala 469:9:freechips.rocketchip.system.DefaultRV32Config.fir@196767.4]
  wire  _GEN_74; // @[ICache.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@196771.4]
  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@196222.4]
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  tag_array_0 tag_array ( // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196276.4]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_0 ( // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@196504.4]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3)
  );
  assign s0_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196142.4]
  assign _T_109 = {1'h0,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196369.4]
  assign _T_110 = vb_array >> _T_109; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196370.4]
  assign _T_116 = tag_array_RW0_rdata_0[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196376.4]
  assign s1_tag_hit_0 = _T_110[0] & _T_116; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196377.4]
  assign _T_137 = {1'h1,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196400.4]
  assign _T_138 = vb_array >> _T_137; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196401.4]
  assign _T_144 = tag_array_RW0_rdata_1[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196407.4]
  assign s1_tag_hit_1 = _T_138[0] & _T_144; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196408.4]
  assign _T = s1_tag_hit_0 | s1_tag_hit_1; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196150.4]
  assign _T_165 = {2'h2,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196431.4]
  assign _T_166 = vb_array >> _T_165; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196432.4]
  assign _T_172 = tag_array_RW0_rdata_2[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196438.4]
  assign s1_tag_hit_2 = _T_166[0] & _T_172; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196439.4]
  assign _T_1 = _T | s1_tag_hit_2; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196151.4]
  assign _T_193 = {2'h3,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196462.4]
  assign _T_194 = vb_array >> _T_193; // @[ICache.scala 255:25:freechips.rocketchip.system.DefaultRV32Config.fir@196463.4]
  assign _T_200 = tag_array_RW0_rdata_3[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@196469.4]
  assign s1_tag_hit_3 = _T_194[0] & _T_200; // @[ICache.scala 258:26:freechips.rocketchip.system.DefaultRV32Config.fir@196470.4]
  assign _T_2 = _T_1 | s1_tag_hit_3; // @[ICache.scala 168:35:freechips.rocketchip.system.DefaultRV32Config.fir@196152.4]
  assign s1_hit = _T_2; // @[ICache.scala 168:40:freechips.rocketchip.system.DefaultRV32Config.fir@196154.4]
  assign _T_4 = ~io_s1_kill; // @[ICache.scala 170:38:freechips.rocketchip.system.DefaultRV32Config.fir@196155.4]
  assign _T_5 = s1_valid & _T_4; // @[ICache.scala 170:35:freechips.rocketchip.system.DefaultRV32Config.fir@196156.4]
  assign _T_8 = ~s2_hit; // @[ICache.scala 178:29:freechips.rocketchip.system.DefaultRV32Config.fir@196168.4]
  assign _T_9 = s2_valid & _T_8; // @[ICache.scala 178:26:freechips.rocketchip.system.DefaultRV32Config.fir@196169.4]
  assign _T_10 = ~io_s2_kill; // @[ICache.scala 178:40:freechips.rocketchip.system.DefaultRV32Config.fir@196170.4]
  assign s2_miss = _T_9 & _T_10; // @[ICache.scala 178:37:freechips.rocketchip.system.DefaultRV32Config.fir@196171.4]
  assign s2_request_refill = s2_miss & _T_12; // @[ICache.scala 180:35:freechips.rocketchip.system.DefaultRV32Config.fir@196176.4]
  assign refill_fire = auto_master_out_a_ready & s2_request_refill; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196164.4]
  assign _T_11 = s2_miss | refill_valid; // @[ICache.scala 179:41:freechips.rocketchip.system.DefaultRV32Config.fir@196172.4]
  assign s1_can_request_refill = ~_T_11; // @[ICache.scala 179:31:freechips.rocketchip.system.DefaultRV32Config.fir@196173.4]
  assign _T_13 = s1_valid & s1_can_request_refill; // @[ICache.scala 181:54:freechips.rocketchip.system.DefaultRV32Config.fir@196177.4]
  assign refill_tag = refill_paddr[31:12]; // @[ICache.scala 183:33:freechips.rocketchip.system.DefaultRV32Config.fir@196187.4]
  assign refill_idx = refill_paddr[11:6]; // @[ICache.scala 479:21:freechips.rocketchip.system.DefaultRV32Config.fir@196188.4]
  assign refill_one_beat = auto_master_out_d_valid & auto_master_out_d_bits_opcode[0]; // @[ICache.scala 185:41:freechips.rocketchip.system.DefaultRV32Config.fir@196191.4]
  assign _T_22 = 27'hfff << auto_master_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@196199.4]
  assign _T_24 = ~_T_22[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@196201.4]
  assign _T_27 = auto_master_out_d_bits_opcode[0] ? _T_24[11:2] : 10'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@196204.4]
  assign _T_30 = _T_28 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@196207.4]
  assign _T_31 = _T_28 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@196208.4]
  assign _T_32 = _T_28 == 10'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@196209.4]
  assign _T_33 = _T_27 == 10'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@196210.4]
  assign _T_34 = _T_32 | _T_33; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@196211.4]
  assign d_done = _T_34 & auto_master_out_d_valid; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@196212.4]
  assign _T_35 = ~_T_30; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@196213.4]
  assign refill_cnt = _T_27 & _T_35; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@196214.4]
  assign refill_done = refill_one_beat & d_done; // @[ICache.scala 191:37:freechips.rocketchip.system.DefaultRV32Config.fir@196219.4]
  assign _T_44 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@196249.4]
  assign _T_52 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_44}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@196257.4]
  assign repl_way = _T_52[1:0]; // @[ICache.scala 197:35:freechips.rocketchip.system.DefaultRV32Config.fir@196258.4]
  assign _T_55 = {repl_way,refill_idx}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@196260.4]
  assign _T_67 = ~refill_done; // @[ICache.scala 214:70:freechips.rocketchip.system.DefaultRV32Config.fir@196278.4]
  assign _T_68 = _T_67 & s0_valid; // @[ICache.scala 214:83:freechips.rocketchip.system.DefaultRV32Config.fir@196279.4]
  assign _T_72 = refill_cnt > 10'h0; // @[ICache.scala 216:58:freechips.rocketchip.system.DefaultRV32Config.fir@196290.4]
  assign _T_73 = _T_72 & accruedRefillError; // @[ICache.scala 216:62:freechips.rocketchip.system.DefaultRV32Config.fir@196291.4]
  assign refillError = auto_master_out_d_bits_corrupt | _T_73; // @[ICache.scala 216:43:freechips.rocketchip.system.DefaultRV32Config.fir@196292.4]
  assign _T_87 = ~invalidated; // @[ICache.scala 231:75:freechips.rocketchip.system.DefaultRV32Config.fir@196330.6]
  assign _T_88 = refill_done & _T_87; // @[ICache.scala 231:72:freechips.rocketchip.system.DefaultRV32Config.fir@196331.6]
  assign _T_89 = 256'h1 << _T_55; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196332.6]
  assign _T_90 = vb_array | _T_89; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196333.6]
  assign _T_91 = ~vb_array; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196334.6]
  assign _T_92 = _T_91 | _T_89; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196335.6]
  assign _T_93 = ~_T_92; // @[ICache.scala 231:32:freechips.rocketchip.system.DefaultRV32Config.fir@196336.6]
  assign s2_tag_disparity = |4'h0; // @[ICache.scala 304:72:freechips.rocketchip.system.DefaultRV32Config.fir@196614.4]
  assign _T_297 = s2_valid & s2_tag_disparity; // @[ICache.scala 327:22:freechips.rocketchip.system.DefaultRV32Config.fir@196641.4]
  assign invalidate = _T_297 | io_invalidate; // @[ICache.scala 327:39:freechips.rocketchip.system.DefaultRV32Config.fir@196642.4]
  assign _GEN_30 = invalidate | invalidated; // @[ICache.scala 234:21:freechips.rocketchip.system.DefaultRV32Config.fir@196343.4]
  assign s1_tl_error_0 = s1_tag_hit_0 & tag_array_RW0_rdata_0[20]; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196382.4]
  assign s1_tl_error_1 = s1_tag_hit_1 & tag_array_RW0_rdata_1[20]; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196413.4]
  assign s1_tl_error_2 = s1_tag_hit_2 & tag_array_RW0_rdata_2[20]; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196444.4]
  assign s1_tl_error_3 = s1_tag_hit_3 & tag_array_RW0_rdata_3[20]; // @[ICache.scala 260:32:freechips.rocketchip.system.DefaultRV32Config.fir@196475.4]
  assign _T_208 = ~s1_valid; // @[ICache.scala 263:10:freechips.rocketchip.system.DefaultRV32Config.fir@196480.4]
  assign _T_217 = s1_tag_hit_0 + s1_tag_hit_1; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196489.4]
  assign _T_219 = s1_tag_hit_2 + s1_tag_hit_3; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196491.4]
  assign _T_221 = _T_217 + _T_219; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@196493.4]
  assign _T_223 = _T_221 <= 3'h1; // @[ICache.scala 263:115:freechips.rocketchip.system.DefaultRV32Config.fir@196495.4]
  assign _T_224 = _T_208 | _T_223; // @[ICache.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@196496.4]
  assign _T_226 = _T_224 | reset; // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196498.4]
  assign _T_227 = ~_T_226; // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196499.4]
  assign _T_234 = refill_one_beat & _T_87; // @[ICache.scala 281:32:freechips.rocketchip.system.DefaultRV32Config.fir@196511.4]
  assign _T_238 = {refill_idx, 4'h0}; // @[ICache.scala 282:52:freechips.rocketchip.system.DefaultRV32Config.fir@196515.4]
  assign _T_239 = _T_238 | refill_cnt; // @[ICache.scala 282:79:freechips.rocketchip.system.DefaultRV32Config.fir@196516.4]
  assign _T_255 = ~_T_234; // @[ICache.scala 291:41:freechips.rocketchip.system.DefaultRV32Config.fir@196551.4]
  assign _T_256 = _T_255 & s0_valid; // @[ICache.scala 291:46:freechips.rocketchip.system.DefaultRV32Config.fir@196552.4]
  assign s1_dout_0 = data_arrays_0_RW0_rdata_0; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  assign s1_dout_1 = data_arrays_0_RW0_rdata_1; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  assign s1_dout_2 = data_arrays_0_RW0_rdata_2; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  assign s1_dout_3 = data_arrays_0_RW0_rdata_3; // @[ICache.scala 292:71:freechips.rocketchip.system.DefaultRV32Config.fir@196564.4]
  assign _T_274 = s2_tag_hit_0 ? s2_dout_0 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196595.4]
  assign _T_275 = s2_tag_hit_1 ? s2_dout_1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196596.4]
  assign _T_276 = s2_tag_hit_2 ? s2_dout_2 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196597.4]
  assign _T_277 = s2_tag_hit_3 ? s2_dout_3 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196598.4]
  assign _T_278 = _T_274 | _T_275; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196599.4]
  assign _T_279 = _T_278 | _T_276; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@196600.4]
  assign _T_287 = {s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0}; // @[ICache.scala 305:43:freechips.rocketchip.system.DefaultRV32Config.fir@196617.4]
  assign _T_288 = |_T_287; // @[ICache.scala 305:50:freechips.rocketchip.system.DefaultRV32Config.fir@196618.4]
  assign _T_395 = ~refill_valid; // @[ICache.scala 469:9:freechips.rocketchip.system.DefaultRV32Config.fir@196767.4]
  assign _GEN_74 = refill_fire | refill_valid; // @[ICache.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@196771.4]
  assign auto_master_out_a_valid = s2_miss & _T_12; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@196134.4]
  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0}; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@196134.4]
  assign io_req_ready = ~refill_one_beat; // @[ICache.scala 187:16:freechips.rocketchip.system.DefaultRV32Config.fir@196195.4]
  assign io_resp_valid = s2_valid & s2_hit; // @[ICache.scala 332:21:freechips.rocketchip.system.DefaultRV32Config.fir@196649.4]
  assign io_resp_bits_data = _T_279 | _T_277; // @[ICache.scala 329:25:freechips.rocketchip.system.DefaultRV32Config.fir@196645.4]
  assign io_resp_bits_replay = |4'h0; // @[ICache.scala 331:27:freechips.rocketchip.system.DefaultRV32Config.fir@196647.4]
  assign io_resp_bits_ae = s2_tl_error; // @[ICache.scala 330:23:freechips.rocketchip.system.DefaultRV32Config.fir@196646.4]
  assign MaxPeriodFibonacciLFSR_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196223.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196224.4]
  assign MaxPeriodFibonacciLFSR_io_increment = auto_master_out_a_ready & s2_request_refill; // @[PRNG.scala 85:23:freechips.rocketchip.system.DefaultRV32Config.fir@196242.4]
  assign tag_array_RW0_wdata_0 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196307.8]
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196310.8]
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196313.8]
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196316.8]
  assign tag_array_RW0_wmask_0 = repl_way == 2'h0; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196305.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196307.8]
  assign tag_array_RW0_wmask_1 = repl_way == 2'h1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196305.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196310.8]
  assign tag_array_RW0_wmask_2 = repl_way == 2'h2; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196305.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196313.8]
  assign tag_array_RW0_wmask_3 = repl_way == 2'h3; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196305.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196316.8]
  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196539.8]
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196542.8]
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196545.8]
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196548.8]
  assign data_arrays_0_RW0_wmask_0 = repl_way == 2'h0; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196537.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196539.8]
  assign data_arrays_0_RW0_wmask_1 = repl_way == 2'h1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196537.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196542.8]
  assign data_arrays_0_RW0_wmask_2 = repl_way == 2'h2; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196537.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196545.8]
  assign data_arrays_0_RW0_wmask_3 = repl_way == 2'h3; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196537.6 :freechips.rocketchip.system.DefaultRV32Config.fir@196548.8]
  assign tag_array_RW0_wmode = refill_one_beat & d_done;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = _T_68 | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : io_req_bits_addr[11:6];
  assign data_arrays_0_RW0_wmode = refill_one_beat & _T_87;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_256 | _T_234;
  assign data_arrays_0_RW0_addr = refill_one_beat ? _T_239 : io_req_bits_addr[11:2];
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {8{`RANDOM}};
  vb_array = _RAND_1[255:0];
  _RAND_2 = {1{`RANDOM}};
  s2_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s2_hit = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  invalidated = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  refill_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_12 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  refill_paddr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  _T_28 = _RAND_8[9:0];
  _RAND_9 = {1{`RANDOM}};
  accruedRefillError = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s2_tag_hit_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tag_hit_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_tag_hit_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_tag_hit_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_dout_0 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  s2_dout_1 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  s2_dout_2 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  s2_dout_3 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  s2_tl_error = _RAND_18[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= s0_valid;
    end
    if (reset) begin
      vb_array <= 256'h0;
    end else if (invalidate) begin
      vb_array <= 256'h0;
    end else if (refill_one_beat) begin
      if (_T_88) begin
        vb_array <= _T_90;
      end else begin
        vb_array <= _T_93;
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_5;
    end
    s2_hit <= s1_hit;
    if (_T_395) begin
      invalidated <= 1'h0;
    end else begin
      invalidated <= _GEN_30;
    end
    if (reset) begin
      refill_valid <= 1'h0;
    end else if (refill_done) begin
      refill_valid <= 1'h0;
    end else begin
      refill_valid <= _GEN_74;
    end
    _T_12 <= ~_T_11;
    if (_T_13) begin
      refill_paddr <= io_s1_paddr;
    end
    if (reset) begin
      _T_28 <= 10'h0;
    end else if (auto_master_out_d_valid) begin
      if (_T_31) begin
        if (auto_master_out_d_bits_opcode[0]) begin
          _T_28 <= _T_24[11:2];
        end else begin
          _T_28 <= 10'h0;
        end
      end else begin
        _T_28 <= _T_30;
      end
    end
    if (refill_one_beat) begin
      accruedRefillError <= refillError;
    end
    if (s1_valid) begin
      s2_tag_hit_0 <= s1_tag_hit_0;
    end
    if (s1_valid) begin
      s2_tag_hit_1 <= s1_tag_hit_1;
    end
    if (s1_valid) begin
      s2_tag_hit_2 <= s1_tag_hit_2;
    end
    if (s1_valid) begin
      s2_tag_hit_3 <= s1_tag_hit_3;
    end
    if (s1_valid) begin
      s2_dout_0 <= s1_dout_0;
    end
    if (s1_valid) begin
      s2_dout_1 <= s1_dout_1;
    end
    if (s1_valid) begin
      s2_dout_2 <= s1_dout_2;
    end
    if (s1_valid) begin
      s2_dout_3 <= s1_dout_3;
    end
    if (s1_valid) begin
      s2_tl_error <= _T_288;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_227) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:263 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n"); // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196501.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_227) begin
          $fatal; // @[ICache.scala 263:9:freechips.rocketchip.system.DefaultRV32Config.fir@196502.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
