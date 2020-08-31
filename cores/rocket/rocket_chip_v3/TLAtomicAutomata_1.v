module TLAtomicAutomata_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53436.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53437.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53438.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [4:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [27:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [4:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [4:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [27:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [4:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
  input         auto_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53439.4]
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
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [4:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [27:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire [4:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
  reg [1:0] _T_4_0_state; // @[AtomicAutomata.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@53479.4]
  reg [2:0] _T_5_0_bits_opcode; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [2:0] _T_5_0_bits_param; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [3:0] _T_5_0_bits_size; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [4:0] _T_5_0_bits_source; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [27:0] _T_5_0_bits_address; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [3:0] _T_5_0_bits_mask; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [31:0] _T_5_0_bits_data; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg  _T_5_0_bits_corrupt; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [3:0] _T_5_0_lut; // @[AtomicAutomata.scala 77:24:freechips.rocketchip.system.DefaultRV32Config.fir@53480.4]
  reg [31:0] _T_6_0_data; // @[AtomicAutomata.scala 78:24:freechips.rocketchip.system.DefaultRV32Config.fir@53481.4]
  reg  _T_6_0_denied; // @[AtomicAutomata.scala 78:24:freechips.rocketchip.system.DefaultRV32Config.fir@53481.4]
  reg  _T_6_0_corrupt; // @[AtomicAutomata.scala 78:24:freechips.rocketchip.system.DefaultRV32Config.fir@53481.4]
  wire  _T_7; // @[AtomicAutomata.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@53482.4]
  wire  _T_8; // @[AtomicAutomata.scala 81:44:freechips.rocketchip.system.DefaultRV32Config.fir@53483.4]
  wire  _T_9; // @[AtomicAutomata.scala 82:49:freechips.rocketchip.system.DefaultRV32Config.fir@53484.4]
  wire  _T_11; // @[AtomicAutomata.scala 82:57:freechips.rocketchip.system.DefaultRV32Config.fir@53486.4]
  wire  _T_12; // @[AtomicAutomata.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@53487.4]
  wire  _T_14; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@53489.4]
  wire [27:0] _T_17; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@53492.4]
  wire [28:0] _T_18; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@53493.4]
  wire [28:0] _T_20; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@53495.4]
  wire  _T_21; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@53496.4]
  wire  _T_22; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@53497.4]
  wire  _T_89; // @[AtomicAutomata.scala 90:47:freechips.rocketchip.system.DefaultRV32Config.fir@53564.4]
  wire  _T_90; // @[AtomicAutomata.scala 91:47:freechips.rocketchip.system.DefaultRV32Config.fir@53565.4]
  wire  _T_91; // @[AtomicAutomata.scala 92:63:freechips.rocketchip.system.DefaultRV32Config.fir@53566.4]
  wire  _T_92; // @[AtomicAutomata.scala 92:32:freechips.rocketchip.system.DefaultRV32Config.fir@53567.4]
  wire [1:0] _T_108; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53583.4]
  wire [1:0] _T_111; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53586.4]
  wire [1:0] _T_114; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53589.4]
  wire [1:0] _T_117; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53592.4]
  wire [1:0] _T_120; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53595.4]
  wire [1:0] _T_123; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53598.4]
  wire [1:0] _T_126; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53601.4]
  wire [1:0] _T_129; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53604.4]
  wire [1:0] _T_132; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53607.4]
  wire [1:0] _T_135; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53610.4]
  wire [1:0] _T_138; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53613.4]
  wire [1:0] _T_141; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53616.4]
  wire [1:0] _T_144; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53619.4]
  wire [1:0] _T_147; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53622.4]
  wire [1:0] _T_150; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53625.4]
  wire [1:0] _T_153; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53628.4]
  wire [1:0] _T_156; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53631.4]
  wire [1:0] _T_159; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53634.4]
  wire [1:0] _T_162; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53637.4]
  wire [1:0] _T_165; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53640.4]
  wire [1:0] _T_168; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53643.4]
  wire [1:0] _T_171; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53646.4]
  wire [1:0] _T_174; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53649.4]
  wire [1:0] _T_177; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53652.4]
  wire [1:0] _T_180; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53655.4]
  wire [1:0] _T_183; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53658.4]
  wire [1:0] _T_186; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53661.4]
  wire [1:0] _T_189; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53664.4]
  wire [1:0] _T_192; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53667.4]
  wire [1:0] _T_195; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53670.4]
  wire [1:0] _T_198; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53673.4]
  wire [1:0] _T_201; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53676.4]
  wire [3:0] _T_202; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53677.4]
  wire [3:0] _T_204; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53679.4]
  wire [3:0] _T_206; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53681.4]
  wire [3:0] _T_208; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53683.4]
  wire [3:0] _T_210; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53685.4]
  wire [3:0] _T_212; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53687.4]
  wire [3:0] _T_214; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53689.4]
  wire [3:0] _T_216; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53691.4]
  wire [3:0] _T_218; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53693.4]
  wire [3:0] _T_220; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53695.4]
  wire [3:0] _T_222; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53697.4]
  wire [3:0] _T_224; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53699.4]
  wire [3:0] _T_226; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53701.4]
  wire [3:0] _T_228; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53703.4]
  wire [3:0] _T_230; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53705.4]
  wire [3:0] _T_232; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53707.4]
  wire [3:0] _T_234; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53709.4]
  wire [3:0] _T_236; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53711.4]
  wire [3:0] _T_238; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53713.4]
  wire [3:0] _T_240; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53715.4]
  wire [3:0] _T_242; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53717.4]
  wire [3:0] _T_244; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53719.4]
  wire [3:0] _T_246; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53721.4]
  wire [3:0] _T_248; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53723.4]
  wire [3:0] _T_250; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53725.4]
  wire [3:0] _T_252; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53727.4]
  wire [3:0] _T_254; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53729.4]
  wire [3:0] _T_256; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53731.4]
  wire [3:0] _T_258; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53733.4]
  wire [3:0] _T_260; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53735.4]
  wire [3:0] _T_262; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53737.4]
  wire [3:0] _T_264; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53739.4]
  wire [7:0] _T_272; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53747.4]
  wire [15:0] _T_280; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53755.4]
  wire [7:0] _T_287; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53762.4]
  wire [31:0] _T_296; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53771.4]
  wire [3:0] _T_300; // @[AtomicAutomata.scala 121:25:freechips.rocketchip.system.DefaultRV32Config.fir@53775.4]
  wire [3:0] _GEN_39; // @[AtomicAutomata.scala 121:31:freechips.rocketchip.system.DefaultRV32Config.fir@53777.4]
  wire [3:0] _T_302; // @[AtomicAutomata.scala 121:31:freechips.rocketchip.system.DefaultRV32Config.fir@53777.4]
  wire [3:0] _T_303; // @[AtomicAutomata.scala 121:23:freechips.rocketchip.system.DefaultRV32Config.fir@53778.4]
  wire [3:0] _T_310; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53785.4]
  wire [3:0] _T_317; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53792.4]
  wire [3:0] _T_318; // @[AtomicAutomata.scala 125:38:freechips.rocketchip.system.DefaultRV32Config.fir@53793.4]
  wire [4:0] _T_319; // @[AtomicAutomata.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@53794.4]
  wire [3:0] _T_321; // @[AtomicAutomata.scala 126:38:freechips.rocketchip.system.DefaultRV32Config.fir@53796.4]
  wire [4:0] _T_322; // @[AtomicAutomata.scala 126:49:freechips.rocketchip.system.DefaultRV32Config.fir@53797.4]
  wire [4:0] _T_324; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53799.4]
  wire [3:0] _T_326; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53801.4]
  wire [5:0] _T_327; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53802.4]
  wire [3:0] _T_329; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53804.4]
  wire [7:0] _T_336; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53811.4]
  wire [7:0] _T_338; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53813.4]
  wire [7:0] _T_340; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53815.4]
  wire [7:0] _T_342; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53817.4]
  wire [31:0] _T_345; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53820.4]
  wire [4:0] _T_346; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53821.4]
  wire [3:0] _T_348; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53823.4]
  wire [5:0] _T_349; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53824.4]
  wire [3:0] _T_351; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53826.4]
  wire [7:0] _T_358; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53833.4]
  wire [7:0] _T_360; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53835.4]
  wire [7:0] _T_362; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53837.4]
  wire [7:0] _T_364; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53839.4]
  wire [31:0] _T_367; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53842.4]
  wire [7:0] _T_373; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53848.4]
  wire [7:0] _T_375; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53850.4]
  wire [7:0] _T_377; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53852.4]
  wire [7:0] _T_379; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53854.4]
  wire [31:0] _T_382; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53857.4]
  wire [31:0] _T_383; // @[AtomicAutomata.scala 131:28:freechips.rocketchip.system.DefaultRV32Config.fir@53858.4]
  wire [31:0] _T_384; // @[AtomicAutomata.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@53859.4]
  wire [31:0] _T_385; // @[AtomicAutomata.scala 132:28:freechips.rocketchip.system.DefaultRV32Config.fir@53860.4]
  wire [31:0] _T_386; // @[AtomicAutomata.scala 132:41:freechips.rocketchip.system.DefaultRV32Config.fir@53861.4]
  wire [31:0] _T_387; // @[AtomicAutomata.scala 133:43:freechips.rocketchip.system.DefaultRV32Config.fir@53862.4]
  wire [31:0] _T_388; // @[AtomicAutomata.scala 133:26:freechips.rocketchip.system.DefaultRV32Config.fir@53863.4]
  wire [31:0] _T_390; // @[AtomicAutomata.scala 134:33:freechips.rocketchip.system.DefaultRV32Config.fir@53865.4]
  wire  _T_392; // @[AtomicAutomata.scala 136:38:freechips.rocketchip.system.DefaultRV32Config.fir@53867.4]
  wire  _T_395; // @[AtomicAutomata.scala 137:39:freechips.rocketchip.system.DefaultRV32Config.fir@53870.4]
  wire  _T_397; // @[AtomicAutomata.scala 137:55:freechips.rocketchip.system.DefaultRV32Config.fir@53872.4]
  wire  _T_398; // @[AtomicAutomata.scala 137:27:freechips.rocketchip.system.DefaultRV32Config.fir@53873.4]
  wire  _T_399; // @[AtomicAutomata.scala 138:31:freechips.rocketchip.system.DefaultRV32Config.fir@53874.4]
  wire [31:0] _T_400; // @[AtomicAutomata.scala 139:50:freechips.rocketchip.system.DefaultRV32Config.fir@53875.4]
  wire [31:0] _T_401; // @[AtomicAutomata.scala 139:28:freechips.rocketchip.system.DefaultRV32Config.fir@53876.4]
  wire [31:0] _T_403; // @[AtomicAutomata.scala 145:14:freechips.rocketchip.system.DefaultRV32Config.fir@53878.4]
  wire  _T_405; // @[AtomicAutomata.scala 149:23:freechips.rocketchip.system.DefaultRV32Config.fir@53881.4]
  wire  _T_406; // @[AtomicAutomata.scala 149:53:freechips.rocketchip.system.DefaultRV32Config.fir@53882.4]
  wire  _T_407; // @[AtomicAutomata.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@53883.4]
  reg [9:0] _T_500; // @[Arbiter.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@54017.4]
  wire  _T_501; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@54018.4]
  wire  _T_409; // @[AtomicAutomata.scala 151:38:freechips.rocketchip.system.DefaultRV32Config.fir@53886.4]
  wire [1:0] _T_507; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@54024.4]
  wire [2:0] _T_508; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@54025.4]
  wire [1:0] _T_510; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@54027.4]
  wire [2:0] _T_512; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@54029.4]
  wire [1:0] _T_514; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@54031.4]
  reg  _T_560_1; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@54098.4]
  wire  _T_563_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@54103.4]
  wire  _T_565; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@54106.4]
  wire  _T_410; // @[AtomicAutomata.scala 153:15:freechips.rocketchip.system.DefaultRV32Config.fir@53889.4]
  wire [2:0] _GEN_0; // @[AtomicAutomata.scala 153:31:freechips.rocketchip.system.DefaultRV32Config.fir@53890.4]
  wire [2:0] _GEN_1; // @[AtomicAutomata.scala 153:31:freechips.rocketchip.system.DefaultRV32Config.fir@53890.4]
  wire  _T_412; // @[AtomicAutomata.scala 166:45:freechips.rocketchip.system.DefaultRV32Config.fir@53897.4]
  wire [1:0] _T_458; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@53949.4]
  wire [1:0] _T_460; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@53951.4]
  wire  _T_461; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@53952.4]
  wire  _T_464; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@53955.4]
  wire  _T_466; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53957.4]
  wire  _T_467; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53958.4]
  wire  _T_469; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53960.4]
  wire  _T_470; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53961.4]
  wire  _T_473; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@53964.4]
  wire  _T_474; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53965.4]
  wire  _T_475; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53966.4]
  wire  _T_476; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53967.4]
  wire  _T_477; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53968.4]
  wire  _T_478; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53969.4]
  wire  _T_479; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53970.4]
  wire  _T_480; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53971.4]
  wire  _T_481; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53972.4]
  wire  _T_482; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53973.4]
  wire  _T_483; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53974.4]
  wire  _T_484; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53975.4]
  wire  _T_485; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53976.4]
  wire [26:0] _T_490; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@53985.4]
  wire [11:0] _T_492; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@53987.4]
  wire  _T_495; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@53990.4]
  wire  _T_502; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@54019.4]
  wire  _T_518; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@54037.4]
  wire  _T_519; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@54038.4]
  wire  _T_525; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@54048.4]
  wire  _T_527; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@54050.4]
  wire  _T_530; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@54053.4]
  wire  _T_531; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@54054.4]
  wire  _T_534; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54057.4]
  wire  _T_535; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54058.4]
  wire  _T_536; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@54063.4]
  wire  _T_537; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@54064.4]
  wire  _T_539; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@54066.4]
  wire  _T_541; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54068.4]
  wire  _T_542; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54069.4]
  wire  _T_546; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@54077.4]
  wire  _T_548; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54079.4]
  wire  _T_549; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54080.4]
  reg  _T_560_0; // @[Arbiter.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@54098.4]
  wire  _T_561_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@54099.4]
  wire  _T_561_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@54099.4]
  wire  _T_567; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54109.4]
  wire  _T_568; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54110.4]
  wire  _T_569; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54111.4]
  wire  _T_571; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@54114.4]
  wire  _T_555; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@54090.4]
  wire [9:0] _GEN_40; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@54091.4]
  wire [9:0] _T_557; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@54092.4]
  wire  _T_563_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@54103.4]
  wire  _T_564; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@54104.4]
  wire [79:0] _T_582; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54128.4]
  wire [79:0] _T_583; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54129.4]
  wire [79:0] _T_590; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54136.4]
  wire [79:0] _T_591; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54137.4]
  wire [79:0] _T_592; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54138.4]
  wire  _T_606; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54189.4]
  wire  _T_608; // @[AtomicAutomata.scala 174:31:freechips.rocketchip.system.DefaultRV32Config.fir@54191.4]
  wire [2:0] _GEN_41; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54197.8]
  wire  _T_610; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54197.8]
  wire  _T_612; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54199.8]
  wire  _T_614; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54201.8]
  wire  _T_616; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54209.4]
  reg [9:0] _T_625; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@54223.4]
  wire  _T_628; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@54226.4]
  wire  _T_640; // @[AtomicAutomata.scala 213:40:freechips.rocketchip.system.DefaultRV32Config.fir@54241.4]
  wire  _T_646; // @[AtomicAutomata.scala 232:30:freechips.rocketchip.system.DefaultRV32Config.fir@54257.4]
  wire  _T_636; // @[AtomicAutomata.scala 204:53:freechips.rocketchip.system.DefaultRV32Config.fir@54237.4]
  wire  _T_637; // @[AtomicAutomata.scala 205:83:freechips.rocketchip.system.DefaultRV32Config.fir@54238.4]
  wire  _T_647; // @[AtomicAutomata.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@54258.4]
  wire  _T_652; // @[AtomicAutomata.scala 236:35:freechips.rocketchip.system.DefaultRV32Config.fir@54264.4]
  wire  _T_617; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54215.4]
  wire [26:0] _T_619; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@54217.4]
  wire [11:0] _T_621; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@54219.4]
  wire [9:0] _T_627; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@54225.4]
  wire  _T_641; // @[AtomicAutomata.scala 214:40:freechips.rocketchip.system.DefaultRV32Config.fir@54242.4]
  wire  _T_643; // @[AtomicAutomata.scala 216:28:freechips.rocketchip.system.DefaultRV32Config.fir@54244.4]
  wire  _T_644; // @[AtomicAutomata.scala 218:22:freechips.rocketchip.system.DefaultRV32Config.fir@54246.6]
  wire  _T_648; // @[AtomicAutomata.scala 233:33:freechips.rocketchip.system.DefaultRV32Config.fir@54259.4]
  wire  _T_649; // @[AtomicAutomata.scala 233:42:freechips.rocketchip.system.DefaultRV32Config.fir@54260.4]
  wire  _T_650; // @[AtomicAutomata.scala 235:38:freechips.rocketchip.system.DefaultRV32Config.fir@54261.4]
  wire  _T_653; // @[AtomicAutomata.scala 242:46:freechips.rocketchip.system.DefaultRV32Config.fir@54270.6]
  wire  _T_654; // @[AtomicAutomata.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@54272.6]
  TLMonitor_19 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@53446.4]
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
  assign _T_7 = _T_4_0_state == 2'h0; // @[AtomicAutomata.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@53482.4]
  assign _T_8 = _T_4_0_state == 2'h2; // @[AtomicAutomata.scala 81:44:freechips.rocketchip.system.DefaultRV32Config.fir@53483.4]
  assign _T_9 = _T_4_0_state == 2'h3; // @[AtomicAutomata.scala 82:49:freechips.rocketchip.system.DefaultRV32Config.fir@53484.4]
  assign _T_11 = _T_9 | _T_8; // @[AtomicAutomata.scala 82:57:freechips.rocketchip.system.DefaultRV32Config.fir@53486.4]
  assign _T_12 = _T_4_0_state != 2'h0; // @[AtomicAutomata.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@53487.4]
  assign _T_14 = auto_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@53489.4]
  assign _T_17 = auto_in_a_bits_address ^ 28'h2000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@53492.4]
  assign _T_18 = {1'b0,$signed(_T_17)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@53493.4]
  assign _T_20 = $signed(_T_18) & 29'sha012000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@53495.4]
  assign _T_21 = $signed(_T_20) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@53496.4]
  assign _T_22 = _T_14 & _T_21; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@53497.4]
  assign _T_89 = auto_in_a_bits_opcode == 3'h3; // @[AtomicAutomata.scala 90:47:freechips.rocketchip.system.DefaultRV32Config.fir@53564.4]
  assign _T_90 = auto_in_a_bits_opcode == 3'h2; // @[AtomicAutomata.scala 91:47:freechips.rocketchip.system.DefaultRV32Config.fir@53565.4]
  assign _T_91 = _T_90 ? _T_22 : 1'h1; // @[AtomicAutomata.scala 92:63:freechips.rocketchip.system.DefaultRV32Config.fir@53566.4]
  assign _T_92 = _T_89 ? _T_22 : _T_91; // @[AtomicAutomata.scala 92:32:freechips.rocketchip.system.DefaultRV32Config.fir@53567.4]
  assign _T_108 = {_T_5_0_bits_data[0],_T_6_0_data[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53583.4]
  assign _T_111 = {_T_5_0_bits_data[1],_T_6_0_data[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53586.4]
  assign _T_114 = {_T_5_0_bits_data[2],_T_6_0_data[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53589.4]
  assign _T_117 = {_T_5_0_bits_data[3],_T_6_0_data[3]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53592.4]
  assign _T_120 = {_T_5_0_bits_data[4],_T_6_0_data[4]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53595.4]
  assign _T_123 = {_T_5_0_bits_data[5],_T_6_0_data[5]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53598.4]
  assign _T_126 = {_T_5_0_bits_data[6],_T_6_0_data[6]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53601.4]
  assign _T_129 = {_T_5_0_bits_data[7],_T_6_0_data[7]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53604.4]
  assign _T_132 = {_T_5_0_bits_data[8],_T_6_0_data[8]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53607.4]
  assign _T_135 = {_T_5_0_bits_data[9],_T_6_0_data[9]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53610.4]
  assign _T_138 = {_T_5_0_bits_data[10],_T_6_0_data[10]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53613.4]
  assign _T_141 = {_T_5_0_bits_data[11],_T_6_0_data[11]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53616.4]
  assign _T_144 = {_T_5_0_bits_data[12],_T_6_0_data[12]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53619.4]
  assign _T_147 = {_T_5_0_bits_data[13],_T_6_0_data[13]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53622.4]
  assign _T_150 = {_T_5_0_bits_data[14],_T_6_0_data[14]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53625.4]
  assign _T_153 = {_T_5_0_bits_data[15],_T_6_0_data[15]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53628.4]
  assign _T_156 = {_T_5_0_bits_data[16],_T_6_0_data[16]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53631.4]
  assign _T_159 = {_T_5_0_bits_data[17],_T_6_0_data[17]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53634.4]
  assign _T_162 = {_T_5_0_bits_data[18],_T_6_0_data[18]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53637.4]
  assign _T_165 = {_T_5_0_bits_data[19],_T_6_0_data[19]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53640.4]
  assign _T_168 = {_T_5_0_bits_data[20],_T_6_0_data[20]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53643.4]
  assign _T_171 = {_T_5_0_bits_data[21],_T_6_0_data[21]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53646.4]
  assign _T_174 = {_T_5_0_bits_data[22],_T_6_0_data[22]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53649.4]
  assign _T_177 = {_T_5_0_bits_data[23],_T_6_0_data[23]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53652.4]
  assign _T_180 = {_T_5_0_bits_data[24],_T_6_0_data[24]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53655.4]
  assign _T_183 = {_T_5_0_bits_data[25],_T_6_0_data[25]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53658.4]
  assign _T_186 = {_T_5_0_bits_data[26],_T_6_0_data[26]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53661.4]
  assign _T_189 = {_T_5_0_bits_data[27],_T_6_0_data[27]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53664.4]
  assign _T_192 = {_T_5_0_bits_data[28],_T_6_0_data[28]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53667.4]
  assign _T_195 = {_T_5_0_bits_data[29],_T_6_0_data[29]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53670.4]
  assign _T_198 = {_T_5_0_bits_data[30],_T_6_0_data[30]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53673.4]
  assign _T_201 = {_T_5_0_bits_data[31],_T_6_0_data[31]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53676.4]
  assign _T_202 = _T_5_0_lut >> _T_108; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53677.4]
  assign _T_204 = _T_5_0_lut >> _T_111; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53679.4]
  assign _T_206 = _T_5_0_lut >> _T_114; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53681.4]
  assign _T_208 = _T_5_0_lut >> _T_117; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53683.4]
  assign _T_210 = _T_5_0_lut >> _T_120; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53685.4]
  assign _T_212 = _T_5_0_lut >> _T_123; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53687.4]
  assign _T_214 = _T_5_0_lut >> _T_126; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53689.4]
  assign _T_216 = _T_5_0_lut >> _T_129; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53691.4]
  assign _T_218 = _T_5_0_lut >> _T_132; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53693.4]
  assign _T_220 = _T_5_0_lut >> _T_135; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53695.4]
  assign _T_222 = _T_5_0_lut >> _T_138; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53697.4]
  assign _T_224 = _T_5_0_lut >> _T_141; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53699.4]
  assign _T_226 = _T_5_0_lut >> _T_144; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53701.4]
  assign _T_228 = _T_5_0_lut >> _T_147; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53703.4]
  assign _T_230 = _T_5_0_lut >> _T_150; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53705.4]
  assign _T_232 = _T_5_0_lut >> _T_153; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53707.4]
  assign _T_234 = _T_5_0_lut >> _T_156; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53709.4]
  assign _T_236 = _T_5_0_lut >> _T_159; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53711.4]
  assign _T_238 = _T_5_0_lut >> _T_162; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53713.4]
  assign _T_240 = _T_5_0_lut >> _T_165; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53715.4]
  assign _T_242 = _T_5_0_lut >> _T_168; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53717.4]
  assign _T_244 = _T_5_0_lut >> _T_171; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53719.4]
  assign _T_246 = _T_5_0_lut >> _T_174; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53721.4]
  assign _T_248 = _T_5_0_lut >> _T_177; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53723.4]
  assign _T_250 = _T_5_0_lut >> _T_180; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53725.4]
  assign _T_252 = _T_5_0_lut >> _T_183; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53727.4]
  assign _T_254 = _T_5_0_lut >> _T_186; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53729.4]
  assign _T_256 = _T_5_0_lut >> _T_189; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53731.4]
  assign _T_258 = _T_5_0_lut >> _T_192; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53733.4]
  assign _T_260 = _T_5_0_lut >> _T_195; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53735.4]
  assign _T_262 = _T_5_0_lut >> _T_198; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53737.4]
  assign _T_264 = _T_5_0_lut >> _T_201; // @[AtomicAutomata.scala 114:57:freechips.rocketchip.system.DefaultRV32Config.fir@53739.4]
  assign _T_272 = {_T_216[0],_T_214[0],_T_212[0],_T_210[0],_T_208[0],_T_206[0],_T_204[0],_T_202[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53747.4]
  assign _T_280 = {_T_232[0],_T_230[0],_T_228[0],_T_226[0],_T_224[0],_T_222[0],_T_220[0],_T_218[0],_T_272}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53755.4]
  assign _T_287 = {_T_248[0],_T_246[0],_T_244[0],_T_242[0],_T_240[0],_T_238[0],_T_236[0],_T_234[0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53762.4]
  assign _T_296 = {_T_264[0],_T_262[0],_T_260[0],_T_258[0],_T_256[0],_T_254[0],_T_252[0],_T_250[0],_T_287,_T_280}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53771.4]
  assign _T_300 = ~_T_5_0_bits_mask; // @[AtomicAutomata.scala 121:25:freechips.rocketchip.system.DefaultRV32Config.fir@53775.4]
  assign _GEN_39 = {{1'd0}, _T_5_0_bits_mask[3:1]}; // @[AtomicAutomata.scala 121:31:freechips.rocketchip.system.DefaultRV32Config.fir@53777.4]
  assign _T_302 = _T_300 | _GEN_39; // @[AtomicAutomata.scala 121:31:freechips.rocketchip.system.DefaultRV32Config.fir@53777.4]
  assign _T_303 = ~_T_302; // @[AtomicAutomata.scala 121:23:freechips.rocketchip.system.DefaultRV32Config.fir@53778.4]
  assign _T_310 = {_T_5_0_bits_data[31],_T_5_0_bits_data[23],_T_5_0_bits_data[15],_T_5_0_bits_data[7]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53785.4]
  assign _T_317 = {_T_6_0_data[31],_T_6_0_data[23],_T_6_0_data[15],_T_6_0_data[7]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53792.4]
  assign _T_318 = _T_310 & _T_303; // @[AtomicAutomata.scala 125:38:freechips.rocketchip.system.DefaultRV32Config.fir@53793.4]
  assign _T_319 = {_T_318, 1'h0}; // @[AtomicAutomata.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@53794.4]
  assign _T_321 = _T_317 & _T_303; // @[AtomicAutomata.scala 126:38:freechips.rocketchip.system.DefaultRV32Config.fir@53796.4]
  assign _T_322 = {_T_321, 1'h0}; // @[AtomicAutomata.scala 126:49:freechips.rocketchip.system.DefaultRV32Config.fir@53797.4]
  assign _T_324 = {_T_319[3:0], 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53799.4]
  assign _T_326 = _T_319[3:0] | _T_324[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53801.4]
  assign _T_327 = {_T_326, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53802.4]
  assign _T_329 = _T_326 | _T_327[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53804.4]
  assign _T_336 = _T_329[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53811.4]
  assign _T_338 = _T_329[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53813.4]
  assign _T_340 = _T_329[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53815.4]
  assign _T_342 = _T_329[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53817.4]
  assign _T_345 = {_T_342,_T_340,_T_338,_T_336}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53820.4]
  assign _T_346 = {_T_322[3:0], 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53821.4]
  assign _T_348 = _T_322[3:0] | _T_346[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53823.4]
  assign _T_349 = {_T_348, 2'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@53824.4]
  assign _T_351 = _T_348 | _T_349[3:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@53826.4]
  assign _T_358 = _T_351[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53833.4]
  assign _T_360 = _T_351[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53835.4]
  assign _T_362 = _T_351[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53837.4]
  assign _T_364 = _T_351[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53839.4]
  assign _T_367 = {_T_364,_T_362,_T_360,_T_358}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53842.4]
  assign _T_373 = _T_5_0_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53848.4]
  assign _T_375 = _T_5_0_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53850.4]
  assign _T_377 = _T_5_0_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53852.4]
  assign _T_379 = _T_5_0_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@53854.4]
  assign _T_382 = {_T_379,_T_377,_T_375,_T_373}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@53857.4]
  assign _T_383 = _T_5_0_bits_data & _T_382; // @[AtomicAutomata.scala 131:28:freechips.rocketchip.system.DefaultRV32Config.fir@53858.4]
  assign _T_384 = _T_383 | _T_345; // @[AtomicAutomata.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@53859.4]
  assign _T_385 = _T_6_0_data & _T_382; // @[AtomicAutomata.scala 132:28:freechips.rocketchip.system.DefaultRV32Config.fir@53860.4]
  assign _T_386 = _T_385 | _T_367; // @[AtomicAutomata.scala 132:41:freechips.rocketchip.system.DefaultRV32Config.fir@53861.4]
  assign _T_387 = ~_T_386; // @[AtomicAutomata.scala 133:43:freechips.rocketchip.system.DefaultRV32Config.fir@53862.4]
  assign _T_388 = _T_5_0_bits_param[2] ? _T_386 : _T_387; // @[AtomicAutomata.scala 133:26:freechips.rocketchip.system.DefaultRV32Config.fir@53863.4]
  assign _T_390 = _T_384 + _T_388; // @[AtomicAutomata.scala 134:33:freechips.rocketchip.system.DefaultRV32Config.fir@53865.4]
  assign _T_392 = _T_5_0_bits_param[1] == _T_384[31]; // @[AtomicAutomata.scala 136:38:freechips.rocketchip.system.DefaultRV32Config.fir@53867.4]
  assign _T_395 = _T_384[31] == _T_386[31]; // @[AtomicAutomata.scala 137:39:freechips.rocketchip.system.DefaultRV32Config.fir@53870.4]
  assign _T_397 = ~_T_390[31]; // @[AtomicAutomata.scala 137:55:freechips.rocketchip.system.DefaultRV32Config.fir@53872.4]
  assign _T_398 = _T_395 ? _T_397 : _T_392; // @[AtomicAutomata.scala 137:27:freechips.rocketchip.system.DefaultRV32Config.fir@53873.4]
  assign _T_399 = _T_5_0_bits_param[0] == _T_398; // @[AtomicAutomata.scala 138:31:freechips.rocketchip.system.DefaultRV32Config.fir@53874.4]
  assign _T_400 = _T_399 ? _T_5_0_bits_data : _T_6_0_data; // @[AtomicAutomata.scala 139:50:freechips.rocketchip.system.DefaultRV32Config.fir@53875.4]
  assign _T_401 = _T_5_0_bits_param[2] ? _T_390 : _T_400; // @[AtomicAutomata.scala 139:28:freechips.rocketchip.system.DefaultRV32Config.fir@53876.4]
  assign _T_403 = _T_5_0_bits_opcode[0] ? _T_296 : _T_401; // @[AtomicAutomata.scala 145:14:freechips.rocketchip.system.DefaultRV32Config.fir@53878.4]
  assign _T_405 = ~_T_11; // @[AtomicAutomata.scala 149:23:freechips.rocketchip.system.DefaultRV32Config.fir@53881.4]
  assign _T_406 = _T_92 | _T_7; // @[AtomicAutomata.scala 149:53:freechips.rocketchip.system.DefaultRV32Config.fir@53882.4]
  assign _T_407 = _T_405 & _T_406; // @[AtomicAutomata.scala 149:35:freechips.rocketchip.system.DefaultRV32Config.fir@53883.4]
  assign _T_501 = _T_500 == 10'h0; // @[Arbiter.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@54018.4]
  assign _T_409 = auto_in_a_valid & _T_407; // @[AtomicAutomata.scala 151:38:freechips.rocketchip.system.DefaultRV32Config.fir@53886.4]
  assign _T_507 = {_T_409,_T_8}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@54024.4]
  assign _T_508 = {_T_507, 1'h0}; // @[package.scala 217:48:freechips.rocketchip.system.DefaultRV32Config.fir@54025.4]
  assign _T_510 = _T_507 | _T_508[1:0]; // @[package.scala 217:43:freechips.rocketchip.system.DefaultRV32Config.fir@54027.4]
  assign _T_512 = {_T_510, 1'h0}; // @[Arbiter.scala 17:78:freechips.rocketchip.system.DefaultRV32Config.fir@54029.4]
  assign _T_514 = ~_T_512[1:0]; // @[Arbiter.scala 17:61:freechips.rocketchip.system.DefaultRV32Config.fir@54031.4]
  assign _T_563_1 = _T_501 ? _T_514[1] : _T_560_1; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@54103.4]
  assign _T_565 = auto_out_a_ready & _T_563_1; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@54106.4]
  assign _T_410 = ~_T_92; // @[AtomicAutomata.scala 153:15:freechips.rocketchip.system.DefaultRV32Config.fir@53889.4]
  assign _GEN_0 = _T_410 ? 3'h4 : auto_in_a_bits_opcode; // @[AtomicAutomata.scala 153:31:freechips.rocketchip.system.DefaultRV32Config.fir@53890.4]
  assign _GEN_1 = _T_410 ? 3'h0 : auto_in_a_bits_param; // @[AtomicAutomata.scala 153:31:freechips.rocketchip.system.DefaultRV32Config.fir@53890.4]
  assign _T_412 = _T_5_0_bits_corrupt | _T_6_0_corrupt; // @[AtomicAutomata.scala 166:45:freechips.rocketchip.system.DefaultRV32Config.fir@53897.4]
  assign _T_458 = 2'h1 << _T_5_0_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@53949.4]
  assign _T_460 = _T_458 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@53951.4]
  assign _T_461 = _T_5_0_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@53952.4]
  assign _T_464 = ~_T_5_0_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@53955.4]
  assign _T_466 = _T_460[1] & _T_464; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53957.4]
  assign _T_467 = _T_461 | _T_466; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53958.4]
  assign _T_469 = _T_460[1] & _T_5_0_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53960.4]
  assign _T_470 = _T_461 | _T_469; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53961.4]
  assign _T_473 = ~_T_5_0_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@53964.4]
  assign _T_474 = _T_464 & _T_473; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53965.4]
  assign _T_475 = _T_460[0] & _T_474; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53966.4]
  assign _T_476 = _T_467 | _T_475; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53967.4]
  assign _T_477 = _T_464 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53968.4]
  assign _T_478 = _T_460[0] & _T_477; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53969.4]
  assign _T_479 = _T_467 | _T_478; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53970.4]
  assign _T_480 = _T_5_0_bits_address[1] & _T_473; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53971.4]
  assign _T_481 = _T_460[0] & _T_480; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53972.4]
  assign _T_482 = _T_470 | _T_481; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53973.4]
  assign _T_483 = _T_5_0_bits_address[1] & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@53974.4]
  assign _T_484 = _T_460[0] & _T_483; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@53975.4]
  assign _T_485 = _T_470 | _T_484; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@53976.4]
  assign _T_490 = 27'hfff << auto_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@53985.4]
  assign _T_492 = ~_T_490[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@53987.4]
  assign _T_495 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@53990.4]
  assign _T_502 = _T_501 & auto_out_a_ready; // @[Arbiter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@54019.4]
  assign _T_518 = _T_514[0] & _T_8; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@54037.4]
  assign _T_519 = _T_514[1] & _T_409; // @[Arbiter.scala 88:79:freechips.rocketchip.system.DefaultRV32Config.fir@54038.4]
  assign _T_525 = _T_518 | _T_519; // @[Arbiter.scala 95:53:freechips.rocketchip.system.DefaultRV32Config.fir@54048.4]
  assign _T_527 = ~_T_518; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@54050.4]
  assign _T_530 = ~_T_519; // @[Arbiter.scala 96:67:freechips.rocketchip.system.DefaultRV32Config.fir@54053.4]
  assign _T_531 = _T_527 | _T_530; // @[Arbiter.scala 96:64:freechips.rocketchip.system.DefaultRV32Config.fir@54054.4]
  assign _T_534 = _T_531 | reset; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54057.4]
  assign _T_535 = ~_T_534; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54058.4]
  assign _T_536 = _T_8 | _T_409; // @[Arbiter.scala 98:36:freechips.rocketchip.system.DefaultRV32Config.fir@54063.4]
  assign _T_537 = ~_T_536; // @[Arbiter.scala 98:15:freechips.rocketchip.system.DefaultRV32Config.fir@54064.4]
  assign _T_539 = _T_537 | _T_525; // @[Arbiter.scala 98:41:freechips.rocketchip.system.DefaultRV32Config.fir@54066.4]
  assign _T_541 = _T_539 | reset; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54068.4]
  assign _T_542 = ~_T_541; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54069.4]
  assign _T_546 = _T_537 | _T_536; // @[Arbiter.scala 99:41:freechips.rocketchip.system.DefaultRV32Config.fir@54077.4]
  assign _T_548 = _T_546 | reset; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54079.4]
  assign _T_549 = ~_T_548; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54080.4]
  assign _T_561_0 = _T_501 ? _T_518 : _T_560_0; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@54099.4]
  assign _T_561_1 = _T_501 ? _T_519 : _T_560_1; // @[Arbiter.scala 108:30:freechips.rocketchip.system.DefaultRV32Config.fir@54099.4]
  assign _T_567 = _T_560_0 & _T_8; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54109.4]
  assign _T_568 = _T_560_1 & _T_409; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54110.4]
  assign _T_569 = _T_567 | _T_568; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54111.4]
  assign _T_571 = _T_501 ? _T_536 : _T_569; // @[Arbiter.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@54114.4]
  assign _T_555 = auto_out_a_ready & _T_571; // @[ReadyValidCancel.scala 52:33:freechips.rocketchip.system.DefaultRV32Config.fir@54090.4]
  assign _GEN_40 = {{9'd0}, _T_555}; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@54091.4]
  assign _T_557 = _T_500 - _GEN_40; // @[Arbiter.scala 104:52:freechips.rocketchip.system.DefaultRV32Config.fir@54092.4]
  assign _T_563_0 = _T_501 ? _T_514[0] : _T_560_0; // @[Arbiter.scala 112:24:freechips.rocketchip.system.DefaultRV32Config.fir@54103.4]
  assign _T_564 = auto_out_a_ready & _T_563_0; // @[Arbiter.scala 114:31:freechips.rocketchip.system.DefaultRV32Config.fir@54104.4]
  assign _T_582 = {6'h0,_T_5_0_bits_size,_T_5_0_bits_source,_T_5_0_bits_address,_T_485,_T_482,_T_479,_T_476,_T_403,_T_412}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54128.4]
  assign _T_583 = _T_561_0 ? _T_582 : 80'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54129.4]
  assign _T_590 = {_GEN_0,_GEN_1,auto_in_a_bits_size,auto_in_a_bits_source,auto_in_a_bits_address,auto_in_a_bits_mask,auto_in_a_bits_data,auto_in_a_bits_corrupt}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54136.4]
  assign _T_591 = _T_561_1 ? _T_590 : 80'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54137.4]
  assign _T_592 = _T_583 | _T_591; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@54138.4]
  assign _T_606 = _T_565 & _T_409; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54189.4]
  assign _T_608 = _T_606 & _T_410; // @[AtomicAutomata.scala 174:31:freechips.rocketchip.system.DefaultRV32Config.fir@54191.4]
  assign _GEN_41 = {{1'd0}, auto_in_a_bits_param[1:0]}; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54197.8]
  assign _T_610 = 3'h1 == _GEN_41; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54197.8]
  assign _T_612 = 3'h0 == _GEN_41; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54199.8]
  assign _T_614 = 3'h3 == _GEN_41; // @[Mux.scala 80:60:freechips.rocketchip.system.DefaultRV32Config.fir@54201.8]
  assign _T_616 = _T_564 & _T_8; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54209.4]
  assign _T_628 = _T_625 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@54226.4]
  assign _T_640 = auto_out_d_bits_opcode == 3'h1; // @[AtomicAutomata.scala 213:40:freechips.rocketchip.system.DefaultRV32Config.fir@54241.4]
  assign _T_646 = _T_628 & _T_640; // @[AtomicAutomata.scala 232:30:freechips.rocketchip.system.DefaultRV32Config.fir@54257.4]
  assign _T_636 = _T_5_0_bits_source == auto_out_d_bits_source; // @[AtomicAutomata.scala 204:53:freechips.rocketchip.system.DefaultRV32Config.fir@54237.4]
  assign _T_637 = _T_636 & _T_12; // @[AtomicAutomata.scala 205:83:freechips.rocketchip.system.DefaultRV32Config.fir@54238.4]
  assign _T_647 = _T_646 & _T_637; // @[AtomicAutomata.scala 232:40:freechips.rocketchip.system.DefaultRV32Config.fir@54258.4]
  assign _T_652 = auto_in_d_ready | _T_647; // @[AtomicAutomata.scala 236:35:freechips.rocketchip.system.DefaultRV32Config.fir@54264.4]
  assign _T_617 = _T_652 & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@54215.4]
  assign _T_619 = 27'hfff << auto_out_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@54217.4]
  assign _T_621 = ~_T_619[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@54219.4]
  assign _T_627 = _T_625 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@54225.4]
  assign _T_641 = auto_out_d_bits_opcode == 3'h0; // @[AtomicAutomata.scala 214:40:freechips.rocketchip.system.DefaultRV32Config.fir@54242.4]
  assign _T_643 = _T_617 & _T_628; // @[AtomicAutomata.scala 216:28:freechips.rocketchip.system.DefaultRV32Config.fir@54244.4]
  assign _T_644 = _T_637 & _T_640; // @[AtomicAutomata.scala 218:22:freechips.rocketchip.system.DefaultRV32Config.fir@54246.6]
  assign _T_648 = _T_628 & _T_641; // @[AtomicAutomata.scala 233:33:freechips.rocketchip.system.DefaultRV32Config.fir@54259.4]
  assign _T_649 = _T_648 & _T_637; // @[AtomicAutomata.scala 233:42:freechips.rocketchip.system.DefaultRV32Config.fir@54260.4]
  assign _T_650 = ~_T_647; // @[AtomicAutomata.scala 235:38:freechips.rocketchip.system.DefaultRV32Config.fir@54261.4]
  assign _T_653 = _T_6_0_corrupt | auto_out_d_bits_denied; // @[AtomicAutomata.scala 242:46:freechips.rocketchip.system.DefaultRV32Config.fir@54270.6]
  assign _T_654 = _T_6_0_denied | auto_out_d_bits_denied; // @[AtomicAutomata.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@54272.6]
  assign auto_in_a_ready = _T_565 & _T_407; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_valid = auto_out_d_valid & _T_650; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_opcode = _T_649 ? 3'h1 : auto_out_d_bits_opcode; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_denied = _T_649 ? _T_654 : auto_out_d_bits_denied; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_data = _T_649 ? _T_6_0_data : auto_out_d_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_in_d_bits_corrupt = _T_649 ? _T_653 : auto_out_d_bits_corrupt; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@53472.4]
  assign auto_out_a_valid = _T_501 ? _T_536 : _T_569; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_opcode = _T_592[79:77]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_param = _T_592[76:74]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_size = _T_592[73:70]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_source = _T_592[69:65]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_address = _T_592[64:37]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_mask = _T_592[36:33]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_data = _T_592[32:1]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_a_bits_corrupt = _T_592[0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign auto_out_d_ready = auto_in_d_ready | _T_647; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@53471.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53447.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@53448.4]
  assign TLMonitor_io_in_a_ready = _T_565 & _T_407; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53468.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53467.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53466.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53465.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53464.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53463.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53462.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53461.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53459.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53458.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_650; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53457.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_649 ? 3'h1 : auto_out_d_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53456.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53455.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53454.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53453.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53452.4]
  assign TLMonitor_io_in_d_bits_denied = _T_649 ? _T_654 : auto_out_d_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53451.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_649 ? _T_653 : auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@53449.4]
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
  _T_4_0_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  _T_5_0_bits_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_5_0_bits_param = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_5_0_bits_size = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_5_0_bits_source = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_5_0_bits_address = _RAND_5[27:0];
  _RAND_6 = {1{`RANDOM}};
  _T_5_0_bits_mask = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_5_0_bits_data = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  _T_5_0_bits_corrupt = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_5_0_lut = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_6_0_data = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  _T_6_0_denied = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_6_0_corrupt = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_500 = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  _T_560_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_560_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  _T_625 = _RAND_16[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_4_0_state <= 2'h0;
    end else if (_T_643) begin
      if (_T_637) begin
        if (_T_640) begin
          _T_4_0_state <= 2'h2;
        end else begin
          _T_4_0_state <= 2'h0;
        end
      end else if (_T_616) begin
        if (_T_8) begin
          _T_4_0_state <= 2'h1;
        end else if (_T_608) begin
          if (_T_7) begin
            _T_4_0_state <= 2'h3;
          end
        end
      end else if (_T_608) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_616) begin
      if (_T_8) begin
        _T_4_0_state <= 2'h1;
      end else if (_T_608) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_608) begin
      if (_T_7) begin
        _T_4_0_state <= 2'h3;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_opcode <= auto_in_a_bits_opcode;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_param <= auto_in_a_bits_param;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_size <= auto_in_a_bits_size;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_source <= auto_in_a_bits_source;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_address <= auto_in_a_bits_address;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_mask <= auto_in_a_bits_mask;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_data <= auto_in_a_bits_data;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        _T_5_0_bits_corrupt <= auto_in_a_bits_corrupt;
      end
    end
    if (_T_608) begin
      if (_T_7) begin
        if (_T_614) begin
          _T_5_0_lut <= 4'hc;
        end else if (_T_612) begin
          _T_5_0_lut <= 4'h6;
        end else if (_T_610) begin
          _T_5_0_lut <= 4'he;
        end else begin
          _T_5_0_lut <= 4'h8;
        end
      end
    end
    if (_T_643) begin
      if (_T_644) begin
        _T_6_0_data <= auto_out_d_bits_data;
      end
    end
    if (_T_643) begin
      if (_T_644) begin
        _T_6_0_denied <= auto_out_d_bits_denied;
      end
    end
    if (_T_643) begin
      if (_T_644) begin
        _T_6_0_corrupt <= auto_out_d_bits_corrupt;
      end
    end
    if (reset) begin
      _T_500 <= 10'h0;
    end else if (_T_502) begin
      if (_T_519) begin
        if (_T_495) begin
          _T_500 <= _T_492[11:2];
        end else begin
          _T_500 <= 10'h0;
        end
      end else begin
        _T_500 <= 10'h0;
      end
    end else begin
      _T_500 <= _T_557;
    end
    if (reset) begin
      _T_560_1 <= 1'h0;
    end else if (_T_501) begin
      _T_560_1 <= _T_519;
    end
    if (reset) begin
      _T_560_0 <= 1'h0;
    end else if (_T_501) begin
      _T_560_0 <= _T_518;
    end
    if (reset) begin
      _T_625 <= 10'h0;
    end else if (_T_617) begin
      if (_T_628) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_625 <= _T_621[11:2];
        end else begin
          _T_625 <= 10'h0;
        end
      end else begin
        _T_625 <= _T_627;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_535) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:96 assert((prefixOR zip earlyWinner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54060.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_535) begin
          $fatal; // @[Arbiter.scala 96:13:freechips.rocketchip.system.DefaultRV32Config.fir@54061.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_542) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:98 assert (!earlyValids.reduce(_||_) || earlyWinner.reduce(_||_))\n"); // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54071.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_542) begin
          $fatal; // @[Arbiter.scala 98:14:freechips.rocketchip.system.DefaultRV32Config.fir@54072.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_549) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:99 assert (!validQuals .reduce(_||_) || validQuals .reduce(_||_))\n"); // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54082.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_549) begin
          $fatal; // @[Arbiter.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@54083.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
