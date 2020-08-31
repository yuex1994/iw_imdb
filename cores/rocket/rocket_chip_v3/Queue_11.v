module Queue_11( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26704.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26705.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26706.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [2:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [30:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [7:0]  io_enq_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [3:0]  io_enq_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [2:0]  io_enq_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [3:0]  io_enq_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input  [4:0]  io_enq_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input         io_enq_bits_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [2:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [30:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [7:0]  io_deq_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [1:0]  io_deq_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output        io_deq_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [3:0]  io_deq_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [2:0]  io_deq_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [3:0]  io_deq_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [3:0]  io_deq_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output [4:0]  io_deq_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
  output        io_deq_bits_wen // @[:freechips.rocketchip.system.DefaultRV32Config.fir@26707.4]
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
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_id [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_id__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_id__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_id__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_id__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_id__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_id__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [30:0] ram_addr [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [30:0] ram_addr__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_addr__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [30:0] ram_addr__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_addr__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_addr__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_addr__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [7:0] ram_len [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [7:0] ram_len__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_len__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [7:0] ram_len__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_len__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_len__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_len__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_size__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_size__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [1:0] ram_burst [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [1:0] ram_burst__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_burst__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [1:0] ram_burst__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_burst__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_burst__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_burst__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg  ram_lock [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_lock__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [3:0] ram_cache [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_cache__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_cache__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_cache__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_cache__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_cache__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_cache__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [2:0] ram_prot [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_prot__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_prot__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [2:0] ram_prot__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_prot__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_prot__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_prot__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [3:0] ram_qos [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_qos__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_qos__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_qos__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_qos__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_qos__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_qos__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [3:0] ram_echo_tl_state_size [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_echo_tl_state_size__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_size__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [3:0] ram_echo_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg [4:0] ram_echo_tl_state_source [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [4:0] ram_echo_tl_state_source__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_source__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire [4:0] ram_echo_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_source__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_source__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_echo_tl_state_source__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg  ram_wen [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  wire  ram_wen__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@26710.4]
  wire  empty; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@26712.4]
  wire  _T_1; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26715.4]
  wire  _T_2; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26718.4]
  wire  _GEN_18; // @[Decoupled.scala 240:27:freechips.rocketchip.system.DefaultRV32Config.fir@26776.6]
  wire  do_enq; // @[Decoupled.scala 237:18:freechips.rocketchip.system.DefaultRV32Config.fir@26762.4]
  wire  do_deq; // @[Decoupled.scala 237:18:freechips.rocketchip.system.DefaultRV32Config.fir@26762.4]
  wire  _T_4; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@26738.4]
  wire  _T_5; // @[Decoupled.scala 231:19:freechips.rocketchip.system.DefaultRV32Config.fir@26742.4]
  assign ram_id__T_7_addr = 1'h0;
  assign ram_id__T_7_data = ram_id[ram_id__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_id__T_3_data = io_enq_bits_id;
  assign ram_id__T_3_addr = 1'h0;
  assign ram_id__T_3_mask = 1'h1;
  assign ram_id__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_addr__T_7_addr = 1'h0;
  assign ram_addr__T_7_data = ram_addr[ram_addr__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_addr__T_3_data = io_enq_bits_addr;
  assign ram_addr__T_3_addr = 1'h0;
  assign ram_addr__T_3_mask = 1'h1;
  assign ram_addr__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_len__T_7_addr = 1'h0;
  assign ram_len__T_7_data = ram_len[ram_len__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_len__T_3_data = io_enq_bits_len;
  assign ram_len__T_3_addr = 1'h0;
  assign ram_len__T_3_mask = 1'h1;
  assign ram_len__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_size__T_7_addr = 1'h0;
  assign ram_size__T_7_data = ram_size[ram_size__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_size__T_3_data = io_enq_bits_size;
  assign ram_size__T_3_addr = 1'h0;
  assign ram_size__T_3_mask = 1'h1;
  assign ram_size__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_burst__T_7_addr = 1'h0;
  assign ram_burst__T_7_data = ram_burst[ram_burst__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_burst__T_3_data = 2'h1;
  assign ram_burst__T_3_addr = 1'h0;
  assign ram_burst__T_3_mask = 1'h1;
  assign ram_burst__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_lock__T_7_addr = 1'h0;
  assign ram_lock__T_7_data = ram_lock[ram_lock__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_lock__T_3_data = 1'h0;
  assign ram_lock__T_3_addr = 1'h0;
  assign ram_lock__T_3_mask = 1'h1;
  assign ram_lock__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_cache__T_7_addr = 1'h0;
  assign ram_cache__T_7_data = ram_cache[ram_cache__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_cache__T_3_data = io_enq_bits_cache;
  assign ram_cache__T_3_addr = 1'h0;
  assign ram_cache__T_3_mask = 1'h1;
  assign ram_cache__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_prot__T_7_addr = 1'h0;
  assign ram_prot__T_7_data = ram_prot[ram_prot__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_prot__T_3_data = io_enq_bits_prot;
  assign ram_prot__T_3_addr = 1'h0;
  assign ram_prot__T_3_mask = 1'h1;
  assign ram_prot__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_qos__T_7_addr = 1'h0;
  assign ram_qos__T_7_data = ram_qos[ram_qos__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_qos__T_3_data = 4'h0;
  assign ram_qos__T_3_addr = 1'h0;
  assign ram_qos__T_3_mask = 1'h1;
  assign ram_qos__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_echo_tl_state_size__T_7_addr = 1'h0;
  assign ram_echo_tl_state_size__T_7_data = ram_echo_tl_state_size[ram_echo_tl_state_size__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_echo_tl_state_size__T_3_data = io_enq_bits_echo_tl_state_size;
  assign ram_echo_tl_state_size__T_3_addr = 1'h0;
  assign ram_echo_tl_state_size__T_3_mask = 1'h1;
  assign ram_echo_tl_state_size__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_echo_tl_state_source__T_7_addr = 1'h0;
  assign ram_echo_tl_state_source__T_7_data = ram_echo_tl_state_source[ram_echo_tl_state_source__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_echo_tl_state_source__T_3_data = io_enq_bits_echo_tl_state_source;
  assign ram_echo_tl_state_source__T_3_addr = 1'h0;
  assign ram_echo_tl_state_source__T_3_mask = 1'h1;
  assign ram_echo_tl_state_source__T_3_en = empty ? _GEN_18 : _T_1;
  assign ram_wen__T_7_addr = 1'h0;
  assign ram_wen__T_7_data = ram_wen[ram_wen__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
  assign ram_wen__T_3_data = io_enq_bits_wen;
  assign ram_wen__T_3_addr = 1'h0;
  assign ram_wen__T_3_mask = 1'h1;
  assign ram_wen__T_3_en = empty ? _GEN_18 : _T_1;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@26712.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26715.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@26718.4]
  assign _GEN_18 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:freechips.rocketchip.system.DefaultRV32Config.fir@26776.6]
  assign do_enq = empty ? _GEN_18 : _T_1; // @[Decoupled.scala 237:18:freechips.rocketchip.system.DefaultRV32Config.fir@26762.4]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:freechips.rocketchip.system.DefaultRV32Config.fir@26762.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@26738.4]
  assign _T_5 = ~empty; // @[Decoupled.scala 231:19:freechips.rocketchip.system.DefaultRV32Config.fir@26742.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@26745.4]
  assign io_deq_valid = io_enq_valid | _T_5; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@26743.4 Decoupled.scala 236:40:freechips.rocketchip.system.DefaultRV32Config.fir@26760.6]
  assign io_deq_bits_id = empty ? io_enq_bits_id : ram_id__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26758.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26774.6]
  assign io_deq_bits_addr = empty ? io_enq_bits_addr : ram_addr__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26757.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26773.6]
  assign io_deq_bits_len = empty ? io_enq_bits_len : ram_len__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26756.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26772.6]
  assign io_deq_bits_size = empty ? io_enq_bits_size : ram_size__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26755.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26771.6]
  assign io_deq_bits_burst = empty ? 2'h1 : ram_burst__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26754.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26770.6]
  assign io_deq_bits_lock = empty ? 1'h0 : ram_lock__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26753.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26769.6]
  assign io_deq_bits_cache = empty ? io_enq_bits_cache : ram_cache__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26752.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26768.6]
  assign io_deq_bits_prot = empty ? io_enq_bits_prot : ram_prot__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26751.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26767.6]
  assign io_deq_bits_qos = empty ? 4'h0 : ram_qos__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26750.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26766.6]
  assign io_deq_bits_echo_tl_state_size = empty ? io_enq_bits_echo_tl_state_size : ram_echo_tl_state_size__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26749.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26765.6]
  assign io_deq_bits_echo_tl_state_source = empty ? io_enq_bits_echo_tl_state_source : ram_echo_tl_state_source__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26748.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26764.6]
  assign io_deq_bits_wen = empty ? io_enq_bits_wen : ram_wen__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@26747.4 Decoupled.scala 238:19:freechips.rocketchip.system.DefaultRV32Config.fir@26763.6]
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
    ram_id[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[30:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_lock[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_cache[initvar] = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_prot[initvar] = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_qos[initvar] = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_echo_tl_state_size[initvar] = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_echo_tl_state_source[initvar] = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_wen[initvar] = _RAND_11[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  maybe_full = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_3_en & ram_id__T_3_mask) begin
      ram_id[ram_id__T_3_addr] <= ram_id__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_addr__T_3_en & ram_addr__T_3_mask) begin
      ram_addr[ram_addr__T_3_addr] <= ram_addr__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_len__T_3_en & ram_len__T_3_mask) begin
      ram_len[ram_len__T_3_addr] <= ram_len__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_size__T_3_en & ram_size__T_3_mask) begin
      ram_size[ram_size__T_3_addr] <= ram_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_burst__T_3_en & ram_burst__T_3_mask) begin
      ram_burst[ram_burst__T_3_addr] <= ram_burst__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_lock__T_3_en & ram_lock__T_3_mask) begin
      ram_lock[ram_lock__T_3_addr] <= ram_lock__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_cache__T_3_en & ram_cache__T_3_mask) begin
      ram_cache[ram_cache__T_3_addr] <= ram_cache__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_prot__T_3_en & ram_prot__T_3_mask) begin
      ram_prot[ram_prot__T_3_addr] <= ram_prot__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_qos__T_3_en & ram_qos__T_3_mask) begin
      ram_qos[ram_qos__T_3_addr] <= ram_qos__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_echo_tl_state_size__T_3_en & ram_echo_tl_state_size__T_3_mask) begin
      ram_echo_tl_state_size[ram_echo_tl_state_size__T_3_addr] <= ram_echo_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_echo_tl_state_source__T_3_en & ram_echo_tl_state_source__T_3_mask) begin
      ram_echo_tl_state_source[ram_echo_tl_state_source__T_3_addr] <= ram_echo_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if(ram_wen__T_3_en & ram_wen__T_3_mask) begin
      ram_wen[ram_wen__T_3_addr] <= ram_wen__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@26709.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _T_1;
        end
      end else begin
        maybe_full <= _T_1;
      end
    end
  end
endmodule
