module AXI4RAM( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228306.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228307.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228308.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
  output        auto_in_r_bits_echo_real_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228309.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [25:0] mem_R0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_R0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [25:0] mem_W0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
  wire [5:0] _T_31; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228349.4]
  wire [12:0] _T_38; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228356.4]
  wire [5:0] _T_43; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228361.4]
  wire [12:0] _T_50; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228368.4]
  wire [5:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228401.4]
  wire [12:0] _T_89; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228408.4]
  wire [5:0] _T_94; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228413.4]
  wire [12:0] _T_101; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228420.4]
  wire [28:0] _T_103; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@228423.4]
  wire [28:0] _T_105; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@228425.4]
  wire  r_sel0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@228426.4]
  wire [28:0] _T_107; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@228428.4]
  wire [28:0] _T_109; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@228430.4]
  wire  w_sel0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@228431.4]
  reg  w_full; // @[SRAM.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@228432.4]
  reg [3:0] w_id; // @[SRAM.scala 63:21:freechips.rocketchip.system.DefaultRV32Config.fir@228433.4]
  reg  w_echo_real_last; // @[SRAM.scala 64:21:freechips.rocketchip.system.DefaultRV32Config.fir@228434.4]
  reg  r_sel1; // @[SRAM.scala 65:21:freechips.rocketchip.system.DefaultRV32Config.fir@228435.4]
  reg  w_sel1; // @[SRAM.scala 66:21:freechips.rocketchip.system.DefaultRV32Config.fir@228436.4]
  wire  _T_110; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228437.4]
  wire  _GEN_0; // @[SRAM.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@228438.4]
  wire  _T_124; // @[SRAM.scala 84:50:freechips.rocketchip.system.DefaultRV32Config.fir@228483.4]
  wire  _T_125; // @[SRAM.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@228484.4]
  wire  in_aw_ready; // @[SRAM.scala 84:32:freechips.rocketchip.system.DefaultRV32Config.fir@228485.4]
  wire  _T_111; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228441.4]
  wire  _GEN_1; // @[SRAM.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@228442.4]
  reg  r_full; // @[SRAM.scala 91:25:freechips.rocketchip.system.DefaultRV32Config.fir@228495.4]
  reg [3:0] r_id; // @[SRAM.scala 92:21:freechips.rocketchip.system.DefaultRV32Config.fir@228496.4]
  reg  r_echo_real_last; // @[SRAM.scala 93:21:freechips.rocketchip.system.DefaultRV32Config.fir@228497.4]
  wire  _T_131; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228498.4]
  wire  _GEN_24; // @[SRAM.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@228499.4]
  wire  _T_140; // @[SRAM.scala 109:34:freechips.rocketchip.system.DefaultRV32Config.fir@228533.4]
  wire  in_ar_ready; // @[SRAM.scala 109:31:freechips.rocketchip.system.DefaultRV32Config.fir@228534.4]
  wire  _T_132; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  wire  _GEN_25; // @[SRAM.scala 96:25:freechips.rocketchip.system.DefaultRV32Config.fir@228503.4]
  reg  _T_138; // @[package.scala 75:91:freechips.rocketchip.system.DefaultRV32Config.fir@228522.4]
  reg [7:0] _T_139_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@228524.4]
  reg [7:0] _T_139_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@228524.4]
  reg [7:0] _T_139_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@228524.4]
  reg [7:0] _T_139_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@228524.4]
  wire [7:0] _GEN_33; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  wire [7:0] _GEN_34; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  wire [7:0] _GEN_35; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  wire [7:0] _GEN_36; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  wire [15:0] _T_144; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  wire [15:0] _T_145; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228541.4]
  mem mem ( // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4]
    .R0_addr(mem_R0_addr),
    .R0_en(mem_R0_en),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .W0_addr(mem_W0_addr),
    .W0_en(mem_W0_en),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3)
  );
  assign _T_31 = {auto_in_ar_bits_addr[7],auto_in_ar_bits_addr[6],auto_in_ar_bits_addr[5],auto_in_ar_bits_addr[4],auto_in_ar_bits_addr[3],auto_in_ar_bits_addr[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228349.4]
  assign _T_38 = {auto_in_ar_bits_addr[14],auto_in_ar_bits_addr[13],auto_in_ar_bits_addr[12],auto_in_ar_bits_addr[11],auto_in_ar_bits_addr[10],auto_in_ar_bits_addr[9],auto_in_ar_bits_addr[8],_T_31}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228356.4]
  assign _T_43 = {auto_in_ar_bits_addr[20],auto_in_ar_bits_addr[19],auto_in_ar_bits_addr[18],auto_in_ar_bits_addr[17],auto_in_ar_bits_addr[16],auto_in_ar_bits_addr[15]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228361.4]
  assign _T_50 = {auto_in_ar_bits_addr[27],auto_in_ar_bits_addr[26],auto_in_ar_bits_addr[25],auto_in_ar_bits_addr[24],auto_in_ar_bits_addr[23],auto_in_ar_bits_addr[22],auto_in_ar_bits_addr[21],_T_43}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228368.4]
  assign _T_82 = {auto_in_aw_bits_addr[7],auto_in_aw_bits_addr[6],auto_in_aw_bits_addr[5],auto_in_aw_bits_addr[4],auto_in_aw_bits_addr[3],auto_in_aw_bits_addr[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228401.4]
  assign _T_89 = {auto_in_aw_bits_addr[14],auto_in_aw_bits_addr[13],auto_in_aw_bits_addr[12],auto_in_aw_bits_addr[11],auto_in_aw_bits_addr[10],auto_in_aw_bits_addr[9],auto_in_aw_bits_addr[8],_T_82}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228408.4]
  assign _T_94 = {auto_in_aw_bits_addr[20],auto_in_aw_bits_addr[19],auto_in_aw_bits_addr[18],auto_in_aw_bits_addr[17],auto_in_aw_bits_addr[16],auto_in_aw_bits_addr[15]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228413.4]
  assign _T_101 = {auto_in_aw_bits_addr[27],auto_in_aw_bits_addr[26],auto_in_aw_bits_addr[25],auto_in_aw_bits_addr[24],auto_in_aw_bits_addr[23],auto_in_aw_bits_addr[22],auto_in_aw_bits_addr[21],_T_94}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228420.4]
  assign _T_103 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@228423.4]
  assign _T_105 = $signed(_T_103) & -29'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@228425.4]
  assign r_sel0 = $signed(_T_105) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@228426.4]
  assign _T_107 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@228428.4]
  assign _T_109 = $signed(_T_107) & -29'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@228430.4]
  assign w_sel0 = $signed(_T_109) == 29'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@228431.4]
  assign _T_110 = auto_in_b_ready & w_full; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228437.4]
  assign _GEN_0 = _T_110 ? 1'h0 : w_full; // @[SRAM.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@228438.4]
  assign _T_124 = ~w_full; // @[SRAM.scala 84:50:freechips.rocketchip.system.DefaultRV32Config.fir@228483.4]
  assign _T_125 = auto_in_b_ready | _T_124; // @[SRAM.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@228484.4]
  assign in_aw_ready = auto_in_w_valid & _T_125; // @[SRAM.scala 84:32:freechips.rocketchip.system.DefaultRV32Config.fir@228485.4]
  assign _T_111 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228441.4]
  assign _GEN_1 = _T_111 | _GEN_0; // @[SRAM.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@228442.4]
  assign _T_131 = auto_in_r_ready & r_full; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228498.4]
  assign _GEN_24 = _T_131 ? 1'h0 : r_full; // @[SRAM.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@228499.4]
  assign _T_140 = ~r_full; // @[SRAM.scala 109:34:freechips.rocketchip.system.DefaultRV32Config.fir@228533.4]
  assign in_ar_ready = auto_in_r_ready | _T_140; // @[SRAM.scala 109:31:freechips.rocketchip.system.DefaultRV32Config.fir@228534.4]
  assign _T_132 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@228502.4]
  assign _GEN_25 = _T_132 | _GEN_24; // @[SRAM.scala 96:25:freechips.rocketchip.system.DefaultRV32Config.fir@228503.4]
  assign _GEN_33 = _T_138 ? mem_R0_data_0 : _T_139_0; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  assign _GEN_34 = _T_138 ? mem_R0_data_1 : _T_139_1; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  assign _GEN_35 = _T_138 ? mem_R0_data_2 : _T_139_2; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  assign _GEN_36 = _T_138 ? mem_R0_data_3 : _T_139_3; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@228525.4]
  assign _T_144 = {_GEN_34,_GEN_33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228540.4]
  assign _T_145 = {_GEN_36,_GEN_35}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@228541.4]
  assign auto_in_aw_ready = auto_in_w_valid & _T_125; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_w_ready = auto_in_aw_valid & _T_125; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_b_valid = w_full; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_b_bits_id = w_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_b_bits_resp = w_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_b_bits_echo_real_last = w_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_ar_ready = auto_in_r_ready | _T_140; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_r_valid = r_full; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_r_bits_id = r_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_r_bits_data = {_T_145,_T_144}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_r_bits_resp = r_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign auto_in_r_bits_echo_real_last = r_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@228316.4]
  assign mem_R0_addr = {_T_50,_T_38}; // @[package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@228520.6]
  assign mem_R0_en = in_ar_ready & auto_in_ar_valid; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4 package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@228519.6]
  assign mem_R0_clk = clock; // @[package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@228520.6]
  assign mem_W0_addr = {_T_101,_T_89}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6]
  assign mem_W0_en = _T_111 & w_sel0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@228317.4 :freechips.rocketchip.system.DefaultRV32Config.fir@228468.6]
  assign mem_W0_clk = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6]
  assign mem_W0_data_0 = auto_in_w_bits_data[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228470.8]
  assign mem_W0_data_1 = auto_in_w_bits_data[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228473.8]
  assign mem_W0_data_2 = auto_in_w_bits_data[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228476.8]
  assign mem_W0_data_3 = auto_in_w_bits_data[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228479.8]
  assign mem_W0_mask_0 = auto_in_w_bits_strb[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6 :freechips.rocketchip.system.DefaultRV32Config.fir@228470.8]
  assign mem_W0_mask_1 = auto_in_w_bits_strb[1]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6 :freechips.rocketchip.system.DefaultRV32Config.fir@228473.8]
  assign mem_W0_mask_2 = auto_in_w_bits_strb[2]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6 :freechips.rocketchip.system.DefaultRV32Config.fir@228476.8]
  assign mem_W0_mask_3 = auto_in_w_bits_strb[3]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228468.6 :freechips.rocketchip.system.DefaultRV32Config.fir@228479.8]
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
  w_full = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  w_id = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  w_echo_real_last = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  r_sel1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  w_sel1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  r_full = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_id = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  r_echo_real_last = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_138 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_139_0 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  _T_139_1 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  _T_139_2 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  _T_139_3 = _RAND_12[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      w_full <= 1'h0;
    end else begin
      w_full <= _GEN_1;
    end
    if (_T_111) begin
      w_id <= auto_in_aw_bits_id;
    end
    if (_T_111) begin
      w_echo_real_last <= auto_in_aw_bits_echo_real_last;
    end
    if (_T_132) begin
      r_sel1 <= r_sel0;
    end
    if (_T_111) begin
      w_sel1 <= w_sel0;
    end
    if (reset) begin
      r_full <= 1'h0;
    end else begin
      r_full <= _GEN_25;
    end
    if (_T_132) begin
      r_id <= auto_in_ar_bits_id;
    end
    if (_T_132) begin
      r_echo_real_last <= auto_in_ar_bits_echo_real_last;
    end
    _T_138 <= in_ar_ready & auto_in_ar_valid;
    if (_T_138) begin
      _T_139_0 <= mem_R0_data_0;
    end
    if (_T_138) begin
      _T_139_1 <= mem_R0_data_1;
    end
    if (_T_138) begin
      _T_139_2 <= mem_R0_data_2;
    end
    if (_T_138) begin
      _T_139_3 <= mem_R0_data_3;
    end
  end
endmodule
