module Queue( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22351.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22352.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22353.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [30:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [7:0]  io_enq_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [1:0]  io_enq_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input         io_enq_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [3:0]  io_enq_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [2:0]  io_enq_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input  [3:0]  io_enq_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [30:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [7:0]  io_deq_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [1:0]  io_deq_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output        io_deq_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [3:0]  io_deq_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [2:0]  io_deq_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
  output [3:0]  io_deq_bits_qos // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22354.4]
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
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_id__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_id__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_id__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_id__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_id__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_id__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [30:0] ram_addr [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [30:0] ram_addr__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_addr__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [30:0] ram_addr__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_addr__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_addr__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_addr__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [7:0] ram_len [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [7:0] ram_len__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_len__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [7:0] ram_len__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_len__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_len__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_len__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [2:0] ram_size [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [2:0] ram_size__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_size__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [2:0] ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_size__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_size__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_size__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [1:0] ram_burst [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [1:0] ram_burst__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_burst__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [1:0] ram_burst__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_burst__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_burst__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_burst__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg  ram_lock [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_lock__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [3:0] ram_cache [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_cache__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_cache__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_cache__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_cache__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_cache__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_cache__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [2:0] ram_prot [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [2:0] ram_prot__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_prot__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [2:0] ram_prot__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_prot__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_prot__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_prot__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg [3:0] ram_qos [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_qos__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_qos__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire [3:0] ram_qos__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_qos__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_qos__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  wire  ram_qos__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  reg  _T; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22357.4]
  reg  _T_1; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@22358.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22359.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22360.4]
  wire  _T_2; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22361.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22362.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22363.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22364.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22367.4]
  wire  _T_8; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22383.6]
  wire  _T_11; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22389.6]
  wire  _T_12; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22392.4]
  assign ram_id__T_15_addr = _T_1;
  assign ram_id__T_15_data = ram_id[ram_id__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_id__T_5_data = io_enq_bits_id;
  assign ram_id__T_5_addr = _T;
  assign ram_id__T_5_mask = 1'h1;
  assign ram_id__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_addr__T_15_addr = _T_1;
  assign ram_addr__T_15_data = ram_addr[ram_addr__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_addr__T_5_data = io_enq_bits_addr;
  assign ram_addr__T_5_addr = _T;
  assign ram_addr__T_5_mask = 1'h1;
  assign ram_addr__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_len__T_15_addr = _T_1;
  assign ram_len__T_15_data = ram_len[ram_len__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_len__T_5_data = io_enq_bits_len;
  assign ram_len__T_5_addr = _T;
  assign ram_len__T_5_mask = 1'h1;
  assign ram_len__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_15_addr = _T_1;
  assign ram_size__T_15_data = ram_size[ram_size__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_size__T_5_data = io_enq_bits_size;
  assign ram_size__T_5_addr = _T;
  assign ram_size__T_5_mask = 1'h1;
  assign ram_size__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_burst__T_15_addr = _T_1;
  assign ram_burst__T_15_data = ram_burst[ram_burst__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_burst__T_5_data = io_enq_bits_burst;
  assign ram_burst__T_5_addr = _T;
  assign ram_burst__T_5_mask = 1'h1;
  assign ram_burst__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_lock__T_15_addr = _T_1;
  assign ram_lock__T_15_data = ram_lock[ram_lock__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_lock__T_5_data = io_enq_bits_lock;
  assign ram_lock__T_5_addr = _T;
  assign ram_lock__T_5_mask = 1'h1;
  assign ram_lock__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_cache__T_15_addr = _T_1;
  assign ram_cache__T_15_data = ram_cache[ram_cache__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_cache__T_5_data = io_enq_bits_cache;
  assign ram_cache__T_5_addr = _T;
  assign ram_cache__T_5_mask = 1'h1;
  assign ram_cache__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_prot__T_15_addr = _T_1;
  assign ram_prot__T_15_data = ram_prot[ram_prot__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_prot__T_5_data = io_enq_bits_prot;
  assign ram_prot__T_5_addr = _T;
  assign ram_prot__T_5_mask = 1'h1;
  assign ram_prot__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_qos__T_15_addr = _T_1;
  assign ram_qos__T_15_data = ram_qos[ram_qos__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
  assign ram_qos__T_5_data = io_enq_bits_qos;
  assign ram_qos__T_5_addr = _T;
  assign ram_qos__T_5_mask = 1'h1;
  assign ram_qos__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@22360.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22361.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@22362.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@22363.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22364.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22367.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22383.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@22389.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22392.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@22399.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@22397.4]
  assign io_deq_bits_id = ram_id__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22409.4]
  assign io_deq_bits_addr = ram_addr__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22408.4]
  assign io_deq_bits_len = ram_len__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22407.4]
  assign io_deq_bits_size = ram_size__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22406.4]
  assign io_deq_bits_burst = ram_burst__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22405.4]
  assign io_deq_bits_lock = ram_lock__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22404.4]
  assign io_deq_bits_cache = ram_cache__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22403.4]
  assign io_deq_bits_prot = ram_prot__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22402.4]
  assign io_deq_bits_qos = ram_qos__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22401.4]
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
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[30:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_lock[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_cache[initvar] = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_prot[initvar] = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_qos[initvar] = _RAND_8[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  maybe_full = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_5_en & ram_id__T_5_mask) begin
      ram_id[ram_id__T_5_addr] <= ram_id__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_addr__T_5_en & ram_addr__T_5_mask) begin
      ram_addr[ram_addr__T_5_addr] <= ram_addr__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_len__T_5_en & ram_len__T_5_mask) begin
      ram_len[ram_len__T_5_addr] <= ram_len__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_size__T_5_en & ram_size__T_5_mask) begin
      ram_size[ram_size__T_5_addr] <= ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_burst__T_5_en & ram_burst__T_5_mask) begin
      ram_burst[ram_burst__T_5_addr] <= ram_burst__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_lock__T_5_en & ram_lock__T_5_mask) begin
      ram_lock[ram_lock__T_5_addr] <= ram_lock__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_cache__T_5_en & ram_cache__T_5_mask) begin
      ram_cache[ram_cache__T_5_addr] <= ram_cache__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_prot__T_5_en & ram_prot__T_5_mask) begin
      ram_prot[ram_prot__T_5_addr] <= ram_prot__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
    end
    if(ram_qos__T_5_en & ram_qos__T_5_mask) begin
      ram_qos[ram_qos__T_5_addr] <= ram_qos__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22356.4]
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
