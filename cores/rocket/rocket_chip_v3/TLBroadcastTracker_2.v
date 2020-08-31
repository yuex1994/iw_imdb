module TLBroadcastTracker_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79319.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79320.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79321.4]
  input         io_in_a_first, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_in_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input  [31:0] io_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [2:0]  io_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [2:0]  io_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [2:0]  io_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [6:0]  io_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [31:0] io_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_out_a_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [3:0]  io_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [31:0] io_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_probe_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_probe_bits_count, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_probenack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_probedack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_probesack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_d_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  input         io_e_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [4:0]  io_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output [25:0] io_line, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_idle, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
  output        io_need_d // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79322.4]
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
  wire  o_data_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire  o_data_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire  o_data_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire  o_data_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire [3:0] o_data_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire [31:0] o_data_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire  o_data_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire  o_data_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire [3:0] o_data_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  wire [31:0] o_data_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
  reg  got_e; // @[Broadcast.scala 400:24:freechips.rocketchip.system.DefaultRV32Config.fir@79327.4]
  reg  sent_d; // @[Broadcast.scala 401:24:freechips.rocketchip.system.DefaultRV32Config.fir@79328.4]
  reg  shared; // @[Broadcast.scala 402:20:freechips.rocketchip.system.DefaultRV32Config.fir@79329.4]
  reg [2:0] opcode; // @[Broadcast.scala 403:20:freechips.rocketchip.system.DefaultRV32Config.fir@79330.4]
  reg [2:0] param; // @[Broadcast.scala 404:20:freechips.rocketchip.system.DefaultRV32Config.fir@79331.4]
  reg [2:0] size; // @[Broadcast.scala 405:20:freechips.rocketchip.system.DefaultRV32Config.fir@79332.4]
  reg [4:0] source; // @[Broadcast.scala 406:20:freechips.rocketchip.system.DefaultRV32Config.fir@79333.4]
  reg  user_amba_prot_bufferable; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_modifiable; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_readalloc; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_writealloc; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_privileged; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_secure; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg  user_amba_prot_fetch; // @[Broadcast.scala 407:20:freechips.rocketchip.system.DefaultRV32Config.fir@79334.4]
  reg [31:0] address; // @[Broadcast.scala 409:24:freechips.rocketchip.system.DefaultRV32Config.fir@79336.4]
  reg  count; // @[Broadcast.scala 410:20:freechips.rocketchip.system.DefaultRV32Config.fir@79337.4]
  wire  idle; // @[Broadcast.scala 412:23:freechips.rocketchip.system.DefaultRV32Config.fir@79339.4]
  wire  _T; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79340.4]
  wire  _T_1; // @[Broadcast.scala 414:24:freechips.rocketchip.system.DefaultRV32Config.fir@79341.4]
  wire  _T_3; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79344.6]
  wire  _T_4; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79345.6]
  wire  _T_5; // @[Broadcast.scala 418:36:freechips.rocketchip.system.DefaultRV32Config.fir@79352.6]
  wire  _T_6; // @[Broadcast.scala 418:87:freechips.rocketchip.system.DefaultRV32Config.fir@79353.6]
  wire  _T_7; // @[Broadcast.scala 418:64:freechips.rocketchip.system.DefaultRV32Config.fir@79354.6]
  wire  _GEN_0; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  wire  _GEN_1; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  wire  _GEN_2; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  wire  _GEN_15; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  wire  _GEN_16; // @[Broadcast.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@79373.4]
  wire  _T_10; // @[Broadcast.scala 436:13:freechips.rocketchip.system.DefaultRV32Config.fir@79378.6]
  wire  _T_12; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79380.6]
  wire  _T_13; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79381.6]
  wire  _GEN_18; // @[Broadcast.scala 435:20:freechips.rocketchip.system.DefaultRV32Config.fir@79377.4]
  wire  _T_14; // @[Broadcast.scala 440:13:freechips.rocketchip.system.DefaultRV32Config.fir@79389.6]
  wire  _T_16; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79391.6]
  wire  _T_17; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79392.6]
  wire  _GEN_19; // @[Broadcast.scala 439:20:freechips.rocketchip.system.DefaultRV32Config.fir@79388.4]
  wire  _T_18; // @[Broadcast.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@79399.4]
  wire  _T_19; // @[Broadcast.scala 445:19:freechips.rocketchip.system.DefaultRV32Config.fir@79401.6]
  wire  _T_21; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79403.6]
  wire  _T_22; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79404.6]
  wire  _T_23; // @[Broadcast.scala 446:39:freechips.rocketchip.system.DefaultRV32Config.fir@79409.6]
  wire [1:0] _T_24; // @[Broadcast.scala 446:25:freechips.rocketchip.system.DefaultRV32Config.fir@79410.6]
  wire [1:0] _GEN_22; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79411.6]
  wire [1:0] _T_26; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79412.6]
  wire [1:0] _GEN_20; // @[Broadcast.scala 444:39:freechips.rocketchip.system.DefaultRV32Config.fir@79400.4]
  wire  _T_29; // @[Broadcast.scala 462:29:freechips.rocketchip.system.DefaultRV32Config.fir@79434.4]
  wire  _T_30; // @[Broadcast.scala 462:26:freechips.rocketchip.system.DefaultRV32Config.fir@79435.4]
  wire  i_data_ready; // @[Broadcast.scala 459:20:freechips.rocketchip.system.DefaultRV32Config.fir@79425.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@79433.4]
  wire  probe_done; // @[Broadcast.scala 467:26:freechips.rocketchip.system.DefaultRV32Config.fir@79444.4]
  wire  _T_35; // @[Broadcast.scala 468:24:freechips.rocketchip.system.DefaultRV32Config.fir@79445.4]
  wire  _T_36; // @[Broadcast.scala 468:62:freechips.rocketchip.system.DefaultRV32Config.fir@79446.4]
  wire  acquire; // @[Broadcast.scala 468:52:freechips.rocketchip.system.DefaultRV32Config.fir@79447.4]
  wire [1:0] transform; // @[Broadcast.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@79448.4]
  wire [1:0] _T_41; // @[Broadcast.scala 477:35:freechips.rocketchip.system.DefaultRV32Config.fir@79458.4]
  Queue_28 o_data ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@79427.4]
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
  assign idle = got_e & sent_d; // @[Broadcast.scala 412:23:freechips.rocketchip.system.DefaultRV32Config.fir@79339.4]
  assign _T = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79340.4]
  assign _T_1 = _T & io_in_a_first; // @[Broadcast.scala 414:24:freechips.rocketchip.system.DefaultRV32Config.fir@79341.4]
  assign _T_3 = idle | reset; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79344.6]
  assign _T_4 = ~_T_3; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79345.6]
  assign _T_5 = io_in_a_bits_opcode != 3'h6; // @[Broadcast.scala 418:36:freechips.rocketchip.system.DefaultRV32Config.fir@79352.6]
  assign _T_6 = io_in_a_bits_opcode != 3'h7; // @[Broadcast.scala 418:87:freechips.rocketchip.system.DefaultRV32Config.fir@79353.6]
  assign _T_7 = _T_5 & _T_6; // @[Broadcast.scala 418:64:freechips.rocketchip.system.DefaultRV32Config.fir@79354.6]
  assign _GEN_0 = _T_1 ? 1'h0 : sent_d; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  assign _GEN_1 = _T_1 ? 1'h0 : shared; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  assign _GEN_2 = _T_1 ? _T_7 : got_e; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  assign _GEN_15 = _T_1 | count; // @[Broadcast.scala 414:42:freechips.rocketchip.system.DefaultRV32Config.fir@79342.4]
  assign _GEN_16 = io_probe_valid ? io_probe_bits_count : _GEN_15; // @[Broadcast.scala 430:25:freechips.rocketchip.system.DefaultRV32Config.fir@79373.4]
  assign _T_10 = ~sent_d; // @[Broadcast.scala 436:13:freechips.rocketchip.system.DefaultRV32Config.fir@79378.6]
  assign _T_12 = _T_10 | reset; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79380.6]
  assign _T_13 = ~_T_12; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79381.6]
  assign _GEN_18 = io_d_last | _GEN_0; // @[Broadcast.scala 435:20:freechips.rocketchip.system.DefaultRV32Config.fir@79377.4]
  assign _T_14 = ~got_e; // @[Broadcast.scala 440:13:freechips.rocketchip.system.DefaultRV32Config.fir@79389.6]
  assign _T_16 = _T_14 | reset; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79391.6]
  assign _T_17 = ~_T_16; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79392.6]
  assign _GEN_19 = io_e_last | _GEN_2; // @[Broadcast.scala 439:20:freechips.rocketchip.system.DefaultRV32Config.fir@79388.4]
  assign _T_18 = io_probenack | io_probedack; // @[Broadcast.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@79399.4]
  assign _T_19 = count > 1'h0; // @[Broadcast.scala 445:19:freechips.rocketchip.system.DefaultRV32Config.fir@79401.6]
  assign _T_21 = _T_19 | reset; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79403.6]
  assign _T_22 = ~_T_21; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79404.6]
  assign _T_23 = io_probenack & io_probedack; // @[Broadcast.scala 446:39:freechips.rocketchip.system.DefaultRV32Config.fir@79409.6]
  assign _T_24 = _T_23 ? 2'h2 : 2'h1; // @[Broadcast.scala 446:25:freechips.rocketchip.system.DefaultRV32Config.fir@79410.6]
  assign _GEN_22 = {{1'd0}, count}; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79411.6]
  assign _T_26 = _GEN_22 - _T_24; // @[Broadcast.scala 446:20:freechips.rocketchip.system.DefaultRV32Config.fir@79412.6]
  assign _GEN_20 = _T_18 ? _T_26 : {{1'd0}, _GEN_16}; // @[Broadcast.scala 444:39:freechips.rocketchip.system.DefaultRV32Config.fir@79400.4]
  assign _T_29 = ~io_in_a_first; // @[Broadcast.scala 462:29:freechips.rocketchip.system.DefaultRV32Config.fir@79434.4]
  assign _T_30 = idle | _T_29; // @[Broadcast.scala 462:26:freechips.rocketchip.system.DefaultRV32Config.fir@79435.4]
  assign i_data_ready = o_data_io_enq_ready; // @[Broadcast.scala 459:20:freechips.rocketchip.system.DefaultRV32Config.fir@79425.4 Decoupled.scala 290:17:freechips.rocketchip.system.DefaultRV32Config.fir@79433.4]
  assign probe_done = ~count; // @[Broadcast.scala 467:26:freechips.rocketchip.system.DefaultRV32Config.fir@79444.4]
  assign _T_35 = opcode == 3'h6; // @[Broadcast.scala 468:24:freechips.rocketchip.system.DefaultRV32Config.fir@79445.4]
  assign _T_36 = opcode == 3'h7; // @[Broadcast.scala 468:62:freechips.rocketchip.system.DefaultRV32Config.fir@79446.4]
  assign acquire = _T_35 | _T_36; // @[Broadcast.scala 468:52:freechips.rocketchip.system.DefaultRV32Config.fir@79447.4]
  assign transform = shared ? 2'h2 : 2'h3; // @[Broadcast.scala 470:22:freechips.rocketchip.system.DefaultRV32Config.fir@79448.4]
  assign _T_41 = acquire ? transform : 2'h0; // @[Broadcast.scala 477:35:freechips.rocketchip.system.DefaultRV32Config.fir@79458.4]
  assign io_in_a_ready = _T_30 & i_data_ready; // @[Broadcast.scala 462:17:freechips.rocketchip.system.DefaultRV32Config.fir@79437.4]
  assign io_out_a_valid = o_data_io_deq_valid & probe_done; // @[Broadcast.scala 473:18:freechips.rocketchip.system.DefaultRV32Config.fir@79452.4]
  assign io_out_a_bits_opcode = acquire ? 3'h4 : opcode; // @[Broadcast.scala 474:25:freechips.rocketchip.system.DefaultRV32Config.fir@79454.4]
  assign io_out_a_bits_param = acquire ? 3'h0 : param; // @[Broadcast.scala 475:25:freechips.rocketchip.system.DefaultRV32Config.fir@79456.4]
  assign io_out_a_bits_size = size; // @[Broadcast.scala 476:25:freechips.rocketchip.system.DefaultRV32Config.fir@79457.4]
  assign io_out_a_bits_source = {_T_41,source}; // @[Broadcast.scala 477:25:freechips.rocketchip.system.DefaultRV32Config.fir@79460.4]
  assign io_out_a_bits_address = address; // @[Broadcast.scala 478:25:freechips.rocketchip.system.DefaultRV32Config.fir@79461.4]
  assign io_out_a_bits_user_amba_prot_bufferable = user_amba_prot_bufferable; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79471.4]
  assign io_out_a_bits_user_amba_prot_modifiable = user_amba_prot_modifiable; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79470.4]
  assign io_out_a_bits_user_amba_prot_readalloc = user_amba_prot_readalloc; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79469.4]
  assign io_out_a_bits_user_amba_prot_writealloc = user_amba_prot_writealloc; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79468.4]
  assign io_out_a_bits_user_amba_prot_privileged = user_amba_prot_privileged; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79467.4]
  assign io_out_a_bits_user_amba_prot_secure = user_amba_prot_secure; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79466.4]
  assign io_out_a_bits_user_amba_prot_fetch = user_amba_prot_fetch; // @[BundleMap.scala 248:19:freechips.rocketchip.system.DefaultRV32Config.fir@79465.4]
  assign io_out_a_bits_mask = o_data_io_deq_bits_mask; // @[Broadcast.scala 479:25:freechips.rocketchip.system.DefaultRV32Config.fir@79462.4]
  assign io_out_a_bits_data = o_data_io_deq_bits_data; // @[Broadcast.scala 480:25:freechips.rocketchip.system.DefaultRV32Config.fir@79463.4]
  assign io_source = source; // @[Broadcast.scala 455:13:freechips.rocketchip.system.DefaultRV32Config.fir@79421.4]
  assign io_line = address[31:6]; // @[Broadcast.scala 456:11:freechips.rocketchip.system.DefaultRV32Config.fir@79423.4]
  assign io_idle = got_e & sent_d; // @[Broadcast.scala 453:11:freechips.rocketchip.system.DefaultRV32Config.fir@79418.4]
  assign io_need_d = ~sent_d; // @[Broadcast.scala 454:13:freechips.rocketchip.system.DefaultRV32Config.fir@79420.4]
  assign o_data_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79428.4]
  assign o_data_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79429.4]
  assign o_data_io_enq_valid = _T_30 & io_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@79430.4]
  assign o_data_io_enq_bits_mask = io_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@79432.4]
  assign o_data_io_enq_bits_data = io_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@79431.4]
  assign o_data_io_deq_ready = io_out_a_ready & probe_done; // @[Broadcast.scala 472:16:freechips.rocketchip.system.DefaultRV32Config.fir@79450.4]
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
      address <= 32'h80;
    end else if (_T_1) begin
      address <= io_in_a_bits_address;
    end
    count <= _GEN_20[0];
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1 & _T_4) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:415 assert (idle)\n"); // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79347.8]
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
          $fatal; // @[Broadcast.scala 415:12:freechips.rocketchip.system.DefaultRV32Config.fir@79348.8]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:436 assert (!sent_d)\n"); // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79383.8]
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
          $fatal; // @[Broadcast.scala 436:12:freechips.rocketchip.system.DefaultRV32Config.fir@79384.8]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:440 assert (!got_e)\n"); // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79394.8]
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
          $fatal; // @[Broadcast.scala 440:12:freechips.rocketchip.system.DefaultRV32Config.fir@79395.8]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Broadcast.scala:445 assert (count > 0.U)\n"); // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79406.8]
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
          $fatal; // @[Broadcast.scala 445:12:freechips.rocketchip.system.DefaultRV32Config.fir@79407.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
