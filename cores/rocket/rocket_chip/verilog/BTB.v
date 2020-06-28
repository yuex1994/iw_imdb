module BTB( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205139.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205140.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205141.4]
  input  [31:0] io_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output        io_resp_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output        io_resp_bits_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output [31:0] io_resp_bits_target, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output [4:0]  io_resp_bits_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output [7:0]  io_resp_bits_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output        io_resp_bits_bht_value, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [4:0]  io_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [31:0] io_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [31:0] io_btb_update_bits_br_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [1:0]  io_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [7:0]  io_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [31:0] io_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_advance_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_bht_advance_bits_bht_value, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_ras_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [1:0]  io_ras_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input  [31:0] io_ras_update_bits_returnAddr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output        io_ras_head_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  output [31:0] io_ras_head_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
  input         io_flush // @[:freechips.rocketchip.system.DefaultRV32Config.fir@205142.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
`endif // RANDOMIZE_REG_INIT
  reg  _T_1037 [0:511]; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire  _T_1037__T_1106_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire [8:0] _T_1037__T_1106_addr; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire  _T_1037__T_1119_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire [8:0] _T_1037__T_1119_addr; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire  _T_1037__T_1119_mask; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  wire  _T_1037__T_1119_en; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  reg [12:0] idxs_0; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_1; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_2; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_3; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_4; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_5; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_6; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_7; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_8; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_9; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_10; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_11; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_12; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_13; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_14; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_15; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_16; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_17; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_18; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_19; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_20; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_21; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_22; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_23; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_24; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_25; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_26; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [12:0] idxs_27; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@205147.4]
  reg [2:0] idxPages_0; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_1; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_2; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_3; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_4; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_5; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_6; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_7; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_8; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_9; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_10; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_11; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_12; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_13; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_14; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_15; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_16; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_17; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_18; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_19; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_20; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_21; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_22; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_23; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_24; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_25; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_26; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [2:0] idxPages_27; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@205148.4]
  reg [12:0] tgts_0; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_1; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_2; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_3; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_4; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_5; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_6; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_7; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_8; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_9; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_10; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_11; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_12; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_13; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_14; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_15; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_16; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_17; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_18; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_19; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_20; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_21; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_22; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_23; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_24; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_25; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_26; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [12:0] tgts_27; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@205149.4]
  reg [2:0] tgtPages_0; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_1; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_2; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_3; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_4; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_5; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_6; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_7; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_8; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_9; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_10; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_11; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_12; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_13; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_14; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_15; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_16; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_17; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_18; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_19; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_20; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_21; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_22; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_23; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_24; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_25; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_26; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [2:0] tgtPages_27; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@205150.4]
  reg [17:0] pages_0; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [17:0] pages_1; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [17:0] pages_2; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [17:0] pages_3; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [17:0] pages_4; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [17:0] pages_5; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@205151.4]
  reg [5:0] pageValid; // @[BTB.scala 193:22:freechips.rocketchip.system.DefaultRV32Config.fir@205152.4]
  reg [27:0] isValid; // @[BTB.scala 195:20:freechips.rocketchip.system.DefaultRV32Config.fir@205153.4]
  reg [1:0] cfiType_0; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_1; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_2; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_3; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_4; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_5; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_6; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_7; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_8; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_9; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_10; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_11; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_12; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_13; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_14; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_15; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_16; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_17; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_18; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_19; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_20; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_21; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_22; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_23; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_24; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_25; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_26; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg [1:0] cfiType_27; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@205154.4]
  reg  brIdx_0; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_1; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_2; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_3; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_4; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_5; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_6; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_7; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_8; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_9; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_10; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_11; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_12; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_13; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_14; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_15; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_16; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_17; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_18; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_19; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_20; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_21; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_22; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_23; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_24; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_25; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_26; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  brIdx_27; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@205155.4]
  reg  r_btb_updatePipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@205156.4]
  reg [4:0] r_btb_updatePipe_bits_prediction_entry; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205158.4]
  reg [31:0] r_btb_updatePipe_bits_pc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205158.4]
  reg  r_btb_updatePipe_bits_isValid; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205158.4]
  reg [31:0] r_btb_updatePipe_bits_br_pc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205158.4]
  reg [1:0] r_btb_updatePipe_bits_cfiType; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205158.4]
  wire  _T_1; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205180.4]
  wire  _T_2; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205181.4]
  wire  _T_3; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205182.4]
  wire  _T_4; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205183.4]
  wire  _T_5; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205184.4]
  wire  _T_6; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205185.4]
  wire [5:0] _T_11; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205190.4]
  wire [5:0] pageHit; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@205191.4]
  wire  _T_13; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205193.4]
  wire  _T_14; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205194.4]
  wire  _T_15; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205195.4]
  wire  _T_16; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205196.4]
  wire  _T_17; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205197.4]
  wire  _T_18; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205198.4]
  wire  _T_19; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205199.4]
  wire  _T_20; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205200.4]
  wire  _T_21; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205201.4]
  wire  _T_22; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205202.4]
  wire  _T_23; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205203.4]
  wire  _T_24; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205204.4]
  wire  _T_25; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205205.4]
  wire  _T_26; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205206.4]
  wire  _T_27; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205207.4]
  wire  _T_28; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205208.4]
  wire  _T_29; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205209.4]
  wire  _T_30; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205210.4]
  wire  _T_31; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205211.4]
  wire  _T_32; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205212.4]
  wire  _T_33; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205213.4]
  wire  _T_34; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205214.4]
  wire  _T_35; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205215.4]
  wire  _T_36; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205216.4]
  wire  _T_37; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205217.4]
  wire  _T_38; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205218.4]
  wire  _T_39; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205219.4]
  wire  _T_40; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205220.4]
  wire [6:0] _T_46; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205226.4]
  wire [13:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205233.4]
  wire [6:0] _T_59; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205239.4]
  wire [27:0] _T_67; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205247.4]
  wire [27:0] idxHit; // @[BTB.scala 206:32:freechips.rocketchip.system.DefaultRV32Config.fir@205248.4]
  wire  _T_69; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205250.4]
  wire  _T_70; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205251.4]
  wire  _T_71; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205252.4]
  wire  _T_72; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205253.4]
  wire  _T_73; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205254.4]
  wire  _T_74; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205255.4]
  wire [5:0] _T_79; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205260.4]
  wire [5:0] updatePageHit; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@205261.4]
  wire  updateHit; // @[BTB.scala 220:48:freechips.rocketchip.system.DefaultRV32Config.fir@205262.4]
  wire  useUpdatePageHit; // @[BTB.scala 222:40:freechips.rocketchip.system.DefaultRV32Config.fir@205263.4]
  wire  usePageHit; // @[BTB.scala 223:28:freechips.rocketchip.system.DefaultRV32Config.fir@205264.4]
  wire  doIdxPageRepl; // @[BTB.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@205265.4]
  reg [2:0] nextPageRepl; // @[BTB.scala 225:25:freechips.rocketchip.system.DefaultRV32Config.fir@205266.4]
  wire [5:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205269.4]
  wire [7:0] _T_83; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@205270.4]
  wire [7:0] _T_84; // @[BTB.scala 226:70:freechips.rocketchip.system.DefaultRV32Config.fir@205271.4]
  wire [7:0] _GEN_432; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@205272.4]
  wire [7:0] idxPageRepl; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@205272.4]
  wire [7:0] idxPageUpdateOH; // @[BTB.scala 227:28:freechips.rocketchip.system.DefaultRV32Config.fir@205273.4]
  wire  _T_87; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205276.4]
  wire [3:0] _T_88; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205277.4]
  wire  _T_91; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205280.4]
  wire [1:0] _T_92; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205281.4]
  wire [2:0] idxPageUpdate; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205284.4]
  wire [7:0] idxPageReplEn; // @[BTB.scala 229:26:freechips.rocketchip.system.DefaultRV32Config.fir@205285.4]
  wire  samePage; // @[BTB.scala 231:45:freechips.rocketchip.system.DefaultRV32Config.fir@205288.4]
  wire  _T_97; // @[BTB.scala 232:23:freechips.rocketchip.system.DefaultRV32Config.fir@205289.4]
  wire  _T_98; // @[BTB.scala 232:36:freechips.rocketchip.system.DefaultRV32Config.fir@205290.4]
  wire  doTgtPageRepl; // @[BTB.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@205291.4]
  wire [5:0] _T_101; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205294.4]
  wire [7:0] tgtPageRepl; // @[BTB.scala 233:24:freechips.rocketchip.system.DefaultRV32Config.fir@205295.4]
  wire [7:0] _T_102; // @[BTB.scala 234:45:freechips.rocketchip.system.DefaultRV32Config.fir@205296.4]
  wire [7:0] _GEN_433; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@205297.4]
  wire [7:0] _T_103; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@205297.4]
  wire  _T_106; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205300.4]
  wire [3:0] _T_107; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205301.4]
  wire  _T_110; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205304.4]
  wire [1:0] _T_111; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205305.4]
  wire [2:0] tgtPageUpdate; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205308.4]
  wire [7:0] tgtPageReplEn; // @[BTB.scala 235:26:freechips.rocketchip.system.DefaultRV32Config.fir@205309.4]
  wire  _T_114; // @[BTB.scala 237:46:freechips.rocketchip.system.DefaultRV32Config.fir@205310.4]
  wire  _T_115; // @[BTB.scala 237:28:freechips.rocketchip.system.DefaultRV32Config.fir@205311.4]
  wire  _T_116; // @[BTB.scala 238:30:freechips.rocketchip.system.DefaultRV32Config.fir@205313.6]
  wire [1:0] _T_117; // @[BTB.scala 239:40:freechips.rocketchip.system.DefaultRV32Config.fir@205314.6]
  wire [2:0] _GEN_434; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@205315.6]
  wire [2:0] _T_119; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@205316.6]
  wire  _T_120; // @[BTB.scala 240:30:freechips.rocketchip.system.DefaultRV32Config.fir@205317.6]
  reg [26:0] _T_123; // @[Replacement.scala 158:30:freechips.rocketchip.system.DefaultRV32Config.fir@205322.4]
  wire  _T_135; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205334.4]
  wire [1:0] _T_136; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205335.4]
  wire  _T_145; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205344.4]
  wire [1:0] _T_146; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205345.4]
  wire  _T_152; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205351.4]
  wire [1:0] _T_153; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205352.4]
  wire [1:0] _T_154; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205353.4]
  wire [2:0] _T_155; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205354.4]
  wire [2:0] _T_156; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205355.4]
  wire [3:0] _T_157; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205356.4]
  wire  _T_169; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205368.4]
  wire [1:0] _T_170; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205369.4]
  wire  _T_176; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205375.4]
  wire [1:0] _T_177; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205376.4]
  wire [1:0] _T_178; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205377.4]
  wire [2:0] _T_179; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205378.4]
  wire  _T_188; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205387.4]
  wire [1:0] _T_189; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205388.4]
  wire  _T_195; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205394.4]
  wire [1:0] _T_196; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205395.4]
  wire [1:0] _T_197; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205396.4]
  wire [2:0] _T_198; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205397.4]
  wire [2:0] _T_199; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205398.4]
  wire [3:0] _T_200; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205399.4]
  wire [3:0] _T_201; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205400.4]
  wire [4:0] _T_202; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205401.4]
  wire [4:0] waddr; // @[BTB.scala 244:18:freechips.rocketchip.system.DefaultRV32Config.fir@205402.4]
  reg  r_respPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@205403.4]
  reg  r_respPipe_bits_taken; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205405.4]
  reg [4:0] r_respPipe_bits_entry; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@205405.4]
  wire  _T_203; // @[BTB.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@205420.4]
  wire  _T_204; // @[BTB.scala 246:43:freechips.rocketchip.system.DefaultRV32Config.fir@205421.4]
  wire [4:0] _T_205; // @[BTB.scala 247:20:freechips.rocketchip.system.DefaultRV32Config.fir@205423.6]
  wire  _T_208; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205426.6]
  wire  _T_213; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205431.6]
  wire  _T_218; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205436.6]
  wire  _T_223; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@205441.6]
  wire  _T_224; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205442.6]
  wire  _T_228; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205446.6]
  wire [2:0] _T_230; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205448.6]
  wire [2:0] _T_231; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205449.6]
  wire  _T_234; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205452.6]
  wire  _T_239; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205457.6]
  wire  _T_244; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@205462.6]
  wire  _T_245; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205463.6]
  wire  _T_249; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205467.6]
  wire [2:0] _T_251; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205469.6]
  wire [2:0] _T_252; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205470.6]
  wire  _T_261; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205479.6]
  wire  _T_265; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205483.6]
  wire [2:0] _T_267; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205485.6]
  wire [2:0] _T_268; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205486.6]
  wire [6:0] _T_270; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205488.6]
  wire [6:0] _T_271; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205489.6]
  wire [10:0] _T_273; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205491.6]
  wire [10:0] _T_274; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205492.6]
  wire  _T_293; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205511.6]
  wire  _T_297; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205515.6]
  wire [2:0] _T_299; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205517.6]
  wire [2:0] _T_300; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205518.6]
  wire  _T_309; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205527.6]
  wire  _T_313; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205531.6]
  wire [2:0] _T_315; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205533.6]
  wire [2:0] _T_316; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205534.6]
  wire [6:0] _T_318; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205536.6]
  wire [6:0] _T_319; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205537.6]
  wire  _T_333; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205551.6]
  wire  _T_337; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205555.6]
  wire [2:0] _T_339; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205557.6]
  wire [2:0] _T_340; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205558.6]
  wire  _T_349; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205567.6]
  wire  _T_353; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205571.6]
  wire [2:0] _T_355; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205573.6]
  wire [2:0] _T_356; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205574.6]
  wire [6:0] _T_358; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205576.6]
  wire [6:0] _T_359; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205577.6]
  wire [14:0] _T_361; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205579.6]
  wire [14:0] _T_362; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205580.6]
  wire [26:0] _T_364; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205582.6]
  wire [31:0] _T_365; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@205586.6]
  wire [3:0] _T_368; // @[BTB.scala 254:38:freechips.rocketchip.system.DefaultRV32Config.fir@205591.6]
  wire [31:0] _GEN_435; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@205595.6]
  wire [31:0] _T_369; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@205595.6]
  wire [31:0] _T_370; // @[BTB.scala 257:73:freechips.rocketchip.system.DefaultRV32Config.fir@205596.6]
  wire [31:0] _T_371; // @[BTB.scala 257:71:freechips.rocketchip.system.DefaultRV32Config.fir@205597.6]
  wire [31:0] _T_372; // @[BTB.scala 257:19:freechips.rocketchip.system.DefaultRV32Config.fir@205598.6]
  wire  _T_375; // @[BTB.scala 262:25:freechips.rocketchip.system.DefaultRV32Config.fir@205603.6]
  wire [7:0] _T_376; // @[BTB.scala 268:24:freechips.rocketchip.system.DefaultRV32Config.fir@205604.6]
  wire [7:0] _T_383; // @[BTB.scala 270:24:freechips.rocketchip.system.DefaultRV32Config.fir@205620.6]
  wire [7:0] _GEN_437; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@205636.6]
  wire [7:0] _T_390; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@205636.6]
  wire [7:0] _T_391; // @[BTB.scala 272:44:freechips.rocketchip.system.DefaultRV32Config.fir@205637.6]
  wire [31:0] _GEN_338; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@205585.4]
  wire [7:0] _GEN_373; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@205585.4]
  wire [6:0] _T_392; // @[BTB.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@205640.4]
  wire [2:0] _T_421; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205669.4]
  wire [2:0] _T_422; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205670.4]
  wire [2:0] _T_423; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205671.4]
  wire [2:0] _T_424; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205672.4]
  wire [2:0] _T_425; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205673.4]
  wire [2:0] _T_426; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205674.4]
  wire [2:0] _T_427; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205675.4]
  wire [2:0] _T_428; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205676.4]
  wire [2:0] _T_429; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205677.4]
  wire [2:0] _T_430; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205678.4]
  wire [2:0] _T_431; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205679.4]
  wire [2:0] _T_432; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205680.4]
  wire [2:0] _T_433; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205681.4]
  wire [2:0] _T_434; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205682.4]
  wire [2:0] _T_435; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205683.4]
  wire [2:0] _T_436; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205684.4]
  wire [2:0] _T_437; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205685.4]
  wire [2:0] _T_438; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205686.4]
  wire [2:0] _T_439; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205687.4]
  wire [2:0] _T_440; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205688.4]
  wire [2:0] _T_441; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205689.4]
  wire [2:0] _T_442; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205690.4]
  wire [2:0] _T_443; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205691.4]
  wire [2:0] _T_444; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205692.4]
  wire [2:0] _T_445; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205693.4]
  wire [2:0] _T_446; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205694.4]
  wire [2:0] _T_447; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205695.4]
  wire [2:0] _T_448; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205696.4]
  wire [2:0] _T_449; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205697.4]
  wire [2:0] _T_450; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205698.4]
  wire [2:0] _T_451; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205699.4]
  wire [2:0] _T_452; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205700.4]
  wire [2:0] _T_453; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205701.4]
  wire [2:0] _T_454; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205702.4]
  wire [2:0] _T_455; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205703.4]
  wire [2:0] _T_456; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205704.4]
  wire [2:0] _T_457; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205705.4]
  wire [2:0] _T_458; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205706.4]
  wire [2:0] _T_459; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205707.4]
  wire [2:0] _T_460; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205708.4]
  wire [2:0] _T_461; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205709.4]
  wire [2:0] _T_462; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205710.4]
  wire [2:0] _T_463; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205711.4]
  wire [2:0] _T_464; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205712.4]
  wire [2:0] _T_465; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205713.4]
  wire [2:0] _T_466; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205714.4]
  wire [2:0] _T_467; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205715.4]
  wire [2:0] _T_468; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205716.4]
  wire [2:0] _T_469; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205717.4]
  wire [2:0] _T_470; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205718.4]
  wire [2:0] _T_471; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205719.4]
  wire [2:0] _T_472; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205720.4]
  wire [2:0] _T_473; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205721.4]
  wire [2:0] _T_474; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205722.4]
  wire [2:0] _T_475; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205723.4]
  wire [6:0] _T_477; // @[BTB.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@205726.4]
  wire [2:0] _T_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205758.4]
  wire [2:0] _T_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205759.4]
  wire [2:0] _T_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205760.4]
  wire [2:0] _T_510; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205761.4]
  wire [2:0] _T_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205762.4]
  wire [2:0] _T_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205763.4]
  wire [2:0] _T_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205764.4]
  wire [2:0] _T_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205765.4]
  wire [2:0] _T_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205766.4]
  wire [2:0] _T_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205767.4]
  wire [2:0] _T_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205768.4]
  wire [2:0] _T_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205769.4]
  wire [2:0] _T_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205770.4]
  wire [2:0] _T_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205771.4]
  wire [2:0] _T_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205772.4]
  wire [2:0] _T_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205773.4]
  wire [2:0] _T_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205774.4]
  wire [2:0] _T_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205775.4]
  wire [2:0] _T_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205776.4]
  wire [2:0] _T_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205777.4]
  wire [2:0] _T_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205778.4]
  wire [2:0] _T_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205779.4]
  wire [2:0] _T_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205780.4]
  wire [2:0] _T_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205781.4]
  wire [2:0] _T_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205782.4]
  wire [2:0] _T_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205783.4]
  wire [2:0] _T_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205784.4]
  wire [2:0] _T_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205785.4]
  wire [2:0] _T_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205786.4]
  wire [2:0] _T_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205787.4]
  wire [2:0] _T_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205788.4]
  wire [2:0] _T_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205789.4]
  wire [2:0] _T_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205790.4]
  wire [2:0] _T_540; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205791.4]
  wire [2:0] _T_541; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205792.4]
  wire [2:0] _T_542; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205793.4]
  wire [2:0] _T_543; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205794.4]
  wire [2:0] _T_544; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205795.4]
  wire [2:0] _T_545; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205796.4]
  wire [2:0] _T_546; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205797.4]
  wire [2:0] _T_547; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205798.4]
  wire [2:0] _T_548; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205799.4]
  wire [2:0] _T_549; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205800.4]
  wire [2:0] _T_550; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205801.4]
  wire [2:0] _T_551; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205802.4]
  wire [2:0] _T_552; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205803.4]
  wire [2:0] _T_553; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205804.4]
  wire [2:0] _T_554; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205805.4]
  wire [2:0] _T_555; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205806.4]
  wire [2:0] _T_556; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205807.4]
  wire [2:0] _T_557; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205808.4]
  wire [2:0] _T_558; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205809.4]
  wire [2:0] _T_559; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205810.4]
  wire [2:0] _T_560; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205811.4]
  wire [2:0] _T_561; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205812.4]
  wire [12:0] _T_591; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205843.4]
  wire [12:0] _T_592; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205844.4]
  wire [12:0] _T_593; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205845.4]
  wire [12:0] _T_594; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205846.4]
  wire [12:0] _T_595; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205847.4]
  wire [12:0] _T_596; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205848.4]
  wire [12:0] _T_597; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205849.4]
  wire [12:0] _T_598; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205850.4]
  wire [12:0] _T_599; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205851.4]
  wire [12:0] _T_600; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205852.4]
  wire [12:0] _T_601; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205853.4]
  wire [12:0] _T_602; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205854.4]
  wire [12:0] _T_603; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205855.4]
  wire [12:0] _T_604; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205856.4]
  wire [12:0] _T_605; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205857.4]
  wire [12:0] _T_606; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205858.4]
  wire [12:0] _T_607; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205859.4]
  wire [12:0] _T_608; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205860.4]
  wire [12:0] _T_609; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205861.4]
  wire [12:0] _T_610; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205862.4]
  wire [12:0] _T_611; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205863.4]
  wire [12:0] _T_612; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205864.4]
  wire [12:0] _T_613; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205865.4]
  wire [12:0] _T_614; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205866.4]
  wire [12:0] _T_615; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205867.4]
  wire [12:0] _T_616; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205868.4]
  wire [12:0] _T_617; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205869.4]
  wire [12:0] _T_618; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205870.4]
  wire [12:0] _T_619; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205871.4]
  wire [12:0] _T_620; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205872.4]
  wire [12:0] _T_621; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205873.4]
  wire [12:0] _T_622; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205874.4]
  wire [12:0] _T_623; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205875.4]
  wire [12:0] _T_624; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205876.4]
  wire [12:0] _T_625; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205877.4]
  wire [12:0] _T_626; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205878.4]
  wire [12:0] _T_627; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205879.4]
  wire [12:0] _T_628; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205880.4]
  wire [12:0] _T_629; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205881.4]
  wire [12:0] _T_630; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205882.4]
  wire [12:0] _T_631; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205883.4]
  wire [12:0] _T_632; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205884.4]
  wire [12:0] _T_633; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205885.4]
  wire [12:0] _T_634; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205886.4]
  wire [12:0] _T_635; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205887.4]
  wire [12:0] _T_636; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205888.4]
  wire [12:0] _T_637; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205889.4]
  wire [12:0] _T_638; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205890.4]
  wire [12:0] _T_639; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205891.4]
  wire [12:0] _T_640; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205892.4]
  wire [12:0] _T_641; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205893.4]
  wire [12:0] _T_642; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205894.4]
  wire [12:0] _T_643; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205895.4]
  wire [12:0] _T_644; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205896.4]
  wire [12:0] _T_645; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205897.4]
  wire [13:0] _T_647; // @[BTB.scala 277:82:freechips.rocketchip.system.DefaultRV32Config.fir@205900.4]
  wire [17:0] _GEN_375; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire [17:0] _GEN_376; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire [17:0] _GEN_377; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire [17:0] _GEN_378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire [17:0] _GEN_379; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire [31:0] _T_648; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  wire  _T_651; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205905.4]
  wire [15:0] _GEN_438; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205906.4]
  wire [15:0] _T_652; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205906.4]
  wire  _T_655; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205909.4]
  wire [7:0] _T_656; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205910.4]
  wire  _T_659; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205913.4]
  wire [3:0] _T_660; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205914.4]
  wire  _T_663; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205917.4]
  wire [1:0] _T_664; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205918.4]
  wire [3:0] _T_668; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205922.4]
  wire  _T_698; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205953.4]
  wire  _T_699; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205954.4]
  wire  _T_700; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205955.4]
  wire  _T_701; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205956.4]
  wire  _T_702; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205957.4]
  wire  _T_703; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205958.4]
  wire  _T_704; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205959.4]
  wire  _T_705; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205960.4]
  wire  _T_706; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205961.4]
  wire  _T_707; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205962.4]
  wire  _T_708; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205963.4]
  wire  _T_709; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205964.4]
  wire  _T_710; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205965.4]
  wire  _T_711; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205966.4]
  wire  _T_712; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205967.4]
  wire  _T_713; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205968.4]
  wire  _T_714; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205969.4]
  wire  _T_715; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205970.4]
  wire  _T_716; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205971.4]
  wire  _T_717; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205972.4]
  wire  _T_718; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205973.4]
  wire  _T_719; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205974.4]
  wire  _T_720; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205975.4]
  wire  _T_721; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205976.4]
  wire  _T_722; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205977.4]
  wire  _T_723; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205978.4]
  wire  _T_724; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205979.4]
  wire  _T_725; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205980.4]
  wire  _T_726; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205981.4]
  wire  _T_727; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205982.4]
  wire  _T_728; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205983.4]
  wire  _T_729; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205984.4]
  wire  _T_730; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205985.4]
  wire  _T_731; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205986.4]
  wire  _T_732; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205987.4]
  wire  _T_733; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205988.4]
  wire  _T_734; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205989.4]
  wire  _T_735; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205990.4]
  wire  _T_736; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205991.4]
  wire  _T_737; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205992.4]
  wire  _T_738; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205993.4]
  wire  _T_739; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205994.4]
  wire  _T_740; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205995.4]
  wire  _T_741; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205996.4]
  wire  _T_742; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205997.4]
  wire  _T_743; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205998.4]
  wire  _T_744; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205999.4]
  wire  _T_745; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206000.4]
  wire  _T_746; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206001.4]
  wire  _T_747; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206002.4]
  wire  _T_748; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206003.4]
  wire  _T_749; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206004.4]
  wire  _T_750; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206005.4]
  wire  _T_751; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206006.4]
  wire  _T_855; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206115.4]
  wire  _T_857; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206117.4]
  wire  _T_859; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206119.4]
  wire  _T_861; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206121.4]
  wire  _T_862; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206122.4]
  wire  _T_869; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206129.4]
  wire  _T_871; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206131.4]
  wire  _T_878; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206138.4]
  wire  _T_880; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206140.4]
  wire  _T_882; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206142.4]
  wire  _T_883; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206143.4]
  wire  _T_884; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206144.4]
  wire  _T_885; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206145.4]
  wire  _T_886; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206146.4]
  wire  _T_887; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206147.4]
  wire  _T_888; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206148.4]
  wire  _T_889; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206149.4]
  wire  _T_899; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206159.4]
  wire  _T_901; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206161.4]
  wire  _T_903; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206163.4]
  wire  _T_905; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206165.4]
  wire  _T_906; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206166.4]
  wire  _T_913; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206173.4]
  wire  _T_915; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206175.4]
  wire  _T_922; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206182.4]
  wire  _T_924; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206184.4]
  wire  _T_926; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206186.4]
  wire  _T_927; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206187.4]
  wire  _T_928; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206188.4]
  wire  _T_929; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206189.4]
  wire  _T_930; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206190.4]
  wire  _T_931; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206191.4]
  wire  _T_932; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206192.4]
  wire  _T_933; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206193.4]
  wire  _T_934; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206194.4]
  wire  _T_935; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206195.4]
  wire  _T_936; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206196.4]
  wire  _T_937; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206197.4]
  wire  _T_948; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206208.4]
  wire  _T_950; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206210.4]
  wire  _T_952; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206212.4]
  wire  _T_954; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206214.4]
  wire  _T_955; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206215.4]
  wire  _T_962; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206222.4]
  wire  _T_964; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206224.4]
  wire  _T_971; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206231.4]
  wire  _T_973; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206233.4]
  wire  _T_975; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206235.4]
  wire  _T_976; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206236.4]
  wire  _T_977; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206237.4]
  wire  _T_978; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206238.4]
  wire  _T_979; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206239.4]
  wire  _T_980; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206240.4]
  wire  _T_981; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206241.4]
  wire  _T_982; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206242.4]
  wire  _T_992; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206252.4]
  wire  _T_994; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206254.4]
  wire  _T_996; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206256.4]
  wire  _T_998; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206258.4]
  wire  _T_999; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206259.4]
  wire  _T_1006; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206266.4]
  wire  _T_1008; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206268.4]
  wire  _T_1015; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206275.4]
  wire  _T_1017; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206277.4]
  wire  _T_1019; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206279.4]
  wire  _T_1020; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206280.4]
  wire  _T_1021; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206281.4]
  wire  _T_1022; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206282.4]
  wire  _T_1023; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206283.4]
  wire  _T_1024; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206284.4]
  wire  _T_1025; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206285.4]
  wire  _T_1026; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206286.4]
  wire  _T_1027; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206287.4]
  wire  _T_1028; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206288.4]
  wire  _T_1029; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206289.4]
  wire  _T_1030; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206290.4]
  wire  _T_1032; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206292.4]
  wire  _T_1033; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206293.4]
  wire  _T_1034; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206294.4]
  wire [27:0] _T_1035; // @[BTB.scala 285:26:freechips.rocketchip.system.DefaultRV32Config.fir@206296.6]
  wire [27:0] _T_1036; // @[BTB.scala 285:24:freechips.rocketchip.system.DefaultRV32Config.fir@206297.6]
  wire [31:0] _GEN_380; // @[BTB.scala 284:37:freechips.rocketchip.system.DefaultRV32Config.fir@206295.4]
  wire [31:0] _GEN_381; // @[BTB.scala 287:19:freechips.rocketchip.system.DefaultRV32Config.fir@206300.4]
  reg [7:0] _T_1038; // @[BTB.scala 114:20:freechips.rocketchip.system.DefaultRV32Config.fir@206304.4]
  wire  _T_1039; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206305.4]
  wire  _T_1040; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206306.4]
  wire  _T_1041; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206307.4]
  wire  _T_1042; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206308.4]
  wire  _T_1043; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206309.4]
  wire  _T_1044; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206310.4]
  wire  _T_1045; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206311.4]
  wire  _T_1046; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206312.4]
  wire  _T_1047; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206313.4]
  wire  _T_1048; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206314.4]
  wire  _T_1049; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206315.4]
  wire  _T_1050; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206316.4]
  wire  _T_1051; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206317.4]
  wire  _T_1052; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206318.4]
  wire  _T_1053; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206319.4]
  wire  _T_1054; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206320.4]
  wire  _T_1055; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206321.4]
  wire  _T_1056; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206322.4]
  wire  _T_1057; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206323.4]
  wire  _T_1058; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206324.4]
  wire  _T_1059; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206325.4]
  wire  _T_1060; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206326.4]
  wire  _T_1061; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206327.4]
  wire  _T_1062; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206328.4]
  wire  _T_1063; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206329.4]
  wire  _T_1064; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206330.4]
  wire  _T_1065; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206331.4]
  wire  _T_1066; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206332.4]
  wire [6:0] _T_1072; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206338.4]
  wire [13:0] _T_1079; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206345.4]
  wire [6:0] _T_1085; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206351.4]
  wire [27:0] _T_1093; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206359.4]
  wire [27:0] _T_1094; // @[BTB.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@206360.4]
  wire  _T_1095; // @[BTB.scala 293:72:freechips.rocketchip.system.DefaultRV32Config.fir@206361.4]
  wire [8:0] _GEN_439; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206368.4]
  wire [8:0] _T_1101; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206368.4]
  wire [15:0] _T_1102; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@206369.4]
  wire [8:0] _T_1104; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@206371.4]
  wire [7:0] _T_1109; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206379.6]
  wire [8:0] _GEN_440; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206388.8]
  wire [8:0] _T_1114; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206388.8]
  wire [15:0] _T_1115; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@206389.8]
  wire [8:0] _T_1117; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@206391.8]
  wire [7:0] _T_1121; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206397.10]
  wire  _T_1096_value; // @[BTB.scala 92:19:freechips.rocketchip.system.DefaultRV32Config.fir@206362.4 BTB.scala 93:15:freechips.rocketchip.system.DefaultRV32Config.fir@206374.4]
  wire  _T_1123; // @[BTB.scala 308:11:freechips.rocketchip.system.DefaultRV32Config.fir@206407.4]
  wire  _T_1124; // @[BTB.scala 308:22:freechips.rocketchip.system.DefaultRV32Config.fir@206408.4]
  reg [2:0] _T_1125; // @[BTB.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@206413.4]
  reg [2:0] _T_1126; // @[BTB.scala 58:24:freechips.rocketchip.system.DefaultRV32Config.fir@206414.4]
  reg [31:0] _T_1127_0; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  reg [31:0] _T_1127_1; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  reg [31:0] _T_1127_2; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  reg [31:0] _T_1127_3; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  reg [31:0] _T_1127_4; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  reg [31:0] _T_1127_5; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@206415.4]
  wire  _T_1128; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206416.4]
  wire  _T_1129; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206417.4]
  wire  _T_1130; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206418.4]
  wire  _T_1131; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206419.4]
  wire  _T_1132; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206420.4]
  wire  _T_1133; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206421.4]
  wire  _T_1134; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206422.4]
  wire  _T_1135; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206423.4]
  wire  _T_1136; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206424.4]
  wire  _T_1137; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206425.4]
  wire  _T_1138; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206426.4]
  wire  _T_1139; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206427.4]
  wire  _T_1140; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206428.4]
  wire  _T_1141; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206429.4]
  wire  _T_1142; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206430.4]
  wire  _T_1143; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206431.4]
  wire  _T_1144; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206432.4]
  wire  _T_1145; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206433.4]
  wire  _T_1146; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206434.4]
  wire  _T_1147; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  wire  _T_1148; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  wire  _T_1149; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206437.4]
  wire  _T_1150; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206438.4]
  wire  _T_1151; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206439.4]
  wire  _T_1152; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206440.4]
  wire  _T_1153; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206441.4]
  wire  _T_1154; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  wire  _T_1155; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206443.4]
  wire [6:0] _T_1161; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  wire [13:0] _T_1168; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206456.4]
  wire [6:0] _T_1174; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206462.4]
  wire [27:0] _T_1182; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206470.4]
  wire [27:0] _T_1183; // @[BTB.scala 314:26:freechips.rocketchip.system.DefaultRV32Config.fir@206471.4]
  wire  _T_1184; // @[BTB.scala 314:67:freechips.rocketchip.system.DefaultRV32Config.fir@206472.4]
  wire  _T_1185; // @[BTB.scala 55:29:freechips.rocketchip.system.DefaultRV32Config.fir@206473.4]
  wire  _T_1186; // @[BTB.scala 315:26:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  wire [31:0] _GEN_399; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  wire [31:0] _GEN_400; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  wire [31:0] _GEN_401; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  wire [31:0] _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  wire [31:0] _GEN_403; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  wire  _T_1189; // @[BTB.scala 317:24:freechips.rocketchip.system.DefaultRV32Config.fir@206479.4]
  wire  _T_1190; // @[BTB.scala 321:40:freechips.rocketchip.system.DefaultRV32Config.fir@206484.6]
  wire  _T_1191; // @[BTB.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@206486.8]
  wire [2:0] _T_1193; // @[BTB.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@206489.10]
  wire  _T_1194; // @[BTB.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@206492.8]
  wire [2:0] _T_1197; // @[BTB.scala 45:62:freechips.rocketchip.system.DefaultRV32Config.fir@206495.8]
  wire [2:0] _T_1198; // @[BTB.scala 45:22:freechips.rocketchip.system.DefaultRV32Config.fir@206496.8]
  wire  _T_1199; // @[BTB.scala 323:46:freechips.rocketchip.system.DefaultRV32Config.fir@206501.8]
  wire [2:0] _T_1203; // @[BTB.scala 51:20:freechips.rocketchip.system.DefaultRV32Config.fir@206507.12]
  wire  _T_1204; // @[BTB.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@206509.12]
  wire [2:0] _T_1207; // @[BTB.scala 52:50:freechips.rocketchip.system.DefaultRV32Config.fir@206512.12]
  assign _T_1037__T_1106_addr = _T_1101 ^ _T_1104;
  assign _T_1037__T_1106_data = _T_1037[_T_1037__T_1106_addr]; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
  assign _T_1037__T_1119_data = io_bht_update_bits_taken;
  assign _T_1037__T_1119_addr = _T_1114 ^ _T_1117;
  assign _T_1037__T_1119_mask = 1'h1;
  assign _T_1037__T_1119_en = io_bht_update_valid & io_bht_update_bits_branch;
  assign _T_1 = pages_0 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205180.4]
  assign _T_2 = pages_1 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205181.4]
  assign _T_3 = pages_2 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205182.4]
  assign _T_4 = pages_3 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205183.4]
  assign _T_5 = pages_4 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205184.4]
  assign _T_6 = pages_5 == io_req_bits_addr[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205185.4]
  assign _T_11 = {_T_6,_T_5,_T_4,_T_3,_T_2,_T_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205190.4]
  assign pageHit = pageValid & _T_11; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@205191.4]
  assign _T_13 = idxs_0 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205193.4]
  assign _T_14 = idxs_1 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205194.4]
  assign _T_15 = idxs_2 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205195.4]
  assign _T_16 = idxs_3 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205196.4]
  assign _T_17 = idxs_4 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205197.4]
  assign _T_18 = idxs_5 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205198.4]
  assign _T_19 = idxs_6 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205199.4]
  assign _T_20 = idxs_7 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205200.4]
  assign _T_21 = idxs_8 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205201.4]
  assign _T_22 = idxs_9 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205202.4]
  assign _T_23 = idxs_10 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205203.4]
  assign _T_24 = idxs_11 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205204.4]
  assign _T_25 = idxs_12 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205205.4]
  assign _T_26 = idxs_13 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205206.4]
  assign _T_27 = idxs_14 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205207.4]
  assign _T_28 = idxs_15 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205208.4]
  assign _T_29 = idxs_16 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205209.4]
  assign _T_30 = idxs_17 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205210.4]
  assign _T_31 = idxs_18 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205211.4]
  assign _T_32 = idxs_19 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205212.4]
  assign _T_33 = idxs_20 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205213.4]
  assign _T_34 = idxs_21 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205214.4]
  assign _T_35 = idxs_22 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205215.4]
  assign _T_36 = idxs_23 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205216.4]
  assign _T_37 = idxs_24 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205217.4]
  assign _T_38 = idxs_25 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205218.4]
  assign _T_39 = idxs_26 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205219.4]
  assign _T_40 = idxs_27 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@205220.4]
  assign _T_46 = {_T_19,_T_18,_T_17,_T_16,_T_15,_T_14,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205226.4]
  assign _T_53 = {_T_26,_T_25,_T_24,_T_23,_T_22,_T_21,_T_20,_T_46}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205233.4]
  assign _T_59 = {_T_33,_T_32,_T_31,_T_30,_T_29,_T_28,_T_27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205239.4]
  assign _T_67 = {_T_40,_T_39,_T_38,_T_37,_T_36,_T_35,_T_34,_T_59,_T_53}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205247.4]
  assign idxHit = _T_67 & isValid; // @[BTB.scala 206:32:freechips.rocketchip.system.DefaultRV32Config.fir@205248.4]
  assign _T_69 = pages_0 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205250.4]
  assign _T_70 = pages_1 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205251.4]
  assign _T_71 = pages_2 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205252.4]
  assign _T_72 = pages_3 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205253.4]
  assign _T_73 = pages_4 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205254.4]
  assign _T_74 = pages_5 == r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@205255.4]
  assign _T_79 = {_T_74,_T_73,_T_72,_T_71,_T_70,_T_69}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205260.4]
  assign updatePageHit = pageValid & _T_79; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@205261.4]
  assign updateHit = r_btb_updatePipe_bits_prediction_entry < 5'h1c; // @[BTB.scala 220:48:freechips.rocketchip.system.DefaultRV32Config.fir@205262.4]
  assign useUpdatePageHit = |updatePageHit; // @[BTB.scala 222:40:freechips.rocketchip.system.DefaultRV32Config.fir@205263.4]
  assign usePageHit = |pageHit; // @[BTB.scala 223:28:freechips.rocketchip.system.DefaultRV32Config.fir@205264.4]
  assign doIdxPageRepl = ~useUpdatePageHit; // @[BTB.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@205265.4]
  assign _T_82 = {pageHit[4:0],pageHit[5]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205269.4]
  assign _T_83 = 8'h1 << nextPageRepl; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@205270.4]
  assign _T_84 = usePageHit ? 8'h0 : _T_83; // @[BTB.scala 226:70:freechips.rocketchip.system.DefaultRV32Config.fir@205271.4]
  assign _GEN_432 = {{2'd0}, _T_82}; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@205272.4]
  assign idxPageRepl = _GEN_432 | _T_84; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@205272.4]
  assign idxPageUpdateOH = useUpdatePageHit ? {{2'd0}, updatePageHit} : idxPageRepl; // @[BTB.scala 227:28:freechips.rocketchip.system.DefaultRV32Config.fir@205273.4]
  assign _T_87 = |idxPageUpdateOH[7:4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205276.4]
  assign _T_88 = idxPageUpdateOH[7:4] | idxPageUpdateOH[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205277.4]
  assign _T_91 = |_T_88[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205280.4]
  assign _T_92 = _T_88[3:2] | _T_88[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205281.4]
  assign idxPageUpdate = {_T_87,_T_91,_T_92[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205284.4]
  assign idxPageReplEn = doIdxPageRepl ? idxPageRepl : 8'h0; // @[BTB.scala 229:26:freechips.rocketchip.system.DefaultRV32Config.fir@205285.4]
  assign samePage = r_btb_updatePipe_bits_pc[31:14] == io_req_bits_addr[31:14]; // @[BTB.scala 231:45:freechips.rocketchip.system.DefaultRV32Config.fir@205288.4]
  assign _T_97 = ~samePage; // @[BTB.scala 232:23:freechips.rocketchip.system.DefaultRV32Config.fir@205289.4]
  assign _T_98 = ~usePageHit; // @[BTB.scala 232:36:freechips.rocketchip.system.DefaultRV32Config.fir@205290.4]
  assign doTgtPageRepl = _T_97 & _T_98; // @[BTB.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@205291.4]
  assign _T_101 = {idxPageUpdateOH[4:0],idxPageUpdateOH[5]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205294.4]
  assign tgtPageRepl = samePage ? idxPageUpdateOH : {{2'd0}, _T_101}; // @[BTB.scala 233:24:freechips.rocketchip.system.DefaultRV32Config.fir@205295.4]
  assign _T_102 = usePageHit ? 8'h0 : tgtPageRepl; // @[BTB.scala 234:45:freechips.rocketchip.system.DefaultRV32Config.fir@205296.4]
  assign _GEN_433 = {{2'd0}, pageHit}; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@205297.4]
  assign _T_103 = _GEN_433 | _T_102; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@205297.4]
  assign _T_106 = |_T_103[7:4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205300.4]
  assign _T_107 = _T_103[7:4] | _T_103[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205301.4]
  assign _T_110 = |_T_107[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205304.4]
  assign _T_111 = _T_107[3:2] | _T_107[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205305.4]
  assign tgtPageUpdate = {_T_106,_T_110,_T_111[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205308.4]
  assign tgtPageReplEn = doTgtPageRepl ? tgtPageRepl : 8'h0; // @[BTB.scala 235:26:freechips.rocketchip.system.DefaultRV32Config.fir@205309.4]
  assign _T_114 = doIdxPageRepl | doTgtPageRepl; // @[BTB.scala 237:46:freechips.rocketchip.system.DefaultRV32Config.fir@205310.4]
  assign _T_115 = r_btb_updatePipe_valid & _T_114; // @[BTB.scala 237:28:freechips.rocketchip.system.DefaultRV32Config.fir@205311.4]
  assign _T_116 = doIdxPageRepl & doTgtPageRepl; // @[BTB.scala 238:30:freechips.rocketchip.system.DefaultRV32Config.fir@205313.6]
  assign _T_117 = _T_116 ? 2'h2 : 2'h1; // @[BTB.scala 239:40:freechips.rocketchip.system.DefaultRV32Config.fir@205314.6]
  assign _GEN_434 = {{1'd0}, _T_117}; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@205315.6]
  assign _T_119 = nextPageRepl + _GEN_434; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@205316.6]
  assign _T_120 = _T_119 >= 3'h6; // @[BTB.scala 240:30:freechips.rocketchip.system.DefaultRV32Config.fir@205317.6]
  assign _T_135 = _T_123[24] ? _T_123[23] : _T_123[22]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205334.4]
  assign _T_136 = {_T_123[24],_T_135}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205335.4]
  assign _T_145 = _T_123[20] ? _T_123[19] : _T_123[18]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205344.4]
  assign _T_146 = {_T_123[20],_T_145}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205345.4]
  assign _T_152 = _T_123[17] ? _T_123[16] : _T_123[15]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205351.4]
  assign _T_153 = {_T_123[17],_T_152}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205352.4]
  assign _T_154 = _T_123[21] ? _T_146 : _T_153; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205353.4]
  assign _T_155 = {_T_123[21],_T_154}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205354.4]
  assign _T_156 = _T_123[25] ? {{1'd0}, _T_136} : _T_155; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205355.4]
  assign _T_157 = {_T_123[25],_T_156}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205356.4]
  assign _T_169 = _T_123[12] ? _T_123[11] : _T_123[10]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205368.4]
  assign _T_170 = {_T_123[12],_T_169}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205369.4]
  assign _T_176 = _T_123[9] ? _T_123[8] : _T_123[7]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205375.4]
  assign _T_177 = {_T_123[9],_T_176}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205376.4]
  assign _T_178 = _T_123[13] ? _T_170 : _T_177; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205377.4]
  assign _T_179 = {_T_123[13],_T_178}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205378.4]
  assign _T_188 = _T_123[5] ? _T_123[4] : _T_123[3]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205387.4]
  assign _T_189 = {_T_123[5],_T_188}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205388.4]
  assign _T_195 = _T_123[2] ? _T_123[1] : _T_123[0]; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205394.4]
  assign _T_196 = {_T_123[2],_T_195}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205395.4]
  assign _T_197 = _T_123[6] ? _T_189 : _T_196; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205396.4]
  assign _T_198 = {_T_123[6],_T_197}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205397.4]
  assign _T_199 = _T_123[14] ? _T_179 : _T_198; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205398.4]
  assign _T_200 = {_T_123[14],_T_199}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205399.4]
  assign _T_201 = _T_123[26] ? _T_157 : _T_200; // @[Replacement.scala 240:16:freechips.rocketchip.system.DefaultRV32Config.fir@205400.4]
  assign _T_202 = {_T_123[26],_T_201}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205401.4]
  assign waddr = updateHit ? r_btb_updatePipe_bits_prediction_entry : _T_202; // @[BTB.scala 244:18:freechips.rocketchip.system.DefaultRV32Config.fir@205402.4]
  assign _T_203 = r_respPipe_valid & r_respPipe_bits_taken; // @[BTB.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@205420.4]
  assign _T_204 = _T_203 | r_btb_updatePipe_valid; // @[BTB.scala 246:43:freechips.rocketchip.system.DefaultRV32Config.fir@205421.4]
  assign _T_205 = r_btb_updatePipe_valid ? waddr : r_respPipe_bits_entry; // @[BTB.scala 247:20:freechips.rocketchip.system.DefaultRV32Config.fir@205423.6]
  assign _T_208 = ~_T_205[4]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205426.6]
  assign _T_213 = ~_T_205[3]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205431.6]
  assign _T_218 = ~_T_205[1]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205436.6]
  assign _T_223 = ~_T_205[0]; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@205441.6]
  assign _T_224 = _T_218 ? _T_123[23] : _T_223; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205442.6]
  assign _T_228 = _T_218 ? _T_223 : _T_123[22]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205446.6]
  assign _T_230 = {_T_218,_T_224,_T_228}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205448.6]
  assign _T_231 = _T_213 ? _T_123[24:22] : _T_230; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205449.6]
  assign _T_234 = ~_T_205[2]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205452.6]
  assign _T_239 = ~_T_205[1]; // @[Replacement.scala 186:33:freechips.rocketchip.system.DefaultRV32Config.fir@205457.6]
  assign _T_244 = ~_T_205[0]; // @[Replacement.scala 208:7:freechips.rocketchip.system.DefaultRV32Config.fir@205462.6]
  assign _T_245 = _T_239 ? _T_123[19] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205463.6]
  assign _T_249 = _T_239 ? _T_244 : _T_123[18]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205467.6]
  assign _T_251 = {_T_239,_T_245,_T_249}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205469.6]
  assign _T_252 = _T_234 ? _T_123[20:18] : _T_251; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205470.6]
  assign _T_261 = _T_239 ? _T_123[16] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205479.6]
  assign _T_265 = _T_239 ? _T_244 : _T_123[15]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205483.6]
  assign _T_267 = {_T_239,_T_261,_T_265}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205485.6]
  assign _T_268 = _T_234 ? _T_267 : _T_123[17:15]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205486.6]
  assign _T_270 = {_T_234,_T_252,_T_268}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205488.6]
  assign _T_271 = _T_213 ? _T_270 : _T_123[21:15]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205489.6]
  assign _T_273 = {_T_213,_T_231,_T_271}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205491.6]
  assign _T_274 = _T_208 ? _T_123[25:15] : _T_273; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205492.6]
  assign _T_293 = _T_239 ? _T_123[11] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205511.6]
  assign _T_297 = _T_239 ? _T_244 : _T_123[10]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205515.6]
  assign _T_299 = {_T_239,_T_293,_T_297}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205517.6]
  assign _T_300 = _T_234 ? _T_123[12:10] : _T_299; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205518.6]
  assign _T_309 = _T_239 ? _T_123[8] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205527.6]
  assign _T_313 = _T_239 ? _T_244 : _T_123[7]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205531.6]
  assign _T_315 = {_T_239,_T_309,_T_313}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205533.6]
  assign _T_316 = _T_234 ? _T_315 : _T_123[9:7]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205534.6]
  assign _T_318 = {_T_234,_T_300,_T_316}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205536.6]
  assign _T_319 = _T_213 ? _T_123[13:7] : _T_318; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205537.6]
  assign _T_333 = _T_239 ? _T_123[4] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205551.6]
  assign _T_337 = _T_239 ? _T_244 : _T_123[3]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205555.6]
  assign _T_339 = {_T_239,_T_333,_T_337}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205557.6]
  assign _T_340 = _T_234 ? _T_123[5:3] : _T_339; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205558.6]
  assign _T_349 = _T_239 ? _T_123[1] : _T_244; // @[Replacement.scala 193:16:freechips.rocketchip.system.DefaultRV32Config.fir@205567.6]
  assign _T_353 = _T_239 ? _T_244 : _T_123[0]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205571.6]
  assign _T_355 = {_T_239,_T_349,_T_353}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205573.6]
  assign _T_356 = _T_234 ? _T_355 : _T_123[2:0]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205574.6]
  assign _T_358 = {_T_234,_T_340,_T_356}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205576.6]
  assign _T_359 = _T_213 ? _T_358 : _T_123[6:0]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205577.6]
  assign _T_361 = {_T_213,_T_319,_T_359}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205579.6]
  assign _T_362 = _T_208 ? _T_361 : _T_123[14:0]; // @[Replacement.scala 196:16:freechips.rocketchip.system.DefaultRV32Config.fir@205580.6]
  assign _T_364 = {_T_208,_T_274,_T_362}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205582.6]
  assign _T_365 = 32'h1 << waddr; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@205586.6]
  assign _T_368 = idxPageUpdate + 3'h1; // @[BTB.scala 254:38:freechips.rocketchip.system.DefaultRV32Config.fir@205591.6]
  assign _GEN_435 = {{4'd0}, isValid}; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@205595.6]
  assign _T_369 = _GEN_435 | _T_365; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@205595.6]
  assign _T_370 = ~_T_365; // @[BTB.scala 257:73:freechips.rocketchip.system.DefaultRV32Config.fir@205596.6]
  assign _T_371 = _GEN_435 & _T_370; // @[BTB.scala 257:71:freechips.rocketchip.system.DefaultRV32Config.fir@205597.6]
  assign _T_372 = r_btb_updatePipe_bits_isValid ? _T_369 : _T_371; // @[BTB.scala 257:19:freechips.rocketchip.system.DefaultRV32Config.fir@205598.6]
  assign _T_375 = ~idxPageUpdate[0]; // @[BTB.scala 262:25:freechips.rocketchip.system.DefaultRV32Config.fir@205603.6]
  assign _T_376 = _T_375 ? idxPageReplEn : tgtPageReplEn; // @[BTB.scala 268:24:freechips.rocketchip.system.DefaultRV32Config.fir@205604.6]
  assign _T_383 = _T_375 ? tgtPageReplEn : idxPageReplEn; // @[BTB.scala 270:24:freechips.rocketchip.system.DefaultRV32Config.fir@205620.6]
  assign _GEN_437 = {{2'd0}, pageValid}; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@205636.6]
  assign _T_390 = _GEN_437 | tgtPageReplEn; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@205636.6]
  assign _T_391 = _T_390 | idxPageReplEn; // @[BTB.scala 272:44:freechips.rocketchip.system.DefaultRV32Config.fir@205637.6]
  assign _GEN_338 = r_btb_updatePipe_valid ? _T_372 : {{4'd0}, isValid}; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@205585.4]
  assign _GEN_373 = r_btb_updatePipe_valid ? _T_391 : {{2'd0}, pageValid}; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@205585.4]
  assign _T_392 = {pageHit, 1'h0}; // @[BTB.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@205640.4]
  assign _T_421 = idxHit[0] ? idxPages_0 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205669.4]
  assign _T_422 = idxHit[1] ? idxPages_1 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205670.4]
  assign _T_423 = idxHit[2] ? idxPages_2 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205671.4]
  assign _T_424 = idxHit[3] ? idxPages_3 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205672.4]
  assign _T_425 = idxHit[4] ? idxPages_4 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205673.4]
  assign _T_426 = idxHit[5] ? idxPages_5 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205674.4]
  assign _T_427 = idxHit[6] ? idxPages_6 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205675.4]
  assign _T_428 = idxHit[7] ? idxPages_7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205676.4]
  assign _T_429 = idxHit[8] ? idxPages_8 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205677.4]
  assign _T_430 = idxHit[9] ? idxPages_9 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205678.4]
  assign _T_431 = idxHit[10] ? idxPages_10 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205679.4]
  assign _T_432 = idxHit[11] ? idxPages_11 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205680.4]
  assign _T_433 = idxHit[12] ? idxPages_12 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205681.4]
  assign _T_434 = idxHit[13] ? idxPages_13 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205682.4]
  assign _T_435 = idxHit[14] ? idxPages_14 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205683.4]
  assign _T_436 = idxHit[15] ? idxPages_15 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205684.4]
  assign _T_437 = idxHit[16] ? idxPages_16 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205685.4]
  assign _T_438 = idxHit[17] ? idxPages_17 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205686.4]
  assign _T_439 = idxHit[18] ? idxPages_18 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205687.4]
  assign _T_440 = idxHit[19] ? idxPages_19 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205688.4]
  assign _T_441 = idxHit[20] ? idxPages_20 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205689.4]
  assign _T_442 = idxHit[21] ? idxPages_21 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205690.4]
  assign _T_443 = idxHit[22] ? idxPages_22 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205691.4]
  assign _T_444 = idxHit[23] ? idxPages_23 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205692.4]
  assign _T_445 = idxHit[24] ? idxPages_24 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205693.4]
  assign _T_446 = idxHit[25] ? idxPages_25 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205694.4]
  assign _T_447 = idxHit[26] ? idxPages_26 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205695.4]
  assign _T_448 = idxHit[27] ? idxPages_27 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205696.4]
  assign _T_449 = _T_421 | _T_422; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205697.4]
  assign _T_450 = _T_449 | _T_423; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205698.4]
  assign _T_451 = _T_450 | _T_424; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205699.4]
  assign _T_452 = _T_451 | _T_425; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205700.4]
  assign _T_453 = _T_452 | _T_426; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205701.4]
  assign _T_454 = _T_453 | _T_427; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205702.4]
  assign _T_455 = _T_454 | _T_428; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205703.4]
  assign _T_456 = _T_455 | _T_429; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205704.4]
  assign _T_457 = _T_456 | _T_430; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205705.4]
  assign _T_458 = _T_457 | _T_431; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205706.4]
  assign _T_459 = _T_458 | _T_432; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205707.4]
  assign _T_460 = _T_459 | _T_433; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205708.4]
  assign _T_461 = _T_460 | _T_434; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205709.4]
  assign _T_462 = _T_461 | _T_435; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205710.4]
  assign _T_463 = _T_462 | _T_436; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205711.4]
  assign _T_464 = _T_463 | _T_437; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205712.4]
  assign _T_465 = _T_464 | _T_438; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205713.4]
  assign _T_466 = _T_465 | _T_439; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205714.4]
  assign _T_467 = _T_466 | _T_440; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205715.4]
  assign _T_468 = _T_467 | _T_441; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205716.4]
  assign _T_469 = _T_468 | _T_442; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205717.4]
  assign _T_470 = _T_469 | _T_443; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205718.4]
  assign _T_471 = _T_470 | _T_444; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205719.4]
  assign _T_472 = _T_471 | _T_445; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205720.4]
  assign _T_473 = _T_472 | _T_446; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205721.4]
  assign _T_474 = _T_473 | _T_447; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205722.4]
  assign _T_475 = _T_474 | _T_448; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205723.4]
  assign _T_477 = _T_392 >> _T_475; // @[BTB.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@205726.4]
  assign _T_507 = idxHit[0] ? tgtPages_0 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205758.4]
  assign _T_508 = idxHit[1] ? tgtPages_1 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205759.4]
  assign _T_509 = idxHit[2] ? tgtPages_2 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205760.4]
  assign _T_510 = idxHit[3] ? tgtPages_3 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205761.4]
  assign _T_511 = idxHit[4] ? tgtPages_4 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205762.4]
  assign _T_512 = idxHit[5] ? tgtPages_5 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205763.4]
  assign _T_513 = idxHit[6] ? tgtPages_6 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205764.4]
  assign _T_514 = idxHit[7] ? tgtPages_7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205765.4]
  assign _T_515 = idxHit[8] ? tgtPages_8 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205766.4]
  assign _T_516 = idxHit[9] ? tgtPages_9 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205767.4]
  assign _T_517 = idxHit[10] ? tgtPages_10 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205768.4]
  assign _T_518 = idxHit[11] ? tgtPages_11 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205769.4]
  assign _T_519 = idxHit[12] ? tgtPages_12 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205770.4]
  assign _T_520 = idxHit[13] ? tgtPages_13 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205771.4]
  assign _T_521 = idxHit[14] ? tgtPages_14 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205772.4]
  assign _T_522 = idxHit[15] ? tgtPages_15 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205773.4]
  assign _T_523 = idxHit[16] ? tgtPages_16 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205774.4]
  assign _T_524 = idxHit[17] ? tgtPages_17 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205775.4]
  assign _T_525 = idxHit[18] ? tgtPages_18 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205776.4]
  assign _T_526 = idxHit[19] ? tgtPages_19 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205777.4]
  assign _T_527 = idxHit[20] ? tgtPages_20 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205778.4]
  assign _T_528 = idxHit[21] ? tgtPages_21 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205779.4]
  assign _T_529 = idxHit[22] ? tgtPages_22 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205780.4]
  assign _T_530 = idxHit[23] ? tgtPages_23 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205781.4]
  assign _T_531 = idxHit[24] ? tgtPages_24 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205782.4]
  assign _T_532 = idxHit[25] ? tgtPages_25 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205783.4]
  assign _T_533 = idxHit[26] ? tgtPages_26 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205784.4]
  assign _T_534 = idxHit[27] ? tgtPages_27 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205785.4]
  assign _T_535 = _T_507 | _T_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205786.4]
  assign _T_536 = _T_535 | _T_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205787.4]
  assign _T_537 = _T_536 | _T_510; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205788.4]
  assign _T_538 = _T_537 | _T_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205789.4]
  assign _T_539 = _T_538 | _T_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205790.4]
  assign _T_540 = _T_539 | _T_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205791.4]
  assign _T_541 = _T_540 | _T_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205792.4]
  assign _T_542 = _T_541 | _T_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205793.4]
  assign _T_543 = _T_542 | _T_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205794.4]
  assign _T_544 = _T_543 | _T_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205795.4]
  assign _T_545 = _T_544 | _T_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205796.4]
  assign _T_546 = _T_545 | _T_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205797.4]
  assign _T_547 = _T_546 | _T_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205798.4]
  assign _T_548 = _T_547 | _T_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205799.4]
  assign _T_549 = _T_548 | _T_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205800.4]
  assign _T_550 = _T_549 | _T_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205801.4]
  assign _T_551 = _T_550 | _T_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205802.4]
  assign _T_552 = _T_551 | _T_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205803.4]
  assign _T_553 = _T_552 | _T_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205804.4]
  assign _T_554 = _T_553 | _T_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205805.4]
  assign _T_555 = _T_554 | _T_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205806.4]
  assign _T_556 = _T_555 | _T_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205807.4]
  assign _T_557 = _T_556 | _T_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205808.4]
  assign _T_558 = _T_557 | _T_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205809.4]
  assign _T_559 = _T_558 | _T_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205810.4]
  assign _T_560 = _T_559 | _T_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205811.4]
  assign _T_561 = _T_560 | _T_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205812.4]
  assign _T_591 = idxHit[0] ? tgts_0 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205843.4]
  assign _T_592 = idxHit[1] ? tgts_1 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205844.4]
  assign _T_593 = idxHit[2] ? tgts_2 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205845.4]
  assign _T_594 = idxHit[3] ? tgts_3 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205846.4]
  assign _T_595 = idxHit[4] ? tgts_4 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205847.4]
  assign _T_596 = idxHit[5] ? tgts_5 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205848.4]
  assign _T_597 = idxHit[6] ? tgts_6 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205849.4]
  assign _T_598 = idxHit[7] ? tgts_7 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205850.4]
  assign _T_599 = idxHit[8] ? tgts_8 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205851.4]
  assign _T_600 = idxHit[9] ? tgts_9 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205852.4]
  assign _T_601 = idxHit[10] ? tgts_10 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205853.4]
  assign _T_602 = idxHit[11] ? tgts_11 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205854.4]
  assign _T_603 = idxHit[12] ? tgts_12 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205855.4]
  assign _T_604 = idxHit[13] ? tgts_13 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205856.4]
  assign _T_605 = idxHit[14] ? tgts_14 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205857.4]
  assign _T_606 = idxHit[15] ? tgts_15 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205858.4]
  assign _T_607 = idxHit[16] ? tgts_16 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205859.4]
  assign _T_608 = idxHit[17] ? tgts_17 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205860.4]
  assign _T_609 = idxHit[18] ? tgts_18 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205861.4]
  assign _T_610 = idxHit[19] ? tgts_19 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205862.4]
  assign _T_611 = idxHit[20] ? tgts_20 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205863.4]
  assign _T_612 = idxHit[21] ? tgts_21 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205864.4]
  assign _T_613 = idxHit[22] ? tgts_22 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205865.4]
  assign _T_614 = idxHit[23] ? tgts_23 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205866.4]
  assign _T_615 = idxHit[24] ? tgts_24 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205867.4]
  assign _T_616 = idxHit[25] ? tgts_25 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205868.4]
  assign _T_617 = idxHit[26] ? tgts_26 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205869.4]
  assign _T_618 = idxHit[27] ? tgts_27 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205870.4]
  assign _T_619 = _T_591 | _T_592; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205871.4]
  assign _T_620 = _T_619 | _T_593; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205872.4]
  assign _T_621 = _T_620 | _T_594; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205873.4]
  assign _T_622 = _T_621 | _T_595; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205874.4]
  assign _T_623 = _T_622 | _T_596; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205875.4]
  assign _T_624 = _T_623 | _T_597; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205876.4]
  assign _T_625 = _T_624 | _T_598; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205877.4]
  assign _T_626 = _T_625 | _T_599; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205878.4]
  assign _T_627 = _T_626 | _T_600; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205879.4]
  assign _T_628 = _T_627 | _T_601; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205880.4]
  assign _T_629 = _T_628 | _T_602; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205881.4]
  assign _T_630 = _T_629 | _T_603; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205882.4]
  assign _T_631 = _T_630 | _T_604; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205883.4]
  assign _T_632 = _T_631 | _T_605; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205884.4]
  assign _T_633 = _T_632 | _T_606; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205885.4]
  assign _T_634 = _T_633 | _T_607; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205886.4]
  assign _T_635 = _T_634 | _T_608; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205887.4]
  assign _T_636 = _T_635 | _T_609; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205888.4]
  assign _T_637 = _T_636 | _T_610; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205889.4]
  assign _T_638 = _T_637 | _T_611; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205890.4]
  assign _T_639 = _T_638 | _T_612; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205891.4]
  assign _T_640 = _T_639 | _T_613; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205892.4]
  assign _T_641 = _T_640 | _T_614; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205893.4]
  assign _T_642 = _T_641 | _T_615; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205894.4]
  assign _T_643 = _T_642 | _T_616; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205895.4]
  assign _T_644 = _T_643 | _T_617; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205896.4]
  assign _T_645 = _T_644 | _T_618; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205897.4]
  assign _T_647 = {_T_645, 1'h0}; // @[BTB.scala 277:82:freechips.rocketchip.system.DefaultRV32Config.fir@205900.4]
  assign _GEN_375 = 3'h1 == _T_561 ? pages_1 : pages_0; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _GEN_376 = 3'h2 == _T_561 ? pages_2 : _GEN_375; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _GEN_377 = 3'h3 == _T_561 ? pages_3 : _GEN_376; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _GEN_378 = 3'h4 == _T_561 ? pages_4 : _GEN_377; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _GEN_379 = 3'h5 == _T_561 ? pages_5 : _GEN_378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _T_648 = {_GEN_379,_T_647}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205901.4]
  assign _T_651 = |idxHit[27:16]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205905.4]
  assign _GEN_438 = {{4'd0}, idxHit[27:16]}; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205906.4]
  assign _T_652 = _GEN_438 | idxHit[15:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205906.4]
  assign _T_655 = |_T_652[15:8]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205909.4]
  assign _T_656 = _T_652[15:8] | _T_652[7:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205910.4]
  assign _T_659 = |_T_656[7:4]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205913.4]
  assign _T_660 = _T_656[7:4] | _T_656[3:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205914.4]
  assign _T_663 = |_T_660[3:2]; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@205917.4]
  assign _T_664 = _T_660[3:2] | _T_660[1:0]; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@205918.4]
  assign _T_668 = {_T_655,_T_659,_T_663,_T_664[1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@205922.4]
  assign _T_698 = idxHit[0] & brIdx_0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205953.4]
  assign _T_699 = idxHit[1] & brIdx_1; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205954.4]
  assign _T_700 = idxHit[2] & brIdx_2; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205955.4]
  assign _T_701 = idxHit[3] & brIdx_3; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205956.4]
  assign _T_702 = idxHit[4] & brIdx_4; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205957.4]
  assign _T_703 = idxHit[5] & brIdx_5; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205958.4]
  assign _T_704 = idxHit[6] & brIdx_6; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205959.4]
  assign _T_705 = idxHit[7] & brIdx_7; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205960.4]
  assign _T_706 = idxHit[8] & brIdx_8; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205961.4]
  assign _T_707 = idxHit[9] & brIdx_9; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205962.4]
  assign _T_708 = idxHit[10] & brIdx_10; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205963.4]
  assign _T_709 = idxHit[11] & brIdx_11; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205964.4]
  assign _T_710 = idxHit[12] & brIdx_12; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205965.4]
  assign _T_711 = idxHit[13] & brIdx_13; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205966.4]
  assign _T_712 = idxHit[14] & brIdx_14; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205967.4]
  assign _T_713 = idxHit[15] & brIdx_15; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205968.4]
  assign _T_714 = idxHit[16] & brIdx_16; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205969.4]
  assign _T_715 = idxHit[17] & brIdx_17; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205970.4]
  assign _T_716 = idxHit[18] & brIdx_18; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205971.4]
  assign _T_717 = idxHit[19] & brIdx_19; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205972.4]
  assign _T_718 = idxHit[20] & brIdx_20; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205973.4]
  assign _T_719 = idxHit[21] & brIdx_21; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205974.4]
  assign _T_720 = idxHit[22] & brIdx_22; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205975.4]
  assign _T_721 = idxHit[23] & brIdx_23; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205976.4]
  assign _T_722 = idxHit[24] & brIdx_24; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205977.4]
  assign _T_723 = idxHit[25] & brIdx_25; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205978.4]
  assign _T_724 = idxHit[26] & brIdx_26; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205979.4]
  assign _T_725 = idxHit[27] & brIdx_27; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205980.4]
  assign _T_726 = _T_698 | _T_699; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205981.4]
  assign _T_727 = _T_726 | _T_700; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205982.4]
  assign _T_728 = _T_727 | _T_701; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205983.4]
  assign _T_729 = _T_728 | _T_702; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205984.4]
  assign _T_730 = _T_729 | _T_703; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205985.4]
  assign _T_731 = _T_730 | _T_704; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205986.4]
  assign _T_732 = _T_731 | _T_705; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205987.4]
  assign _T_733 = _T_732 | _T_706; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205988.4]
  assign _T_734 = _T_733 | _T_707; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205989.4]
  assign _T_735 = _T_734 | _T_708; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205990.4]
  assign _T_736 = _T_735 | _T_709; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205991.4]
  assign _T_737 = _T_736 | _T_710; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205992.4]
  assign _T_738 = _T_737 | _T_711; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205993.4]
  assign _T_739 = _T_738 | _T_712; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205994.4]
  assign _T_740 = _T_739 | _T_713; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205995.4]
  assign _T_741 = _T_740 | _T_714; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205996.4]
  assign _T_742 = _T_741 | _T_715; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205997.4]
  assign _T_743 = _T_742 | _T_716; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205998.4]
  assign _T_744 = _T_743 | _T_717; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@205999.4]
  assign _T_745 = _T_744 | _T_718; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206000.4]
  assign _T_746 = _T_745 | _T_719; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206001.4]
  assign _T_747 = _T_746 | _T_720; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206002.4]
  assign _T_748 = _T_747 | _T_721; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206003.4]
  assign _T_749 = _T_748 | _T_722; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206004.4]
  assign _T_750 = _T_749 | _T_723; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206005.4]
  assign _T_751 = _T_750 | _T_724; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@206006.4]
  assign _T_855 = idxHit[1] | idxHit[2]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206115.4]
  assign _T_857 = idxHit[1] & idxHit[2]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206117.4]
  assign _T_859 = idxHit[0] | _T_855; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206119.4]
  assign _T_861 = idxHit[0] & _T_855; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206121.4]
  assign _T_862 = _T_857 | _T_861; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206122.4]
  assign _T_869 = idxHit[3] | idxHit[4]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206129.4]
  assign _T_871 = idxHit[3] & idxHit[4]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206131.4]
  assign _T_878 = idxHit[5] | idxHit[6]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206138.4]
  assign _T_880 = idxHit[5] & idxHit[6]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206140.4]
  assign _T_882 = _T_869 | _T_878; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206142.4]
  assign _T_883 = _T_871 | _T_880; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206143.4]
  assign _T_884 = _T_869 & _T_878; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206144.4]
  assign _T_885 = _T_883 | _T_884; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206145.4]
  assign _T_886 = _T_859 | _T_882; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206146.4]
  assign _T_887 = _T_862 | _T_885; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206147.4]
  assign _T_888 = _T_859 & _T_882; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206148.4]
  assign _T_889 = _T_887 | _T_888; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206149.4]
  assign _T_899 = idxHit[8] | idxHit[9]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206159.4]
  assign _T_901 = idxHit[8] & idxHit[9]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206161.4]
  assign _T_903 = idxHit[7] | _T_899; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206163.4]
  assign _T_905 = idxHit[7] & _T_899; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206165.4]
  assign _T_906 = _T_901 | _T_905; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206166.4]
  assign _T_913 = idxHit[10] | idxHit[11]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206173.4]
  assign _T_915 = idxHit[10] & idxHit[11]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206175.4]
  assign _T_922 = idxHit[12] | idxHit[13]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206182.4]
  assign _T_924 = idxHit[12] & idxHit[13]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206184.4]
  assign _T_926 = _T_913 | _T_922; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206186.4]
  assign _T_927 = _T_915 | _T_924; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206187.4]
  assign _T_928 = _T_913 & _T_922; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206188.4]
  assign _T_929 = _T_927 | _T_928; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206189.4]
  assign _T_930 = _T_903 | _T_926; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206190.4]
  assign _T_931 = _T_906 | _T_929; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206191.4]
  assign _T_932 = _T_903 & _T_926; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206192.4]
  assign _T_933 = _T_931 | _T_932; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206193.4]
  assign _T_934 = _T_886 | _T_930; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206194.4]
  assign _T_935 = _T_889 | _T_933; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206195.4]
  assign _T_936 = _T_886 & _T_930; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206196.4]
  assign _T_937 = _T_935 | _T_936; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206197.4]
  assign _T_948 = idxHit[15] | idxHit[16]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206208.4]
  assign _T_950 = idxHit[15] & idxHit[16]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206210.4]
  assign _T_952 = idxHit[14] | _T_948; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206212.4]
  assign _T_954 = idxHit[14] & _T_948; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206214.4]
  assign _T_955 = _T_950 | _T_954; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206215.4]
  assign _T_962 = idxHit[17] | idxHit[18]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206222.4]
  assign _T_964 = idxHit[17] & idxHit[18]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206224.4]
  assign _T_971 = idxHit[19] | idxHit[20]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206231.4]
  assign _T_973 = idxHit[19] & idxHit[20]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206233.4]
  assign _T_975 = _T_962 | _T_971; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206235.4]
  assign _T_976 = _T_964 | _T_973; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206236.4]
  assign _T_977 = _T_962 & _T_971; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206237.4]
  assign _T_978 = _T_976 | _T_977; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206238.4]
  assign _T_979 = _T_952 | _T_975; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206239.4]
  assign _T_980 = _T_955 | _T_978; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206240.4]
  assign _T_981 = _T_952 & _T_975; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206241.4]
  assign _T_982 = _T_980 | _T_981; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206242.4]
  assign _T_992 = idxHit[22] | idxHit[23]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206252.4]
  assign _T_994 = idxHit[22] & idxHit[23]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206254.4]
  assign _T_996 = idxHit[21] | _T_992; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206256.4]
  assign _T_998 = idxHit[21] & _T_992; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206258.4]
  assign _T_999 = _T_994 | _T_998; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206259.4]
  assign _T_1006 = idxHit[24] | idxHit[25]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206266.4]
  assign _T_1008 = idxHit[24] & idxHit[25]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206268.4]
  assign _T_1015 = idxHit[26] | idxHit[27]; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206275.4]
  assign _T_1017 = idxHit[26] & idxHit[27]; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206277.4]
  assign _T_1019 = _T_1006 | _T_1015; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206279.4]
  assign _T_1020 = _T_1008 | _T_1017; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206280.4]
  assign _T_1021 = _T_1006 & _T_1015; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206281.4]
  assign _T_1022 = _T_1020 | _T_1021; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206282.4]
  assign _T_1023 = _T_996 | _T_1019; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206283.4]
  assign _T_1024 = _T_999 | _T_1022; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206284.4]
  assign _T_1025 = _T_996 & _T_1019; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206285.4]
  assign _T_1026 = _T_1024 | _T_1025; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206286.4]
  assign _T_1027 = _T_979 | _T_1023; // @[Misc.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@206287.4]
  assign _T_1028 = _T_982 | _T_1026; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206288.4]
  assign _T_1029 = _T_979 & _T_1023; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206289.4]
  assign _T_1030 = _T_1028 | _T_1029; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206290.4]
  assign _T_1032 = _T_937 | _T_1030; // @[Misc.scala 182:37:freechips.rocketchip.system.DefaultRV32Config.fir@206292.4]
  assign _T_1033 = _T_934 & _T_1027; // @[Misc.scala 182:61:freechips.rocketchip.system.DefaultRV32Config.fir@206293.4]
  assign _T_1034 = _T_1032 | _T_1033; // @[Misc.scala 182:49:freechips.rocketchip.system.DefaultRV32Config.fir@206294.4]
  assign _T_1035 = ~idxHit; // @[BTB.scala 285:26:freechips.rocketchip.system.DefaultRV32Config.fir@206296.6]
  assign _T_1036 = isValid & _T_1035; // @[BTB.scala 285:24:freechips.rocketchip.system.DefaultRV32Config.fir@206297.6]
  assign _GEN_380 = _T_1034 ? {{4'd0}, _T_1036} : _GEN_338; // @[BTB.scala 284:37:freechips.rocketchip.system.DefaultRV32Config.fir@206295.4]
  assign _GEN_381 = io_flush ? 32'h0 : _GEN_380; // @[BTB.scala 287:19:freechips.rocketchip.system.DefaultRV32Config.fir@206300.4]
  assign _T_1039 = cfiType_0 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206305.4]
  assign _T_1040 = cfiType_1 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206306.4]
  assign _T_1041 = cfiType_2 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206307.4]
  assign _T_1042 = cfiType_3 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206308.4]
  assign _T_1043 = cfiType_4 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206309.4]
  assign _T_1044 = cfiType_5 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206310.4]
  assign _T_1045 = cfiType_6 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206311.4]
  assign _T_1046 = cfiType_7 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206312.4]
  assign _T_1047 = cfiType_8 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206313.4]
  assign _T_1048 = cfiType_9 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206314.4]
  assign _T_1049 = cfiType_10 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206315.4]
  assign _T_1050 = cfiType_11 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206316.4]
  assign _T_1051 = cfiType_12 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206317.4]
  assign _T_1052 = cfiType_13 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206318.4]
  assign _T_1053 = cfiType_14 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206319.4]
  assign _T_1054 = cfiType_15 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206320.4]
  assign _T_1055 = cfiType_16 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206321.4]
  assign _T_1056 = cfiType_17 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206322.4]
  assign _T_1057 = cfiType_18 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206323.4]
  assign _T_1058 = cfiType_19 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206324.4]
  assign _T_1059 = cfiType_20 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206325.4]
  assign _T_1060 = cfiType_21 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206326.4]
  assign _T_1061 = cfiType_22 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206327.4]
  assign _T_1062 = cfiType_23 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206328.4]
  assign _T_1063 = cfiType_24 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206329.4]
  assign _T_1064 = cfiType_25 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206330.4]
  assign _T_1065 = cfiType_26 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206331.4]
  assign _T_1066 = cfiType_27 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@206332.4]
  assign _T_1072 = {_T_1045,_T_1044,_T_1043,_T_1042,_T_1041,_T_1040,_T_1039}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206338.4]
  assign _T_1079 = {_T_1052,_T_1051,_T_1050,_T_1049,_T_1048,_T_1047,_T_1046,_T_1072}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206345.4]
  assign _T_1085 = {_T_1059,_T_1058,_T_1057,_T_1056,_T_1055,_T_1054,_T_1053}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206351.4]
  assign _T_1093 = {_T_1066,_T_1065,_T_1064,_T_1063,_T_1062,_T_1061,_T_1060,_T_1085,_T_1079}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206359.4]
  assign _T_1094 = idxHit & _T_1093; // @[BTB.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@206360.4]
  assign _T_1095 = |_T_1094; // @[BTB.scala 293:72:freechips.rocketchip.system.DefaultRV32Config.fir@206361.4]
  assign _GEN_439 = {{7'd0}, io_req_bits_addr[12:11]}; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206368.4]
  assign _T_1101 = io_req_bits_addr[10:2] ^ _GEN_439; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206368.4]
  assign _T_1102 = 8'hdd * _T_1038; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@206369.4]
  assign _T_1104 = {_T_1102[7:5], 6'h0}; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@206371.4]
  assign _T_1109 = {io_bht_advance_bits_bht_value,_T_1038[7:1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206379.6]
  assign _GEN_440 = {{7'd0}, io_bht_update_bits_pc[12:11]}; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206388.8]
  assign _T_1114 = io_bht_update_bits_pc[10:2] ^ _GEN_440; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@206388.8]
  assign _T_1115 = 8'hdd * io_bht_update_bits_prediction_history; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@206389.8]
  assign _T_1117 = {_T_1115[7:5], 6'h0}; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@206391.8]
  assign _T_1121 = {io_bht_update_bits_taken,io_bht_update_bits_prediction_history[7:1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206397.10]
  assign _T_1096_value = _T_1037__T_1106_data; // @[BTB.scala 92:19:freechips.rocketchip.system.DefaultRV32Config.fir@206362.4 BTB.scala 93:15:freechips.rocketchip.system.DefaultRV32Config.fir@206374.4]
  assign _T_1123 = ~_T_1096_value; // @[BTB.scala 308:11:freechips.rocketchip.system.DefaultRV32Config.fir@206407.4]
  assign _T_1124 = _T_1123 & _T_1095; // @[BTB.scala 308:22:freechips.rocketchip.system.DefaultRV32Config.fir@206408.4]
  assign _T_1128 = cfiType_0 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206416.4]
  assign _T_1129 = cfiType_1 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206417.4]
  assign _T_1130 = cfiType_2 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206418.4]
  assign _T_1131 = cfiType_3 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206419.4]
  assign _T_1132 = cfiType_4 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206420.4]
  assign _T_1133 = cfiType_5 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206421.4]
  assign _T_1134 = cfiType_6 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206422.4]
  assign _T_1135 = cfiType_7 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206423.4]
  assign _T_1136 = cfiType_8 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206424.4]
  assign _T_1137 = cfiType_9 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206425.4]
  assign _T_1138 = cfiType_10 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206426.4]
  assign _T_1139 = cfiType_11 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206427.4]
  assign _T_1140 = cfiType_12 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206428.4]
  assign _T_1141 = cfiType_13 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206429.4]
  assign _T_1142 = cfiType_14 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206430.4]
  assign _T_1143 = cfiType_15 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206431.4]
  assign _T_1144 = cfiType_16 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206432.4]
  assign _T_1145 = cfiType_17 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206433.4]
  assign _T_1146 = cfiType_18 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206434.4]
  assign _T_1147 = cfiType_19 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206435.4]
  assign _T_1148 = cfiType_20 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206436.4]
  assign _T_1149 = cfiType_21 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206437.4]
  assign _T_1150 = cfiType_22 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206438.4]
  assign _T_1151 = cfiType_23 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206439.4]
  assign _T_1152 = cfiType_24 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206440.4]
  assign _T_1153 = cfiType_25 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206441.4]
  assign _T_1154 = cfiType_26 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206442.4]
  assign _T_1155 = cfiType_27 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@206443.4]
  assign _T_1161 = {_T_1134,_T_1133,_T_1132,_T_1131,_T_1130,_T_1129,_T_1128}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206449.4]
  assign _T_1168 = {_T_1141,_T_1140,_T_1139,_T_1138,_T_1137,_T_1136,_T_1135,_T_1161}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206456.4]
  assign _T_1174 = {_T_1148,_T_1147,_T_1146,_T_1145,_T_1144,_T_1143,_T_1142}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206462.4]
  assign _T_1182 = {_T_1155,_T_1154,_T_1153,_T_1152,_T_1151,_T_1150,_T_1149,_T_1174,_T_1168}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@206470.4]
  assign _T_1183 = idxHit & _T_1182; // @[BTB.scala 314:26:freechips.rocketchip.system.DefaultRV32Config.fir@206471.4]
  assign _T_1184 = |_T_1183; // @[BTB.scala 314:67:freechips.rocketchip.system.DefaultRV32Config.fir@206472.4]
  assign _T_1185 = _T_1125 == 3'h0; // @[BTB.scala 55:29:freechips.rocketchip.system.DefaultRV32Config.fir@206473.4]
  assign _T_1186 = ~_T_1185; // @[BTB.scala 315:26:freechips.rocketchip.system.DefaultRV32Config.fir@206474.4]
  assign _GEN_399 = 3'h1 == _T_1126 ? _T_1127_1 : _T_1127_0; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign _GEN_400 = 3'h2 == _T_1126 ? _T_1127_2 : _GEN_399; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign _GEN_401 = 3'h3 == _T_1126 ? _T_1127_3 : _GEN_400; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign _GEN_402 = 3'h4 == _T_1126 ? _T_1127_4 : _GEN_401; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign _GEN_403 = 3'h5 == _T_1126 ? _T_1127_5 : _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
  assign _T_1189 = _T_1186 & _T_1184; // @[BTB.scala 317:24:freechips.rocketchip.system.DefaultRV32Config.fir@206479.4]
  assign _T_1190 = io_ras_update_bits_cfiType == 2'h2; // @[BTB.scala 321:40:freechips.rocketchip.system.DefaultRV32Config.fir@206484.6]
  assign _T_1191 = _T_1125 < 3'h6; // @[BTB.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@206486.8]
  assign _T_1193 = _T_1125 + 3'h1; // @[BTB.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@206489.10]
  assign _T_1194 = _T_1126 < 3'h5; // @[BTB.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@206492.8]
  assign _T_1197 = _T_1126 + 3'h1; // @[BTB.scala 45:62:freechips.rocketchip.system.DefaultRV32Config.fir@206495.8]
  assign _T_1198 = _T_1194 ? _T_1197 : 3'h0; // @[BTB.scala 45:22:freechips.rocketchip.system.DefaultRV32Config.fir@206496.8]
  assign _T_1199 = io_ras_update_bits_cfiType == 2'h3; // @[BTB.scala 323:46:freechips.rocketchip.system.DefaultRV32Config.fir@206501.8]
  assign _T_1203 = _T_1125 - 3'h1; // @[BTB.scala 51:20:freechips.rocketchip.system.DefaultRV32Config.fir@206507.12]
  assign _T_1204 = _T_1126 > 3'h0; // @[BTB.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@206509.12]
  assign _T_1207 = _T_1126 - 3'h1; // @[BTB.scala 52:50:freechips.rocketchip.system.DefaultRV32Config.fir@206512.12]
  assign io_resp_valid = _T_477[0]; // @[BTB.scala 275:17:freechips.rocketchip.system.DefaultRV32Config.fir@205728.4]
  assign io_resp_bits_taken = _T_1124 ? 1'h0 : 1'h1; // @[BTB.scala 276:22:freechips.rocketchip.system.DefaultRV32Config.fir@205729.4 BTB.scala 308:56:freechips.rocketchip.system.DefaultRV32Config.fir@206410.6]
  assign io_resp_bits_bridx = _T_751 | _T_725; // @[BTB.scala 279:22:freechips.rocketchip.system.DefaultRV32Config.fir@206010.4]
  assign io_resp_bits_target = _T_1189 ? _GEN_403 : _T_648; // @[BTB.scala 277:23:freechips.rocketchip.system.DefaultRV32Config.fir@205902.4 BTB.scala 318:27:freechips.rocketchip.system.DefaultRV32Config.fir@206481.6]
  assign io_resp_bits_entry = {_T_651,_T_668}; // @[BTB.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@205924.4]
  assign io_resp_bits_bht_history = _T_1038; // @[BTB.scala 309:22:freechips.rocketchip.system.DefaultRV32Config.fir@206412.4]
  assign io_resp_bits_bht_value = _T_1037__T_1106_data; // @[BTB.scala 309:22:freechips.rocketchip.system.DefaultRV32Config.fir@206412.4]
  assign io_ras_head_valid = ~_T_1185; // @[BTB.scala 315:23:freechips.rocketchip.system.DefaultRV32Config.fir@206475.4]
  assign io_ras_head_bits = 3'h5 == _T_1126 ? _T_1127_5 : _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@206476.4]
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
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    _T_1037[initvar] = _RAND_0[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  idxs_0 = _RAND_1[12:0];
  _RAND_2 = {1{`RANDOM}};
  idxs_1 = _RAND_2[12:0];
  _RAND_3 = {1{`RANDOM}};
  idxs_2 = _RAND_3[12:0];
  _RAND_4 = {1{`RANDOM}};
  idxs_3 = _RAND_4[12:0];
  _RAND_5 = {1{`RANDOM}};
  idxs_4 = _RAND_5[12:0];
  _RAND_6 = {1{`RANDOM}};
  idxs_5 = _RAND_6[12:0];
  _RAND_7 = {1{`RANDOM}};
  idxs_6 = _RAND_7[12:0];
  _RAND_8 = {1{`RANDOM}};
  idxs_7 = _RAND_8[12:0];
  _RAND_9 = {1{`RANDOM}};
  idxs_8 = _RAND_9[12:0];
  _RAND_10 = {1{`RANDOM}};
  idxs_9 = _RAND_10[12:0];
  _RAND_11 = {1{`RANDOM}};
  idxs_10 = _RAND_11[12:0];
  _RAND_12 = {1{`RANDOM}};
  idxs_11 = _RAND_12[12:0];
  _RAND_13 = {1{`RANDOM}};
  idxs_12 = _RAND_13[12:0];
  _RAND_14 = {1{`RANDOM}};
  idxs_13 = _RAND_14[12:0];
  _RAND_15 = {1{`RANDOM}};
  idxs_14 = _RAND_15[12:0];
  _RAND_16 = {1{`RANDOM}};
  idxs_15 = _RAND_16[12:0];
  _RAND_17 = {1{`RANDOM}};
  idxs_16 = _RAND_17[12:0];
  _RAND_18 = {1{`RANDOM}};
  idxs_17 = _RAND_18[12:0];
  _RAND_19 = {1{`RANDOM}};
  idxs_18 = _RAND_19[12:0];
  _RAND_20 = {1{`RANDOM}};
  idxs_19 = _RAND_20[12:0];
  _RAND_21 = {1{`RANDOM}};
  idxs_20 = _RAND_21[12:0];
  _RAND_22 = {1{`RANDOM}};
  idxs_21 = _RAND_22[12:0];
  _RAND_23 = {1{`RANDOM}};
  idxs_22 = _RAND_23[12:0];
  _RAND_24 = {1{`RANDOM}};
  idxs_23 = _RAND_24[12:0];
  _RAND_25 = {1{`RANDOM}};
  idxs_24 = _RAND_25[12:0];
  _RAND_26 = {1{`RANDOM}};
  idxs_25 = _RAND_26[12:0];
  _RAND_27 = {1{`RANDOM}};
  idxs_26 = _RAND_27[12:0];
  _RAND_28 = {1{`RANDOM}};
  idxs_27 = _RAND_28[12:0];
  _RAND_29 = {1{`RANDOM}};
  idxPages_0 = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  idxPages_1 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  idxPages_2 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  idxPages_3 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  idxPages_4 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  idxPages_5 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  idxPages_6 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  idxPages_7 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  idxPages_8 = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  idxPages_9 = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  idxPages_10 = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  idxPages_11 = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  idxPages_12 = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  idxPages_13 = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  idxPages_14 = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  idxPages_15 = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  idxPages_16 = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  idxPages_17 = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  idxPages_18 = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  idxPages_19 = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  idxPages_20 = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  idxPages_21 = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  idxPages_22 = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  idxPages_23 = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  idxPages_24 = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  idxPages_25 = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  idxPages_26 = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  idxPages_27 = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  tgts_0 = _RAND_57[12:0];
  _RAND_58 = {1{`RANDOM}};
  tgts_1 = _RAND_58[12:0];
  _RAND_59 = {1{`RANDOM}};
  tgts_2 = _RAND_59[12:0];
  _RAND_60 = {1{`RANDOM}};
  tgts_3 = _RAND_60[12:0];
  _RAND_61 = {1{`RANDOM}};
  tgts_4 = _RAND_61[12:0];
  _RAND_62 = {1{`RANDOM}};
  tgts_5 = _RAND_62[12:0];
  _RAND_63 = {1{`RANDOM}};
  tgts_6 = _RAND_63[12:0];
  _RAND_64 = {1{`RANDOM}};
  tgts_7 = _RAND_64[12:0];
  _RAND_65 = {1{`RANDOM}};
  tgts_8 = _RAND_65[12:0];
  _RAND_66 = {1{`RANDOM}};
  tgts_9 = _RAND_66[12:0];
  _RAND_67 = {1{`RANDOM}};
  tgts_10 = _RAND_67[12:0];
  _RAND_68 = {1{`RANDOM}};
  tgts_11 = _RAND_68[12:0];
  _RAND_69 = {1{`RANDOM}};
  tgts_12 = _RAND_69[12:0];
  _RAND_70 = {1{`RANDOM}};
  tgts_13 = _RAND_70[12:0];
  _RAND_71 = {1{`RANDOM}};
  tgts_14 = _RAND_71[12:0];
  _RAND_72 = {1{`RANDOM}};
  tgts_15 = _RAND_72[12:0];
  _RAND_73 = {1{`RANDOM}};
  tgts_16 = _RAND_73[12:0];
  _RAND_74 = {1{`RANDOM}};
  tgts_17 = _RAND_74[12:0];
  _RAND_75 = {1{`RANDOM}};
  tgts_18 = _RAND_75[12:0];
  _RAND_76 = {1{`RANDOM}};
  tgts_19 = _RAND_76[12:0];
  _RAND_77 = {1{`RANDOM}};
  tgts_20 = _RAND_77[12:0];
  _RAND_78 = {1{`RANDOM}};
  tgts_21 = _RAND_78[12:0];
  _RAND_79 = {1{`RANDOM}};
  tgts_22 = _RAND_79[12:0];
  _RAND_80 = {1{`RANDOM}};
  tgts_23 = _RAND_80[12:0];
  _RAND_81 = {1{`RANDOM}};
  tgts_24 = _RAND_81[12:0];
  _RAND_82 = {1{`RANDOM}};
  tgts_25 = _RAND_82[12:0];
  _RAND_83 = {1{`RANDOM}};
  tgts_26 = _RAND_83[12:0];
  _RAND_84 = {1{`RANDOM}};
  tgts_27 = _RAND_84[12:0];
  _RAND_85 = {1{`RANDOM}};
  tgtPages_0 = _RAND_85[2:0];
  _RAND_86 = {1{`RANDOM}};
  tgtPages_1 = _RAND_86[2:0];
  _RAND_87 = {1{`RANDOM}};
  tgtPages_2 = _RAND_87[2:0];
  _RAND_88 = {1{`RANDOM}};
  tgtPages_3 = _RAND_88[2:0];
  _RAND_89 = {1{`RANDOM}};
  tgtPages_4 = _RAND_89[2:0];
  _RAND_90 = {1{`RANDOM}};
  tgtPages_5 = _RAND_90[2:0];
  _RAND_91 = {1{`RANDOM}};
  tgtPages_6 = _RAND_91[2:0];
  _RAND_92 = {1{`RANDOM}};
  tgtPages_7 = _RAND_92[2:0];
  _RAND_93 = {1{`RANDOM}};
  tgtPages_8 = _RAND_93[2:0];
  _RAND_94 = {1{`RANDOM}};
  tgtPages_9 = _RAND_94[2:0];
  _RAND_95 = {1{`RANDOM}};
  tgtPages_10 = _RAND_95[2:0];
  _RAND_96 = {1{`RANDOM}};
  tgtPages_11 = _RAND_96[2:0];
  _RAND_97 = {1{`RANDOM}};
  tgtPages_12 = _RAND_97[2:0];
  _RAND_98 = {1{`RANDOM}};
  tgtPages_13 = _RAND_98[2:0];
  _RAND_99 = {1{`RANDOM}};
  tgtPages_14 = _RAND_99[2:0];
  _RAND_100 = {1{`RANDOM}};
  tgtPages_15 = _RAND_100[2:0];
  _RAND_101 = {1{`RANDOM}};
  tgtPages_16 = _RAND_101[2:0];
  _RAND_102 = {1{`RANDOM}};
  tgtPages_17 = _RAND_102[2:0];
  _RAND_103 = {1{`RANDOM}};
  tgtPages_18 = _RAND_103[2:0];
  _RAND_104 = {1{`RANDOM}};
  tgtPages_19 = _RAND_104[2:0];
  _RAND_105 = {1{`RANDOM}};
  tgtPages_20 = _RAND_105[2:0];
  _RAND_106 = {1{`RANDOM}};
  tgtPages_21 = _RAND_106[2:0];
  _RAND_107 = {1{`RANDOM}};
  tgtPages_22 = _RAND_107[2:0];
  _RAND_108 = {1{`RANDOM}};
  tgtPages_23 = _RAND_108[2:0];
  _RAND_109 = {1{`RANDOM}};
  tgtPages_24 = _RAND_109[2:0];
  _RAND_110 = {1{`RANDOM}};
  tgtPages_25 = _RAND_110[2:0];
  _RAND_111 = {1{`RANDOM}};
  tgtPages_26 = _RAND_111[2:0];
  _RAND_112 = {1{`RANDOM}};
  tgtPages_27 = _RAND_112[2:0];
  _RAND_113 = {1{`RANDOM}};
  pages_0 = _RAND_113[17:0];
  _RAND_114 = {1{`RANDOM}};
  pages_1 = _RAND_114[17:0];
  _RAND_115 = {1{`RANDOM}};
  pages_2 = _RAND_115[17:0];
  _RAND_116 = {1{`RANDOM}};
  pages_3 = _RAND_116[17:0];
  _RAND_117 = {1{`RANDOM}};
  pages_4 = _RAND_117[17:0];
  _RAND_118 = {1{`RANDOM}};
  pages_5 = _RAND_118[17:0];
  _RAND_119 = {1{`RANDOM}};
  pageValid = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  isValid = _RAND_120[27:0];
  _RAND_121 = {1{`RANDOM}};
  cfiType_0 = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  cfiType_1 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  cfiType_2 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  cfiType_3 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  cfiType_4 = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  cfiType_5 = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  cfiType_6 = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  cfiType_7 = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  cfiType_8 = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  cfiType_9 = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  cfiType_10 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  cfiType_11 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  cfiType_12 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  cfiType_13 = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  cfiType_14 = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  cfiType_15 = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  cfiType_16 = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  cfiType_17 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  cfiType_18 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  cfiType_19 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  cfiType_20 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  cfiType_21 = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  cfiType_22 = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  cfiType_23 = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  cfiType_24 = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  cfiType_25 = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  cfiType_26 = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  cfiType_27 = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  brIdx_0 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  brIdx_1 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  brIdx_2 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  brIdx_3 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  brIdx_4 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  brIdx_5 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  brIdx_6 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  brIdx_7 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  brIdx_8 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  brIdx_9 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  brIdx_10 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  brIdx_11 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  brIdx_12 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  brIdx_13 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  brIdx_14 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  brIdx_15 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  brIdx_16 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  brIdx_17 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  brIdx_18 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  brIdx_19 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  brIdx_20 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  brIdx_21 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  brIdx_22 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  brIdx_23 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  brIdx_24 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  brIdx_25 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  brIdx_26 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  brIdx_27 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  r_btb_updatePipe_valid = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  r_btb_updatePipe_bits_prediction_entry = _RAND_178[4:0];
  _RAND_179 = {1{`RANDOM}};
  r_btb_updatePipe_bits_pc = _RAND_179[31:0];
  _RAND_180 = {1{`RANDOM}};
  r_btb_updatePipe_bits_isValid = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  r_btb_updatePipe_bits_br_pc = _RAND_181[31:0];
  _RAND_182 = {1{`RANDOM}};
  r_btb_updatePipe_bits_cfiType = _RAND_182[1:0];
  _RAND_183 = {1{`RANDOM}};
  nextPageRepl = _RAND_183[2:0];
  _RAND_184 = {1{`RANDOM}};
  _T_123 = _RAND_184[26:0];
  _RAND_185 = {1{`RANDOM}};
  r_respPipe_valid = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  r_respPipe_bits_taken = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  r_respPipe_bits_entry = _RAND_187[4:0];
  _RAND_188 = {1{`RANDOM}};
  _T_1038 = _RAND_188[7:0];
  _RAND_189 = {1{`RANDOM}};
  _T_1125 = _RAND_189[2:0];
  _RAND_190 = {1{`RANDOM}};
  _T_1126 = _RAND_190[2:0];
  _RAND_191 = {1{`RANDOM}};
  _T_1127_0 = _RAND_191[31:0];
  _RAND_192 = {1{`RANDOM}};
  _T_1127_1 = _RAND_192[31:0];
  _RAND_193 = {1{`RANDOM}};
  _T_1127_2 = _RAND_193[31:0];
  _RAND_194 = {1{`RANDOM}};
  _T_1127_3 = _RAND_194[31:0];
  _RAND_195 = {1{`RANDOM}};
  _T_1127_4 = _RAND_195[31:0];
  _RAND_196 = {1{`RANDOM}};
  _T_1127_5 = _RAND_196[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_1037__T_1119_en & _T_1037__T_1119_mask) begin
      _T_1037[_T_1037__T_1119_addr] <= _T_1037__T_1119_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@206303.4]
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxs_0 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxs_1 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxs_2 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxs_3 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxs_4 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxs_5 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxs_6 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxs_7 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxs_8 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxs_9 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxs_10 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxs_11 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxs_12 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxs_13 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxs_14 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxs_15 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxs_16 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxs_17 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxs_18 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxs_19 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxs_20 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxs_21 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxs_22 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxs_23 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxs_24 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxs_25 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxs_26 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxs_27 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxPages_0 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxPages_1 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxPages_2 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxPages_3 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxPages_4 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxPages_5 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxPages_6 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxPages_7 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxPages_8 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxPages_9 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxPages_10 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxPages_11 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxPages_12 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxPages_13 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxPages_14 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxPages_15 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxPages_16 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxPages_17 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxPages_18 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxPages_19 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxPages_20 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxPages_21 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxPages_22 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxPages_23 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxPages_24 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxPages_25 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxPages_26 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxPages_27 <= _T_368[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgts_0 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgts_1 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgts_2 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgts_3 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgts_4 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgts_5 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgts_6 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgts_7 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgts_8 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgts_9 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgts_10 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgts_11 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgts_12 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgts_13 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgts_14 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgts_15 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgts_16 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgts_17 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgts_18 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgts_19 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgts_20 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgts_21 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgts_22 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgts_23 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgts_24 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgts_25 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgts_26 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgts_27 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgtPages_0 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgtPages_1 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgtPages_2 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgtPages_3 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgtPages_4 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgtPages_5 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgtPages_6 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgtPages_7 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgtPages_8 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgtPages_9 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgtPages_10 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgtPages_11 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgtPages_12 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgtPages_13 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgtPages_14 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgtPages_15 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgtPages_16 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgtPages_17 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgtPages_18 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgtPages_19 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgtPages_20 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgtPages_21 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgtPages_22 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgtPages_23 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgtPages_24 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgtPages_25 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgtPages_26 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgtPages_27 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_376[0]) begin
        if (_T_375) begin
          pages_0 <= r_btb_updatePipe_bits_pc[31:14];
        end else begin
          pages_0 <= io_req_bits_addr[31:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_383[1]) begin
        if (_T_375) begin
          pages_1 <= io_req_bits_addr[31:14];
        end else begin
          pages_1 <= r_btb_updatePipe_bits_pc[31:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_376[2]) begin
        if (_T_375) begin
          pages_2 <= r_btb_updatePipe_bits_pc[31:14];
        end else begin
          pages_2 <= io_req_bits_addr[31:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_383[3]) begin
        if (_T_375) begin
          pages_3 <= io_req_bits_addr[31:14];
        end else begin
          pages_3 <= r_btb_updatePipe_bits_pc[31:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_376[4]) begin
        if (_T_375) begin
          pages_4 <= r_btb_updatePipe_bits_pc[31:14];
        end else begin
          pages_4 <= io_req_bits_addr[31:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_383[5]) begin
        if (_T_375) begin
          pages_5 <= io_req_bits_addr[31:14];
        end else begin
          pages_5 <= r_btb_updatePipe_bits_pc[31:14];
        end
      end
    end
    if (reset) begin
      pageValid <= 6'h0;
    end else begin
      pageValid <= _GEN_373[5:0];
    end
    if (reset) begin
      isValid <= 28'h0;
    end else begin
      isValid <= _GEN_381[27:0];
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        cfiType_0 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        cfiType_1 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        cfiType_2 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        cfiType_3 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        cfiType_4 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        cfiType_5 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        cfiType_6 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        cfiType_7 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        cfiType_8 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        cfiType_9 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        cfiType_10 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        cfiType_11 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        cfiType_12 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        cfiType_13 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        cfiType_14 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        cfiType_15 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        cfiType_16 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        cfiType_17 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        cfiType_18 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        cfiType_19 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        cfiType_20 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        cfiType_21 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        cfiType_22 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        cfiType_23 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        cfiType_24 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        cfiType_25 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        cfiType_26 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        cfiType_27 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        brIdx_0 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        brIdx_1 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        brIdx_2 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        brIdx_3 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        brIdx_4 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        brIdx_5 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        brIdx_6 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        brIdx_7 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        brIdx_8 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        brIdx_9 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        brIdx_10 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        brIdx_11 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        brIdx_12 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        brIdx_13 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        brIdx_14 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        brIdx_15 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        brIdx_16 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        brIdx_17 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        brIdx_18 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        brIdx_19 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        brIdx_20 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        brIdx_21 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        brIdx_22 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        brIdx_23 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        brIdx_24 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        brIdx_25 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        brIdx_26 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        brIdx_27 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (reset) begin
      r_btb_updatePipe_valid <= 1'h0;
    end else begin
      r_btb_updatePipe_valid <= io_btb_update_valid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_prediction_entry <= io_btb_update_bits_prediction_entry;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_pc <= io_btb_update_bits_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_isValid <= io_btb_update_bits_isValid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_br_pc <= io_btb_update_bits_br_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_cfiType <= io_btb_update_bits_cfiType;
    end
    if (_T_115) begin
      if (_T_120) begin
        nextPageRepl <= {{2'd0}, _T_119[0]};
      end else begin
        nextPageRepl <= _T_119;
      end
    end
    if (_T_204) begin
      _T_123 <= _T_364;
    end
    if (reset) begin
      r_respPipe_valid <= 1'h0;
    end else begin
      r_respPipe_valid <= io_resp_valid;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_taken <= io_resp_bits_taken;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_entry <= io_resp_bits_entry;
    end
    if (io_bht_update_valid) begin
      if (io_bht_update_bits_branch) begin
        if (io_bht_update_bits_mispredict) begin
          _T_1038 <= _T_1121;
        end else if (io_bht_advance_valid) begin
          _T_1038 <= _T_1109;
        end
      end else if (io_bht_update_bits_mispredict) begin
        _T_1038 <= io_bht_update_bits_prediction_history;
      end else if (io_bht_advance_valid) begin
        _T_1038 <= _T_1109;
      end
    end else if (io_bht_advance_valid) begin
      _T_1038 <= _T_1109;
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (_T_1191) begin
          _T_1125 <= _T_1193;
        end
      end else if (_T_1199) begin
        if (_T_1186) begin
          _T_1125 <= _T_1203;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (_T_1194) begin
          _T_1126 <= _T_1197;
        end else begin
          _T_1126 <= 3'h0;
        end
      end else if (_T_1199) begin
        if (_T_1186) begin
          if (_T_1204) begin
            _T_1126 <= _T_1207;
          end else begin
            _T_1126 <= 3'h5;
          end
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h0 == _T_1198) begin
          _T_1127_0 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h1 == _T_1198) begin
          _T_1127_1 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h2 == _T_1198) begin
          _T_1127_2 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h3 == _T_1198) begin
          _T_1127_3 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h4 == _T_1198) begin
          _T_1127_4 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1190) begin
        if (3'h5 == _T_1198) begin
          _T_1127_5 <= io_ras_update_bits_returnAddr;
        end
      end
    end
  end
endmodule
