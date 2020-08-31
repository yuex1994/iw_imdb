module AsyncResetSynchronizerPrimitiveShiftReg_d3_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104939.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104940.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104941.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104942.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@104942.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  sync_0; // @[SynchronizerReg.scala 59:89:freechips.rocketchip.system.DefaultRV32Config.fir@104945.4]
  reg  sync_1; // @[SynchronizerReg.scala 59:89:freechips.rocketchip.system.DefaultRV32Config.fir@104946.4]
  reg  sync_2; // @[SynchronizerReg.scala 59:89:freechips.rocketchip.system.DefaultRV32Config.fir@104947.4]
  assign io_q = sync_0; // @[SynchronizerReg.scala 67:10:freechips.rocketchip.system.DefaultRV32Config.fir@104952.4]
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
  if (reset) begin
    sync_0 = 1'h0;
  end
  if (reset) begin
    sync_1 = 1'h0;
  end
  if (reset) begin
    sync_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_0 <= 1'h0;
    end else begin
      sync_0 <= sync_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_1 <= 1'h0;
    end else begin
      sync_1 <= sync_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_2 <= 1'h0;
    end else begin
      sync_2 <= io_d;
    end
  end
endmodule
