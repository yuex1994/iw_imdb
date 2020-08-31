module AsyncQueueSink_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169030.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169031.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169032.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [2:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [1:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_deq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [8:0]  io_deq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [3:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_deq_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input  [2:0]  io_async_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input  [8:0]  io_async_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input  [3:0]  io_async_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input  [31:0] io_async_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_async_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input         io_async_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_async_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input         io_async_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  input         io_async_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
  output        io_async_safe_sink_reset_n // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169033.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_gray_clock; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@169049.4]
  wire  widx_gray_reset; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@169049.4]
  wire  widx_gray_io_d; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@169049.4]
  wire  widx_gray_io_q; // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@169049.4]
  wire  deq_bits_reg_clock; // @[SynchronizerReg.scala 197:25:freechips.rocketchip.system.DefaultRV32Config.fir@169057.4]
  wire [54:0] deq_bits_reg_io_d; // @[SynchronizerReg.scala 197:25:freechips.rocketchip.system.DefaultRV32Config.fir@169057.4]
  wire [54:0] deq_bits_reg_io_q; // @[SynchronizerReg.scala 197:25:freechips.rocketchip.system.DefaultRV32Config.fir@169057.4]
  wire  deq_bits_reg_io_en; // @[SynchronizerReg.scala 197:25:freechips.rocketchip.system.DefaultRV32Config.fir@169057.4]
  wire  AsyncValidSync_io_in; // @[AsyncQueue.scala 168:33:freechips.rocketchip.system.DefaultRV32Config.fir@169105.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 168:33:freechips.rocketchip.system.DefaultRV32Config.fir@169105.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 168:33:freechips.rocketchip.system.DefaultRV32Config.fir@169105.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 168:33:freechips.rocketchip.system.DefaultRV32Config.fir@169105.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 169:33:freechips.rocketchip.system.DefaultRV32Config.fir@169106.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 169:33:freechips.rocketchip.system.DefaultRV32Config.fir@169106.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 169:33:freechips.rocketchip.system.DefaultRV32Config.fir@169106.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 169:33:freechips.rocketchip.system.DefaultRV32Config.fir@169106.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 171:31:freechips.rocketchip.system.DefaultRV32Config.fir@169107.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 171:31:freechips.rocketchip.system.DefaultRV32Config.fir@169107.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 171:31:freechips.rocketchip.system.DefaultRV32Config.fir@169107.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 171:31:freechips.rocketchip.system.DefaultRV32Config.fir@169107.4]
  wire  AsyncValidSync_3_io_in; // @[AsyncQueue.scala 172:31:freechips.rocketchip.system.DefaultRV32Config.fir@169108.4]
  wire  AsyncValidSync_3_io_out; // @[AsyncQueue.scala 172:31:freechips.rocketchip.system.DefaultRV32Config.fir@169108.4]
  wire  AsyncValidSync_3_clock; // @[AsyncQueue.scala 172:31:freechips.rocketchip.system.DefaultRV32Config.fir@169108.4]
  wire  AsyncValidSync_3_reset; // @[AsyncQueue.scala 172:31:freechips.rocketchip.system.DefaultRV32Config.fir@169108.4]
  wire  _T_1; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@169038.4]
  wire  source_ready; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169035.4 :freechips.rocketchip.system.DefaultRV32Config.fir@169036.4 AsyncQueue.scala 188:18:freechips.rocketchip.system.DefaultRV32Config.fir@169135.4]
  wire  _T_2; // @[AsyncQueue.scala 144:79:freechips.rocketchip.system.DefaultRV32Config.fir@169039.4]
  reg  ridx_bin; // @[AsyncQueue.scala 52:25:freechips.rocketchip.system.DefaultRV32Config.fir@169041.4]
  wire  _T_5; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@169044.4]
  wire  ridx; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@169045.4]
  wire  widx; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@169053.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@169054.4]
  wire  _T_8; // @[AsyncQueue.scala 146:36:freechips.rocketchip.system.DefaultRV32Config.fir@169055.4]
  wire [45:0] _T_11; // @[SynchronizerReg.scala 199:24:freechips.rocketchip.system.DefaultRV32Config.fir@169062.4]
  wire [8:0] _T_14; // @[SynchronizerReg.scala 199:24:freechips.rocketchip.system.DefaultRV32Config.fir@169065.4]
  wire [54:0] _T_17; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169070.4 :freechips.rocketchip.system.DefaultRV32Config.fir@169071.4]
  reg  valid_reg; // @[AsyncQueue.scala 161:56:freechips.rocketchip.system.DefaultRV32Config.fir@169097.4]
  reg  ridx_gray; // @[AsyncQueue.scala 164:55:freechips.rocketchip.system.DefaultRV32Config.fir@169102.4]
  wire  _T_30; // @[AsyncQueue.scala 173:45:freechips.rocketchip.system.DefaultRV32Config.fir@169110.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 widx_gray ( // @[ShiftReg.scala 45:23:freechips.rocketchip.system.DefaultRV32Config.fir@169049.4]
    .clock(widx_gray_clock),
    .reset(widx_gray_reset),
    .io_d(widx_gray_io_d),
    .io_q(widx_gray_io_q)
  );
  ClockCrossingReg_w55 deq_bits_reg ( // @[SynchronizerReg.scala 197:25:freechips.rocketchip.system.DefaultRV32Config.fir@169057.4]
    .clock(deq_bits_reg_clock),
    .io_d(deq_bits_reg_io_d),
    .io_q(deq_bits_reg_io_q),
    .io_en(deq_bits_reg_io_en)
  );
  AsyncValidSync AsyncValidSync ( // @[AsyncQueue.scala 168:33:freechips.rocketchip.system.DefaultRV32Config.fir@169105.4]
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out),
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset)
  );
  AsyncValidSync AsyncValidSync_1 ( // @[AsyncQueue.scala 169:33:freechips.rocketchip.system.DefaultRV32Config.fir@169106.4]
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out),
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset)
  );
  AsyncValidSync AsyncValidSync_2 ( // @[AsyncQueue.scala 171:31:freechips.rocketchip.system.DefaultRV32Config.fir@169107.4]
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out),
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset)
  );
  AsyncValidSync AsyncValidSync_3 ( // @[AsyncQueue.scala 172:31:freechips.rocketchip.system.DefaultRV32Config.fir@169108.4]
    .io_in(AsyncValidSync_3_io_in),
    .io_out(AsyncValidSync_3_io_out),
    .clock(AsyncValidSync_3_clock),
    .reset(AsyncValidSync_3_reset)
  );
  assign _T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@169038.4]
  assign source_ready = AsyncValidSync_3_io_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169035.4 :freechips.rocketchip.system.DefaultRV32Config.fir@169036.4 AsyncQueue.scala 188:18:freechips.rocketchip.system.DefaultRV32Config.fir@169135.4]
  assign _T_2 = ~source_ready; // @[AsyncQueue.scala 144:79:freechips.rocketchip.system.DefaultRV32Config.fir@169039.4]
  assign _T_5 = ridx_bin + _T_1; // @[AsyncQueue.scala 53:43:freechips.rocketchip.system.DefaultRV32Config.fir@169044.4]
  assign ridx = _T_2 ? 1'h0 : _T_5; // @[AsyncQueue.scala 53:23:freechips.rocketchip.system.DefaultRV32Config.fir@169045.4]
  assign widx = widx_gray_io_q; // @[ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@169053.4 ShiftReg.scala 48:24:freechips.rocketchip.system.DefaultRV32Config.fir@169054.4]
  assign _T_8 = ridx != widx; // @[AsyncQueue.scala 146:36:freechips.rocketchip.system.DefaultRV32Config.fir@169055.4]
  assign _T_11 = {io_async_mem_0_address,io_async_mem_0_mask,io_async_mem_0_data,1'h0}; // @[SynchronizerReg.scala 199:24:freechips.rocketchip.system.DefaultRV32Config.fir@169062.4]
  assign _T_14 = {io_async_mem_0_opcode,3'h0,3'h4}; // @[SynchronizerReg.scala 199:24:freechips.rocketchip.system.DefaultRV32Config.fir@169065.4]
  assign _T_17 = deq_bits_reg_io_q; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169070.4 :freechips.rocketchip.system.DefaultRV32Config.fir@169071.4]
  assign _T_30 = ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:45:freechips.rocketchip.system.DefaultRV32Config.fir@169110.4]
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:16:freechips.rocketchip.system.DefaultRV32Config.fir@169100.4]
  assign io_deq_bits_opcode = _T_17[54:52]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169095.4]
  assign io_deq_bits_param = _T_17[51:49]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169094.4]
  assign io_deq_bits_size = _T_17[48:47]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169093.4]
  assign io_deq_bits_source = _T_17[46]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169092.4]
  assign io_deq_bits_address = _T_17[45:37]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169091.4]
  assign io_deq_bits_mask = _T_17[36:33]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169090.4]
  assign io_deq_bits_data = _T_17[32:1]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169089.4]
  assign io_deq_bits_corrupt = _T_17[0]; // @[AsyncQueue.scala 159:15:freechips.rocketchip.system.DefaultRV32Config.fir@169088.4]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17:freechips.rocketchip.system.DefaultRV32Config.fir@169104.4]
  assign io_async_safe_ridx_valid = AsyncValidSync_1_io_out; // @[AsyncQueue.scala 185:20:freechips.rocketchip.system.DefaultRV32Config.fir@169132.4]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:22:freechips.rocketchip.system.DefaultRV32Config.fir@169138.4]
  assign widx_gray_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169050.4]
  assign widx_gray_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169051.4]
  assign widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16:freechips.rocketchip.system.DefaultRV32Config.fir@169052.4]
  assign deq_bits_reg_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@169058.4]
  assign deq_bits_reg_io_d = {_T_14,_T_11}; // @[SynchronizerReg.scala 199:18:freechips.rocketchip.system.DefaultRV32Config.fir@169067.4]
  assign deq_bits_reg_io_en = source_ready & _T_8; // @[SynchronizerReg.scala 200:19:freechips.rocketchip.system.DefaultRV32Config.fir@169068.4]
  assign AsyncValidSync_io_in = 1'h1; // @[AsyncQueue.scala 183:24:freechips.rocketchip.system.DefaultRV32Config.fir@169130.4]
  assign AsyncValidSync_clock = clock; // @[AsyncQueue.scala 178:25:freechips.rocketchip.system.DefaultRV32Config.fir@169126.4]
  assign AsyncValidSync_reset = reset | _T_30; // @[AsyncQueue.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@169113.4]
  assign AsyncValidSync_1_io_in = AsyncValidSync_io_out; // @[AsyncQueue.scala 184:24:freechips.rocketchip.system.DefaultRV32Config.fir@169131.4]
  assign AsyncValidSync_1_clock = clock; // @[AsyncQueue.scala 179:25:freechips.rocketchip.system.DefaultRV32Config.fir@169127.4]
  assign AsyncValidSync_1_reset = reset | _T_30; // @[AsyncQueue.scala 174:25:freechips.rocketchip.system.DefaultRV32Config.fir@169118.4]
  assign AsyncValidSync_2_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25:freechips.rocketchip.system.DefaultRV32Config.fir@169133.4]
  assign AsyncValidSync_2_clock = clock; // @[AsyncQueue.scala 180:25:freechips.rocketchip.system.DefaultRV32Config.fir@169128.4]
  assign AsyncValidSync_2_reset = reset | _T_30; // @[AsyncQueue.scala 175:25:freechips.rocketchip.system.DefaultRV32Config.fir@169123.4]
  assign AsyncValidSync_3_io_in = AsyncValidSync_2_io_out; // @[AsyncQueue.scala 187:24:freechips.rocketchip.system.DefaultRV32Config.fir@169134.4]
  assign AsyncValidSync_3_clock = clock; // @[AsyncQueue.scala 181:25:freechips.rocketchip.system.DefaultRV32Config.fir@169129.4]
  assign AsyncValidSync_3_reset = reset; // @[AsyncQueue.scala 176:25:freechips.rocketchip.system.DefaultRV32Config.fir@169125.4]
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
  ridx_bin = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_bin = 1'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_bin <= 1'h0;
    end else if (_T_2) begin
      ridx_bin <= 1'h0;
    end else begin
      ridx_bin <= _T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & _T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_gray <= 1'h0;
    end else if (_T_2) begin
      ridx_gray <= 1'h0;
    end else begin
      ridx_gray <= _T_5;
    end
  end
endmodule
