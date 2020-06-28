module SynchronizerShiftReg_w2_d3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227307.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227308.4]
  input  [1:0] io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227310.4]
  output [1:0] io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227310.4]
);
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227313.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227313.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227313.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227320.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227320.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227320.4]
  wire  output_1; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227324.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227325.4]
  wire  output_0; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227317.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227318.4]
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 NonSyncResetSynchronizerPrimitiveShiftReg_d3 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227313.4]
    .clock(NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock),
    .io_d(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d),
    .io_q(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q)
  );
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 NonSyncResetSynchronizerPrimitiveShiftReg_d3_1 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@227320.4]
    .clock(NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_clock),
    .io_d(NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_d),
    .io_q(NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_q)
  );
  assign output_1 = NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227324.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227325.4]
  assign output_0 = NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227317.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@227318.4]
  assign io_q = {output_1,output_0}; // @[SynchronizerReg.scala 165:8:freechips.rocketchip.system.DefaultRV32Config.fir@227327.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227314.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d = io_d[0]; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@227316.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@227321.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_1_io_d = io_d[1]; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@227323.4]
endmodule
