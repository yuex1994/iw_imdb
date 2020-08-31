module NonSyncResetSynchronizerPrimitiveShiftReg_d3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210488.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210489.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210491.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210491.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  sync_0; // @[SynchronizerReg.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@210493.4]
  reg  sync_1; // @[SynchronizerReg.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@210494.4]
  reg  sync_2; // @[SynchronizerReg.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@210495.4]
  assign io_q = sync_0; // @[SynchronizerReg.scala 67:10:freechips.rocketchip.system.DefaultRV32Config.fir@210500.4]
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
  sync_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sync_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sync_2 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    sync_0 <= sync_1;
    sync_1 <= sync_2;
    sync_2 <= io_d;
  end
endmodule
