module AsyncQueueSource_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105856.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105857.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105858.4]
  output  io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_enq_bits_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_enq_bits_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_enq_bits_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_mem_0_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_mem_0_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_mem_0_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_async_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_async_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  output  io_async_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
  input   io_async_safe_sink_reset_n // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105859.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_gray_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105876.4]
  wire  ridx_gray_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105876.4]
  wire  ridx_gray_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105876.4]
  wire  ridx_gray_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105876.4]
  wire  AsyncValidSync_io_in; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105909.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105909.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105909.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105909.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105910.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105910.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105910.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105910.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105911.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105911.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105911.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105911.4]
  wire  AsyncValidSync_3_io_in; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105912.4]
  wire  AsyncValidSync_3_io_out; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105912.4]
  wire  AsyncValidSync_3_clock; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105912.4]
  wire  AsyncValidSync_3_reset; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105912.4]
  reg  mem_0_resumereq; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105863.4]
  reg  mem_0_ackhavereset; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105863.4]
  reg  mem_0_hrmask_0; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105863.4]
  wire  _T_1; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@105865.4]
  wire  sink_ready; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105861.4 :freechips.rocketchip.system.DefaultRV32Config.fir@105862.4 AsyncQueue.scala 120:16:freechips.rocketchip.system.DefaultRV32Config.fir@105939.4]
  wire  _T_2; // @[AsyncQueue.scala 81:79:freechips.rocketchip.system.DefaultRV32Config.fir@105866.4]
  reg  widx_bin; // @[AsyncQueue.scala 52:25:freechips.rocketchip.system.DefaultRV32Config.fir@105868.4]
  wire  _T_5; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@105871.4]
  wire  widx; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@105872.4]
  wire  ridx; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105880.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105881.4]
  wire  _T_8; // @[AsyncQueue.scala 83:44:freechips.rocketchip.system.DefaultRV32Config.fir@105882.4]
  wire  _T_9; // @[AsyncQueue.scala 83:34:freechips.rocketchip.system.DefaultRV32Config.fir@105883.4]
  reg  ready_reg; // @[AsyncQueue.scala 88:56:freechips.rocketchip.system.DefaultRV32Config.fir@105895.4]
  reg  widx_gray; // @[AsyncQueue.scala 91:55:freechips.rocketchip.system.DefaultRV32Config.fir@105900.4]
  wire  _T_15; // @[AsyncQueue.scala 105:46:freechips.rocketchip.system.DefaultRV32Config.fir@105914.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 ridx_gray ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105876.4]
    .clock(ridx_gray_clock),
    .reset(ridx_gray_reset),
    .io_d(ridx_gray_io_d),
    .io_q(ridx_gray_io_q)
  );
  AsyncValidSync AsyncValidSync ( // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105909.4]
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out),
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset)
  );
  AsyncValidSync AsyncValidSync_1 ( // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105910.4]
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out),
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset)
  );
  AsyncValidSync AsyncValidSync_2 ( // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105911.4]
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out),
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset)
  );
  AsyncValidSync AsyncValidSync_3 ( // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105912.4]
    .io_in(AsyncValidSync_3_io_in),
    .io_out(AsyncValidSync_3_io_out),
    .clock(AsyncValidSync_3_clock),
    .reset(AsyncValidSync_3_reset)
  );
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@105865.4]
  assign sink_ready = AsyncValidSync_3_io_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105861.4 :freechips.rocketchip.system.DefaultRV32Config.fir@105862.4 AsyncQueue.scala 120:16:freechips.rocketchip.system.DefaultRV32Config.fir@105939.4]
  assign _T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79:freechips.rocketchip.system.DefaultRV32Config.fir@105866.4]
  assign _T_5 = widx_bin + _T_1; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@105871.4]
  assign widx = _T_2 ? 1'h0 : _T_5; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@105872.4]
  assign ridx = ridx_gray_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105880.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105881.4]
  assign _T_8 = ridx ^ 1'h1; // @[AsyncQueue.scala 83:44:freechips.rocketchip.system.DefaultRV32Config.fir@105882.4]
  assign _T_9 = widx != _T_8; // @[AsyncQueue.scala 83:34:freechips.rocketchip.system.DefaultRV32Config.fir@105883.4]
  assign _T_15 = ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:46:freechips.rocketchip.system.DefaultRV32Config.fir@105914.4]
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:16:freechips.rocketchip.system.DefaultRV32Config.fir@105898.4]
  assign io_async_mem_0_resumereq = mem_0_resumereq; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105908.4]
  assign io_async_mem_0_ackhavereset = mem_0_ackhavereset; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105906.4]
  assign io_async_mem_0_hrmask_0 = mem_0_hrmask_0; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105903.4]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17:freechips.rocketchip.system.DefaultRV32Config.fir@105902.4]
  assign io_async_safe_widx_valid = AsyncValidSync_1_io_out; // @[AsyncQueue.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@105936.4]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:24:freechips.rocketchip.system.DefaultRV32Config.fir@105942.4]
  assign ridx_gray_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105877.4]
  assign ridx_gray_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105878.4]
  assign ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@105879.4]
  assign AsyncValidSync_io_in = 1'h1; // @[AsyncQueue.scala 115:26:freechips.rocketchip.system.DefaultRV32Config.fir@105934.4]
  assign AsyncValidSync_clock = clock; // @[AsyncQueue.scala 110:26:freechips.rocketchip.system.DefaultRV32Config.fir@105930.4]
  assign AsyncValidSync_reset = reset | _T_15; // @[AsyncQueue.scala 105:26:freechips.rocketchip.system.DefaultRV32Config.fir@105917.4]
  assign AsyncValidSync_1_io_in = AsyncValidSync_io_out; // @[AsyncQueue.scala 116:26:freechips.rocketchip.system.DefaultRV32Config.fir@105935.4]
  assign AsyncValidSync_1_clock = clock; // @[AsyncQueue.scala 111:26:freechips.rocketchip.system.DefaultRV32Config.fir@105931.4]
  assign AsyncValidSync_1_reset = reset | _T_15; // @[AsyncQueue.scala 106:26:freechips.rocketchip.system.DefaultRV32Config.fir@105922.4]
  assign AsyncValidSync_2_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@105937.4]
  assign AsyncValidSync_2_clock = clock; // @[AsyncQueue.scala 112:26:freechips.rocketchip.system.DefaultRV32Config.fir@105932.4]
  assign AsyncValidSync_2_reset = reset | _T_15; // @[AsyncQueue.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@105927.4]
  assign AsyncValidSync_3_io_in = AsyncValidSync_2_io_out; // @[AsyncQueue.scala 119:22:freechips.rocketchip.system.DefaultRV32Config.fir@105938.4]
  assign AsyncValidSync_3_clock = clock; // @[AsyncQueue.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@105933.4]
  assign AsyncValidSync_3_reset = reset; // @[AsyncQueue.scala 108:26:freechips.rocketchip.system.DefaultRV32Config.fir@105929.4]
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
  mem_0_resumereq = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mem_0_ackhavereset = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_hrmask_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  widx_bin = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  ready_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  widx_gray = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_bin = 1'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_1) begin
      mem_0_resumereq <= io_enq_bits_resumereq;
    end
    if (_T_1) begin
      mem_0_ackhavereset <= io_enq_bits_ackhavereset;
    end
    if (_T_1) begin
      mem_0_hrmask_0 <= io_enq_bits_hrmask_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      widx_bin <= 1'h0;
    end else if (_T_2) begin
      widx_bin <= 1'h0;
    end else begin
      widx_bin <= _T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & _T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      widx_gray <= 1'h0;
    end else if (_T_2) begin
      widx_gray <= 1'h0;
    end else begin
      widx_gray <= _T_5;
    end
  end
endmodule
