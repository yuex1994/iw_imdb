module Queue_32( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90410.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90411.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90412.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input         io_enq_bits_read, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input  [23:0] io_enq_bits_index, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input  [9:0]  io_enq_bits_extra_tlrr_extra_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input  [1:0]  io_enq_bits_extra_tlrr_extra_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output        io_deq_bits_read, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output [23:0] io_deq_bits_index, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output [3:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output [9:0]  io_deq_bits_extra_tlrr_extra_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
  output [1:0]  io_deq_bits_extra_tlrr_extra_size // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90413.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg  ram_read [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_read__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg [23:0] ram_index [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [23:0] ram_index__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_index__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [23:0] ram_index__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_index__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_index__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_index__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg [31:0] ram_data [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [31:0] ram_data__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_data__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [31:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_data__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg [3:0] ram_mask [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [3:0] ram_mask__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_mask__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [3:0] ram_mask__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_mask__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_mask__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_mask__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg [9:0] ram_extra_tlrr_extra_source [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [9:0] ram_extra_tlrr_extra_source__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_source__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [9:0] ram_extra_tlrr_extra_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_source__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_source__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_source__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg [1:0] ram_extra_tlrr_extra_size [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [1:0] ram_extra_tlrr_extra_size__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_size__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire [1:0] ram_extra_tlrr_extra_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  wire  ram_extra_tlrr_extra_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@90416.4]
  wire  empty; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@90418.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@90421.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@90424.4]
  wire  _T_4; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@90438.4]
  assign ram_read__T_7_addr = 1'h0;
  assign ram_read__T_7_data = ram_read[ram_read__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_read__T_3_data = io_enq_bits_read;
  assign ram_read__T_3_addr = 1'h0;
  assign ram_read__T_3_mask = 1'h1;
  assign ram_read__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_index__T_7_addr = 1'h0;
  assign ram_index__T_7_data = ram_index[ram_index__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_index__T_3_data = io_enq_bits_index;
  assign ram_index__T_3_addr = 1'h0;
  assign ram_index__T_3_mask = 1'h1;
  assign ram_index__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_7_addr = 1'h0;
  assign ram_data__T_7_data = ram_data[ram_data__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = 1'h0;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_mask__T_7_addr = 1'h0;
  assign ram_mask__T_7_data = ram_mask[ram_mask__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_mask__T_3_data = io_enq_bits_mask;
  assign ram_mask__T_3_addr = 1'h0;
  assign ram_mask__T_3_mask = 1'h1;
  assign ram_mask__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_source__T_7_addr = 1'h0;
  assign ram_extra_tlrr_extra_source__T_7_data = ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_extra_tlrr_extra_source__T_3_data = io_enq_bits_extra_tlrr_extra_source;
  assign ram_extra_tlrr_extra_source__T_3_addr = 1'h0;
  assign ram_extra_tlrr_extra_source__T_3_mask = 1'h1;
  assign ram_extra_tlrr_extra_source__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_size__T_7_addr = 1'h0;
  assign ram_extra_tlrr_extra_size__T_7_data = ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
  assign ram_extra_tlrr_extra_size__T_3_data = io_enq_bits_extra_tlrr_extra_size;
  assign ram_extra_tlrr_extra_size__T_3_addr = 1'h0;
  assign ram_extra_tlrr_extra_size__T_3_mask = 1'h1;
  assign ram_extra_tlrr_extra_size__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@90418.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@90421.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@90424.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@90438.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@90445.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@90443.4]
  assign io_deq_bits_read = ram_read__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90452.4]
  assign io_deq_bits_index = ram_index__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90451.4]
  assign io_deq_bits_data = ram_data__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90450.4]
  assign io_deq_bits_mask = ram_mask__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90449.4]
  assign io_deq_bits_extra_tlrr_extra_source = ram_extra_tlrr_extra_source__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90448.4]
  assign io_deq_bits_extra_tlrr_extra_size = ram_extra_tlrr_extra_size__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@90447.4]
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
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_read[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_index[initvar] = _RAND_1[23:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_source[initvar] = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_size[initvar] = _RAND_5[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_read__T_3_en & ram_read__T_3_mask) begin
      ram_read[ram_read__T_3_addr] <= ram_read__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if(ram_index__T_3_en & ram_index__T_3_mask) begin
      ram_index[ram_index__T_3_addr] <= ram_index__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if(ram_mask__T_3_en & ram_mask__T_3_mask) begin
      ram_mask[ram_mask__T_3_addr] <= ram_mask__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if(ram_extra_tlrr_extra_source__T_3_en & ram_extra_tlrr_extra_source__T_3_mask) begin
      ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source__T_3_addr] <= ram_extra_tlrr_extra_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if(ram_extra_tlrr_extra_size__T_3_en & ram_extra_tlrr_extra_size__T_3_mask) begin
      ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size__T_3_addr] <= ram_extra_tlrr_extra_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@90415.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
