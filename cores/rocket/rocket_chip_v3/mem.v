module mem(
  input  [25:0] R0_addr,
  input         R0_en,
  input         R0_clk,
  output [7:0]  R0_data_0,
  output [7:0]  R0_data_1,
  output [7:0]  R0_data_2,
  output [7:0]  R0_data_3,
  input  [25:0] W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [7:0]  W0_data_0,
  input  [7:0]  W0_data_1,
  input  [7:0]  W0_data_2,
  input  [7:0]  W0_data_3,
  input         W0_mask_0,
  input         W0_mask_1,
  input         W0_mask_2,
  input         W0_mask_3
);
  wire [25:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [31:0] mem_ext_R0_data;
  wire [25:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [31:0] mem_ext_W0_data;
  wire [3:0] mem_ext_W0_mask;
  wire [15:0] _GEN_0;
  wire [15:0] _GEN_1;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data),
    .W0_mask(mem_ext_W0_mask)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = R0_en;
  assign mem_ext_R0_addr = R0_addr;
  assign R0_data_0 = mem_ext_R0_data[7:0];
  assign R0_data_1 = mem_ext_R0_data[15:8];
  assign R0_data_2 = mem_ext_R0_data[23:16];
  assign R0_data_3 = mem_ext_R0_data[31:24];
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = W0_en;
  assign mem_ext_W0_addr = W0_addr;
  assign _GEN_0 = {W0_data_3,W0_data_2};
  assign _GEN_1 = {W0_data_1,W0_data_0};
  assign mem_ext_W0_data = {_GEN_0,_GEN_1};
  assign _GEN_2 = {W0_mask_3,W0_mask_2};
  assign _GEN_3 = {W0_mask_1,W0_mask_0};
  assign mem_ext_W0_mask = {_GEN_2,_GEN_3};
endmodule
