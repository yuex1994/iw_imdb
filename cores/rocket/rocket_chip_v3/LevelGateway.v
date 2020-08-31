module LevelGateway( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90322.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90323.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90324.4]
  input   io_interrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90325.4]
  output  io_plic_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90325.4]
  input   io_plic_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90325.4]
  input   io_plic_complete // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90325.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  inFlight; // @[Plic.scala 33:21:freechips.rocketchip.system.DefaultRV32Config.fir@90330.4]
  wire  _T; // @[Plic.scala 34:22:freechips.rocketchip.system.DefaultRV32Config.fir@90331.4]
  wire  _GEN_0; // @[Plic.scala 34:40:freechips.rocketchip.system.DefaultRV32Config.fir@90332.4]
  wire  _T_1; // @[Plic.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@90338.4]
  assign _T = io_interrupt & io_plic_ready; // @[Plic.scala 34:22:freechips.rocketchip.system.DefaultRV32Config.fir@90331.4]
  assign _GEN_0 = _T | inFlight; // @[Plic.scala 34:40:freechips.rocketchip.system.DefaultRV32Config.fir@90332.4]
  assign _T_1 = ~inFlight; // @[Plic.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@90338.4]
  assign io_plic_valid = io_interrupt & _T_1; // @[Plic.scala 36:17:freechips.rocketchip.system.DefaultRV32Config.fir@90340.4]
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
  inFlight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inFlight <= 1'h0;
    end else if (io_plic_complete) begin
      inFlight <= 1'h0;
    end else begin
      inFlight <= _GEN_0;
    end
  end
endmodule
