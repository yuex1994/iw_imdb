module PlusArgTimeout( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224692.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224693.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224694.4]
  input  [31:0] io_count // @[:freechips.rocketchip.system.DefaultRV32Config.fir@224695.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 62:19:freechips.rocketchip.system.DefaultRV32Config.fir@224697.4]
  wire  _T; // @[PlusArg.scala 63:13:freechips.rocketchip.system.DefaultRV32Config.fir@224699.4]
  wire  _T_1; // @[PlusArg.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@224701.6]
  wire  _T_3; // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224703.6]
  wire  _T_4; // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224704.6]
  plusarg_reader #(.FORMAT("max_core_cycles=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 62:19:freechips.rocketchip.system.DefaultRV32Config.fir@224697.4]
    .out(plusarg_reader_out)
  );
  assign _T = plusarg_reader_out > 32'h0; // @[PlusArg.scala 63:13:freechips.rocketchip.system.DefaultRV32Config.fir@224699.4]
  assign _T_1 = io_count < plusarg_reader_out; // @[PlusArg.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@224701.6]
  assign _T_3 = _T_1 | reset; // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224703.6]
  assign _T_4 = ~_T_3; // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224704.6]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & _T_4) begin
          $fwrite(32'h80000002,"Assertion failed: Timeout exceeded: Kill the emulation after INT rdtime cycles. Off if 0.\n    at PlusArg.scala:64 assert (io.count < max, s\"Timeout exceeded: $docstring\")\n"); // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224706.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T & _T_4) begin
          $fatal; // @[PlusArg.scala 64:12:freechips.rocketchip.system.DefaultRV32Config.fir@224707.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
