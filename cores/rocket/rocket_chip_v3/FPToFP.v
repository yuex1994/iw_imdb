module FPToFP( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212615.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212616.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212617.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  output [4:0]  io_out_bits_exc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
  input         io_lt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212618.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg  inPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@212623.4]
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212625.4]
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212625.4]
  reg [32:0] inPipe_bits_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212625.4]
  reg [32:0] inPipe_bits_in2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212625.4]
  wire [32:0] _T_1; // @[FPU.scala 526:48:freechips.rocketchip.system.DefaultRV32Config.fir@212655.4]
  wire [32:0] _T_3; // @[FPU.scala 526:82:freechips.rocketchip.system.DefaultRV32Config.fir@212657.4]
  wire [32:0] _T_4; // @[FPU.scala 526:66:freechips.rocketchip.system.DefaultRV32Config.fir@212658.4]
  wire [32:0] signNum; // @[FPU.scala 526:20:freechips.rocketchip.system.DefaultRV32Config.fir@212659.4]
  wire [32:0] fsgnj; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212662.4]
  wire  _T_8; // @[FPU.scala 200:56:freechips.rocketchip.system.DefaultRV32Config.fir@212669.6]
  wire  _T_10; // @[FPU.scala 200:56:freechips.rocketchip.system.DefaultRV32Config.fir@212671.6]
  wire  _T_14; // @[FPU.scala 201:37:freechips.rocketchip.system.DefaultRV32Config.fir@212675.6]
  wire  _T_15; // @[FPU.scala 201:34:freechips.rocketchip.system.DefaultRV32Config.fir@212676.6]
  wire  _T_19; // @[FPU.scala 201:37:freechips.rocketchip.system.DefaultRV32Config.fir@212680.6]
  wire  _T_20; // @[FPU.scala 201:34:freechips.rocketchip.system.DefaultRV32Config.fir@212681.6]
  wire  _T_21; // @[FPU.scala 536:49:freechips.rocketchip.system.DefaultRV32Config.fir@212682.6]
  wire  _T_22; // @[FPU.scala 537:27:freechips.rocketchip.system.DefaultRV32Config.fir@212683.6]
  wire  _T_24; // @[FPU.scala 538:41:freechips.rocketchip.system.DefaultRV32Config.fir@212685.6]
  wire  _T_25; // @[FPU.scala 538:54:freechips.rocketchip.system.DefaultRV32Config.fir@212686.6]
  wire  _T_26; // @[FPU.scala 538:51:freechips.rocketchip.system.DefaultRV32Config.fir@212687.6]
  wire  _T_27; // @[FPU.scala 538:24:freechips.rocketchip.system.DefaultRV32Config.fir@212688.6]
  wire [4:0] _T_28; // @[FPU.scala 539:31:freechips.rocketchip.system.DefaultRV32Config.fir@212689.6]
  reg [32:0] _T_34_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212706.4]
  reg [4:0] _T_34_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212706.4]
  assign _T_1 = inPipe_bits_in1 ^ inPipe_bits_in2; // @[FPU.scala 526:48:freechips.rocketchip.system.DefaultRV32Config.fir@212655.4]
  assign _T_3 = ~inPipe_bits_in2; // @[FPU.scala 526:82:freechips.rocketchip.system.DefaultRV32Config.fir@212657.4]
  assign _T_4 = inPipe_bits_rm[0] ? _T_3 : inPipe_bits_in2; // @[FPU.scala 526:66:freechips.rocketchip.system.DefaultRV32Config.fir@212658.4]
  assign signNum = inPipe_bits_rm[1] ? _T_1 : _T_4; // @[FPU.scala 526:20:freechips.rocketchip.system.DefaultRV32Config.fir@212659.4]
  assign fsgnj = {signNum[32],inPipe_bits_in1[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212662.4]
  assign _T_8 = &inPipe_bits_in1[31:29]; // @[FPU.scala 200:56:freechips.rocketchip.system.DefaultRV32Config.fir@212669.6]
  assign _T_10 = &inPipe_bits_in2[31:29]; // @[FPU.scala 200:56:freechips.rocketchip.system.DefaultRV32Config.fir@212671.6]
  assign _T_14 = ~inPipe_bits_in1[22]; // @[FPU.scala 201:37:freechips.rocketchip.system.DefaultRV32Config.fir@212675.6]
  assign _T_15 = _T_8 & _T_14; // @[FPU.scala 201:34:freechips.rocketchip.system.DefaultRV32Config.fir@212676.6]
  assign _T_19 = ~inPipe_bits_in2[22]; // @[FPU.scala 201:37:freechips.rocketchip.system.DefaultRV32Config.fir@212680.6]
  assign _T_20 = _T_10 & _T_19; // @[FPU.scala 201:34:freechips.rocketchip.system.DefaultRV32Config.fir@212681.6]
  assign _T_21 = _T_15 | _T_20; // @[FPU.scala 536:49:freechips.rocketchip.system.DefaultRV32Config.fir@212682.6]
  assign _T_22 = _T_8 & _T_10; // @[FPU.scala 537:27:freechips.rocketchip.system.DefaultRV32Config.fir@212683.6]
  assign _T_24 = inPipe_bits_rm[0] != io_lt; // @[FPU.scala 538:41:freechips.rocketchip.system.DefaultRV32Config.fir@212685.6]
  assign _T_25 = ~_T_8; // @[FPU.scala 538:54:freechips.rocketchip.system.DefaultRV32Config.fir@212686.6]
  assign _T_26 = _T_24 & _T_25; // @[FPU.scala 538:51:freechips.rocketchip.system.DefaultRV32Config.fir@212687.6]
  assign _T_27 = _T_10 | _T_26; // @[FPU.scala 538:24:freechips.rocketchip.system.DefaultRV32Config.fir@212688.6]
  assign _T_28 = {_T_21, 4'h0}; // @[FPU.scala 539:31:freechips.rocketchip.system.DefaultRV32Config.fir@212689.6]
  assign io_out_bits_data = _T_34_data; // @[FPU.scala 574:10:freechips.rocketchip.system.DefaultRV32Config.fir@212715.4]
  assign io_out_bits_exc = _T_34_exc; // @[FPU.scala 574:10:freechips.rocketchip.system.DefaultRV32Config.fir@212715.4]
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
  inPipe_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_2[2:0];
  _RAND_3 = {2{`RANDOM}};
  inPipe_bits_in1 = _RAND_3[32:0];
  _RAND_4 = {2{`RANDOM}};
  inPipe_bits_in2 = _RAND_4[32:0];
  _RAND_5 = {2{`RANDOM}};
  _T_34_data = _RAND_5[32:0];
  _RAND_6 = {1{`RANDOM}};
  _T_34_exc = _RAND_6[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      inPipe_bits_in2 <= io_in_bits_in2;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        if (_T_22) begin
          _T_34_data <= 33'he0400000;
        end else if (_T_27) begin
          _T_34_data <= inPipe_bits_in1;
        end else begin
          _T_34_data <= inPipe_bits_in2;
        end
      end else begin
        _T_34_data <= fsgnj;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_34_exc <= _T_28;
      end else begin
        _T_34_exc <= 5'h0;
      end
    end
  end
endmodule
