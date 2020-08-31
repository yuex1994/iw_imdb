module MulAddRecFNPipe( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211556.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211557.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211558.4]
  input         io_validin, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  input  [1:0]  io_op, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  input  [32:0] io_c, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211559.4]
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
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire [1:0] mulAddRecFNToRaw_preMul_io_op; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_a; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_b; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_c; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddA; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [47:0] mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [9:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [4:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire [25:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_invalidExc; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [9:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire [26:0] mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
  wire  roundRawFNToRecFN_io_invalidExc; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire  roundRawFNToRecFN_io_infiniteExc; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire  roundRawFNToRecFN_io_in_isInf; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire  roundRawFNToRecFN_io_in_isZero; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire  roundRawFNToRecFN_io_in_sign; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [32:0] roundRawFNToRecFN_io_out; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
  wire [47:0] _T; // @[FPU.scala 606:45:freechips.rocketchip.system.DefaultRV32Config.fir@211572.4]
  wire [48:0] mulAddResult; // @[FPU.scala 607:50:freechips.rocketchip.system.DefaultRV32Config.fir@211573.4]
  reg  _T_2_isSigNaNAny; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isNaNAOrB; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isInfA; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isZeroA; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isInfB; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isZeroB; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_signProd; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isNaNC; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isInfC; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_isZeroC; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg [9:0] _T_2_sExpSum; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_doSubMags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_CIsDominant; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg [4:0] _T_2_CDom_CAlignDist; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg [25:0] _T_2_highAlignedSigC; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg  _T_2_bit0AlignedSigC; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211582.4]
  reg [48:0] _T_5; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211608.4]
  reg [2:0] _T_8; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211619.4]
  reg [2:0] roundingMode_stage0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211630.4]
  reg  valid_stage0; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@211650.4]
  reg  _T_20; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211665.4]
  reg  _T_23_isNaN; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg  _T_23_isInf; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg  _T_23_isZero; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg  _T_23_sign; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg [9:0] _T_23_sExp; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg [26:0] _T_23_sig; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211676.4]
  reg [2:0] _T_26; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@211692.4]
  MulAddRecFNToRaw_preMul mulAddRecFNToRaw_preMul ( // @[FPU.scala 597:41:freechips.rocketchip.system.DefaultRV32Config.fir@211564.4]
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );
  MulAddRecFNToRaw_postMul mulAddRecFNToRaw_postMul ( // @[FPU.scala 598:42:freechips.rocketchip.system.DefaultRV32Config.fir@211566.4]
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[FPU.scala 625:35:freechips.rocketchip.system.DefaultRV32Config.fir@211661.4]
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
  assign _T = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 606:45:freechips.rocketchip.system.DefaultRV32Config.fir@211572.4]
  assign mulAddResult = _T + mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 607:50:freechips.rocketchip.system.DefaultRV32Config.fir@211573.4]
  assign io_out = roundRawFNToRecFN_io_out; // @[FPU.scala 636:23:freechips.rocketchip.system.DefaultRV32Config.fir@211724.4]
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 637:23:freechips.rocketchip.system.DefaultRV32Config.fir@211725.4]
  assign mulAddRecFNToRaw_preMul_io_op = io_op; // @[FPU.scala 600:35:freechips.rocketchip.system.DefaultRV32Config.fir@211568.4]
  assign mulAddRecFNToRaw_preMul_io_a = io_a; // @[FPU.scala 601:35:freechips.rocketchip.system.DefaultRV32Config.fir@211569.4]
  assign mulAddRecFNToRaw_preMul_io_b = io_b; // @[FPU.scala 602:35:freechips.rocketchip.system.DefaultRV32Config.fir@211570.4]
  assign mulAddRecFNToRaw_preMul_io_c = io_c; // @[FPU.scala 603:35:freechips.rocketchip.system.DefaultRV32Config.fir@211571.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = _T_2_isSigNaNAny; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = _T_2_isNaNAOrB; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = _T_2_isInfA; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = _T_2_isZeroA; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = _T_2_isInfB; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = _T_2_isZeroB; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = _T_2_signProd; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = _T_2_isNaNC; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = _T_2_isInfC; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = _T_2_isZeroC; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = _T_2_sExpSum; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = _T_2_doSubMags; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = _T_2_CIsDominant; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist = _T_2_CDom_CAlignDist; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC = _T_2_highAlignedSigC; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC = _T_2_bit0AlignedSigC; // @[FPU.scala 615:46:freechips.rocketchip.system.DefaultRV32Config.fir@211605.4]
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = _T_5; // @[FPU.scala 616:46:freechips.rocketchip.system.DefaultRV32Config.fir@211616.4]
  assign mulAddRecFNToRaw_postMul_io_roundingMode = _T_8; // @[FPU.scala 617:46:freechips.rocketchip.system.DefaultRV32Config.fir@211627.4]
  assign roundRawFNToRecFN_io_invalidExc = _T_20; // @[FPU.scala 628:45:freechips.rocketchip.system.DefaultRV32Config.fir@211673.4]
  assign roundRawFNToRecFN_io_infiniteExc = 1'h0; // @[FPU.scala 634:38:freechips.rocketchip.system.DefaultRV32Config.fir@211723.4]
  assign roundRawFNToRecFN_io_in_isNaN = _T_23_isNaN; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_in_isInf = _T_23_isInf; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_in_isZero = _T_23_isZero; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_in_sign = _T_23_sign; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_in_sExp = _T_23_sExp; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_in_sig = _T_23_sig; // @[FPU.scala 629:45:freechips.rocketchip.system.DefaultRV32Config.fir@211689.4]
  assign roundRawFNToRecFN_io_roundingMode = _T_26; // @[FPU.scala 630:45:freechips.rocketchip.system.DefaultRV32Config.fir@211700.4]
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
  _T_2_isSigNaNAny = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_2_isNaNAOrB = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_2_isInfA = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_2_isZeroA = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_2_isInfB = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_2_isZeroB = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  _T_2_signProd = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_2_isNaNC = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  _T_2_isInfC = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_2_isZeroC = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_2_sExpSum = _RAND_10[9:0];
  _RAND_11 = {1{`RANDOM}};
  _T_2_doSubMags = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_2_CIsDominant = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_2_CDom_CAlignDist = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  _T_2_highAlignedSigC = _RAND_14[25:0];
  _RAND_15 = {1{`RANDOM}};
  _T_2_bit0AlignedSigC = _RAND_15[0:0];
  _RAND_16 = {2{`RANDOM}};
  _T_5 = _RAND_16[48:0];
  _RAND_17 = {1{`RANDOM}};
  _T_8 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  roundingMode_stage0 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  valid_stage0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  _T_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  _T_23_isNaN = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  _T_23_isInf = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  _T_23_isZero = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  _T_23_sign = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  _T_23_sExp = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  _T_23_sig = _RAND_26[26:0];
  _RAND_27 = {1{`RANDOM}};
  _T_26 = _RAND_27[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_validin) begin
      _T_2_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
    end
    if (io_validin) begin
      _T_2_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
    end
    if (io_validin) begin
      _T_2_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
    end
    if (io_validin) begin
      _T_2_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
    end
    if (io_validin) begin
      _T_2_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
    end
    if (io_validin) begin
      _T_2_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
    end
    if (io_validin) begin
      _T_2_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
    end
    if (io_validin) begin
      _T_2_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
    end
    if (io_validin) begin
      _T_2_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
    end
    if (io_validin) begin
      _T_2_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
    end
    if (io_validin) begin
      _T_2_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
    end
    if (io_validin) begin
      _T_2_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
    end
    if (io_validin) begin
      _T_2_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
    end
    if (io_validin) begin
      _T_2_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
    end
    if (io_validin) begin
      _T_2_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
    end
    if (io_validin) begin
      _T_2_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
    end
    if (io_validin) begin
      _T_5 <= mulAddResult;
    end
    if (io_validin) begin
      _T_8 <= io_roundingMode;
    end
    if (io_validin) begin
      roundingMode_stage0 <= io_roundingMode;
    end
    if (reset) begin
      valid_stage0 <= 1'h0;
    end else begin
      valid_stage0 <= io_validin;
    end
    if (valid_stage0) begin
      _T_20 <= mulAddRecFNToRaw_postMul_io_invalidExc;
    end
    if (valid_stage0) begin
      _T_23_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
    end
    if (valid_stage0) begin
      _T_23_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf;
    end
    if (valid_stage0) begin
      _T_23_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero;
    end
    if (valid_stage0) begin
      _T_23_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign;
    end
    if (valid_stage0) begin
      _T_23_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp;
    end
    if (valid_stage0) begin
      _T_23_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig;
    end
    if (valid_stage0) begin
      _T_26 <= roundingMode_stage0;
    end
  end
endmodule
