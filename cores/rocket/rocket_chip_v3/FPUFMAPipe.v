module FPUFMAPipe( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211727.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211728.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211729.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input         io_in_bits_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input         io_in_bits_swap23, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input  [1:0]  io_in_bits_fmaCmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  input  [32:0] io_in_bits_in3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211730.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  fma_clock; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire  fma_reset; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire  fma_io_validin; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [1:0] fma_io_op; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [32:0] fma_io_a; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [32:0] fma_io_b; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [32:0] fma_io_c; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [32:0] fma_io_out; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
  reg  valid; // @[FPU.scala 649:18:freechips.rocketchip.system.DefaultRV32Config.fir@211735.4]
  reg [2:0] in_rm; // @[FPU.scala 650:15:freechips.rocketchip.system.DefaultRV32Config.fir@211737.4]
  reg [1:0] in_fmaCmd; // @[FPU.scala 650:15:freechips.rocketchip.system.DefaultRV32Config.fir@211737.4]
  reg [32:0] in_in1; // @[FPU.scala 650:15:freechips.rocketchip.system.DefaultRV32Config.fir@211737.4]
  reg [32:0] in_in2; // @[FPU.scala 650:15:freechips.rocketchip.system.DefaultRV32Config.fir@211737.4]
  reg [32:0] in_in3; // @[FPU.scala 650:15:freechips.rocketchip.system.DefaultRV32Config.fir@211737.4]
  wire [32:0] _T_1; // @[FPU.scala 653:32:freechips.rocketchip.system.DefaultRV32Config.fir@211740.6]
  wire [32:0] _T_3; // @[FPU.scala 653:50:freechips.rocketchip.system.DefaultRV32Config.fir@211742.6]
  wire  _T_4; // @[FPU.scala 658:21:freechips.rocketchip.system.DefaultRV32Config.fir@211747.6]
  wire  _T_5; // @[FPU.scala 658:11:freechips.rocketchip.system.DefaultRV32Config.fir@211748.6]
  MulAddRecFNPipe fma ( // @[FPU.scala 661:19:freechips.rocketchip.system.DefaultRV32Config.fir@211753.4]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign _T_1 = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 653:32:freechips.rocketchip.system.DefaultRV32Config.fir@211740.6]
  assign _T_3 = _T_1 & 33'h100000000; // @[FPU.scala 653:50:freechips.rocketchip.system.DefaultRV32Config.fir@211742.6]
  assign _T_4 = io_in_bits_ren3 | io_in_bits_swap23; // @[FPU.scala 658:21:freechips.rocketchip.system.DefaultRV32Config.fir@211747.6]
  assign _T_5 = ~_T_4; // @[FPU.scala 658:11:freechips.rocketchip.system.DefaultRV32Config.fir@211748.6]
  assign io_out_bits_data = fma_io_out; // @[FPU.scala 674:10:freechips.rocketchip.system.DefaultRV32Config.fir@211772.4]
  assign io_out_bits_exc = fma_io_exceptionFlags; // @[FPU.scala 674:10:freechips.rocketchip.system.DefaultRV32Config.fir@211772.4]
  assign fma_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211755.4]
  assign fma_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211756.4]
  assign fma_io_validin = valid; // @[FPU.scala 662:18:freechips.rocketchip.system.DefaultRV32Config.fir@211757.4]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 663:13:freechips.rocketchip.system.DefaultRV32Config.fir@211758.4]
  assign fma_io_a = in_in1; // @[FPU.scala 666:12:freechips.rocketchip.system.DefaultRV32Config.fir@211761.4]
  assign fma_io_b = in_in2; // @[FPU.scala 667:12:freechips.rocketchip.system.DefaultRV32Config.fir@211762.4]
  assign fma_io_c = in_in3; // @[FPU.scala 668:12:freechips.rocketchip.system.DefaultRV32Config.fir@211763.4]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 664:23:freechips.rocketchip.system.DefaultRV32Config.fir@211759.4]
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
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  _RAND_3 = {2{`RANDOM}};
  in_in1 = _RAND_3[32:0];
  _RAND_4 = {2{`RANDOM}};
  in_in2 = _RAND_4[32:0];
  _RAND_5 = {2{`RANDOM}};
  in_in3 = _RAND_5[32:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    valid <= io_in_valid;
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_fmaCmd <= io_in_bits_fmaCmd;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      if (io_in_bits_swap23) begin
        in_in2 <= 33'h80000000;
      end else begin
        in_in2 <= io_in_bits_in2;
      end
    end
    if (io_in_valid) begin
      if (_T_5) begin
        in_in3 <= _T_3;
      end else begin
        in_in3 <= io_in_bits_in3;
      end
    end
  end
endmodule
