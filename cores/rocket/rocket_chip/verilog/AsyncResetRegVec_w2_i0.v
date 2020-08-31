module AsyncResetRegVec_w2_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225974.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225975.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225976.4]
  input  [1:0] io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225977.4]
  output [1:0] io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@225977.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] reg_; // @[AsyncResetReg.scala 64:50:freechips.rocketchip.system.DefaultRV32Config.fir@225983.4]
  assign io_q = reg_; // @[AsyncResetReg.scala 68:8:freechips.rocketchip.system.DefaultRV32Config.fir@225987.4]
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
  reg_ = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    reg_ = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      reg_ <= 2'h0;
    end else begin
      reg_ <= io_d;
    end
  end
endmodule
