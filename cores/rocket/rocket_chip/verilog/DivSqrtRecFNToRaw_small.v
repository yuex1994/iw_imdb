module DivSqrtRecFNToRaw_small( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213366.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213367.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213368.4]
  output        io_inReady, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  input         io_inValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOutValid_div, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOutValid_sqrt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output [2:0]  io_roundingModeOut, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_invalidExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_infiniteExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOut_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOut_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOut_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output        io_rawOut_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output [9:0]  io_rawOut_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
  output [26:0] io_rawOut_sig // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213369.4]
);
  wire  divSqrtRawFN_clock; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_reset; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_inValid; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_sqrtOp; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_a_isNaN; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_a_isInf; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_a_isZero; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_a_sign; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [9:0] divSqrtRawFN_io_a_sExp; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [24:0] divSqrtRawFN_io_a_sig; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_b_isNaN; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_b_isInf; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_b_isZero; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_b_sign; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [9:0] divSqrtRawFN_io_b_sExp; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [24:0] divSqrtRawFN_io_b_sig; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [2:0] divSqrtRawFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [2:0] divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [9:0] divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire [26:0] divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
  wire  _T_2; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@213379.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@213381.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@213388.4]
  wire  _T_13; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@213396.4]
  wire [1:0] _T_15; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213398.4]
  wire  _T_19; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@213409.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@213411.4]
  wire  _T_26; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@213418.4]
  wire  _T_30; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@213426.4]
  wire [1:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213428.4]
  DivSqrtRawFN_small divSqrtRawFN ( // @[DivSqrtRecFN_small.scala 416:15:freechips.rocketchip.system.DefaultRV32Config.fir@213371.4]
    .clock(divSqrtRawFN_clock),
    .reset(divSqrtRawFN_reset),
    .io_inReady(divSqrtRawFN_io_inReady),
    .io_inValid(divSqrtRawFN_io_inValid),
    .io_sqrtOp(divSqrtRawFN_io_sqrtOp),
    .io_a_isNaN(divSqrtRawFN_io_a_isNaN),
    .io_a_isInf(divSqrtRawFN_io_a_isInf),
    .io_a_isZero(divSqrtRawFN_io_a_isZero),
    .io_a_sign(divSqrtRawFN_io_a_sign),
    .io_a_sExp(divSqrtRawFN_io_a_sExp),
    .io_a_sig(divSqrtRawFN_io_a_sig),
    .io_b_isNaN(divSqrtRawFN_io_b_isNaN),
    .io_b_isInf(divSqrtRawFN_io_b_isInf),
    .io_b_isZero(divSqrtRawFN_io_b_isZero),
    .io_b_sign(divSqrtRawFN_io_b_sign),
    .io_b_sExp(divSqrtRawFN_io_b_sExp),
    .io_b_sig(divSqrtRawFN_io_b_sig),
    .io_roundingMode(divSqrtRawFN_io_roundingMode),
    .io_rawOutValid_div(divSqrtRawFN_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRawFN_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRawFN_io_roundingModeOut),
    .io_invalidExc(divSqrtRawFN_io_invalidExc),
    .io_infiniteExc(divSqrtRawFN_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRawFN_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRawFN_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRawFN_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRawFN_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRawFN_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRawFN_io_rawOut_sig)
  );
  assign _T_2 = io_a[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@213379.4]
  assign _T_4 = io_a[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@213381.4]
  assign _T_9 = ~io_a[29]; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@213388.4]
  assign _T_13 = ~_T_2; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@213396.4]
  assign _T_15 = {1'h0,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213398.4]
  assign _T_19 = io_b[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@213409.4]
  assign _T_21 = io_b[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@213411.4]
  assign _T_26 = ~io_b[29]; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@213418.4]
  assign _T_30 = ~_T_19; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@213426.4]
  assign _T_32 = {1'h0,_T_30}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@213428.4]
  assign io_inReady = divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 418:16:freechips.rocketchip.system.DefaultRV32Config.fir@213374.4]
  assign io_rawOutValid_div = divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 425:25:freechips.rocketchip.system.DefaultRV32Config.fir@213438.4]
  assign io_rawOutValid_sqrt = divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 426:25:freechips.rocketchip.system.DefaultRV32Config.fir@213439.4]
  assign io_roundingModeOut = divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 427:25:freechips.rocketchip.system.DefaultRV32Config.fir@213440.4]
  assign io_invalidExc = divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 428:25:freechips.rocketchip.system.DefaultRV32Config.fir@213441.4]
  assign io_infiniteExc = divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@213442.4]
  assign io_rawOut_isNaN = divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213448.4]
  assign io_rawOut_isInf = divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213447.4]
  assign io_rawOut_isZero = divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213446.4]
  assign io_rawOut_sign = divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213445.4]
  assign io_rawOut_sExp = divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213444.4]
  assign io_rawOut_sig = divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@213443.4]
  assign divSqrtRawFN_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213372.4]
  assign divSqrtRawFN_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213373.4]
  assign divSqrtRawFN_io_inValid = io_inValid; // @[DivSqrtRecFN_small.scala 419:34:freechips.rocketchip.system.DefaultRV32Config.fir@213375.4]
  assign divSqrtRawFN_io_sqrtOp = io_sqrtOp; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@213376.4]
  assign divSqrtRawFN_io_a_isNaN = _T_4 & io_a[29]; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213406.4]
  assign divSqrtRawFN_io_a_isInf = _T_4 & _T_9; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213405.4]
  assign divSqrtRawFN_io_a_isZero = io_a[31:29] == 3'h0; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213404.4]
  assign divSqrtRawFN_io_a_sign = io_a[32]; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213403.4]
  assign divSqrtRawFN_io_a_sExp = {1'b0,$signed(io_a[31:23])}; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213402.4]
  assign divSqrtRawFN_io_a_sig = {_T_15,io_a[22:0]}; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@213401.4]
  assign divSqrtRawFN_io_b_isNaN = _T_21 & io_b[29]; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213436.4]
  assign divSqrtRawFN_io_b_isInf = _T_21 & _T_26; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213435.4]
  assign divSqrtRawFN_io_b_isZero = io_b[31:29] == 3'h0; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213434.4]
  assign divSqrtRawFN_io_b_sign = io_b[32]; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213433.4]
  assign divSqrtRawFN_io_b_sExp = {1'b0,$signed(io_b[31:23])}; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213432.4]
  assign divSqrtRawFN_io_b_sig = {_T_32,io_b[22:0]}; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@213431.4]
  assign divSqrtRawFN_io_roundingMode = io_roundingMode; // @[DivSqrtRecFN_small.scala 423:34:freechips.rocketchip.system.DefaultRV32Config.fir@213437.4]
endmodule
