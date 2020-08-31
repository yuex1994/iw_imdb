module ClockCrossingReg_w55( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@168851.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@168852.4]
  input  [54:0] io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@168854.4]
  output [54:0] io_q, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@168854.4]
  input         io_en // @[:freechips.rocketchip.system.DefaultRV32Config.fir@168854.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [54:0] cdc_reg; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@168856.4]
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 192:8:freechips.rocketchip.system.DefaultRV32Config.fir@168860.4]
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
  _RAND_0 = {2{`RANDOM}};
  cdc_reg = _RAND_0[54:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_en) begin
      cdc_reg <= io_d;
    end
  end
endmodule
