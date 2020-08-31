module QueueCompatibility( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22759.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22760.4]
  input        reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22761.4]
  output       io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  input        io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  input  [3:0] io_enq_bits_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  input  [4:0] io_enq_bits_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  input        io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  output       io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  output [3:0] io_deq_bits_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
  output [4:0] io_deq_bits_tl_state_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22762.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_tl_state_size [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire [3:0] ram_tl_state_size__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_size__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire [3:0] ram_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_size__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_size__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_size__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  reg [4:0] ram_tl_state_source [0:0]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire [4:0] ram_tl_state_source__T_7_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_source__T_7_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire [4:0] ram_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_source__T_3_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_source__T_3_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  wire  ram_tl_state_source__T_3_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22768.4]
  wire  empty; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22770.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22773.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22777.4]
  wire  _T_4; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22787.4]
  assign ram_tl_state_size__T_7_addr = 1'h0;
  assign ram_tl_state_size__T_7_data = ram_tl_state_size[ram_tl_state_size__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  assign ram_tl_state_size__T_3_data = io_enq_bits_tl_state_size;
  assign ram_tl_state_size__T_3_addr = 1'h0;
  assign ram_tl_state_size__T_3_mask = 1'h1;
  assign ram_tl_state_size__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_tl_state_source__T_7_addr = 1'h0;
  assign ram_tl_state_source__T_7_data = ram_tl_state_source[ram_tl_state_source__T_7_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
  assign ram_tl_state_source__T_3_data = io_enq_bits_tl_state_source;
  assign ram_tl_state_source__T_3_addr = 1'h0;
  assign ram_tl_state_source__T_3_mask = 1'h1;
  assign ram_tl_state_source__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@22770.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22773.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@22777.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@22787.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@22794.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@22792.4]
  assign io_deq_bits_tl_state_size = ram_tl_state_size__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22796.4]
  assign io_deq_bits_tl_state_source = ram_tl_state_source__T_7_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@22796.4]
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
    ram_tl_state_size[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tl_state_source[initvar] = _RAND_1[4:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  maybe_full = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_tl_state_size__T_3_en & ram_tl_state_size__T_3_mask) begin
      ram_tl_state_size[ram_tl_state_size__T_3_addr] <= ram_tl_state_size__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
    end
    if(ram_tl_state_source__T_3_en & ram_tl_state_source__T_3_mask) begin
      ram_tl_state_source[ram_tl_state_source__T_3_addr] <= ram_tl_state_source__T_3_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@22767.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
