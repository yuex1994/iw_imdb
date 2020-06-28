module Queue_22( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51582.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51583.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51584.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input  [1:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input  [3:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input  [4:0]  io_enq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input         io_enq_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input         io_enq_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input         io_enq_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output [1:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output [3:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output [4:0]  io_deq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output        io_deq_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output        io_deq_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
  output        io_deq_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@51585.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [2:0] ram_opcode__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_opcode__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [2:0] ram_opcode__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_opcode__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_opcode__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_opcode__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg [1:0] ram_param [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [1:0] ram_param__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_param__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [1:0] ram_param__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_param__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_param__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_param__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg [3:0] ram_size [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [3:0] ram_size__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_size__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [3:0] ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_size__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_size__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_size__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg [4:0] ram_source [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [4:0] ram_source__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_source__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [4:0] ram_source__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_source__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_source__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_source__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg  ram_sink [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_sink__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg  ram_denied [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_denied__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg [31:0] ram_data [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [31:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire [31:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg  ram_corrupt [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  wire  ram_corrupt__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  reg  _T; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@51588.4]
  reg  _T_1; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@51589.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@51590.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@51591.4]
  wire  _T_2; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@51592.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@51593.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@51594.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@51595.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@51598.4]
  wire  _T_8; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@51613.6]
  wire  _T_11; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@51619.6]
  wire  _T_12; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@51622.4]
  assign ram_opcode__T_15_addr = _T_1;
  assign ram_opcode__T_15_data = ram_opcode[ram_opcode__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_opcode__T_5_data = io_enq_bits_opcode;
  assign ram_opcode__T_5_addr = _T;
  assign ram_opcode__T_5_mask = 1'h1;
  assign ram_opcode__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_param__T_15_addr = _T_1;
  assign ram_param__T_15_data = ram_param[ram_param__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_param__T_5_data = io_enq_bits_param;
  assign ram_param__T_5_addr = _T;
  assign ram_param__T_5_mask = 1'h1;
  assign ram_param__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_15_addr = _T_1;
  assign ram_size__T_15_data = ram_size[ram_size__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_size__T_5_data = io_enq_bits_size;
  assign ram_size__T_5_addr = _T;
  assign ram_size__T_5_mask = 1'h1;
  assign ram_size__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_source__T_15_addr = _T_1;
  assign ram_source__T_15_data = ram_source[ram_source__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_source__T_5_data = io_enq_bits_source;
  assign ram_source__T_5_addr = _T;
  assign ram_source__T_5_mask = 1'h1;
  assign ram_source__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_sink__T_15_addr = _T_1;
  assign ram_sink__T_15_data = ram_sink[ram_sink__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_sink__T_5_data = io_enq_bits_sink;
  assign ram_sink__T_5_addr = _T;
  assign ram_sink__T_5_mask = 1'h1;
  assign ram_sink__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_denied__T_15_addr = _T_1;
  assign ram_denied__T_15_data = ram_denied[ram_denied__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_denied__T_5_data = io_enq_bits_denied;
  assign ram_denied__T_5_addr = _T;
  assign ram_denied__T_5_mask = 1'h1;
  assign ram_denied__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt__T_15_addr = _T_1;
  assign ram_corrupt__T_15_data = ram_corrupt[ram_corrupt__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
  assign ram_corrupt__T_5_data = io_enq_bits_corrupt;
  assign ram_corrupt__T_5_addr = _T;
  assign ram_corrupt__T_5_mask = 1'h1;
  assign ram_corrupt__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@51591.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@51592.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@51593.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@51594.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@51595.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@51598.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@51613.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@51619.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@51622.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@51629.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@51627.4]
  assign io_deq_bits_opcode = ram_opcode__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51638.4]
  assign io_deq_bits_param = ram_param__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51637.4]
  assign io_deq_bits_size = ram_size__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51636.4]
  assign io_deq_bits_source = ram_source__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51635.4]
  assign io_deq_bits_sink = ram_sink__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51634.4]
  assign io_deq_bits_denied = ram_denied__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51633.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51632.4]
  assign io_deq_bits_corrupt = ram_corrupt__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@51631.4]
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
    ram_opcode[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_sink[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_denied[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_7[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  _T_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  maybe_full = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_5_en & ram_opcode__T_5_mask) begin
      ram_opcode[ram_opcode__T_5_addr] <= ram_opcode__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_param__T_5_en & ram_param__T_5_mask) begin
      ram_param[ram_param__T_5_addr] <= ram_param__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_size__T_5_en & ram_size__T_5_mask) begin
      ram_size[ram_size__T_5_addr] <= ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_source__T_5_en & ram_source__T_5_mask) begin
      ram_source[ram_source__T_5_addr] <= ram_source__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_sink__T_5_en & ram_sink__T_5_mask) begin
      ram_sink[ram_sink__T_5_addr] <= ram_sink__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_denied__T_5_en & ram_denied__T_5_mask) begin
      ram_denied[ram_denied__T_5_addr] <= ram_denied__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
    end
    if(ram_corrupt__T_5_en & ram_corrupt__T_5_mask) begin
      ram_corrupt[ram_corrupt__T_5_addr] <= ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@51587.4]
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
