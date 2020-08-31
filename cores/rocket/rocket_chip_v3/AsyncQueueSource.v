module AsyncQueueSource( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105136.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105137.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105138.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input  [8:0]  io_enq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output [2:0]  io_async_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output [8:0]  io_async_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output [3:0]  io_async_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output [31:0] io_async_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input         io_async_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output        io_async_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input         io_async_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output        io_async_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  output        io_async_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
  input         io_async_safe_sink_reset_n // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105139.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_gray_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105156.4]
  wire  ridx_gray_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105156.4]
  wire  ridx_gray_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105156.4]
  wire  ridx_gray_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105156.4]
  wire  AsyncValidSync_io_in; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105193.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105193.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105193.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105193.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105194.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105194.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105194.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105194.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105195.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105195.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105195.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105195.4]
  wire  AsyncValidSync_3_io_in; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105196.4]
  wire  AsyncValidSync_3_io_out; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105196.4]
  wire  AsyncValidSync_3_clock; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105196.4]
  wire  AsyncValidSync_3_reset; // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105196.4]
  reg [2:0] mem_0_opcode; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105143.4]
  reg [8:0] mem_0_address; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105143.4]
  reg [3:0] mem_0_mask; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105143.4]
  reg [31:0] mem_0_data; // @[AsyncQueue.scala 80:16:freechips.rocketchip.system.DefaultRV32Config.fir@105143.4]
  wire  _T_1; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@105145.4]
  wire  sink_ready; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105141.4 :freechips.rocketchip.system.DefaultRV32Config.fir@105142.4 AsyncQueue.scala 120:16:freechips.rocketchip.system.DefaultRV32Config.fir@105223.4]
  wire  _T_2; // @[AsyncQueue.scala 81:79:freechips.rocketchip.system.DefaultRV32Config.fir@105146.4]
  reg  widx_bin; // @[AsyncQueue.scala 52:25:freechips.rocketchip.system.DefaultRV32Config.fir@105148.4]
  wire  _T_5; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@105151.4]
  wire  widx; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@105152.4]
  wire  ridx; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105160.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105161.4]
  wire  _T_8; // @[AsyncQueue.scala 83:44:freechips.rocketchip.system.DefaultRV32Config.fir@105162.4]
  wire  _T_9; // @[AsyncQueue.scala 83:34:freechips.rocketchip.system.DefaultRV32Config.fir@105163.4]
  reg  ready_reg; // @[AsyncQueue.scala 88:56:freechips.rocketchip.system.DefaultRV32Config.fir@105177.4]
  reg  widx_gray; // @[AsyncQueue.scala 91:55:freechips.rocketchip.system.DefaultRV32Config.fir@105182.4]
  wire  _T_15; // @[AsyncQueue.scala 105:46:freechips.rocketchip.system.DefaultRV32Config.fir@105198.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 ridx_gray ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@105156.4]
    .clock(ridx_gray_clock),
    .reset(ridx_gray_reset),
    .io_d(ridx_gray_io_d),
    .io_q(ridx_gray_io_q)
  );
  AsyncValidSync AsyncValidSync ( // @[AsyncQueue.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@105193.4]
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out),
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset)
  );
  AsyncValidSync AsyncValidSync_1 ( // @[AsyncQueue.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@105194.4]
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out),
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset)
  );
  AsyncValidSync AsyncValidSync_2 ( // @[AsyncQueue.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@105195.4]
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out),
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset)
  );
  AsyncValidSync AsyncValidSync_3 ( // @[AsyncQueue.scala 104:30:freechips.rocketchip.system.DefaultRV32Config.fir@105196.4]
    .io_in(AsyncValidSync_3_io_in),
    .io_out(AsyncValidSync_3_io_out),
    .clock(AsyncValidSync_3_clock),
    .reset(AsyncValidSync_3_reset)
  );
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@105145.4]
  assign sink_ready = AsyncValidSync_3_io_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105141.4 :freechips.rocketchip.system.DefaultRV32Config.fir@105142.4 AsyncQueue.scala 120:16:freechips.rocketchip.system.DefaultRV32Config.fir@105223.4]
  assign _T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79:freechips.rocketchip.system.DefaultRV32Config.fir@105146.4]
  assign _T_5 = widx_bin + _T_1; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@105151.4]
  assign widx = _T_2 ? 1'h0 : _T_5; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@105152.4]
  assign ridx = ridx_gray_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105160.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@105161.4]
  assign _T_8 = ridx ^ 1'h1; // @[AsyncQueue.scala 83:44:freechips.rocketchip.system.DefaultRV32Config.fir@105162.4]
  assign _T_9 = widx != _T_8; // @[AsyncQueue.scala 83:34:freechips.rocketchip.system.DefaultRV32Config.fir@105163.4]
  assign _T_15 = ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:46:freechips.rocketchip.system.DefaultRV32Config.fir@105198.4]
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:16:freechips.rocketchip.system.DefaultRV32Config.fir@105180.4]
  assign io_async_mem_0_opcode = mem_0_opcode; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105192.4]
  assign io_async_mem_0_address = mem_0_address; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105188.4]
  assign io_async_mem_0_mask = mem_0_mask; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105187.4]
  assign io_async_mem_0_data = mem_0_data; // @[AsyncQueue.scala 96:31:freechips.rocketchip.system.DefaultRV32Config.fir@105186.4]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17:freechips.rocketchip.system.DefaultRV32Config.fir@105184.4]
  assign io_async_safe_widx_valid = AsyncValidSync_1_io_out; // @[AsyncQueue.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@105220.4]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:24:freechips.rocketchip.system.DefaultRV32Config.fir@105226.4]
  assign ridx_gray_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105157.4]
  assign ridx_gray_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@105158.4]
  assign ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@105159.4]
  assign AsyncValidSync_io_in = 1'h1; // @[AsyncQueue.scala 115:26:freechips.rocketchip.system.DefaultRV32Config.fir@105218.4]
  assign AsyncValidSync_clock = clock; // @[AsyncQueue.scala 110:26:freechips.rocketchip.system.DefaultRV32Config.fir@105214.4]
  assign AsyncValidSync_reset = reset | _T_15; // @[AsyncQueue.scala 105:26:freechips.rocketchip.system.DefaultRV32Config.fir@105201.4]
  assign AsyncValidSync_1_io_in = AsyncValidSync_io_out; // @[AsyncQueue.scala 116:26:freechips.rocketchip.system.DefaultRV32Config.fir@105219.4]
  assign AsyncValidSync_1_clock = clock; // @[AsyncQueue.scala 111:26:freechips.rocketchip.system.DefaultRV32Config.fir@105215.4]
  assign AsyncValidSync_1_reset = reset | _T_15; // @[AsyncQueue.scala 106:26:freechips.rocketchip.system.DefaultRV32Config.fir@105206.4]
  assign AsyncValidSync_2_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@105221.4]
  assign AsyncValidSync_2_clock = clock; // @[AsyncQueue.scala 112:26:freechips.rocketchip.system.DefaultRV32Config.fir@105216.4]
  assign AsyncValidSync_2_reset = reset | _T_15; // @[AsyncQueue.scala 107:26:freechips.rocketchip.system.DefaultRV32Config.fir@105211.4]
  assign AsyncValidSync_3_io_in = AsyncValidSync_2_io_out; // @[AsyncQueue.scala 119:22:freechips.rocketchip.system.DefaultRV32Config.fir@105222.4]
  assign AsyncValidSync_3_clock = clock; // @[AsyncQueue.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@105217.4]
  assign AsyncValidSync_3_reset = reset; // @[AsyncQueue.scala 108:26:freechips.rocketchip.system.DefaultRV32Config.fir@105213.4]
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
  mem_0_opcode = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  mem_0_address = _RAND_1[8:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_mask = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_data = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  widx_bin = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ready_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  widx_gray = _RAND_6[0:0];
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
      mem_0_opcode <= io_enq_bits_opcode;
    end
    if (_T_1) begin
      mem_0_address <= io_enq_bits_address;
    end
    if (_T_1) begin
      mem_0_mask <= io_enq_bits_mask;
    end
    if (_T_1) begin
      mem_0_data <= io_enq_bits_data;
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
