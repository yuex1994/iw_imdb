module Queue_37( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210307.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210308.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210309.4]
  output       io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210310.4]
  input        io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210310.4]
  input  [1:0] io_enq_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210310.4]
  output       io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210310.4]
  output [1:0] io_deq_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@210310.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] ram_sink [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire [1:0] ram_sink__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire  ram_sink__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire [1:0] ram_sink__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire  ram_sink__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire  ram_sink__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  wire  ram_sink__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  reg  _T; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@210313.4]
  reg  _T_1; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@210314.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@210315.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@210316.4]
  wire  _T_2; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@210317.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@210318.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@210319.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@210320.4]
  wire  _T_8; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@210331.6]
  wire  _T_11; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@210337.6]
  wire  _T_12; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@210340.4]
  assign ram_sink__T_15_addr = _T_1;
  assign ram_sink__T_15_data = ram_sink[ram_sink__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
  assign ram_sink__T_5_data = io_enq_bits_sink;
  assign ram_sink__T_5_addr = _T;
  assign ram_sink__T_5_mask = 1'h1;
  assign ram_sink__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@210316.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@210317.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@210318.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@210319.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@210320.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@210331.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@210337.6]
  assign _T_12 = do_enq != io_deq_valid; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@210340.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@210347.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@210345.4]
  assign io_deq_bits_sink = ram_sink__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@210349.4]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_sink[initvar] = _RAND_0[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_sink__T_5_en & ram_sink__T_5_mask) begin
      ram_sink[ram_sink__T_5_addr] <= ram_sink__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@210312.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (io_deq_valid) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
