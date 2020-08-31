module Repeater( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39169.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39170.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39171.4]
  input         io_repeat, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [2:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [3:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [3:0]  io_enq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [31:0] io_enq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [7:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input  [63:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_enq_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [2:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [3:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [3:0]  io_deq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [31:0] io_deq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [7:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output [63:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
  output        io_deq_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@39172.4]
);
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg  full; // @[Repeater.scala 19:21:freechips.rocketchip.system.DefaultRV32Config.fir@39174.4]
  reg [2:0] saved_opcode; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [2:0] saved_param; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [3:0] saved_size; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [3:0] saved_source; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [31:0] saved_address; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_bufferable; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_modifiable; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_readalloc; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_writealloc; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_privileged; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_secure; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_user_amba_prot_fetch; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [7:0] saved_mask; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg [63:0] saved_data; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  reg  saved_corrupt; // @[Repeater.scala 20:18:freechips.rocketchip.system.DefaultRV32Config.fir@39175.4]
  wire  _T_1; // @[Repeater.scala 24:35:freechips.rocketchip.system.DefaultRV32Config.fir@39178.4]
  wire  _T_4; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39198.4]
  wire  _T_5; // @[Repeater.scala 28:23:freechips.rocketchip.system.DefaultRV32Config.fir@39199.4]
  wire  _GEN_0; // @[Repeater.scala 28:38:freechips.rocketchip.system.DefaultRV32Config.fir@39200.4]
  wire  _T_6; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39218.4]
  wire  _T_7; // @[Repeater.scala 29:26:freechips.rocketchip.system.DefaultRV32Config.fir@39219.4]
  wire  _T_8; // @[Repeater.scala 29:23:freechips.rocketchip.system.DefaultRV32Config.fir@39220.4]
  assign _T_1 = ~full; // @[Repeater.scala 24:35:freechips.rocketchip.system.DefaultRV32Config.fir@39178.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39198.4]
  assign _T_5 = _T_4 & io_repeat; // @[Repeater.scala 28:23:freechips.rocketchip.system.DefaultRV32Config.fir@39199.4]
  assign _GEN_0 = _T_5 | full; // @[Repeater.scala 28:38:freechips.rocketchip.system.DefaultRV32Config.fir@39200.4]
  assign _T_6 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@39218.4]
  assign _T_7 = ~io_repeat; // @[Repeater.scala 29:26:freechips.rocketchip.system.DefaultRV32Config.fir@39219.4]
  assign _T_8 = _T_6 & _T_7; // @[Repeater.scala 29:23:freechips.rocketchip.system.DefaultRV32Config.fir@39220.4]
  assign io_enq_ready = io_deq_ready & _T_1; // @[Repeater.scala 24:16:freechips.rocketchip.system.DefaultRV32Config.fir@39180.4]
  assign io_deq_valid = io_enq_valid | full; // @[Repeater.scala 23:16:freechips.rocketchip.system.DefaultRV32Config.fir@39177.4]
  assign io_deq_bits_opcode = full ? saved_opcode : io_enq_bits_opcode; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39196.4]
  assign io_deq_bits_param = full ? saved_param : io_enq_bits_param; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39195.4]
  assign io_deq_bits_size = full ? saved_size : io_enq_bits_size; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39194.4]
  assign io_deq_bits_source = full ? saved_source : io_enq_bits_source; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39193.4]
  assign io_deq_bits_address = full ? saved_address : io_enq_bits_address; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39192.4]
  assign io_deq_bits_user_amba_prot_bufferable = full ? saved_user_amba_prot_bufferable : io_enq_bits_user_amba_prot_bufferable; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39191.4]
  assign io_deq_bits_user_amba_prot_modifiable = full ? saved_user_amba_prot_modifiable : io_enq_bits_user_amba_prot_modifiable; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39190.4]
  assign io_deq_bits_user_amba_prot_readalloc = full ? saved_user_amba_prot_readalloc : io_enq_bits_user_amba_prot_readalloc; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39189.4]
  assign io_deq_bits_user_amba_prot_writealloc = full ? saved_user_amba_prot_writealloc : io_enq_bits_user_amba_prot_writealloc; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39188.4]
  assign io_deq_bits_user_amba_prot_privileged = full ? saved_user_amba_prot_privileged : io_enq_bits_user_amba_prot_privileged; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39187.4]
  assign io_deq_bits_user_amba_prot_secure = full ? saved_user_amba_prot_secure : io_enq_bits_user_amba_prot_secure; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39186.4]
  assign io_deq_bits_user_amba_prot_fetch = full ? saved_user_amba_prot_fetch : io_enq_bits_user_amba_prot_fetch; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39185.4]
  assign io_deq_bits_mask = full ? saved_mask : io_enq_bits_mask; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39184.4]
  assign io_deq_bits_data = full ? saved_data : io_enq_bits_data; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39183.4]
  assign io_deq_bits_corrupt = full ? saved_corrupt : io_enq_bits_corrupt; // @[Repeater.scala 25:15:freechips.rocketchip.system.DefaultRV32Config.fir@39182.4]
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
  full = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  saved_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  saved_param = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  saved_size = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  saved_source = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  saved_address = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  saved_user_amba_prot_bufferable = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  saved_user_amba_prot_modifiable = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  saved_user_amba_prot_readalloc = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  saved_user_amba_prot_writealloc = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  saved_user_amba_prot_privileged = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  saved_user_amba_prot_secure = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  saved_user_amba_prot_fetch = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  saved_mask = _RAND_13[7:0];
  _RAND_14 = {2{`RANDOM}};
  saved_data = _RAND_14[63:0];
  _RAND_15 = {1{`RANDOM}};
  saved_corrupt = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      full <= 1'h0;
    end else if (_T_8) begin
      full <= 1'h0;
    end else begin
      full <= _GEN_0;
    end
    if (_T_5) begin
      saved_opcode <= io_enq_bits_opcode;
    end
    if (_T_5) begin
      saved_param <= io_enq_bits_param;
    end
    if (_T_5) begin
      saved_size <= io_enq_bits_size;
    end
    if (_T_5) begin
      saved_source <= io_enq_bits_source;
    end
    if (_T_5) begin
      saved_address <= io_enq_bits_address;
    end
    if (_T_5) begin
      saved_user_amba_prot_bufferable <= io_enq_bits_user_amba_prot_bufferable;
    end
    if (_T_5) begin
      saved_user_amba_prot_modifiable <= io_enq_bits_user_amba_prot_modifiable;
    end
    if (_T_5) begin
      saved_user_amba_prot_readalloc <= io_enq_bits_user_amba_prot_readalloc;
    end
    if (_T_5) begin
      saved_user_amba_prot_writealloc <= io_enq_bits_user_amba_prot_writealloc;
    end
    if (_T_5) begin
      saved_user_amba_prot_privileged <= io_enq_bits_user_amba_prot_privileged;
    end
    if (_T_5) begin
      saved_user_amba_prot_secure <= io_enq_bits_user_amba_prot_secure;
    end
    if (_T_5) begin
      saved_user_amba_prot_fetch <= io_enq_bits_user_amba_prot_fetch;
    end
    if (_T_5) begin
      saved_mask <= io_enq_bits_mask;
    end
    if (_T_5) begin
      saved_data <= io_enq_bits_data;
    end
    if (_T_5) begin
      saved_corrupt <= io_enq_bits_corrupt;
    end
  end
endmodule
