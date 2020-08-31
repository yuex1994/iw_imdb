module QueueCompatibility_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22804.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22805.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22806.4]
  output       io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  input        io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  input  [3:0] io_enq_bits_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  input  [4:0] io_enq_bits_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  input        io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  output       io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  output [3:0] io_deq_bits_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
  output [4:0] io_deq_bits_tl_state_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22807.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_tl_state_size [0:7]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [3:0] ram_tl_state_size__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [2:0] ram_tl_state_size__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [3:0] ram_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [2:0] ram_tl_state_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire  ram_tl_state_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire  ram_tl_state_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  reg [4:0] ram_tl_state_source [0:7]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [4:0] ram_tl_state_source__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [2:0] ram_tl_state_source__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [4:0] ram_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire [2:0] ram_tl_state_source__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire  ram_tl_state_source__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  wire  ram_tl_state_source__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  reg [2:0] enq_ptr_value; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22813.4]
  reg [2:0] deq_ptr_value; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22814.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22815.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22816.4]
  wire  _T; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22817.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22818.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22819.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22820.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22824.4]
  wire [2:0] _T_5; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22833.6]
  wire [2:0] _T_7; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22839.6]
  wire  _T_8; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22842.4]
  assign ram_tl_state_size__T_11_addr = deq_ptr_value;
  assign ram_tl_state_size__T_11_data = ram_tl_state_size[ram_tl_state_size__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  assign ram_tl_state_size__T_3_data = io_enq_bits_tl_state_size;
  assign ram_tl_state_size__T_3_addr = enq_ptr_value;
  assign ram_tl_state_size__T_3_mask = 1'h1;
  assign ram_tl_state_size__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_tl_state_source__T_11_addr = deq_ptr_value;
  assign ram_tl_state_source__T_11_data = ram_tl_state_source[ram_tl_state_source__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
  assign ram_tl_state_source__T_3_data = io_enq_bits_tl_state_source;
  assign ram_tl_state_source__T_3_addr = enq_ptr_value;
  assign ram_tl_state_source__T_3_mask = 1'h1;
  assign ram_tl_state_source__T_3_en = io_enq_ready & io_enq_valid;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22816.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22817.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22818.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22819.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22820.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22824.4]
  assign _T_5 = enq_ptr_value + 3'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22833.6]
  assign _T_7 = deq_ptr_value + 3'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22839.6]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22842.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@22849.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@22847.4]
  assign io_deq_bits_tl_state_size = ram_tl_state_size__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22851.4]
  assign io_deq_bits_tl_state_source = ram_tl_state_source__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22851.4]
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
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_tl_state_size[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_tl_state_source[initvar] = _RAND_1[4:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  enq_ptr_value = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  deq_ptr_value = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_tl_state_size__T_3_en & ram_tl_state_size__T_3_mask) begin
      ram_tl_state_size[ram_tl_state_size__T_3_addr] <= ram_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
    end
    if(ram_tl_state_source__T_3_en & ram_tl_state_source__T_3_mask) begin
      ram_tl_state_source[ram_tl_state_source__T_3_addr] <= ram_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22812.4]
    end
    if (reset) begin
      enq_ptr_value <= 3'h0;
    end else if (do_enq) begin
      enq_ptr_value <= _T_5;
    end
    if (reset) begin
      deq_ptr_value <= 3'h0;
    end else if (do_deq) begin
      deq_ptr_value <= _T_7;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      maybe_full <= do_enq;
    end
  end
endmodule
