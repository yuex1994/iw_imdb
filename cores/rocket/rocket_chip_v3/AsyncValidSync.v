module AsyncValidSync( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104997.2]
  input   io_in, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104998.4]
  output  io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104998.4]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104999.4]
  input   reset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105000.4]
);
  wire  source_valid_0_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105002.4]
  wire  source_valid_0_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105002.4]
  wire  source_valid_0_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105002.4]
  wire  source_valid_0_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105002.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0_1 source_valid_0 ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105002.4]
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset),
    .io_d(source_valid_0_io_d),
    .io_q(source_valid_0_io_q)
  );
  assign io_out = source_valid_0_io_q; // @[AsyncQueue.scala 66:12:freechips.rocketchip.system.DefaultRV32Config.fir@105008.4]
  assign source_valid_0_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105003.4]
  assign source_valid_0_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105004.4]
  assign source_valid_0_io_d = io_in; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@105005.4]
endmodule
