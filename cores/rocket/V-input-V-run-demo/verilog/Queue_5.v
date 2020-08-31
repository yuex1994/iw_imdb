module Queue_5( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23871.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23872.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23873.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input  [1:0]  io_enq_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input  [3:0]  io_enq_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input  [4:0]  io_enq_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input         io_enq_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output [1:0]  io_deq_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output [3:0]  io_deq_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output [4:0]  io_deq_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
  output        io_deq_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@23874.4]
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
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_id__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_id__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_id__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_id__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_id__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_id__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg [31:0] ram_data [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [31:0] ram_data__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_data__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [31:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_data__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg [1:0] ram_resp [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [1:0] ram_resp__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_resp__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [1:0] ram_resp__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_resp__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_resp__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_resp__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg [3:0] ram_echo_tl_state_size [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_size__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_size__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_echo_tl_state_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_echo_tl_state_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg [4:0] ram_echo_tl_state_source [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [4:0] ram_echo_tl_state_source__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_source__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [4:0] ram_echo_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_echo_tl_state_source__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_echo_tl_state_source__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_echo_tl_state_source__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg  ram_last [0:15]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_last__T_11_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_last__T_11_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_last__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire [3:0] ram_last__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_last__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  wire  ram_last__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  reg [3:0] enq_ptr_value; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@23877.4]
  reg [3:0] deq_ptr_value; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@23878.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@23879.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@23880.4]
  wire  _T; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@23881.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@23882.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@23883.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23884.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23887.4]
  wire [3:0] _T_5; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@23900.6]
  wire [3:0] _T_7; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@23906.6]
  wire  _T_8; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@23909.4]
  assign ram_id__T_11_addr = deq_ptr_value;
  assign ram_id__T_11_data = ram_id[ram_id__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_id__T_3_data = io_enq_bits_id;
  assign ram_id__T_3_addr = enq_ptr_value;
  assign ram_id__T_3_mask = 1'h1;
  assign ram_id__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_11_addr = deq_ptr_value;
  assign ram_data__T_11_data = ram_data[ram_data__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = enq_ptr_value;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_resp__T_11_addr = deq_ptr_value;
  assign ram_resp__T_11_data = ram_resp[ram_resp__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_resp__T_3_data = io_enq_bits_resp;
  assign ram_resp__T_3_addr = enq_ptr_value;
  assign ram_resp__T_3_mask = 1'h1;
  assign ram_resp__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_size__T_11_addr = deq_ptr_value;
  assign ram_echo_tl_state_size__T_11_data = ram_echo_tl_state_size[ram_echo_tl_state_size__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_echo_tl_state_size__T_3_data = io_enq_bits_echo_tl_state_size;
  assign ram_echo_tl_state_size__T_3_addr = enq_ptr_value;
  assign ram_echo_tl_state_size__T_3_mask = 1'h1;
  assign ram_echo_tl_state_size__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_source__T_11_addr = deq_ptr_value;
  assign ram_echo_tl_state_source__T_11_data = ram_echo_tl_state_source[ram_echo_tl_state_source__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_echo_tl_state_source__T_3_data = io_enq_bits_echo_tl_state_source;
  assign ram_echo_tl_state_source__T_3_addr = enq_ptr_value;
  assign ram_echo_tl_state_source__T_3_mask = 1'h1;
  assign ram_echo_tl_state_source__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_last__T_11_addr = deq_ptr_value;
  assign ram_last__T_11_data = ram_last[ram_last__T_11_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
  assign ram_last__T_3_data = io_enq_bits_last;
  assign ram_last__T_3_addr = enq_ptr_value;
  assign ram_last__T_3_mask = 1'h1;
  assign ram_last__T_3_en = io_enq_ready & io_enq_valid;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@23880.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@23881.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@23882.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@23883.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23884.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23887.4]
  assign _T_5 = enq_ptr_value + 4'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@23900.6]
  assign _T_7 = deq_ptr_value + 4'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@23906.6]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@23909.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@23916.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@23914.4]
  assign io_deq_bits_id = ram_id__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23923.4]
  assign io_deq_bits_data = ram_data__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23922.4]
  assign io_deq_bits_resp = ram_resp__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23921.4]
  assign io_deq_bits_echo_tl_state_size = ram_echo_tl_state_size__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23920.4]
  assign io_deq_bits_echo_tl_state_source = ram_echo_tl_state_source__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23919.4]
  assign io_deq_bits_last = ram_last__T_11_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@23918.4]
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
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_data[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_resp[initvar] = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_echo_tl_state_size[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_echo_tl_state_source[initvar] = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_last[initvar] = _RAND_5[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  enq_ptr_value = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  deq_ptr_value = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_3_en & ram_id__T_3_mask) begin
      ram_id[ram_id__T_3_addr] <= ram_id__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if(ram_resp__T_3_en & ram_resp__T_3_mask) begin
      ram_resp[ram_resp__T_3_addr] <= ram_resp__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if(ram_echo_tl_state_size__T_3_en & ram_echo_tl_state_size__T_3_mask) begin
      ram_echo_tl_state_size[ram_echo_tl_state_size__T_3_addr] <= ram_echo_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if(ram_echo_tl_state_source__T_3_en & ram_echo_tl_state_source__T_3_mask) begin
      ram_echo_tl_state_source[ram_echo_tl_state_source__T_3_addr] <= ram_echo_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if(ram_last__T_3_en & ram_last__T_3_mask) begin
      ram_last[ram_last__T_3_addr] <= ram_last__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@23876.4]
    end
    if (reset) begin
      enq_ptr_value <= 4'h0;
    end else if (do_enq) begin
      enq_ptr_value <= _T_5;
    end
    if (reset) begin
      deq_ptr_value <= 4'h0;
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
