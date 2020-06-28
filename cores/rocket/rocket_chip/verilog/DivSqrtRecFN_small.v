module DivSqrtRecFN_small( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213719.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213720.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213721.4]
  output        io_inReady, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  input         io_inValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  output        io_outValid_div, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  output        io_outValid_sqrt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213722.4]
);
  wire  divSqrtRecFNToRaw_clock; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_reset; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_inReady; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_inValid; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_sqrtOp; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [32:0] divSqrtRecFNToRaw_io_a; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [32:0] divSqrtRecFNToRaw_io_b; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingMode; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_invalidExc; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_infiniteExc; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  divSqrtRecFNToRaw_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [9:0] divSqrtRecFNToRaw_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire [26:0] divSqrtRecFNToRaw_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
  wire  roundRawFNToRecFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  roundRawFNToRecFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  roundRawFNToRecFN_io_in_isInf; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  roundRawFNToRecFN_io_in_isZero; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire  roundRawFNToRecFN_io_in_sign; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire [32:0] roundRawFNToRecFN_io_out; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
  DivSqrtRecFNToRaw_small divSqrtRecFNToRaw ( // @[DivSqrtRecFN_small.scala 462:15:freechips.rocketchip.system.DefaultRV32Config.fir@213724.4]
    .clock(divSqrtRecFNToRaw_clock),
    .reset(divSqrtRecFNToRaw_reset),
    .io_inReady(divSqrtRecFNToRaw_io_inReady),
    .io_inValid(divSqrtRecFNToRaw_io_inValid),
    .io_sqrtOp(divSqrtRecFNToRaw_io_sqrtOp),
    .io_a(divSqrtRecFNToRaw_io_a),
    .io_b(divSqrtRecFNToRaw_io_b),
    .io_roundingMode(divSqrtRecFNToRaw_io_roundingMode),
    .io_rawOutValid_div(divSqrtRecFNToRaw_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRecFNToRaw_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRecFNToRaw_io_roundingModeOut),
    .io_invalidExc(divSqrtRecFNToRaw_io_invalidExc),
    .io_infiniteExc(divSqrtRecFNToRaw_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRecFNToRaw_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRecFNToRaw_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRecFNToRaw_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRecFNToRaw_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRecFNToRaw_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRecFNToRaw_io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[DivSqrtRecFN_small.scala 477:15:freechips.rocketchip.system.DefaultRV32Config.fir@213735.4]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign io_inReady = divSqrtRecFNToRaw_io_inReady; // @[DivSqrtRecFN_small.scala 464:16:freechips.rocketchip.system.DefaultRV32Config.fir@213727.4]
  assign io_outValid_div = divSqrtRecFNToRaw_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 473:22:freechips.rocketchip.system.DefaultRV32Config.fir@213733.4]
  assign io_outValid_sqrt = divSqrtRecFNToRaw_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 474:22:freechips.rocketchip.system.DefaultRV32Config.fir@213734.4]
  assign io_out = roundRawFNToRecFN_io_out; // @[DivSqrtRecFN_small.scala 483:23:freechips.rocketchip.system.DefaultRV32Config.fir@213746.4]
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags; // @[DivSqrtRecFN_small.scala 484:23:freechips.rocketchip.system.DefaultRV32Config.fir@213747.4]
  assign divSqrtRecFNToRaw_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213725.4]
  assign divSqrtRecFNToRaw_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@213726.4]
  assign divSqrtRecFNToRaw_io_inValid = io_inValid; // @[DivSqrtRecFN_small.scala 465:39:freechips.rocketchip.system.DefaultRV32Config.fir@213728.4]
  assign divSqrtRecFNToRaw_io_sqrtOp = io_sqrtOp; // @[DivSqrtRecFN_small.scala 466:39:freechips.rocketchip.system.DefaultRV32Config.fir@213729.4]
  assign divSqrtRecFNToRaw_io_a = io_a; // @[DivSqrtRecFN_small.scala 467:39:freechips.rocketchip.system.DefaultRV32Config.fir@213730.4]
  assign divSqrtRecFNToRaw_io_b = io_b; // @[DivSqrtRecFN_small.scala 468:39:freechips.rocketchip.system.DefaultRV32Config.fir@213731.4]
  assign divSqrtRecFNToRaw_io_roundingMode = io_roundingMode; // @[DivSqrtRecFN_small.scala 469:39:freechips.rocketchip.system.DefaultRV32Config.fir@213732.4]
  assign roundRawFNToRecFN_io_invalidExc = divSqrtRecFNToRaw_io_invalidExc; // @[DivSqrtRecFN_small.scala 478:39:freechips.rocketchip.system.DefaultRV32Config.fir@213736.4]
  assign roundRawFNToRecFN_io_infiniteExc = divSqrtRecFNToRaw_io_infiniteExc; // @[DivSqrtRecFN_small.scala 479:39:freechips.rocketchip.system.DefaultRV32Config.fir@213737.4]
  assign roundRawFNToRecFN_io_in_isNaN = divSqrtRecFNToRaw_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213743.4]
  assign roundRawFNToRecFN_io_in_isInf = divSqrtRecFNToRaw_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213742.4]
  assign roundRawFNToRecFN_io_in_isZero = divSqrtRecFNToRaw_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213741.4]
  assign roundRawFNToRecFN_io_in_sign = divSqrtRecFNToRaw_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213740.4]
  assign roundRawFNToRecFN_io_in_sExp = divSqrtRecFNToRaw_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213739.4]
  assign roundRawFNToRecFN_io_in_sig = divSqrtRecFNToRaw_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 480:39:freechips.rocketchip.system.DefaultRV32Config.fir@213738.4]
  assign roundRawFNToRecFN_io_roundingMode = divSqrtRecFNToRaw_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 481:39:freechips.rocketchip.system.DefaultRV32Config.fir@213744.4]
endmodule
