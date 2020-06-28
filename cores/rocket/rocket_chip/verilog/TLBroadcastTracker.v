module TLBroadcastTracker( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78907.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78908.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78909.4]
  input         io_in_a_first, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input  [31:0] io_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [2:0]  io_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [2:0]  io_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [2:0]  io_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [6:0]  io_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [31:0] io_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [3:0]  io_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [31:0] io_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_probe_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_probe_bits_count, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_probenack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_probedack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_probesack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_d_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  input         io_e_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [4:0]  io_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output [25:0] io_line, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_idle, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
  output        io_need_d // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78910.4]
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
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire  o_data_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire  o_data_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire  o_data_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire  o_data_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire [3:0] o_data_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire [31:0] o_data_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire  o_data_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire  o_data_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire [3:0] o_data_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  wire [31:0] o_data_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
  reg  got_e; // @[Broadcast.scala 400:24:freechips.rocketchip.system.DefaultRV32Config.fir@78915.4]
  reg  sent_d; // @[Broadcast.scala 401:24:freechips.rocketchip.system.DefaultRV32Config.fir@78916.4]
  reg  shared; // @[Broadcast.scala 402:20:freechips.rocketchip.system.DefaultRV32Config.fir@78917.4]
  reg [2:0] opcode; // @[Broadcast.scala 403:20:freechips.rocketchip.system.DefaultRV32Config.fir@78918.4]
  reg [2:0] param; // @[Broadcast.scala 404:20:freechips.rocketchip.system.DefaultRV32Config.fir@78919.4]
  reg [2:0] size; // @[Broadcast.scala 405:20:freechips.rocketchip.system.DefaultRV32Config.fir@78920.4]
  reg [4:0] source; // @[Broadcast.scala 406:20:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  reg  user_amba_prot_bufferable; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_modifiable; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_readalloc; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_writealloc; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_privileged; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_secure; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg  user_amba_prot_fetch; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  reg [31:0] address; // @[Broadcast.scala 409:24:freechips.rocketchip.system.DefaultRV32Config.fir@78924.4]
  reg  count; // @[Broadcast.scala 410:20:freechips.rocketchip.system.DefaultRV32Config.fir@78925.4]
  wire  idle; // @[Broadcast.scala 412:23:freechips.rocketchip.system.DefaultRV32Config.fir@78927.4]
  wire  _T; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78928.4]
  wire  _T_1; // @[Broadcast.scala 414:24:freechips.rocketchip.system.DefaultRV32Config.fir@78929.4]
  wire  _T_3; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78932.6]
  wire  _T_4; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78933.6]
  wire  _T_5; // @[Broadcast.scala 418:36:freechips.rocketchip.system.DefaultRV32Config.fir@78940.6]
  wire  _T_6; // @[Broadcast.scala 418:87:freechips.rocketchip.system.DefaultRV32Config.fir@78941.6]
  wire  _T_7; // @[Broadcast.scala 418:64:freechips.rocketchip.system.DefaultRV32Config.fir@78942.6]
  wire  _GEN_0; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  _GEN_1; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  _GEN_2; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  _GEN_15; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  _GEN_16; // @[Broadcast.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@78961.4]
  wire  _T_10; // @[Broadcast.scala 436:13:freechips.rocketchip.system.DefaultRV32Config.fir@78966.6]
  wire  _T_12; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78968.6]
  wire  _T_13; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78969.6]
  wire  _GEN_18; // @[Broadcast.scala 435:20:freechips.rocketchip.system.DefaultRV32Config.fir@78965.4]
  wire  _T_14; // @[Broadcast.scala 440:13:freechips.rocketchip.system.DefaultRV32Config.fir@78977.6]
  wire  _T_16; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78979.6]
  wire  _T_17; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78980.6]
  wire  _GEN_19; // @[Broadcast.scala 439:20:freechips.rocketchip.system.DefaultRV32Config.fir@78976.4]
  wire  _T_18; // @[Broadcast.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@78987.4]
  wire  _T_19; // @[Broadcast.scala 445:19:freechips.rocketchip.system.DefaultRV32Config.fir@78989.6]
  wire  _T_21; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78991.6]
  wire  _T_22; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78992.6]
  wire  _T_23; // @[Broadcast.scala 446:39:freechips.rocketchip.system.DefaultRV32Config.fir@78997.6]
  wire [1:0] _T_24; // @[Broadcast.scala 446:25:freechips.rocketchip.system.DefaultRV32Config.fir@78998.6]
  wire [1:0] _GEN_22; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@78999.6]
  wire [1:0] _T_26; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79000.6]
  wire [1:0] _GEN_20; // @[Broadcast.scala 444:39:freechips.rocketchip.system.DefaultRV32Config.fir@78988.4]
  wire  _T_29; // @[Broadcast.scala 462:29:freechips.rocketchip.system.DefaultRV32Config.fir@79022.4]
  wire  _T_30; // @[Broadcast.scala 462:26:freechips.rocketchip.system.DefaultRV32Config.fir@79023.4]
  wire  i_data_ready; // @[Broadcast.scala 459:20:freechips.rocketchip.system.DefaultRV32Config.fir@79013.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@79021.4]
  wire  probe_done; // @[Broadcast.scala 467:26:freechips.rocketchip.system.DefaultRV32Config.fir@79032.4]
  wire  _T_35; // @[Broadcast.scala 468:24:freechips.rocketchip.system.DefaultRV32Config.fir@79033.4]
  wire  _T_36; // @[Broadcast.scala 468:62:freechips.rocketchip.system.DefaultRV32Config.fir@79034.4]
  wire  acquire; // @[Broadcast.scala 468:52:freechips.rocketchip.system.DefaultRV32Config.fir@79035.4]
  wire [1:0] transform; // @[Broadcast.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@79036.4]
  wire [1:0] _T_41; // @[Broadcast.scala 477:35:freechips.rocketchip.system.DefaultRV32Config.fir@79046.4]
  Queue_28 o_data ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79015.4]
    .clock(o_data_clock),
    .reset(o_data_reset),
    .io_enq_ready(o_data_io_enq_ready),
    .io_enq_valid(o_data_io_enq_valid),
    .io_enq_bits_mask(o_data_io_enq_bits_mask),
    .io_enq_bits_data(o_data_io_enq_bits_data),
    .io_deq_ready(o_data_io_deq_ready),
    .io_deq_valid(o_data_io_deq_valid),
    .io_deq_bits_mask(o_data_io_deq_bits_mask),
    .io_deq_bits_data(o_data_io_deq_bits_data)
  );
  assign idle = got_e & sent_d; // @[Broadcast.scala 412:23:freechips.rocketchip.system.DefaultRV32Config.fir@78927.4]
  assign _T = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@78928.4]
  assign _T_1 = _T & io_in_a_first; // @[Broadcast.scala 414:24:freechips.rocketchip.system.DefaultRV32Config.fir@78929.4]
  assign _T_3 = idle | reset; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78932.6]
  assign _T_4 = ~_T_3; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78933.6]
  assign _T_5 = io_in_a_bits_opcode != 3'h6; // @[Broadcast.scala 418:36:freechips.rocketchip.system.DefaultRV32Config.fir@78940.6]
  assign _T_6 = io_in_a_bits_opcode != 3'h7; // @[Broadcast.scala 418:87:freechips.rocketchip.system.DefaultRV32Config.fir@78941.6]
  assign _T_7 = _T_5 & _T_6; // @[Broadcast.scala 418:64:freechips.rocketchip.system.DefaultRV32Config.fir@78942.6]
  assign _GEN_0 = _T_1 ? 1'h0 : sent_d; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  assign _GEN_1 = _T_1 ? 1'h0 : shared; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  assign _GEN_2 = _T_1 ? _T_7 : got_e; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  assign _GEN_15 = _T_1 | count; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  assign _GEN_16 = io_probe_valid ? io_probe_bits_count : _GEN_15; // @[Broadcast.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@78961.4]
  assign _T_10 = ~sent_d; // @[Broadcast.scala 436:13:freechips.rocketchip.system.DefaultRV32Config.fir@78966.6]
  assign _T_12 = _T_10 | reset; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78968.6]
  assign _T_13 = ~_T_12; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78969.6]
  assign _GEN_18 = io_d_last | _GEN_0; // @[Broadcast.scala 435:20:freechips.rocketchip.system.DefaultRV32Config.fir@78965.4]
  assign _T_14 = ~got_e; // @[Broadcast.scala 440:13:freechips.rocketchip.system.DefaultRV32Config.fir@78977.6]
  assign _T_16 = _T_14 | reset; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78979.6]
  assign _T_17 = ~_T_16; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78980.6]
  assign _GEN_19 = io_e_last | _GEN_2; // @[Broadcast.scala 439:20:freechips.rocketchip.system.DefaultRV32Config.fir@78976.4]
  assign _T_18 = io_probenack | io_probedack; // @[Broadcast.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@78987.4]
  assign _T_19 = count > 1'h0; // @[Broadcast.scala 445:19:freechips.rocketchip.system.DefaultRV32Config.fir@78989.6]
  assign _T_21 = _T_19 | reset; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78991.6]
  assign _T_22 = ~_T_21; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78992.6]
  assign _T_23 = io_probenack & io_probedack; // @[Broadcast.scala 446:39:freechips.rocketchip.system.DefaultRV32Config.fir@78997.6]
  assign _T_24 = _T_23 ? 2'h2 : 2'h1; // @[Broadcast.scala 446:25:freechips.rocketchip.system.DefaultRV32Config.fir@78998.6]
  assign _GEN_22 = {{1'd0}, count}; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@78999.6]
  assign _T_26 = _GEN_22 - _T_24; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79000.6]
  assign _GEN_20 = _T_18 ? _T_26 : {{1'd0}, _GEN_16}; // @[Broadcast.scala 444:39:freechips.rocketchip.system.DefaultRV32Config.fir@78988.4]
  assign _T_29 = ~io_in_a_first; // @[Broadcast.scala 462:29:freechips.rocketchip.system.DefaultRV32Config.fir@79022.4]
  assign _T_30 = idle | _T_29; // @[Broadcast.scala 462:26:freechips.rocketchip.system.DefaultRV32Config.fir@79023.4]
  assign i_data_ready = o_data_io_enq_ready; // @[Broadcast.scala 459:20:freechips.rocketchip.system.DefaultRV32Config.fir@79013.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@79021.4]
  assign probe_done = ~count; // @[Broadcast.scala 467:26:freechips.rocketchip.system.DefaultRV32Config.fir@79032.4]
  assign _T_35 = opcode == 3'h6; // @[Broadcast.scala 468:24:freechips.rocketchip.system.DefaultRV32Config.fir@79033.4]
  assign _T_36 = opcode == 3'h7; // @[Broadcast.scala 468:62:freechips.rocketchip.system.DefaultRV32Config.fir@79034.4]
  assign acquire = _T_35 | _T_36; // @[Broadcast.scala 468:52:freechips.rocketchip.system.DefaultRV32Config.fir@79035.4]
  assign transform = shared ? 2'h2 : 2'h3; // @[Broadcast.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@79036.4]
  assign _T_41 = acquire ? transform : 2'h0; // @[Broadcast.scala 477:35:freechips.rocketchip.system.DefaultRV32Config.fir@79046.4]
  assign io_in_a_ready = _T_30 & i_data_ready; // @[Broadcast.scala 462:17:freechips.rocketchip.system.DefaultRV32Config.fir@79025.4]
  assign io_out_a_valid = o_data_io_deq_valid & probe_done; // @[Broadcast.scala 473:18:freechips.rocketchip.system.DefaultRV32Config.fir@79040.4]
  assign io_out_a_bits_opcode = acquire ? 3'h4 : opcode; // @[Broadcast.scala 474:25:freechips.rocketchip.system.DefaultRV32Config.fir@79042.4]
  assign io_out_a_bits_param = acquire ? 3'h0 : param; // @[Broadcast.scala 475:25:freechips.rocketchip.system.DefaultRV32Config.fir@79044.4]
  assign io_out_a_bits_size = size; // @[Broadcast.scala 476:25:freechips.rocketchip.system.DefaultRV32Config.fir@79045.4]
  assign io_out_a_bits_source = {_T_41,source}; // @[Broadcast.scala 477:25:freechips.rocketchip.system.DefaultRV32Config.fir@79048.4]
  assign io_out_a_bits_address = address; // @[Broadcast.scala 478:25:freechips.rocketchip.system.DefaultRV32Config.fir@79049.4]
  assign io_out_a_bits_user_amba_prot_bufferable = user_amba_prot_bufferable; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79059.4]
  assign io_out_a_bits_user_amba_prot_modifiable = user_amba_prot_modifiable; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79058.4]
  assign io_out_a_bits_user_amba_prot_readalloc = user_amba_prot_readalloc; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79057.4]
  assign io_out_a_bits_user_amba_prot_writealloc = user_amba_prot_writealloc; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79056.4]
  assign io_out_a_bits_user_amba_prot_privileged = user_amba_prot_privileged; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79055.4]
  assign io_out_a_bits_user_amba_prot_secure = user_amba_prot_secure; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79054.4]
  assign io_out_a_bits_user_amba_prot_fetch = user_amba_prot_fetch; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79053.4]
  assign io_out_a_bits_mask = o_data_io_deq_bits_mask; // @[Broadcast.scala 479:25:freechips.rocketchip.system.DefaultRV32Config.fir@79050.4]
  assign io_out_a_bits_data = o_data_io_deq_bits_data; // @[Broadcast.scala 480:25:freechips.rocketchip.system.DefaultRV32Config.fir@79051.4]
  assign io_source = source; // @[Broadcast.scala 455:13:freechips.rocketchip.system.DefaultRV32Config.fir@79009.4]
  assign io_line = address[31:6]; // @[Broadcast.scala 456:11:freechips.rocketchip.system.DefaultRV32Config.fir@79011.4]
  assign io_idle = got_e & sent_d; // @[Broadcast.scala 453:11:freechips.rocketchip.system.DefaultRV32Config.fir@79006.4]
  assign io_need_d = ~sent_d; // @[Broadcast.scala 454:13:freechips.rocketchip.system.DefaultRV32Config.fir@79008.4]
  assign o_data_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79016.4]
  assign o_data_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79017.4]
  assign o_data_io_enq_valid = _T_30 & io_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@79018.4]
  assign o_data_io_enq_bits_mask = io_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@79020.4]
  assign o_data_io_enq_bits_data = io_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@79019.4]
  assign o_data_io_deq_ready = io_out_a_ready & probe_done; // @[Broadcast.scala 472:16:freechips.rocketchip.system.DefaultRV32Config.fir@79038.4]
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
  got_e = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sent_d = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  shared = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  opcode = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  param = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  size = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  source = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  user_amba_prot_bufferable = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  user_amba_prot_modifiable = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  user_amba_prot_readalloc = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  user_amba_prot_writealloc = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  user_amba_prot_privileged = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  user_amba_prot_secure = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  user_amba_prot_fetch = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  address = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  count = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    got_e <= reset | _GEN_19;
    sent_d <= reset | _GEN_18;
    shared <= io_probesack | _GEN_1;
    if (_T_1) begin
      opcode <= io_in_a_bits_opcode;
    end
    if (_T_1) begin
      param <= io_in_a_bits_param;
    end
    if (_T_1) begin
      size <= io_in_a_bits_size;
    end
    if (_T_1) begin
      source <= io_in_a_bits_source;
    end
    if (_T_1) begin
      user_amba_prot_bufferable <= io_in_a_bits_user_amba_prot_bufferable;
    end
    if (_T_1) begin
      user_amba_prot_modifiable <= io_in_a_bits_user_amba_prot_modifiable;
    end
    if (_T_1) begin
      user_amba_prot_readalloc <= io_in_a_bits_user_amba_prot_readalloc;
    end
    if (_T_1) begin
      user_amba_prot_writealloc <= io_in_a_bits_user_amba_prot_writealloc;
    end
    if (_T_1) begin
      user_amba_prot_privileged <= io_in_a_bits_user_amba_prot_privileged;
    end
    if (_T_1) begin
      user_amba_prot_secure <= io_in_a_bits_user_amba_prot_secure;
    end
    if (_T_1) begin
      user_amba_prot_fetch <= io_in_a_bits_user_amba_prot_fetch;
    end
    if (reset) begin
      address <= 32'h0;
    end else if (_T_1) begin
      address <= io_in_a_bits_address;
    end
    count <= _GEN_20[0];
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1 & _T_4) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:415 assert (idle)\n"); // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78935.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1 & _T_4) begin
          $fatal; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@78936.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_d_last & _T_13) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:436 assert (!sent_d)\n"); // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78971.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_d_last & _T_13) begin
          $fatal; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@78972.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_e_last & _T_17) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:440 assert (!got_e)\n"); // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78982.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_e_last & _T_17) begin
          $fatal; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@78983.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_18 & _T_22) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:445 assert (count > 0.U)\n"); // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78994.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_18 & _T_22) begin
          $fatal; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@78995.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
