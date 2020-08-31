module Queue_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22417.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22418.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22419.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  input  [3:0]  io_enq_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  input         io_enq_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  output [3:0]  io_deq_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
  output        io_deq_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22420.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_data [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire [31:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire [31:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  reg [3:0] ram_strb [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire [3:0] ram_strb__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_strb__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire [3:0] ram_strb__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_strb__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_strb__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_strb__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  reg  ram_last [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  wire  ram_last__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  reg  _T; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22423.4]
  reg  _T_1; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22424.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22425.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22426.4]
  wire  _T_2; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22427.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22428.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22429.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22430.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22433.4]
  wire  _T_8; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22443.6]
  wire  _T_11; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22449.6]
  wire  _T_12; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22452.4]
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_strb__T_15_addr = _T_1;
  assign ram_strb__T_15_data = ram_strb[ram_strb__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  assign ram_strb__T_5_data = io_enq_bits_strb;
  assign ram_strb__T_5_addr = _T;
  assign ram_strb__T_5_mask = 1'h1;
  assign ram_strb__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_last__T_15_addr = _T_1;
  assign ram_last__T_15_data = ram_last[ram_last__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
  assign ram_last__T_5_data = io_enq_bits_last;
  assign ram_last__T_5_addr = _T;
  assign ram_last__T_5_mask = 1'h1;
  assign ram_last__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22426.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22427.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22428.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22429.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22430.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22433.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22443.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22449.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22452.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@22459.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@22457.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22463.4]
  assign io_deq_bits_strb = ram_strb__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22462.4]
  assign io_deq_bits_last = ram_last__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22461.4]
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
    ram_data[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
    end
    if(ram_strb__T_5_en & ram_strb__T_5_mask) begin
      ram_strb[ram_strb__T_5_addr] <= ram_strb__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
    end
    if(ram_last__T_5_en & ram_last__T_5_mask) begin
      ram_last[ram_last__T_5_addr] <= ram_last__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22422.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
