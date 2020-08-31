module AsyncResetRegVec_w1_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226015.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226016.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226017.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226018.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@226018.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  reg_; // @[AsyncResetReg.scala 64:50:freechips.rocketchip.system.DefaultRV32Config.fir@226024.4]
  assign io_q = reg_; // @[AsyncResetReg.scala 68:8:freechips.rocketchip.system.DefaultRV32Config.fir@226028.4]
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
  reg_ = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    reg_ = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      reg_ <= 1'h0;
    end else begin
      reg_ <= io_d;
    end
  end
endmodule
