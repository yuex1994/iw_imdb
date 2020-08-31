module IntXing( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226150.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226151.4]
  input   auto_int_in_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226153.4]
  input   auto_int_in_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226153.4]
  output  auto_int_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226153.4]
  output  auto_int_out_1 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226153.4]
);
  wire  SynchronizerShiftReg_w2_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@226164.4]
  wire [1:0] SynchronizerShiftReg_w2_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@226164.4]
  wire [1:0] SynchronizerShiftReg_w2_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@226164.4]
  wire [1:0] _T_4; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226170.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226171.4]
  SynchronizerShiftReg_w2_d3 SynchronizerShiftReg_w2_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@226164.4]
    .clock(SynchronizerShiftReg_w2_d3_clock),
    .io_d(SynchronizerShiftReg_w2_d3_io_d),
    .io_q(SynchronizerShiftReg_w2_d3_io_q)
  );
  assign _T_4 = SynchronizerShiftReg_w2_d3_io_q; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226170.4 :freechips.rocketchip.system.DefaultRV32Config.fir@226171.4]
  assign auto_int_out_0 = _T_4[0]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@226162.4]
  assign auto_int_out_1 = _T_4[1]; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@226162.4]
  assign SynchronizerShiftReg_w2_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226165.4]
  assign SynchronizerShiftReg_w2_d3_io_d = {auto_int_in_1,auto_int_in_0}; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@226168.4]
endmodule
