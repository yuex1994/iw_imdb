module AXI4RAM_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230309.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230310.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230311.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [11:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_aw_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_b_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input  [11:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_ar_bits_echo_real_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
  output        auto_in_r_bits_echo_real_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230312.4]
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
  wire [9:0] mem_R0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_R0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [9:0] mem_W0_addr; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_en; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
  wire [4:0] _T_14; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230335.4]
  wire [4:0] _T_18; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230339.4]
  wire [4:0] _T_33; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230355.4]
  wire [4:0] _T_37; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230359.4]
  wire [12:0] _T_39; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@230362.4]
  wire [12:0] _T_41; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@230364.4]
  wire  r_sel0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@230365.4]
  wire [12:0] _T_43; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@230367.4]
  wire [12:0] _T_45; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@230369.4]
  wire  w_sel0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@230370.4]
  reg  w_full; // @[SRAM.scala 62:25:freechips.rocketchip.system.DefaultRV32Config.fir@230371.4]
  reg [3:0] w_id; // @[SRAM.scala 63:21:freechips.rocketchip.system.DefaultRV32Config.fir@230372.4]
  reg  w_echo_real_last; // @[SRAM.scala 64:21:freechips.rocketchip.system.DefaultRV32Config.fir@230373.4]
  reg  r_sel1; // @[SRAM.scala 65:21:freechips.rocketchip.system.DefaultRV32Config.fir@230374.4]
  reg  w_sel1; // @[SRAM.scala 66:21:freechips.rocketchip.system.DefaultRV32Config.fir@230375.4]
  wire  _T_46; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230376.4]
  wire  _GEN_0; // @[SRAM.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@230377.4]
  wire  _T_60; // @[SRAM.scala 84:50:freechips.rocketchip.system.DefaultRV32Config.fir@230422.4]
  wire  _T_61; // @[SRAM.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@230423.4]
  wire  in_aw_ready; // @[SRAM.scala 84:32:freechips.rocketchip.system.DefaultRV32Config.fir@230424.4]
  wire  _T_47; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230380.4]
  wire  _GEN_1; // @[SRAM.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@230381.4]
  reg  r_full; // @[SRAM.scala 91:25:freechips.rocketchip.system.DefaultRV32Config.fir@230434.4]
  reg [3:0] r_id; // @[SRAM.scala 92:21:freechips.rocketchip.system.DefaultRV32Config.fir@230435.4]
  reg  r_echo_real_last; // @[SRAM.scala 93:21:freechips.rocketchip.system.DefaultRV32Config.fir@230436.4]
  wire  _T_67; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230437.4]
  wire  _GEN_24; // @[SRAM.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@230438.4]
  wire  _T_76; // @[SRAM.scala 109:34:freechips.rocketchip.system.DefaultRV32Config.fir@230472.4]
  wire  in_ar_ready; // @[SRAM.scala 109:31:freechips.rocketchip.system.DefaultRV32Config.fir@230473.4]
  wire  _T_68; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230441.4]
  wire  _GEN_25; // @[SRAM.scala 96:25:freechips.rocketchip.system.DefaultRV32Config.fir@230442.4]
  reg  _T_74; // @[package.scala 75:91:freechips.rocketchip.system.DefaultRV32Config.fir@230461.4]
  reg [7:0] _T_75_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@230463.4]
  reg [7:0] _T_75_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@230463.4]
  reg [7:0] _T_75_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@230463.4]
  reg [7:0] _T_75_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@230463.4]
  wire [7:0] _GEN_33; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  wire [7:0] _GEN_34; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  wire [7:0] _GEN_35; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  wire [7:0] _GEN_36; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  wire [15:0] _T_80; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230479.4]
  wire [15:0] _T_81; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230480.4]
  mem_0 mem ( // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4]
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
  assign _T_14 = {auto_in_ar_bits_addr[6],auto_in_ar_bits_addr[5],auto_in_ar_bits_addr[4],auto_in_ar_bits_addr[3],auto_in_ar_bits_addr[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230335.4]
  assign _T_18 = {auto_in_ar_bits_addr[11],auto_in_ar_bits_addr[10],auto_in_ar_bits_addr[9],auto_in_ar_bits_addr[8],auto_in_ar_bits_addr[7]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230339.4]
  assign _T_33 = {auto_in_aw_bits_addr[6],auto_in_aw_bits_addr[5],auto_in_aw_bits_addr[4],auto_in_aw_bits_addr[3],auto_in_aw_bits_addr[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230355.4]
  assign _T_37 = {auto_in_aw_bits_addr[11],auto_in_aw_bits_addr[10],auto_in_aw_bits_addr[9],auto_in_aw_bits_addr[8],auto_in_aw_bits_addr[7]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230359.4]
  assign _T_39 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@230362.4]
  assign _T_41 = $signed(_T_39) & -13'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@230364.4]
  assign r_sel0 = $signed(_T_41) == 13'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@230365.4]
  assign _T_43 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@230367.4]
  assign _T_45 = $signed(_T_43) & -13'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@230369.4]
  assign w_sel0 = $signed(_T_45) == 13'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@230370.4]
  assign _T_46 = auto_in_b_ready & w_full; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230376.4]
  assign _GEN_0 = _T_46 ? 1'h0 : w_full; // @[SRAM.scala 68:25:freechips.rocketchip.system.DefaultRV32Config.fir@230377.4]
  assign _T_60 = ~w_full; // @[SRAM.scala 84:50:freechips.rocketchip.system.DefaultRV32Config.fir@230422.4]
  assign _T_61 = auto_in_b_ready | _T_60; // @[SRAM.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@230423.4]
  assign in_aw_ready = auto_in_w_valid & _T_61; // @[SRAM.scala 84:32:freechips.rocketchip.system.DefaultRV32Config.fir@230424.4]
  assign _T_47 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230380.4]
  assign _GEN_1 = _T_47 | _GEN_0; // @[SRAM.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@230381.4]
  assign _T_67 = auto_in_r_ready & r_full; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230437.4]
  assign _GEN_24 = _T_67 ? 1'h0 : r_full; // @[SRAM.scala 95:25:freechips.rocketchip.system.DefaultRV32Config.fir@230438.4]
  assign _T_76 = ~r_full; // @[SRAM.scala 109:34:freechips.rocketchip.system.DefaultRV32Config.fir@230472.4]
  assign in_ar_ready = auto_in_r_ready | _T_76; // @[SRAM.scala 109:31:freechips.rocketchip.system.DefaultRV32Config.fir@230473.4]
  assign _T_68 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@230441.4]
  assign _GEN_25 = _T_68 | _GEN_24; // @[SRAM.scala 96:25:freechips.rocketchip.system.DefaultRV32Config.fir@230442.4]
  assign _GEN_33 = _T_74 ? mem_R0_data_0 : _T_75_0; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  assign _GEN_34 = _T_74 ? mem_R0_data_1 : _T_75_1; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  assign _GEN_35 = _T_74 ? mem_R0_data_2 : _T_75_2; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  assign _GEN_36 = _T_74 ? mem_R0_data_3 : _T_75_3; // @[Reg.scala 16:19:freechips.rocketchip.system.DefaultRV32Config.fir@230464.4]
  assign _T_80 = {_GEN_34,_GEN_33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230479.4]
  assign _T_81 = {_GEN_36,_GEN_35}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@230480.4]
  assign auto_in_aw_ready = auto_in_w_valid & _T_61; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_w_ready = auto_in_aw_valid & _T_61; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_b_valid = w_full; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_b_bits_id = w_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_b_bits_resp = w_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_b_bits_echo_real_last = w_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_ar_ready = auto_in_r_ready | _T_76; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_r_valid = r_full; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_r_bits_id = r_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_r_bits_data = {_T_81,_T_80}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_r_bits_resp = r_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign auto_in_r_bits_echo_real_last = r_echo_real_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@230319.4]
  assign mem_R0_addr = {_T_18,_T_14}; // @[package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@230459.6]
  assign mem_R0_en = in_ar_ready & auto_in_ar_valid; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4 package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@230458.6]
  assign mem_R0_clk = clock; // @[package.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@230459.6]
  assign mem_W0_addr = {_T_37,_T_33}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6]
  assign mem_W0_en = _T_47 & w_sel0; // @[DescribedSRAM.scala 23:26:freechips.rocketchip.system.DefaultRV32Config.fir@230320.4 :freechips.rocketchip.system.DefaultRV32Config.fir@230407.6]
  assign mem_W0_clk = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6]
  assign mem_W0_data_0 = auto_in_w_bits_data[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230409.8]
  assign mem_W0_data_1 = auto_in_w_bits_data[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230412.8]
  assign mem_W0_data_2 = auto_in_w_bits_data[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230415.8]
  assign mem_W0_data_3 = auto_in_w_bits_data[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230418.8]
  assign mem_W0_mask_0 = auto_in_w_bits_strb[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@230409.8]
  assign mem_W0_mask_1 = auto_in_w_bits_strb[1]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@230412.8]
  assign mem_W0_mask_2 = auto_in_w_bits_strb[2]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@230415.8]
  assign mem_W0_mask_3 = auto_in_w_bits_strb[3]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@230407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@230418.8]
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
  _T_74 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_75_0 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  _T_75_1 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  _T_75_2 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  _T_75_3 = _RAND_12[7:0];
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
    if (_T_47) begin
      w_id <= auto_in_aw_bits_id;
    end
    if (_T_47) begin
      w_echo_real_last <= auto_in_aw_bits_echo_real_last;
    end
    if (_T_68) begin
      r_sel1 <= r_sel0;
    end
    if (_T_47) begin
      w_sel1 <= w_sel0;
    end
    if (reset) begin
      r_full <= 1'h0;
    end else begin
      r_full <= _GEN_25;
    end
    if (_T_68) begin
      r_id <= auto_in_ar_bits_id;
    end
    if (_T_68) begin
      r_echo_real_last <= auto_in_ar_bits_echo_real_last;
    end
    _T_74 <= in_ar_ready & auto_in_ar_valid;
    if (_T_74) begin
      _T_75_0 <= mem_R0_data_0;
    end
    if (_T_74) begin
      _T_75_1 <= mem_R0_data_1;
    end
    if (_T_74) begin
      _T_75_2 <= mem_R0_data_2;
    end
    if (_T_74) begin
      _T_75_3 <= mem_R0_data_3;
    end
  end
endmodule
