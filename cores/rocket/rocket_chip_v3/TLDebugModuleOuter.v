module TLDebugModuleOuter( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98870.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98871.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98872.4]
  output        auto_dmi_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input         auto_dmi_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input  [2:0]  auto_dmi_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input  [6:0]  auto_dmi_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input  [3:0]  auto_dmi_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input  [31:0] auto_dmi_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  input         auto_dmi_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  output        auto_dmi_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  output [2:0]  auto_dmi_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  output [31:0] auto_dmi_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  output        auto_int_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98873.4]
  output        io_ctrl_ndreset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output        io_ctrl_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  input         io_ctrl_dmactiveAck, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  input         io_innerCtrl_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output        io_innerCtrl_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output        io_innerCtrl_bits_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output [9:0]  io_innerCtrl_bits_hartsel, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output        io_innerCtrl_bits_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  output        io_innerCtrl_bits_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
  input         io_hgDebugInt_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98874.4]
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
`endif // RANDOMIZE_REG_INIT
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire [6:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
  reg  DMCONTROLReg_haltreq; // @[Debug.scala 336:31:freechips.rocketchip.system.DefaultRV32Config.fir@98980.4]
  reg  DMCONTROLReg_ndmreset; // @[Debug.scala 336:31:freechips.rocketchip.system.DefaultRV32Config.fir@98980.4]
  reg  DMCONTROLReg_dmactive; // @[Debug.scala 336:31:freechips.rocketchip.system.DefaultRV32Config.fir@98980.4]
  wire  _T_20; // @[Debug.scala 354:11:freechips.rocketchip.system.DefaultRV32Config.fir@99055.4]
  wire  _T_57; // @[RegisterRouter.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@99164.4]
  wire  _T_64; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99182.4]
  wire  _T_440; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99627.4]
  wire  _T_441; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99628.4]
  wire  _T_442; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99629.4]
  wire  _T_445; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99633.4]
  wire [7:0] _T_96; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99218.4]
  wire [7:0] _T_94; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99216.4]
  wire [7:0] _T_92; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99214.4]
  wire [7:0] _T_90; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99212.4]
  wire [31:0] _T_99; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99221.4]
  wire  _T_130; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99254.4]
  wire  _T_134; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99258.4]
  wire  _T_385; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99519.4]
  wire  _T_389; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99523.4]
  wire  _T_107; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99229.4]
  wire  _T_111; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99233.4]
  reg  hrmaskReg_0; // @[Debug.scala 458:28:freechips.rocketchip.system.DefaultRV32Config.fir@99135.4]
  wire  _T_155; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99281.4]
  wire  _T_159; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99285.4]
  wire  _T_47; // @[Debug.scala 464:39:freechips.rocketchip.system.DefaultRV32Config.fir@99145.6]
  wire  _T_48; // @[Debug.scala 387:35:freechips.rocketchip.system.DefaultRV32Config.fir@99146.6]
  wire  _T_50; // @[Debug.scala 464:74:freechips.rocketchip.system.DefaultRV32Config.fir@99148.6]
  wire  _T_178; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99306.4]
  wire  _T_182; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99310.4]
  wire  _T_51; // @[Debug.scala 466:39:freechips.rocketchip.system.DefaultRV32Config.fir@99153.8]
  wire  _T_54; // @[Debug.scala 466:74:freechips.rocketchip.system.DefaultRV32Config.fir@99156.8]
  wire  _GEN_19; // @[Debug.scala 466:102:freechips.rocketchip.system.DefaultRV32Config.fir@99157.8]
  wire  _GEN_20; // @[Debug.scala 464:102:freechips.rocketchip.system.DefaultRV32Config.fir@99149.6]
  wire  _T_55; // @[Debug.scala 474:43:freechips.rocketchip.system.DefaultRV32Config.fir@99161.4]
  wire [4:0] _T_214; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99344.4]
  wire [15:0] _T_215; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99345.4]
  wire [17:0] _T_260; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99390.4]
  wire [25:0] _T_261; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99391.4]
  wire  _T_312; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99442.4]
  wire  _T_319; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99449.4]
  wire  _T_358; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99490.4]
  wire  _T_365; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99497.4]
  wire [31:0] _T_400; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99536.4]
  reg  debugIntRegs_0; // @[Debug.scala 530:31:freechips.rocketchip.system.DefaultRV32Config.fir@99712.4]
  reg  innerCtrlValidReg; // @[Debug.scala 561:36:freechips.rocketchip.system.DefaultRV32Config.fir@99732.4]
  reg  innerCtrlResumeReqReg; // @[Debug.scala 562:40:freechips.rocketchip.system.DefaultRV32Config.fir@99733.4]
  reg  innerCtrlAckHaveResetReg; // @[Debug.scala 563:43:freechips.rocketchip.system.DefaultRV32Config.fir@99734.4]
  wire  _T_481; // @[Debug.scala 565:53:freechips.rocketchip.system.DefaultRV32Config.fir@99736.4]
  wire  _T_482; // @[Debug.scala 565:72:freechips.rocketchip.system.DefaultRV32Config.fir@99737.4]
  wire  _T_483; // @[Debug.scala 565:94:freechips.rocketchip.system.DefaultRV32Config.fir@99738.4]
  wire  _T_487; // @[Debug.scala 568:54:freechips.rocketchip.system.DefaultRV32Config.fir@99743.4]
  wire  _T_495; // @[Debug.scala 574:54:freechips.rocketchip.system.DefaultRV32Config.fir@99756.4]
  wire  _T_497; // @[Debug.scala 575:57:freechips.rocketchip.system.DefaultRV32Config.fir@99759.4]
  TLMonitor_40 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@98884.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode)
  );
  assign _T_20 = ~DMCONTROLReg_dmactive; // @[Debug.scala 354:11:freechips.rocketchip.system.DefaultRV32Config.fir@99055.4]
  assign _T_57 = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:freechips.rocketchip.system.DefaultRV32Config.fir@99164.4]
  assign _T_64 = auto_dmi_in_a_bits_address[4:2] == 3'h0; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99182.4]
  assign _T_440 = auto_dmi_in_a_valid & auto_dmi_in_d_ready; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99627.4]
  assign _T_441 = ~_T_57; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99628.4]
  assign _T_442 = _T_440 & _T_441; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99629.4]
  assign _T_445 = _T_442 & _T_64; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99633.4]
  assign _T_96 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99218.4]
  assign _T_94 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99216.4]
  assign _T_92 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99214.4]
  assign _T_90 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@99212.4]
  assign _T_99 = {_T_96,_T_94,_T_92,_T_90}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99221.4]
  assign _T_130 = &_T_99[1]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99254.4]
  assign _T_134 = _T_445 & _T_130; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99258.4]
  assign _T_385 = &_T_99[31]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99519.4]
  assign _T_389 = _T_445 & _T_385; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99523.4]
  assign _T_107 = &_T_99[0]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99229.4]
  assign _T_111 = _T_445 & _T_107; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99233.4]
  assign _T_155 = &_T_99[2]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99281.4]
  assign _T_159 = _T_445 & _T_155; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99285.4]
  assign _T_47 = _T_159 & auto_dmi_in_a_bits_data[2]; // @[Debug.scala 464:39:freechips.rocketchip.system.DefaultRV32Config.fir@99145.6]
  assign _T_48 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 387:35:freechips.rocketchip.system.DefaultRV32Config.fir@99146.6]
  assign _T_50 = _T_47 & _T_48; // @[Debug.scala 464:74:freechips.rocketchip.system.DefaultRV32Config.fir@99148.6]
  assign _T_178 = &_T_99[3]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99306.4]
  assign _T_182 = _T_445 & _T_178; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99310.4]
  assign _T_51 = _T_182 & auto_dmi_in_a_bits_data[3]; // @[Debug.scala 466:39:freechips.rocketchip.system.DefaultRV32Config.fir@99153.8]
  assign _T_54 = _T_51 & _T_48; // @[Debug.scala 466:74:freechips.rocketchip.system.DefaultRV32Config.fir@99156.8]
  assign _GEN_19 = _T_54 | hrmaskReg_0; // @[Debug.scala 466:102:freechips.rocketchip.system.DefaultRV32Config.fir@99157.8]
  assign _GEN_20 = _T_50 ? 1'h0 : _GEN_19; // @[Debug.scala 464:102:freechips.rocketchip.system.DefaultRV32Config.fir@99149.6]
  assign _T_55 = DMCONTROLReg_dmactive & io_ctrl_dmactiveAck; // @[Debug.scala 474:43:freechips.rocketchip.system.DefaultRV32Config.fir@99161.4]
  assign _T_214 = {1'h0,1'h0,1'h0,DMCONTROLReg_ndmreset,_T_55}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99344.4]
  assign _T_215 = {{11'd0}, _T_214}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99345.4]
  assign _T_260 = {1'h0,1'h0,_T_215}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99390.4]
  assign _T_261 = {{8'd0}, _T_260}; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99391.4]
  assign _T_312 = &_T_99[28]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99442.4]
  assign _T_319 = _T_445 & _T_312; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99449.4]
  assign _T_358 = &_T_99[30]; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99490.4]
  assign _T_365 = _T_445 & _T_358; // @[RegisterRouter.scala 80:24:freechips.rocketchip.system.DefaultRV32Config.fir@99497.4]
  assign _T_400 = {DMCONTROLReg_haltreq,1'h0,1'h0,1'h0,1'h0,1'h0,_T_261}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@99536.4]
  assign _T_481 = _T_365 | _T_319; // @[Debug.scala 565:53:freechips.rocketchip.system.DefaultRV32Config.fir@99736.4]
  assign _T_482 = _T_481 | _T_182; // @[Debug.scala 565:72:freechips.rocketchip.system.DefaultRV32Config.fir@99737.4]
  assign _T_483 = _T_482 | _T_159; // @[Debug.scala 565:94:freechips.rocketchip.system.DefaultRV32Config.fir@99738.4]
  assign _T_487 = ~io_innerCtrl_ready; // @[Debug.scala 568:54:freechips.rocketchip.system.DefaultRV32Config.fir@99743.4]
  assign _T_495 = _T_365 & auto_dmi_in_a_bits_data[30]; // @[Debug.scala 574:54:freechips.rocketchip.system.DefaultRV32Config.fir@99756.4]
  assign _T_497 = _T_319 & auto_dmi_in_a_bits_data[28]; // @[Debug.scala 575:57:freechips.rocketchip.system.DefaultRV32Config.fir@99759.4]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@98908.4]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@98908.4]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, _T_57}; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@98908.4]
  assign auto_dmi_in_d_bits_data = _T_64 ? _T_400 : 32'h0; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@98908.4]
  assign auto_int_out_0 = debugIntRegs_0 | io_hgDebugInt_0; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@98907.4]
  assign io_ctrl_ndreset = DMCONTROLReg_ndmreset; // @[Debug.scala 582:21:freechips.rocketchip.system.DefaultRV32Config.fir@99763.4]
  assign io_ctrl_dmactive = DMCONTROLReg_dmactive; // @[Debug.scala 583:22:freechips.rocketchip.system.DefaultRV32Config.fir@99764.4]
  assign io_innerCtrl_valid = _T_483 | innerCtrlValidReg; // @[Debug.scala 572:36:freechips.rocketchip.system.DefaultRV32Config.fir@99753.4]
  assign io_innerCtrl_bits_resumereq = _T_495 | innerCtrlResumeReqReg; // @[Debug.scala 574:36:freechips.rocketchip.system.DefaultRV32Config.fir@99758.4]
  assign io_innerCtrl_bits_hartsel = 10'h0; // @[Debug.scala 573:36:freechips.rocketchip.system.DefaultRV32Config.fir@99755.4]
  assign io_innerCtrl_bits_ackhavereset = _T_497 | innerCtrlAckHaveResetReg; // @[Debug.scala 575:36:freechips.rocketchip.system.DefaultRV32Config.fir@99761.4]
  assign io_innerCtrl_bits_hrmask_0 = _T_20 ? 1'h0 : _GEN_20; // @[Debug.scala 576:36:freechips.rocketchip.system.DefaultRV32Config.fir@99762.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98885.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@98886.4]
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98906.4]
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98905.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98904.4]
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98900.4]
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98899.4]
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98896.4]
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98895.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_57}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@98894.4]
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
  DMCONTROLReg_haltreq = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  DMCONTROLReg_ndmreset = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  DMCONTROLReg_dmactive = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  debugIntRegs_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  innerCtrlValidReg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  innerCtrlResumeReqReg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  innerCtrlAckHaveResetReg = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    DMCONTROLReg_haltreq = 1'h0;
  end
  if (reset) begin
    DMCONTROLReg_ndmreset = 1'h0;
  end
  if (reset) begin
    DMCONTROLReg_dmactive = 1'h0;
  end
  if (reset) begin
    hrmaskReg_0 = 1'h0;
  end
  if (reset) begin
    debugIntRegs_0 = 1'h0;
  end
  if (reset) begin
    innerCtrlValidReg = 1'h0;
  end
  if (reset) begin
    innerCtrlResumeReqReg = 1'h0;
  end
  if (reset) begin
    innerCtrlAckHaveResetReg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_haltreq <= 1'h0;
    end else if (_T_20) begin
      DMCONTROLReg_haltreq <= 1'h0;
    end else if (_T_389) begin
      DMCONTROLReg_haltreq <= auto_dmi_in_a_bits_data[31];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_ndmreset <= 1'h0;
    end else if (_T_20) begin
      DMCONTROLReg_ndmreset <= 1'h0;
    end else if (_T_134) begin
      DMCONTROLReg_ndmreset <= auto_dmi_in_a_bits_data[1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_dmactive <= 1'h0;
    end else if (_T_111) begin
      DMCONTROLReg_dmactive <= auto_dmi_in_a_bits_data[0];
    end else if (_T_20) begin
      DMCONTROLReg_dmactive <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_20) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_50) begin
      hrmaskReg_0 <= 1'h0;
    end else begin
      hrmaskReg_0 <= _GEN_19;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      debugIntRegs_0 <= 1'h0;
    end else if (_T_20) begin
      debugIntRegs_0 <= 1'h0;
    end else if (_T_389) begin
      debugIntRegs_0 <= auto_dmi_in_a_bits_data[31];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlValidReg <= 1'h0;
    end else begin
      innerCtrlValidReg <= io_innerCtrl_valid & _T_487;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlResumeReqReg <= 1'h0;
    end else begin
      innerCtrlResumeReqReg <= io_innerCtrl_bits_resumereq & _T_487;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlAckHaveResetReg <= 1'h0;
    end else begin
      innerCtrlAckHaveResetReg <= io_innerCtrl_bits_ackhavereset & _T_487;
    end
  end
endmodule
