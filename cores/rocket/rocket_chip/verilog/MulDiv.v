module MulDiv( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223301.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223302.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223303.4]
  output        io_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input  [3:0]  io_req_bits_fn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input  [31:0] io_req_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input  [31:0] io_req_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input  [4:0]  io_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input         io_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  input         io_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  output [31:0] io_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
  output [4:0]  io_resp_bits_tag // @[:freechips.rocketchip.system.DefaultRV32Config.fir@223304.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [95:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] state; // @[Multiplier.scala 52:22:freechips.rocketchip.system.DefaultRV32Config.fir@223306.4]
  reg [4:0] req_tag; // @[Multiplier.scala 54:16:freechips.rocketchip.system.DefaultRV32Config.fir@223307.4]
  reg [5:0] count; // @[Multiplier.scala 55:18:freechips.rocketchip.system.DefaultRV32Config.fir@223308.4]
  reg  neg_out; // @[Multiplier.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@223309.4]
  reg  isHi; // @[Multiplier.scala 59:17:freechips.rocketchip.system.DefaultRV32Config.fir@223310.4]
  reg  resHi; // @[Multiplier.scala 60:18:freechips.rocketchip.system.DefaultRV32Config.fir@223311.4]
  reg [32:0] divisor; // @[Multiplier.scala 61:20:freechips.rocketchip.system.DefaultRV32Config.fir@223312.4]
  reg [65:0] remainder; // @[Multiplier.scala 62:22:freechips.rocketchip.system.DefaultRV32Config.fir@223313.4]
  wire [3:0] _T; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223314.4]
  wire  cmdMul; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223315.4]
  wire [3:0] _T_3; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223317.4]
  wire  _T_4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223318.4]
  wire [3:0] _T_5; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223319.4]
  wire  _T_6; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223320.4]
  wire  cmdHi; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223322.4]
  wire [3:0] _T_9; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223323.4]
  wire  _T_10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223324.4]
  wire [3:0] _T_11; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223325.4]
  wire  _T_12; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223326.4]
  wire  lhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223328.4]
  wire  _T_16; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223330.4]
  wire  rhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223332.4]
  wire  lhs_sign; // @[Multiplier.scala 82:23:freechips.rocketchip.system.DefaultRV32Config.fir@223342.4]
  wire [31:0] lhs_in; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223348.4]
  wire  rhs_sign; // @[Multiplier.scala 82:23:freechips.rocketchip.system.DefaultRV32Config.fir@223354.4]
  wire [32:0] subtractor; // @[Multiplier.scala 89:37:freechips.rocketchip.system.DefaultRV32Config.fir@223363.4]
  wire [31:0] result; // @[Multiplier.scala 90:19:freechips.rocketchip.system.DefaultRV32Config.fir@223366.4]
  wire [31:0] negated_remainder; // @[Multiplier.scala 91:27:freechips.rocketchip.system.DefaultRV32Config.fir@223368.4]
  wire  _T_44; // @[Multiplier.scala 93:39:freechips.rocketchip.system.DefaultRV32Config.fir@223369.4]
  wire  _T_47; // @[Multiplier.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@223381.4]
  wire  _T_48; // @[Multiplier.scala 107:39:freechips.rocketchip.system.DefaultRV32Config.fir@223387.4]
  wire [64:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223391.6]
  wire [32:0] _T_55; // @[Multiplier.scala 111:37:freechips.rocketchip.system.DefaultRV32Config.fir@223395.6]
  wire [8:0] _T_59; // @[Multiplier.scala 113:60:freechips.rocketchip.system.DefaultRV32Config.fir@223399.6]
  wire [32:0] _GEN_35; // @[Multiplier.scala 113:67:freechips.rocketchip.system.DefaultRV32Config.fir@223400.6]
  wire [41:0] _T_60; // @[Multiplier.scala 113:67:freechips.rocketchip.system.DefaultRV32Config.fir@223400.6]
  wire [41:0] _GEN_36; // @[Multiplier.scala 113:76:freechips.rocketchip.system.DefaultRV32Config.fir@223401.6]
  wire [41:0] _T_65; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223405.6]
  wire [65:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223406.6]
  wire  _T_67; // @[Multiplier.scala 115:32:freechips.rocketchip.system.DefaultRV32Config.fir@223407.6]
  wire  _T_68; // @[Multiplier.scala 115:57:freechips.rocketchip.system.DefaultRV32Config.fir@223408.6]
  wire  _T_77; // @[Multiplier.scala 119:7:freechips.rocketchip.system.DefaultRV32Config.fir@223417.6]
  wire [64:0] _T_91; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223431.6]
  wire [65:0] _T_95; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223435.6]
  wire [5:0] _T_97; // @[Multiplier.scala 124:20:freechips.rocketchip.system.DefaultRV32Config.fir@223438.6]
  wire  _T_98; // @[Multiplier.scala 125:25:freechips.rocketchip.system.DefaultRV32Config.fir@223440.6]
  wire  _T_100; // @[Multiplier.scala 130:39:freechips.rocketchip.system.DefaultRV32Config.fir@223447.4]
  wire [31:0] _T_104; // @[Multiplier.scala 135:14:freechips.rocketchip.system.DefaultRV32Config.fir@223452.6]
  wire  _T_106; // @[Multiplier.scala 135:67:freechips.rocketchip.system.DefaultRV32Config.fir@223454.6]
  wire [64:0] _T_108; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223456.6]
  wire  _T_109; // @[Multiplier.scala 139:17:freechips.rocketchip.system.DefaultRV32Config.fir@223458.6]
  wire  _T_113; // @[Multiplier.scala 147:24:freechips.rocketchip.system.DefaultRV32Config.fir@223467.6]
  wire  _T_116; // @[Multiplier.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@223470.6]
  wire  _T_118; // @[Multiplier.scala 160:18:freechips.rocketchip.system.DefaultRV32Config.fir@223472.6]
  wire  _T_119; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@223477.4]
  wire  _T_120; // @[Multiplier.scala 162:24:freechips.rocketchip.system.DefaultRV32Config.fir@223478.4]
  wire  _T_121; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@223482.4]
  wire  _T_122; // @[Multiplier.scala 166:46:freechips.rocketchip.system.DefaultRV32Config.fir@223484.6]
  wire  _T_129; // @[Multiplier.scala 170:46:freechips.rocketchip.system.DefaultRV32Config.fir@223495.6]
  wire [32:0] _T_131; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223498.6]
  wire [15:0] loOut; // @[Multiplier.scala 177:82:freechips.rocketchip.system.DefaultRV32Config.fir@223517.4]
  wire  _T_149; // @[Multiplier.scala 182:27:freechips.rocketchip.system.DefaultRV32Config.fir@223529.4]
  wire  _T_150; // @[Multiplier.scala 182:51:freechips.rocketchip.system.DefaultRV32Config.fir@223530.4]
  assign _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223314.4]
  assign cmdMul = _T == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223315.4]
  assign _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223317.4]
  assign _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223318.4]
  assign _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223319.4]
  assign _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223320.4]
  assign cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223322.4]
  assign _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223323.4]
  assign _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223324.4]
  assign _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@223325.4]
  assign _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223326.4]
  assign lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223328.4]
  assign _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@223330.4]
  assign rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@223332.4]
  assign lhs_sign = lhsSigned & io_req_bits_in1[31]; // @[Multiplier.scala 82:23:freechips.rocketchip.system.DefaultRV32Config.fir@223342.4]
  assign lhs_in = {io_req_bits_in1[31:16],io_req_bits_in1[15:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223348.4]
  assign rhs_sign = rhsSigned & io_req_bits_in2[31]; // @[Multiplier.scala 82:23:freechips.rocketchip.system.DefaultRV32Config.fir@223354.4]
  assign subtractor = remainder[64:32] - divisor; // @[Multiplier.scala 89:37:freechips.rocketchip.system.DefaultRV32Config.fir@223363.4]
  assign result = resHi ? remainder[64:33] : remainder[31:0]; // @[Multiplier.scala 90:19:freechips.rocketchip.system.DefaultRV32Config.fir@223366.4]
  assign negated_remainder = 32'h0 - result; // @[Multiplier.scala 91:27:freechips.rocketchip.system.DefaultRV32Config.fir@223368.4]
  assign _T_44 = state == 3'h1; // @[Multiplier.scala 93:39:freechips.rocketchip.system.DefaultRV32Config.fir@223369.4]
  assign _T_47 = state == 3'h5; // @[Multiplier.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@223381.4]
  assign _T_48 = state == 3'h2; // @[Multiplier.scala 107:39:freechips.rocketchip.system.DefaultRV32Config.fir@223387.4]
  assign _T_51 = {remainder[65:33],remainder[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223391.6]
  assign _T_55 = _T_51[64:32]; // @[Multiplier.scala 111:37:freechips.rocketchip.system.DefaultRV32Config.fir@223395.6]
  assign _T_59 = {remainder[32],_T_51[7:0]}; // @[Multiplier.scala 113:60:freechips.rocketchip.system.DefaultRV32Config.fir@223399.6]
  assign _GEN_35 = {{24{_T_59[8]}},_T_59}; // @[Multiplier.scala 113:67:freechips.rocketchip.system.DefaultRV32Config.fir@223400.6]
  assign _T_60 = $signed(_GEN_35) * $signed(divisor); // @[Multiplier.scala 113:67:freechips.rocketchip.system.DefaultRV32Config.fir@223400.6]
  assign _GEN_36 = {{9{_T_55[32]}},_T_55}; // @[Multiplier.scala 113:76:freechips.rocketchip.system.DefaultRV32Config.fir@223401.6]
  assign _T_65 = $signed(_T_60) + $signed(_GEN_36); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223405.6]
  assign _T_66 = {_T_65,_T_51[31:8]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223406.6]
  assign _T_67 = count == 6'h2; // @[Multiplier.scala 115:32:freechips.rocketchip.system.DefaultRV32Config.fir@223407.6]
  assign _T_68 = _T_67 & neg_out; // @[Multiplier.scala 115:57:freechips.rocketchip.system.DefaultRV32Config.fir@223408.6]
  assign _T_77 = ~isHi; // @[Multiplier.scala 119:7:freechips.rocketchip.system.DefaultRV32Config.fir@223417.6]
  assign _T_91 = {_T_66[64:32],_T_66[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223431.6]
  assign _T_95 = {_T_91[64:32],_T_68,_T_91[31:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223435.6]
  assign _T_97 = count + 6'h1; // @[Multiplier.scala 124:20:freechips.rocketchip.system.DefaultRV32Config.fir@223438.6]
  assign _T_98 = count == 6'h3; // @[Multiplier.scala 125:25:freechips.rocketchip.system.DefaultRV32Config.fir@223440.6]
  assign _T_100 = state == 3'h3; // @[Multiplier.scala 130:39:freechips.rocketchip.system.DefaultRV32Config.fir@223447.4]
  assign _T_104 = subtractor[32] ? remainder[63:32] : subtractor[31:0]; // @[Multiplier.scala 135:14:freechips.rocketchip.system.DefaultRV32Config.fir@223452.6]
  assign _T_106 = ~subtractor[32]; // @[Multiplier.scala 135:67:freechips.rocketchip.system.DefaultRV32Config.fir@223454.6]
  assign _T_108 = {_T_104,remainder[31:0],_T_106}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223456.6]
  assign _T_109 = count == 6'h20; // @[Multiplier.scala 139:17:freechips.rocketchip.system.DefaultRV32Config.fir@223458.6]
  assign _T_113 = count == 6'h0; // @[Multiplier.scala 147:24:freechips.rocketchip.system.DefaultRV32Config.fir@223467.6]
  assign _T_116 = _T_113 & _T_106; // @[Multiplier.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@223470.6]
  assign _T_118 = _T_116 & _T_77; // @[Multiplier.scala 160:18:freechips.rocketchip.system.DefaultRV32Config.fir@223472.6]
  assign _T_119 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@223477.4]
  assign _T_120 = _T_119 | io_kill; // @[Multiplier.scala 162:24:freechips.rocketchip.system.DefaultRV32Config.fir@223478.4]
  assign _T_121 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@223482.4]
  assign _T_122 = lhs_sign | rhs_sign; // @[Multiplier.scala 166:46:freechips.rocketchip.system.DefaultRV32Config.fir@223484.6]
  assign _T_129 = lhs_sign != rhs_sign; // @[Multiplier.scala 170:46:freechips.rocketchip.system.DefaultRV32Config.fir@223495.6]
  assign _T_131 = {rhs_sign,io_req_bits_in2[31:16],io_req_bits_in2[15:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@223498.6]
  assign loOut = result[15:0]; // @[Multiplier.scala 177:82:freechips.rocketchip.system.DefaultRV32Config.fir@223517.4]
  assign _T_149 = state == 3'h6; // @[Multiplier.scala 182:27:freechips.rocketchip.system.DefaultRV32Config.fir@223529.4]
  assign _T_150 = state == 3'h7; // @[Multiplier.scala 182:51:freechips.rocketchip.system.DefaultRV32Config.fir@223530.4]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 183:16:freechips.rocketchip.system.DefaultRV32Config.fir@223534.4]
  assign io_resp_valid = _T_149 | _T_150; // @[Multiplier.scala 182:17:freechips.rocketchip.system.DefaultRV32Config.fir@223532.4]
  assign io_resp_bits_data = {result[31:16],loOut}; // @[Multiplier.scala 181:21:freechips.rocketchip.system.DefaultRV32Config.fir@223528.4]
  assign io_resp_bits_tag = req_tag; // @[Multiplier.scala 179:20:freechips.rocketchip.system.DefaultRV32Config.fir@223526.4]
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  req_tag = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  count = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  neg_out = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  isHi = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  resHi = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  divisor = _RAND_6[32:0];
  _RAND_7 = {3{`RANDOM}};
  remainder = _RAND_7[65:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else if (_T_121) begin
      if (cmdMul) begin
        state <= 3'h2;
      end else if (_T_122) begin
        state <= 3'h1;
      end else begin
        state <= 3'h3;
      end
    end else if (_T_120) begin
      state <= 3'h0;
    end else if (_T_100) begin
      if (_T_109) begin
        if (neg_out) begin
          state <= 3'h5;
        end else begin
          state <= 3'h7;
        end
      end else if (_T_48) begin
        if (_T_98) begin
          state <= 3'h6;
        end else if (_T_47) begin
          state <= 3'h7;
        end else if (_T_44) begin
          state <= 3'h3;
        end
      end else if (_T_47) begin
        state <= 3'h7;
      end else if (_T_44) begin
        state <= 3'h3;
      end
    end else if (_T_48) begin
      if (_T_98) begin
        state <= 3'h6;
      end else if (_T_47) begin
        state <= 3'h7;
      end else if (_T_44) begin
        state <= 3'h3;
      end
    end else if (_T_47) begin
      state <= 3'h7;
    end else if (_T_44) begin
      state <= 3'h3;
    end
    if (_T_121) begin
      req_tag <= io_req_bits_tag;
    end
    if (_T_121) begin
      count <= 6'h0;
    end else if (_T_100) begin
      count <= _T_97;
    end else if (_T_48) begin
      count <= _T_97;
    end
    if (_T_121) begin
      if (cmdHi) begin
        neg_out <= lhs_sign;
      end else begin
        neg_out <= _T_129;
      end
    end else if (_T_100) begin
      if (_T_118) begin
        neg_out <= 1'h0;
      end
    end
    if (_T_121) begin
      isHi <= cmdHi;
    end
    if (_T_121) begin
      resHi <= 1'h0;
    end else if (_T_100) begin
      if (_T_109) begin
        resHi <= isHi;
      end else if (_T_48) begin
        if (_T_98) begin
          resHi <= isHi;
        end else if (_T_47) begin
          resHi <= 1'h0;
        end
      end else if (_T_47) begin
        resHi <= 1'h0;
      end
    end else if (_T_48) begin
      if (_T_98) begin
        resHi <= isHi;
      end else if (_T_47) begin
        resHi <= 1'h0;
      end
    end else if (_T_47) begin
      resHi <= 1'h0;
    end
    if (_T_121) begin
      divisor <= _T_131;
    end else if (_T_44) begin
      if (divisor[31]) begin
        divisor <= subtractor;
      end
    end
    if (_T_121) begin
      remainder <= {{34'd0}, lhs_in};
    end else if (_T_100) begin
      remainder <= {{1'd0}, _T_108};
    end else if (_T_48) begin
      remainder <= _T_95;
    end else if (_T_47) begin
      remainder <= {{34'd0}, negated_remainder};
    end else if (_T_44) begin
      if (remainder[31]) begin
        remainder <= {{34'd0}, negated_remainder};
      end
    end
  end
endmodule