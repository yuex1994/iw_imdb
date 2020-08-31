module ShiftQueue( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196892.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196893.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196894.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input  [4:0]  io_enq_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input  [7:0]  io_enq_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input  [31:0] io_enq_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_enq_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_enq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_enq_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output [4:0]  io_deq_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output [7:0]  io_deq_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output [31:0] io_deq_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output        io_deq_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output        io_deq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output        io_deq_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
  output [4:0]  io_mask // @[:freechips.rocketchip.system.DefaultRV32Config.fir@196895.4]
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
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
`endif // RANDOMIZE_REG_INIT
  reg  _T_1_0; // @[ShiftQueue.scala 21:30:freechips.rocketchip.system.DefaultRV32Config.fir@196903.4]
  reg  _T_1_1; // @[ShiftQueue.scala 21:30:freechips.rocketchip.system.DefaultRV32Config.fir@196903.4]
  reg  _T_1_2; // @[ShiftQueue.scala 21:30:freechips.rocketchip.system.DefaultRV32Config.fir@196903.4]
  reg  _T_1_3; // @[ShiftQueue.scala 21:30:freechips.rocketchip.system.DefaultRV32Config.fir@196903.4]
  reg  _T_1_4; // @[ShiftQueue.scala 21:30:freechips.rocketchip.system.DefaultRV32Config.fir@196903.4]
  reg [4:0] _T_2_0_btb_entry; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [7:0] _T_2_0_btb_bht_history; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_0_pc; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_0_data; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_0_replay; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [4:0] _T_2_1_btb_entry; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [7:0] _T_2_1_btb_bht_history; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_1_pc; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_1_data; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_1_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_1_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_1_replay; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [4:0] _T_2_2_btb_entry; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [7:0] _T_2_2_btb_bht_history; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_2_pc; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_2_data; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_2_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_2_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_2_replay; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [4:0] _T_2_3_btb_entry; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [7:0] _T_2_3_btb_bht_history; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_3_pc; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_3_data; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_3_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_3_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_3_replay; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [4:0] _T_2_4_btb_entry; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [7:0] _T_2_4_btb_bht_history; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_4_pc; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg [31:0] _T_2_4_data; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_4_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_4_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  reg  _T_2_4_replay; // @[ShiftQueue.scala 22:25:freechips.rocketchip.system.DefaultRV32Config.fir@196904.4]
  wire  _T_4; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196906.4]
  wire  _T_6; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196908.4]
  wire  _T_7; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196909.4]
  wire  _T_10; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196912.4]
  wire  _T_11; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196913.4]
  wire  _T_12; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196914.4]
  wire  _T_19; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@196937.4]
  wire  _T_24; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196943.4]
  wire  _T_25; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196944.4]
  wire  _T_28; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196947.4]
  wire  _T_29; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196948.4]
  wire  _T_30; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196949.4]
  wire  _T_37; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@196972.4]
  wire  _T_42; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196978.4]
  wire  _T_43; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196979.4]
  wire  _T_46; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196982.4]
  wire  _T_47; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196983.4]
  wire  _T_48; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196984.4]
  wire  _T_55; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197007.4]
  wire  _T_60; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@197013.4]
  wire  _T_61; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@197014.4]
  wire  _T_64; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@197017.4]
  wire  _T_65; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@197018.4]
  wire  _T_66; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@197019.4]
  wire  _T_73; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197042.4]
  wire  _T_77; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@197047.4]
  wire  _T_81; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@197051.4]
  wire  _T_82; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@197052.4]
  wire  _T_83; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@197053.4]
  wire  _T_90; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197076.4]
  wire [1:0] _T_94; // @[ShiftQueue.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@197116.4]
  wire [2:0] _T_96; // @[ShiftQueue.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@197118.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@196906.4]
  assign _T_6 = _T_4 & _T_1_0; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196908.4]
  assign _T_7 = _T_1_1 | _T_6; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196909.4]
  assign _T_10 = ~_T_1_0; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196912.4]
  assign _T_11 = _T_4 & _T_10; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196913.4]
  assign _T_12 = io_deq_ready ? _T_7 : _T_11; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196914.4]
  assign _T_19 = _T_4 | _T_1_0; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@196937.4]
  assign _T_24 = _T_4 & _T_1_1; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196943.4]
  assign _T_25 = _T_1_2 | _T_24; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196944.4]
  assign _T_28 = ~_T_1_1; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196947.4]
  assign _T_29 = _T_6 & _T_28; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196948.4]
  assign _T_30 = io_deq_ready ? _T_25 : _T_29; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196949.4]
  assign _T_37 = _T_6 | _T_1_1; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@196972.4]
  assign _T_42 = _T_4 & _T_1_2; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@196978.4]
  assign _T_43 = _T_1_3 | _T_42; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@196979.4]
  assign _T_46 = ~_T_1_2; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@196982.4]
  assign _T_47 = _T_24 & _T_46; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@196983.4]
  assign _T_48 = io_deq_ready ? _T_43 : _T_47; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@196984.4]
  assign _T_55 = _T_24 | _T_1_2; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197007.4]
  assign _T_60 = _T_4 & _T_1_3; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@197013.4]
  assign _T_61 = _T_1_4 | _T_60; // @[ShiftQueue.scala 30:28:freechips.rocketchip.system.DefaultRV32Config.fir@197014.4]
  assign _T_64 = ~_T_1_3; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@197017.4]
  assign _T_65 = _T_42 & _T_64; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@197018.4]
  assign _T_66 = io_deq_ready ? _T_61 : _T_65; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@197019.4]
  assign _T_73 = _T_42 | _T_1_3; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197042.4]
  assign _T_77 = _T_4 & _T_1_4; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@197047.4]
  assign _T_81 = ~_T_1_4; // @[ShiftQueue.scala 31:48:freechips.rocketchip.system.DefaultRV32Config.fir@197051.4]
  assign _T_82 = _T_60 & _T_81; // @[ShiftQueue.scala 31:45:freechips.rocketchip.system.DefaultRV32Config.fir@197052.4]
  assign _T_83 = io_deq_ready ? _T_77 : _T_82; // @[ShiftQueue.scala 29:10:freechips.rocketchip.system.DefaultRV32Config.fir@197053.4]
  assign _T_90 = _T_60 | _T_1_4; // @[ShiftQueue.scala 37:45:freechips.rocketchip.system.DefaultRV32Config.fir@197076.4]
  assign _T_94 = {_T_1_1,_T_1_0}; // @[ShiftQueue.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@197116.4]
  assign _T_96 = {_T_1_4,_T_1_3,_T_1_2}; // @[ShiftQueue.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@197118.4]
  assign io_enq_ready = ~_T_1_4; // @[ShiftQueue.scala 40:16:freechips.rocketchip.system.DefaultRV32Config.fir@197080.4]
  assign io_deq_valid = io_enq_valid | _T_1_0; // @[ShiftQueue.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@197081.4 ShiftQueue.scala 45:40:freechips.rocketchip.system.DefaultRV32Config.fir@197097.6]
  assign io_deq_bits_btb_entry = _T_10 ? io_enq_bits_btb_entry : _T_2_0_btb_entry; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197090.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197109.6]
  assign io_deq_bits_btb_bht_history = _T_10 ? io_enq_bits_btb_bht_history : _T_2_0_btb_bht_history; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197089.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197108.6]
  assign io_deq_bits_pc = _T_10 ? io_enq_bits_pc : _T_2_0_pc; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197087.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197106.6]
  assign io_deq_bits_data = _T_10 ? io_enq_bits_data : _T_2_0_data; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197086.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197105.6]
  assign io_deq_bits_xcpt_pf_inst = _T_10 ? io_enq_bits_xcpt_pf_inst : _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197084.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197103.6]
  assign io_deq_bits_xcpt_ae_inst = _T_10 ? io_enq_bits_xcpt_ae_inst : _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197083.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197102.6]
  assign io_deq_bits_replay = _T_10 ? io_enq_bits_replay : _T_2_0_replay; // @[ShiftQueue.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@197082.4 ShiftQueue.scala 46:36:freechips.rocketchip.system.DefaultRV32Config.fir@197101.6]
  assign io_mask = {_T_96,_T_94}; // @[ShiftQueue.scala 53:11:freechips.rocketchip.system.DefaultRV32Config.fir@197120.4]
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
  _T_1_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  _T_1_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  _T_1_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  _T_1_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  _T_2_0_btb_entry = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  _T_2_0_btb_bht_history = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  _T_2_0_pc = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  _T_2_0_data = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  _T_2_0_xcpt_pf_inst = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  _T_2_0_xcpt_ae_inst = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  _T_2_0_replay = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_2_1_btb_entry = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  _T_2_1_btb_bht_history = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  _T_2_1_pc = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  _T_2_1_data = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  _T_2_1_xcpt_pf_inst = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  _T_2_1_xcpt_ae_inst = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  _T_2_1_replay = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  _T_2_2_btb_entry = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  _T_2_2_btb_bht_history = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  _T_2_2_pc = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  _T_2_2_data = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  _T_2_2_xcpt_pf_inst = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  _T_2_2_xcpt_ae_inst = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  _T_2_2_replay = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  _T_2_3_btb_entry = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  _T_2_3_btb_bht_history = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  _T_2_3_pc = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  _T_2_3_data = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  _T_2_3_xcpt_pf_inst = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  _T_2_3_xcpt_ae_inst = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  _T_2_3_replay = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  _T_2_4_btb_entry = _RAND_33[4:0];
  _RAND_34 = {1{`RANDOM}};
  _T_2_4_btb_bht_history = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  _T_2_4_pc = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  _T_2_4_data = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  _T_2_4_xcpt_pf_inst = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  _T_2_4_xcpt_ae_inst = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  _T_2_4_replay = _RAND_39[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_0 <= _T_7;
    end else begin
      _T_1_0 <= _T_19;
    end
    if (reset) begin
      _T_1_1 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_1 <= _T_25;
    end else begin
      _T_1_1 <= _T_37;
    end
    if (reset) begin
      _T_1_2 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_2 <= _T_43;
    end else begin
      _T_1_2 <= _T_55;
    end
    if (reset) begin
      _T_1_3 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_3 <= _T_61;
    end else begin
      _T_1_3 <= _T_73;
    end
    if (reset) begin
      _T_1_4 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_4 <= _T_77;
    end else begin
      _T_1_4 <= _T_90;
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_entry <= _T_2_1_btb_entry;
      end else begin
        _T_2_0_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_bht_history <= _T_2_1_btb_bht_history;
      end else begin
        _T_2_0_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_pc <= _T_2_1_pc;
      end else begin
        _T_2_0_pc <= io_enq_bits_pc;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_data <= _T_2_1_data;
      end else begin
        _T_2_0_data <= io_enq_bits_data;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_pf_inst <= _T_2_1_xcpt_pf_inst;
      end else begin
        _T_2_0_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_ae_inst <= _T_2_1_xcpt_ae_inst;
      end else begin
        _T_2_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_replay <= _T_2_1_replay;
      end else begin
        _T_2_0_replay <= io_enq_bits_replay;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_entry <= _T_2_2_btb_entry;
      end else begin
        _T_2_1_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_bht_history <= _T_2_2_btb_bht_history;
      end else begin
        _T_2_1_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_pc <= _T_2_2_pc;
      end else begin
        _T_2_1_pc <= io_enq_bits_pc;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_data <= _T_2_2_data;
      end else begin
        _T_2_1_data <= io_enq_bits_data;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_pf_inst <= _T_2_2_xcpt_pf_inst;
      end else begin
        _T_2_1_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_ae_inst <= _T_2_2_xcpt_ae_inst;
      end else begin
        _T_2_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_replay <= _T_2_2_replay;
      end else begin
        _T_2_1_replay <= io_enq_bits_replay;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_entry <= _T_2_3_btb_entry;
      end else begin
        _T_2_2_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_bht_history <= _T_2_3_btb_bht_history;
      end else begin
        _T_2_2_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_pc <= _T_2_3_pc;
      end else begin
        _T_2_2_pc <= io_enq_bits_pc;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_data <= _T_2_3_data;
      end else begin
        _T_2_2_data <= io_enq_bits_data;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_pf_inst <= _T_2_3_xcpt_pf_inst;
      end else begin
        _T_2_2_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_ae_inst <= _T_2_3_xcpt_ae_inst;
      end else begin
        _T_2_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_replay <= _T_2_3_replay;
      end else begin
        _T_2_2_replay <= io_enq_bits_replay;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_entry <= _T_2_4_btb_entry;
      end else begin
        _T_2_3_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_bht_history <= _T_2_4_btb_bht_history;
      end else begin
        _T_2_3_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_pc <= _T_2_4_pc;
      end else begin
        _T_2_3_pc <= io_enq_bits_pc;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_data <= _T_2_4_data;
      end else begin
        _T_2_3_data <= io_enq_bits_data;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_pf_inst <= _T_2_4_xcpt_pf_inst;
      end else begin
        _T_2_3_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_ae_inst <= _T_2_4_xcpt_ae_inst;
      end else begin
        _T_2_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_replay <= _T_2_4_replay;
      end else begin
        _T_2_3_replay <= io_enq_bits_replay;
      end
    end
    if (_T_83) begin
      _T_2_4_btb_entry <= io_enq_bits_btb_entry;
    end
    if (_T_83) begin
      _T_2_4_btb_bht_history <= io_enq_bits_btb_bht_history;
    end
    if (_T_83) begin
      _T_2_4_pc <= io_enq_bits_pc;
    end
    if (_T_83) begin
      _T_2_4_data <= io_enq_bits_data;
    end
    if (_T_83) begin
      _T_2_4_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
    end
    if (_T_83) begin
      _T_2_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
    end
    if (_T_83) begin
      _T_2_4_replay <= io_enq_bits_replay;
    end
  end
endmodule
