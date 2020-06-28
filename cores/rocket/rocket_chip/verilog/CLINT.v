module CLINT( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93817.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93818.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93819.4]
  output        auto_int_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output        auto_int_out_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [1:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [9:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [25:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output [1:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output [9:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93820.4]
  input         io_rtcTick // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93821.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [9:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [25:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  wire [9:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
  reg [63:0] time_; // @[CLINT.scala 69:23:freechips.rocketchip.system.DefaultRV32Config.fir@93856.4]
  wire [63:0] _T_2; // @[CLINT.scala 70:38:freechips.rocketchip.system.DefaultRV32Config.fir@93859.6]
  reg [63:0] timecmp_0; // @[CLINT.scala 73:41:freechips.rocketchip.system.DefaultRV32Config.fir@93862.4]
  reg  ipi_0; // @[CLINT.scala 74:41:freechips.rocketchip.system.DefaultRV32Config.fir@93863.4]
  wire  _T_60; // @[RegisterRouter.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@93974.4]
  wire [2:0] _T_564; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94560.4]
  wire [13:0] _T_65; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93990.4]
  wire  _T_73; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93998.4]
  wire  _T_69; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93994.4]
  wire  _T_735; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94860.4]
  wire  _T_736; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94861.4]
  wire  _T_737; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94862.4]
  wire [7:0] _T_590; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@94586.4]
  wire  _T_749; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94881.4]
  wire  _T_750; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94882.4]
  wire [7:0] _T_107; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94036.4]
  wire [7:0] _T_105; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94034.4]
  wire [7:0] _T_103; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94032.4]
  wire [7:0] _T_101; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94030.4]
  wire [31:0] _T_110; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94039.4]
  wire  _T_458; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94438.4]
  wire  _T_462; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94442.4]
  wire  _T_481; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94465.4]
  wire  _T_485; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94469.4]
  wire  _T_18; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93903.4]
  wire  _T_506; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94494.4]
  wire  _T_510; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94498.4]
  wire  _T_19; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93904.4]
  wire  _T_531; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94523.4]
  wire  _T_535; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94527.4]
  wire  _T_20; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93905.4]
  wire  _T_754; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94892.4]
  wire  _T_755; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94893.4]
  wire  _T_168; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94100.4]
  wire  _T_21; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93906.4]
  wire  _T_191; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94127.4]
  wire  _T_22; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93907.4]
  wire  _T_216; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94156.4]
  wire  _T_23; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93908.4]
  wire  _T_241; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94185.4]
  wire  _T_24; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93909.4]
  wire [7:0] _GEN_17; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94472.4]
  wire [7:0] _GEN_16; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94445.4]
  wire [7:0] _GEN_19; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94530.4]
  wire [7:0] _GEN_18; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94501.4]
  wire [7:0] _GEN_5; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94130.4]
  wire [7:0] _GEN_4; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94103.4]
  wire [7:0] _GEN_7; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94188.4]
  wire [7:0] _GEN_6; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94159.4]
  wire [63:0] _T_31; // @[RegField.scala 155:52:freechips.rocketchip.system.DefaultRV32Config.fir@93917.6]
  wire  _T_759; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94903.4]
  wire  _T_760; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94904.4]
  wire  _T_266; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94214.4]
  wire  _T_289; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94241.4]
  wire  _T_45; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93955.4]
  wire  _T_314; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94270.4]
  wire  _T_46; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93956.4]
  wire  _T_339; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94299.4]
  wire  _T_47; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93957.4]
  wire  _T_764; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94914.4]
  wire  _T_765; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94915.4]
  wire  _T_364; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94328.4]
  wire  _T_48; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93958.4]
  wire  _T_387; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94355.4]
  wire  _T_49; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93959.4]
  wire  _T_412; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94384.4]
  wire  _T_50; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93960.4]
  wire  _T_437; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94413.4]
  wire  _T_51; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93961.4]
  wire [7:0] _GEN_9; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94244.4]
  wire [7:0] _GEN_8; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94217.4]
  wire [7:0] _GEN_11; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94302.4]
  wire [7:0] _GEN_10; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94273.4]
  wire [7:0] _GEN_13; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94358.4]
  wire [7:0] _GEN_12; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94331.4]
  wire [7:0] _GEN_15; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94416.4]
  wire [7:0] _GEN_14; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94387.4]
  wire [63:0] _T_58; // @[RegField.scala 155:52:freechips.rocketchip.system.DefaultRV32Config.fir@93969.6]
  wire  _T_114; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94043.4]
  wire  _T_648; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94688.4]
  wire  _T_649; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94689.4]
  wire  _T_121; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94050.4]
  wire [1:0] _T_154; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94086.4]
  wire [31:0] _T_155; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94087.4]
  wire [31:0] _T_252; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94200.4]
  wire [31:0] _T_350; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94314.4]
  wire [31:0] _T_448; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94428.4]
  wire [31:0] _T_546; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94542.4]
  wire  _GEN_68; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_53; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_54; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_55; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_56; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_57; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_69; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_58; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_70; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire  _GEN_59; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  wire [31:0] _GEN_61; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_62; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_63; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_64; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_65; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_66; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  wire [31:0] _GEN_67; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  TLMonitor_38 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@93829.4]
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
  assign _T_2 = time_ + 64'h1; // @[CLINT.scala 70:38:freechips.rocketchip.system.DefaultRV32Config.fir@93859.6]
  assign _T_60 = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@93974.4]
  assign _T_564 = {auto_in_a_bits_address[15],auto_in_a_bits_address[14],auto_in_a_bits_address[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94560.4]
  assign _T_65 = auto_in_a_bits_address[15:2] & 14'hffe; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93990.4]
  assign _T_73 = _T_65 == 14'hffe; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93998.4]
  assign _T_69 = _T_65 == 14'h0; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@93994.4]
  assign _T_735 = auto_in_a_valid & auto_in_d_ready; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94860.4]
  assign _T_736 = ~_T_60; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94861.4]
  assign _T_737 = _T_735 & _T_736; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94862.4]
  assign _T_590 = 8'h1 << _T_564; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@94586.4]
  assign _T_749 = _T_737 & _T_590[2]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94881.4]
  assign _T_750 = _T_749 & _T_69; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94882.4]
  assign _T_107 = auto_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94036.4]
  assign _T_105 = auto_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94034.4]
  assign _T_103 = auto_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94032.4]
  assign _T_101 = auto_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@94030.4]
  assign _T_110 = {_T_107,_T_105,_T_103,_T_101}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94039.4]
  assign _T_458 = &_T_110[7:0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94438.4]
  assign _T_462 = _T_750 & _T_458; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94442.4]
  assign _T_481 = &_T_110[15:8]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94465.4]
  assign _T_485 = _T_750 & _T_481; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94469.4]
  assign _T_18 = _T_462 | _T_485; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93903.4]
  assign _T_506 = &_T_110[23:16]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94494.4]
  assign _T_510 = _T_750 & _T_506; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94498.4]
  assign _T_19 = _T_18 | _T_510; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93904.4]
  assign _T_531 = &_T_110[31:24]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94523.4]
  assign _T_535 = _T_750 & _T_531; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94527.4]
  assign _T_20 = _T_19 | _T_535; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93905.4]
  assign _T_754 = _T_737 & _T_590[3]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94892.4]
  assign _T_755 = _T_754 & _T_69; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94893.4]
  assign _T_168 = _T_755 & _T_458; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94100.4]
  assign _T_21 = _T_20 | _T_168; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93906.4]
  assign _T_191 = _T_755 & _T_481; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94127.4]
  assign _T_22 = _T_21 | _T_191; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93907.4]
  assign _T_216 = _T_755 & _T_506; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94156.4]
  assign _T_23 = _T_22 | _T_216; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93908.4]
  assign _T_241 = _T_755 & _T_531; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94185.4]
  assign _T_24 = _T_23 | _T_241; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93909.4]
  assign _GEN_17 = _T_485 ? auto_in_a_bits_data[15:8] : timecmp_0[15:8]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94472.4]
  assign _GEN_16 = _T_462 ? auto_in_a_bits_data[7:0] : timecmp_0[7:0]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94445.4]
  assign _GEN_19 = _T_535 ? auto_in_a_bits_data[31:24] : timecmp_0[31:24]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94530.4]
  assign _GEN_18 = _T_510 ? auto_in_a_bits_data[23:16] : timecmp_0[23:16]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94501.4]
  assign _GEN_5 = _T_191 ? auto_in_a_bits_data[15:8] : timecmp_0[47:40]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94130.4]
  assign _GEN_4 = _T_168 ? auto_in_a_bits_data[7:0] : timecmp_0[39:32]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94103.4]
  assign _GEN_7 = _T_241 ? auto_in_a_bits_data[31:24] : timecmp_0[63:56]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94188.4]
  assign _GEN_6 = _T_216 ? auto_in_a_bits_data[23:16] : timecmp_0[55:48]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94159.4]
  assign _T_31 = {_GEN_7,_GEN_6,_GEN_5,_GEN_4,_GEN_19,_GEN_18,_GEN_17,_GEN_16}; // @[RegField.scala 155:52:freechips.rocketchip.system.DefaultRV32Config.fir@93917.6]
  assign _T_759 = _T_737 & _T_590[4]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94903.4]
  assign _T_760 = _T_759 & _T_73; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94904.4]
  assign _T_266 = _T_760 & _T_458; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94214.4]
  assign _T_289 = _T_760 & _T_481; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94241.4]
  assign _T_45 = _T_266 | _T_289; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93955.4]
  assign _T_314 = _T_760 & _T_506; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94270.4]
  assign _T_46 = _T_45 | _T_314; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93956.4]
  assign _T_339 = _T_760 & _T_531; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94299.4]
  assign _T_47 = _T_46 | _T_339; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93957.4]
  assign _T_764 = _T_737 & _T_590[5]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94914.4]
  assign _T_765 = _T_764 & _T_73; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94915.4]
  assign _T_364 = _T_765 & _T_458; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94328.4]
  assign _T_48 = _T_47 | _T_364; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93958.4]
  assign _T_387 = _T_765 & _T_481; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94355.4]
  assign _T_49 = _T_48 | _T_387; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93959.4]
  assign _T_412 = _T_765 & _T_506; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94384.4]
  assign _T_50 = _T_49 | _T_412; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93960.4]
  assign _T_437 = _T_765 & _T_531; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94413.4]
  assign _T_51 = _T_50 | _T_437; // @[RegField.scala 155:27:freechips.rocketchip.system.DefaultRV32Config.fir@93961.4]
  assign _GEN_9 = _T_289 ? auto_in_a_bits_data[15:8] : time_[15:8]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94244.4]
  assign _GEN_8 = _T_266 ? auto_in_a_bits_data[7:0] : time_[7:0]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94217.4]
  assign _GEN_11 = _T_339 ? auto_in_a_bits_data[31:24] : time_[31:24]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94302.4]
  assign _GEN_10 = _T_314 ? auto_in_a_bits_data[23:16] : time_[23:16]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94273.4]
  assign _GEN_13 = _T_387 ? auto_in_a_bits_data[15:8] : time_[47:40]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94358.4]
  assign _GEN_12 = _T_364 ? auto_in_a_bits_data[7:0] : time_[39:32]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94331.4]
  assign _GEN_15 = _T_437 ? auto_in_a_bits_data[31:24] : time_[63:56]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94416.4]
  assign _GEN_14 = _T_412 ? auto_in_a_bits_data[23:16] : time_[55:48]; // @[RegField.scala 159:20:freechips.rocketchip.system.DefaultRV32Config.fir@94387.4]
  assign _T_58 = {_GEN_15,_GEN_14,_GEN_13,_GEN_12,_GEN_11,_GEN_10,_GEN_9,_GEN_8}; // @[RegField.scala 155:52:freechips.rocketchip.system.DefaultRV32Config.fir@93969.6]
  assign _T_114 = &_T_110[0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94043.4]
  assign _T_648 = _T_737 & _T_590[0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94688.4]
  assign _T_649 = _T_648 & _T_69; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94689.4]
  assign _T_121 = _T_649 & _T_114; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94050.4]
  assign _T_154 = {1'h0,ipi_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94086.4]
  assign _T_155 = {{30'd0}, _T_154}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@94087.4]
  assign _T_252 = {timecmp_0[63:56],timecmp_0[55:48],timecmp_0[47:40],timecmp_0[39:32]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94200.4]
  assign _T_350 = {time_[31:24],time_[23:16],time_[15:8],time_[7:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94314.4]
  assign _T_448 = {time_[63:56],time_[55:48],time_[47:40],time_[39:32]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94428.4]
  assign _T_546 = {timecmp_0[31:24],timecmp_0[23:16],timecmp_0[15:8],timecmp_0[7:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@94542.4]
  assign _GEN_68 = 3'h1 == _T_564; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_53 = _GEN_68 | _T_69; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_54 = 3'h2 == _T_564 ? _T_69 : _GEN_53; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_55 = 3'h3 == _T_564 ? _T_69 : _GEN_54; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_56 = 3'h4 == _T_564 ? _T_73 : _GEN_55; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_57 = 3'h5 == _T_564 ? _T_73 : _GEN_56; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_69 = 3'h6 == _T_564; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_58 = _GEN_69 | _GEN_57; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_70 = 3'h7 == _T_564; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_59 = _GEN_70 | _GEN_58; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94971.4]
  assign _GEN_61 = 3'h1 == _T_564 ? 32'h0 : _T_155; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_62 = 3'h2 == _T_564 ? _T_546 : _GEN_61; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_63 = 3'h3 == _T_564 ? _T_252 : _GEN_62; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_64 = 3'h4 == _T_564 ? _T_350 : _GEN_63; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_65 = 3'h5 == _T_564 ? _T_448 : _GEN_64; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_66 = 3'h6 == _T_564 ? 32'h0 : _GEN_65; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign _GEN_67 = 3'h7 == _T_564 ? 32'h0 : _GEN_66; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@94983.4]
  assign auto_int_out_0 = ipi_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@93855.4]
  assign auto_int_out_1 = time_ >= timecmp_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@93855.4]
  assign auto_in_a_ready = auto_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign auto_in_d_valid = auto_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign auto_in_d_bits_opcode = {{2'd0}, _T_60}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign auto_in_d_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign auto_in_d_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign auto_in_d_bits_data = _GEN_59 ? _GEN_67 : 32'h0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@93854.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93830.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@93831.4]
  assign TLMonitor_io_in_a_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93851.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93850.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93849.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93848.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93847.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93846.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93845.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93844.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93842.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93841.4]
  assign TLMonitor_io_in_d_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93840.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_60}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93839.4]
  assign TLMonitor_io_in_d_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93837.4]
  assign TLMonitor_io_in_d_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@93836.4]
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
  _RAND_0 = {2{`RANDOM}};
  time_ = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  timecmp_0 = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  ipi_0 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      time_ <= 64'h0;
    end else if (_T_51) begin
      time_ <= _T_58;
    end else if (io_rtcTick) begin
      time_ <= _T_2;
    end
    if (_T_24) begin
      timecmp_0 <= _T_31;
    end
    if (reset) begin
      ipi_0 <= 1'h0;
    end else if (_T_121) begin
      ipi_0 <= auto_in_a_bits_data[0];
    end
  end
endmodule
