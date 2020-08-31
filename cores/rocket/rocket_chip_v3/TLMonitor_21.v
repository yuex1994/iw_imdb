module TLMonitor_21( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55983.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55984.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55985.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [4:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [13:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input  [4:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@55986.4]
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
  reg [95:0] _RAND_14;
  reg [159:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@57439.4]
  wire  _T_7; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56000.6]
  wire  _T_15; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56008.6]
  wire  _T_20; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56013.6]
  wire  _T_21; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56014.6]
  wire  _T_22; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56015.6]
  wire  _T_24; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56023.6]
  wire  _T_25; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56024.6]
  wire  _T_26; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56025.6]
  wire  _T_27; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56026.6]
  wire [26:0] _T_29; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@56028.6]
  wire [11:0] _T_31; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@56030.6]
  wire [13:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@56031.6]
  wire [13:0] _T_32; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@56031.6]
  wire  _T_33; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@56032.6]
  wire [1:0] _T_36; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@56035.6]
  wire [1:0] _T_38; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@56037.6]
  wire  _T_39; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@56038.6]
  wire  _T_42; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@56041.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56043.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56044.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56046.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56047.6]
  wire  _T_51; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@56050.6]
  wire  _T_52; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56051.6]
  wire  _T_53; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56052.6]
  wire  _T_54; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56053.6]
  wire  _T_55; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56054.6]
  wire  _T_56; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56055.6]
  wire  _T_57; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56056.6]
  wire  _T_58; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56057.6]
  wire  _T_59; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56058.6]
  wire  _T_60; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56059.6]
  wire  _T_61; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56060.6]
  wire  _T_62; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56061.6]
  wire  _T_63; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56062.6]
  wire [3:0] _T_66; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@56065.6]
  wire  _T_128; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@56131.6]
  wire [13:0] _T_130; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@56134.8]
  wire [14:0] _T_131; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@56135.8]
  wire [14:0] _T_133; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@56137.8]
  wire  _T_134; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@56138.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56143.8]
  wire  _T_160; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@56174.8]
  wire  _T_163; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@56177.8]
  wire  _T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56187.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56188.8]
  wire  _T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56194.8]
  wire  _T_176; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56195.8]
  wire  _T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56202.8]
  wire  _T_180; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56203.8]
  wire  _T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56209.8]
  wire  _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56210.8]
  wire  _T_184; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@56215.8]
  wire  _T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56217.8]
  wire  _T_187; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56218.8]
  wire [3:0] _T_188; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@56223.8]
  wire  _T_189; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@56224.8]
  wire  _T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56226.8]
  wire  _T_192; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56227.8]
  wire  _T_193; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@56232.8]
  wire  _T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56234.8]
  wire  _T_196; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56235.8]
  wire  _T_197; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@56241.6]
  wire  _T_257; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@56333.8]
  wire  _T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56335.8]
  wire  _T_260; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56336.8]
  wire  _T_270; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@56359.6]
  wire  _T_272; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@56362.8]
  wire  _T_280; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@56370.8]
  wire  _T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56373.8]
  wire  _T_284; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56374.8]
  wire  _T_291; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@56393.8]
  wire  _T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56395.8]
  wire  _T_294; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56396.8]
  wire  _T_295; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@56401.8]
  wire  _T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56403.8]
  wire  _T_298; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56404.8]
  wire  _T_303; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@56418.6]
  wire  _T_332; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@56469.6]
  wire [3:0] _T_357; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@56511.8]
  wire [3:0] _T_358; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@56512.8]
  wire  _T_359; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@56513.8]
  wire  _T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56515.8]
  wire  _T_362; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56516.8]
  wire  _T_363; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@56522.6]
  wire  _T_365; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@56525.8]
  wire  _T_373; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@56533.8]
  wire  _T_376; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56536.8]
  wire  _T_377; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56537.8]
  wire  _T_384; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@56556.8]
  wire  _T_386; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56558.8]
  wire  _T_387; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56559.8]
  wire  _T_392; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@56573.6]
  wire  _T_413; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@56607.8]
  wire  _T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56609.8]
  wire  _T_416; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56610.8]
  wire  _T_421; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@56624.6]
  wire  _T_442; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@56658.8]
  wire  _T_444; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56660.8]
  wire  _T_445; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56661.8]
  wire  _T_454; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@56685.6]
  wire  _T_456; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56687.6]
  wire  _T_457; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56688.6]
  wire  _T_461; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56696.6]
  wire  _T_469; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56704.6]
  wire  _T_474; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56709.6]
  wire  _T_475; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56710.6]
  wire  _T_476; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56711.6]
  wire  _T_478; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56719.6]
  wire  _T_479; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56720.6]
  wire  _T_480; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56721.6]
  wire  _T_481; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56722.6]
  wire  _T_483; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@56724.6]
  wire  _T_485; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56727.8]
  wire  _T_486; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56728.8]
  wire  _T_487; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@56733.8]
  wire  _T_489; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56735.8]
  wire  _T_490; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56736.8]
  wire  _T_491; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@56741.8]
  wire  _T_493; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56743.8]
  wire  _T_494; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56744.8]
  wire  _T_495; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@56749.8]
  wire  _T_497; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56751.8]
  wire  _T_498; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56752.8]
  wire  _T_499; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@56757.8]
  wire  _T_501; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56759.8]
  wire  _T_502; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56760.8]
  wire  _T_503; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@56766.6]
  wire  _T_514; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@56790.8]
  wire  _T_516; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56792.8]
  wire  _T_517; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56793.8]
  wire  _T_518; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@56798.8]
  wire  _T_520; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56800.8]
  wire  _T_521; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56801.8]
  wire  _T_531; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@56824.6]
  wire  _T_551; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@56865.8]
  wire  _T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56867.8]
  wire  _T_554; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56868.8]
  wire  _T_560; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@56883.6]
  wire  _T_577; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@56918.6]
  wire  _T_595; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@56954.6]
  wire  _T_627; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@57020.4]
  wire  _T_634; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@57027.4]
  reg [9:0] _T_636; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@57029.4]
  wire [9:0] _T_638; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57031.4]
  wire  _T_639; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57032.4]
  reg [2:0] _T_647; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@57043.4]
  reg [2:0] _T_648; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@57044.4]
  reg [3:0] _T_649; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@57045.4]
  reg [4:0] _T_650; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@57046.4]
  reg [13:0] _T_651; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@57047.4]
  wire  _T_652; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@57048.4]
  wire  _T_653; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@57049.4]
  wire  _T_654; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@57051.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57053.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57054.6]
  wire  _T_658; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@57059.6]
  wire  _T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57061.6]
  wire  _T_661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57062.6]
  wire  _T_662; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@57067.6]
  wire  _T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57069.6]
  wire  _T_665; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57070.6]
  wire  _T_666; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@57075.6]
  wire  _T_668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57077.6]
  wire  _T_669; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57078.6]
  wire  _T_670; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@57083.6]
  wire  _T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57085.6]
  wire  _T_673; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57086.6]
  wire  _T_675; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@57093.4]
  wire  _T_676; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@57101.4]
  wire [26:0] _T_678; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@57103.4]
  wire [11:0] _T_680; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@57105.4]
  reg [9:0] _T_684; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@57109.4]
  wire [9:0] _T_686; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57111.4]
  wire  _T_687; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57112.4]
  reg [2:0] _T_695; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@57123.4]
  reg [1:0] _T_696; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@57124.4]
  reg [3:0] _T_697; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@57125.4]
  reg [4:0] _T_698; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@57126.4]
  reg  _T_699; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@57127.4]
  reg  _T_700; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@57128.4]
  wire  _T_701; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@57129.4]
  wire  _T_702; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@57130.4]
  wire  _T_703; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@57132.6]
  wire  _T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57134.6]
  wire  _T_706; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57135.6]
  wire  _T_707; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@57140.6]
  wire  _T_709; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57142.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57143.6]
  wire  _T_711; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@57148.6]
  wire  _T_713; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57150.6]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57151.6]
  wire  _T_715; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@57156.6]
  wire  _T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57158.6]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57159.6]
  wire  _T_719; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@57164.6]
  wire  _T_721; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57166.6]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57167.6]
  wire  _T_723; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@57172.6]
  wire  _T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57174.6]
  wire  _T_726; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57175.6]
  wire  _T_728; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@57182.4]
  reg [18:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@57191.4]
  reg [75:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@57192.4]
  reg [151:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@57193.4]
  reg [9:0] _T_738; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@57203.4]
  wire [9:0] _T_740; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57205.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57206.4]
  reg [9:0] _T_756; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@57225.4]
  wire [9:0] _T_758; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57227.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57228.4]
  wire [6:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@57247.4]
  wire [7:0] _T_766; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@57247.4]
  wire [75:0] _T_767; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@57248.4]
  wire [15:0] _T_771; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@57252.4]
  wire [75:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@57253.4]
  wire [75:0] _T_772; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@57253.4]
  wire [75:0] _T_773; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@57254.4]
  wire [7:0] _T_774; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@57258.4]
  wire [151:0] _T_775; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@57259.4]
  wire [15:0] _T_779; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@57263.4]
  wire [151:0] _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@57264.4]
  wire [151:0] _T_780; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@57264.4]
  wire [151:0] _T_781; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@57265.4]
  wire  _T_785; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@57290.4]
  wire [31:0] _T_787; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@57293.6]
  wire [3:0] _T_788; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@57295.6]
  wire [3:0] _T_789; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@57296.6]
  wire [4:0] _T_790; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@57298.6]
  wire [4:0] _T_791; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@57299.6]
  wire [6:0] _GEN_62; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@57301.6]
  wire [7:0] _T_792; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@57301.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  wire [258:0] _GEN_63; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@57302.6]
  wire [258:0] _T_793; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@57302.6]
  wire [7:0] _T_794; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@57304.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  wire [259:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@57305.6]
  wire [259:0] _T_795; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@57305.6]
  wire [18:0] _T_796; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@57307.6]
  wire  _T_798; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@57309.6]
  wire  _T_800; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57311.6]
  wire  _T_801; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57312.6]
  wire [31:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  wire [258:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  wire [259:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  wire  _T_804; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@57326.4]
  wire  _T_806; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@57328.4]
  wire  _T_807; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@57329.4]
  wire [31:0] _T_808; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@57331.6]
  wire [270:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@57338.6]
  wire [270:0] _T_814; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@57338.6]
  wire [270:0] _GEN_67; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@57345.6]
  wire [270:0] _T_820; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@57345.6]
  wire [31:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  wire [270:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  wire [270:0] _GEN_22; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  wire  _T_821; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@57348.4]
  wire  _T_824; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@57351.4]
  wire [18:0] _T_825; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@57353.6]
  wire  _T_827; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@57355.6]
  wire  _T_828; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@57356.6]
  wire  _T_829; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@57357.6]
  wire  _T_830; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@57358.6]
  wire  _T_831; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@57359.6]
  wire  _T_832; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@57360.6]
  wire  _T_834; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57362.6]
  wire  _T_835; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57363.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57245.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57246.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@57255.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire  _T_837; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  wire  _T_839; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  wire  _T_840; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@57372.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire  _T_841; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  wire  _T_842; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  wire  _T_843; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@57375.6]
  wire  _T_844; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@57376.6]
  wire  _T_845; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@57377.6]
  wire  _T_847; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57379.6]
  wire  _T_848; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57380.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57256.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57257.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@57266.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@57385.6]
  wire  _T_849; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@57385.6]
  wire  _T_851; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@57387.6]
  wire  _T_852; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@57388.6]
  wire  _T_854; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57390.6]
  wire  _T_855; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57391.6]
  wire  _T_857; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@57398.4]
  wire  _T_858; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@57399.4]
  wire  _T_860; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@57401.4]
  wire  _T_862; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@57403.4]
  wire  _T_863; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@57405.6]
  wire  _T_864; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@57406.6]
  wire  _T_866; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57408.6]
  wire  _T_867; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57409.6]
  wire [18:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57239.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57240.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@57294.6]
  wire [18:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57318.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57319.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@57332.6]
  wire  _T_868; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@57415.4]
  wire  _T_869; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@57416.4]
  wire  _T_870; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@57417.4]
  wire  _T_871; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@57418.4]
  wire  _T_873; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57420.4]
  wire  _T_874; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57421.4]
  wire [18:0] _T_875; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@57426.4]
  wire [18:0] _T_876; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@57427.4]
  wire [18:0] _T_877; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@57428.4]
  wire [75:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57241.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57242.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@57303.6]
  wire [75:0] _T_878; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@57430.4]
  wire [75:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57320.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57321.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@57339.6]
  wire [75:0] _T_879; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@57431.4]
  wire [75:0] _T_880; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@57432.4]
  wire [151:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57243.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57244.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@57306.6]
  wire [151:0] _T_881; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@57434.4]
  wire [151:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57322.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57323.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@57346.6]
  wire [151:0] _T_882; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@57435.4]
  wire [151:0] _T_883; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@57436.4]
  reg [31:0] _T_884; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@57438.4]
  wire  _T_885; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@57441.4]
  wire  _T_886; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@57442.4]
  wire  _T_887; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@57443.4]
  wire  _T_888; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@57444.4]
  wire  _T_889; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@57445.4]
  wire  _T_890; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@57446.4]
  wire  _T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57448.4]
  wire  _T_893; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57449.4]
  wire [31:0] _T_895; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@57455.4]
  wire  _T_898; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@57459.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56145.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56255.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56376.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56435.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56486.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56539.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56590.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56641.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56730.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56772.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56830.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56889.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56924.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56960.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@57439.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = io_in_a_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56000.6]
  assign _T_15 = io_in_a_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56008.6]
  assign _T_20 = io_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56013.6]
  assign _T_21 = io_in_a_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56014.6]
  assign _T_22 = io_in_a_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56015.6]
  assign _T_24 = _T_7 | _T_15; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56023.6]
  assign _T_25 = _T_24 | _T_20; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56024.6]
  assign _T_26 = _T_25 | _T_21; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56025.6]
  assign _T_27 = _T_26 | _T_22; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56026.6]
  assign _T_29 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@56028.6]
  assign _T_31 = ~_T_29[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@56030.6]
  assign _GEN_56 = {{2'd0}, _T_31}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@56031.6]
  assign _T_32 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@56031.6]
  assign _T_33 = _T_32 == 14'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@56032.6]
  assign _T_36 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@56035.6]
  assign _T_38 = _T_36 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@56037.6]
  assign _T_39 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@56038.6]
  assign _T_42 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@56041.6]
  assign _T_44 = _T_38[1] & _T_42; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56043.6]
  assign _T_45 = _T_39 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56044.6]
  assign _T_47 = _T_38[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56046.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56047.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@56050.6]
  assign _T_52 = _T_42 & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56051.6]
  assign _T_53 = _T_38[0] & _T_52; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56052.6]
  assign _T_54 = _T_45 | _T_53; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56053.6]
  assign _T_55 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56054.6]
  assign _T_56 = _T_38[0] & _T_55; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56055.6]
  assign _T_57 = _T_45 | _T_56; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56056.6]
  assign _T_58 = io_in_a_bits_address[1] & _T_51; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56057.6]
  assign _T_59 = _T_38[0] & _T_58; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56058.6]
  assign _T_60 = _T_48 | _T_59; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56059.6]
  assign _T_61 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@56060.6]
  assign _T_62 = _T_38[0] & _T_61; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@56061.6]
  assign _T_63 = _T_48 | _T_62; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@56062.6]
  assign _T_66 = {_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@56065.6]
  assign _T_128 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@56131.6]
  assign _T_130 = io_in_a_bits_address ^ 14'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@56134.8]
  assign _T_131 = {1'b0,$signed(_T_130)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@56135.8]
  assign _T_133 = $signed(_T_131) & -15'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@56137.8]
  assign _T_134 = $signed(_T_133) == 15'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@56138.8]
  assign _T_139 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56143.8]
  assign _T_160 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@56174.8]
  assign _T_163 = _T_20 & _T_160; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@56177.8]
  assign _T_172 = _T_163 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56187.8]
  assign _T_173 = ~_T_172; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56188.8]
  assign _T_175 = _T_27 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56194.8]
  assign _T_176 = ~_T_175; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56195.8]
  assign _T_179 = _T_39 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56202.8]
  assign _T_180 = ~_T_179; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56203.8]
  assign _T_182 = _T_33 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56209.8]
  assign _T_183 = ~_T_182; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56210.8]
  assign _T_184 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@56215.8]
  assign _T_186 = _T_184 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56217.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56218.8]
  assign _T_188 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@56223.8]
  assign _T_189 = _T_188 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@56224.8]
  assign _T_191 = _T_189 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56226.8]
  assign _T_192 = ~_T_191; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56227.8]
  assign _T_193 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@56232.8]
  assign _T_195 = _T_193 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56234.8]
  assign _T_196 = ~_T_195; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56235.8]
  assign _T_197 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@56241.6]
  assign _T_257 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@56333.8]
  assign _T_259 = _T_257 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56335.8]
  assign _T_260 = ~_T_259; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56336.8]
  assign _T_270 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@56359.6]
  assign _T_272 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@56362.8]
  assign _T_280 = _T_272 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@56370.8]
  assign _T_283 = _T_280 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56373.8]
  assign _T_284 = ~_T_283; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56374.8]
  assign _T_291 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@56393.8]
  assign _T_293 = _T_291 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56395.8]
  assign _T_294 = ~_T_293; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56396.8]
  assign _T_295 = io_in_a_bits_mask == _T_66; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@56401.8]
  assign _T_297 = _T_295 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56403.8]
  assign _T_298 = ~_T_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56404.8]
  assign _T_303 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@56418.6]
  assign _T_332 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@56469.6]
  assign _T_357 = ~_T_66; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@56511.8]
  assign _T_358 = io_in_a_bits_mask & _T_357; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@56512.8]
  assign _T_359 = _T_358 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@56513.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56515.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56516.8]
  assign _T_363 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@56522.6]
  assign _T_365 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@56525.8]
  assign _T_373 = _T_365 & _T_134; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@56533.8]
  assign _T_376 = _T_373 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56536.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56537.8]
  assign _T_384 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@56556.8]
  assign _T_386 = _T_384 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56558.8]
  assign _T_387 = ~_T_386; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56559.8]
  assign _T_392 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@56573.6]
  assign _T_413 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@56607.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56609.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56610.8]
  assign _T_421 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@56624.6]
  assign _T_442 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@56658.8]
  assign _T_444 = _T_442 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56660.8]
  assign _T_445 = ~_T_444; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56661.8]
  assign _T_454 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@56685.6]
  assign _T_456 = _T_454 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56687.6]
  assign _T_457 = ~_T_456; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56688.6]
  assign _T_461 = io_in_d_bits_source[4:3] == 2'h0; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56696.6]
  assign _T_469 = io_in_d_bits_source[4:3] == 2'h1; // @[Parameters.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@56704.6]
  assign _T_474 = io_in_d_bits_source == 5'h10; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56709.6]
  assign _T_475 = io_in_d_bits_source == 5'h11; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56710.6]
  assign _T_476 = io_in_d_bits_source == 5'h12; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@56711.6]
  assign _T_478 = _T_461 | _T_469; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56719.6]
  assign _T_479 = _T_478 | _T_474; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56720.6]
  assign _T_480 = _T_479 | _T_475; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56721.6]
  assign _T_481 = _T_480 | _T_476; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@56722.6]
  assign _T_483 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@56724.6]
  assign _T_485 = _T_481 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56727.8]
  assign _T_486 = ~_T_485; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56728.8]
  assign _T_487 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@56733.8]
  assign _T_489 = _T_487 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56735.8]
  assign _T_490 = ~_T_489; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56736.8]
  assign _T_491 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@56741.8]
  assign _T_493 = _T_491 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56743.8]
  assign _T_494 = ~_T_493; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56744.8]
  assign _T_495 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@56749.8]
  assign _T_497 = _T_495 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56751.8]
  assign _T_498 = ~_T_497; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56752.8]
  assign _T_499 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@56757.8]
  assign _T_501 = _T_499 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56759.8]
  assign _T_502 = ~_T_501; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56760.8]
  assign _T_503 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@56766.6]
  assign _T_514 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@56790.8]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56792.8]
  assign _T_517 = ~_T_516; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56793.8]
  assign _T_518 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@56798.8]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56800.8]
  assign _T_521 = ~_T_520; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56801.8]
  assign _T_531 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@56824.6]
  assign _T_551 = _T_499 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@56865.8]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56867.8]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56868.8]
  assign _T_560 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@56883.6]
  assign _T_577 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@56918.6]
  assign _T_595 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@56954.6]
  assign _T_627 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@57020.4]
  assign _T_634 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@57027.4]
  assign _T_638 = _T_636 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57031.4]
  assign _T_639 = _T_636 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57032.4]
  assign _T_652 = ~_T_639; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@57048.4]
  assign _T_653 = io_in_a_valid & _T_652; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@57049.4]
  assign _T_654 = io_in_a_bits_opcode == _T_647; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@57051.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57053.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57054.6]
  assign _T_658 = io_in_a_bits_param == _T_648; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@57059.6]
  assign _T_660 = _T_658 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57061.6]
  assign _T_661 = ~_T_660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57062.6]
  assign _T_662 = io_in_a_bits_size == _T_649; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@57067.6]
  assign _T_664 = _T_662 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57069.6]
  assign _T_665 = ~_T_664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57070.6]
  assign _T_666 = io_in_a_bits_source == _T_650; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@57075.6]
  assign _T_668 = _T_666 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57077.6]
  assign _T_669 = ~_T_668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57078.6]
  assign _T_670 = io_in_a_bits_address == _T_651; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@57083.6]
  assign _T_672 = _T_670 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57085.6]
  assign _T_673 = ~_T_672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57086.6]
  assign _T_675 = _T_627 & _T_639; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@57093.4]
  assign _T_676 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@57101.4]
  assign _T_678 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@57103.4]
  assign _T_680 = ~_T_678[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@57105.4]
  assign _T_686 = _T_684 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57111.4]
  assign _T_687 = _T_684 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57112.4]
  assign _T_701 = ~_T_687; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@57129.4]
  assign _T_702 = io_in_d_valid & _T_701; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@57130.4]
  assign _T_703 = io_in_d_bits_opcode == _T_695; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@57132.6]
  assign _T_705 = _T_703 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57134.6]
  assign _T_706 = ~_T_705; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57135.6]
  assign _T_707 = io_in_d_bits_param == _T_696; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@57140.6]
  assign _T_709 = _T_707 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57142.6]
  assign _T_710 = ~_T_709; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57143.6]
  assign _T_711 = io_in_d_bits_size == _T_697; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@57148.6]
  assign _T_713 = _T_711 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57150.6]
  assign _T_714 = ~_T_713; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57151.6]
  assign _T_715 = io_in_d_bits_source == _T_698; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@57156.6]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57158.6]
  assign _T_718 = ~_T_717; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57159.6]
  assign _T_719 = io_in_d_bits_sink == _T_699; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@57164.6]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57166.6]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57167.6]
  assign _T_723 = io_in_d_bits_denied == _T_700; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@57172.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57174.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57175.6]
  assign _T_728 = _T_676 & _T_687; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@57182.4]
  assign _T_740 = _T_738 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57205.4]
  assign a_first = _T_738 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57206.4]
  assign _T_758 = _T_756 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@57227.4]
  assign d_first = _T_756 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@57228.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@57247.4]
  assign _T_766 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@57247.4]
  assign _T_767 = inflight_opcodes >> _T_766; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@57248.4]
  assign _T_771 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@57252.4]
  assign _GEN_58 = {{60'd0}, _T_771}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@57253.4]
  assign _T_772 = _T_767 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@57253.4]
  assign _T_773 = {{1'd0}, _T_772[75:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@57254.4]
  assign _T_774 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@57258.4]
  assign _T_775 = inflight_sizes >> _T_774; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@57259.4]
  assign _T_779 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@57263.4]
  assign _GEN_60 = {{136'd0}, _T_779}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@57264.4]
  assign _T_780 = _T_775 & _GEN_60; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@57264.4]
  assign _T_781 = {{1'd0}, _T_780[151:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@57265.4]
  assign _T_785 = _T_627 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@57290.4]
  assign _T_787 = 32'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@57293.6]
  assign _T_788 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@57295.6]
  assign _T_789 = _T_788 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@57296.6]
  assign _T_790 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@57298.6]
  assign _T_791 = _T_790 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@57299.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@57301.6]
  assign _T_792 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@57301.6]
  assign a_opcodes_set_interm = _T_785 ? _T_789 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  assign _GEN_63 = {{255'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@57302.6]
  assign _T_793 = _GEN_63 << _T_792; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@57302.6]
  assign _T_794 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@57304.6]
  assign a_sizes_set_interm = _T_785 ? _T_791 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  assign _GEN_64 = {{255'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@57305.6]
  assign _T_795 = _GEN_64 << _T_794; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@57305.6]
  assign _T_796 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@57307.6]
  assign _T_798 = ~_T_796[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@57309.6]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57311.6]
  assign _T_801 = ~_T_800; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57312.6]
  assign _GEN_15 = _T_785 ? _T_787 : 32'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  assign _GEN_18 = _T_785 ? _T_793 : 259'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  assign _GEN_19 = _T_785 ? _T_795 : 260'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@57292.4]
  assign _T_804 = _T_676 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@57326.4]
  assign _T_806 = ~_T_483; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@57328.4]
  assign _T_807 = _T_804 & _T_806; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@57329.4]
  assign _T_808 = 32'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@57331.6]
  assign _GEN_66 = {{255'd0}, _T_771}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@57338.6]
  assign _T_814 = _GEN_66 << _T_766; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@57338.6]
  assign _GEN_67 = {{255'd0}, _T_779}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@57345.6]
  assign _T_820 = _GEN_67 << _T_774; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@57345.6]
  assign _GEN_20 = _T_807 ? _T_808 : 32'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  assign _GEN_21 = _T_807 ? _T_814 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  assign _GEN_22 = _T_807 ? _T_820 : 271'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@57330.4]
  assign _T_821 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@57348.4]
  assign _T_824 = _T_821 & _T_806; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@57351.4]
  assign _T_825 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@57353.6]
  assign _T_827 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@57355.6]
  assign _T_828 = io_in_a_valid & _T_827; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@57356.6]
  assign _T_829 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@57357.6]
  assign _T_830 = _T_828 & _T_829; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@57358.6]
  assign _T_831 = _T_830 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@57359.6]
  assign _T_832 = _T_825[0] | _T_831; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@57360.6]
  assign _T_834 = _T_832 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57362.6]
  assign _T_835 = ~_T_834; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57363.6]
  assign a_opcode_lookup = _T_773[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57245.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57246.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@57255.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _T_837 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@57369.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  assign _T_839 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@57371.6]
  assign _T_840 = _T_837 | _T_839; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@57372.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _T_841 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@57373.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  assign _T_842 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@57374.6]
  assign _T_843 = _T_841 | _T_842; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@57375.6]
  assign _T_844 = io_in_a_valid & _T_843; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@57376.6]
  assign _T_845 = _T_840 | _T_844; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@57377.6]
  assign _T_847 = _T_845 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57379.6]
  assign _T_848 = ~_T_847; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57380.6]
  assign a_size_lookup = _T_781[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57256.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57257.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@57266.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@57385.6]
  assign _T_849 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@57385.6]
  assign _T_851 = io_in_a_valid & _T_829; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@57387.6]
  assign _T_852 = _T_849 | _T_851; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@57388.6]
  assign _T_854 = _T_852 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57390.6]
  assign _T_855 = ~_T_854; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57391.6]
  assign _T_857 = _T_821 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@57398.4]
  assign _T_858 = _T_857 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@57399.4]
  assign _T_860 = _T_858 & _T_827; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@57401.4]
  assign _T_862 = _T_860 & _T_806; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@57403.4]
  assign _T_863 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@57405.6]
  assign _T_864 = _T_863 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@57406.6]
  assign _T_866 = _T_864 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57408.6]
  assign _T_867 = ~_T_866; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57409.6]
  assign a_set = _GEN_15[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57239.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57240.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@57294.6]
  assign d_clr = _GEN_20[18:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57318.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57319.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@57332.6]
  assign _T_868 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@57415.4]
  assign _T_869 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@57416.4]
  assign _T_870 = ~_T_869; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@57417.4]
  assign _T_871 = _T_868 | _T_870; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@57418.4]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57420.4]
  assign _T_874 = ~_T_873; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57421.4]
  assign _T_875 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@57426.4]
  assign _T_876 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@57427.4]
  assign _T_877 = _T_875 & _T_876; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@57428.4]
  assign a_opcodes_set = _GEN_18[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57241.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57242.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@57303.6]
  assign _T_878 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@57430.4]
  assign d_opcodes_clr = _GEN_21[75:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57320.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57321.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@57339.6]
  assign _T_879 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@57431.4]
  assign _T_880 = _T_878 & _T_879; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@57432.4]
  assign a_sizes_set = _GEN_19[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57243.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57244.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@57306.6]
  assign _T_881 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@57434.4]
  assign d_sizes_clr = _GEN_22[151:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@57322.4 :freechips.rocketchip.system.DefaultRV32Config.fir@57323.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@57346.6]
  assign _T_882 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@57435.4]
  assign _T_883 = _T_881 & _T_882; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@57436.4]
  assign _T_885 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@57441.4]
  assign _T_886 = ~_T_885; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@57442.4]
  assign _T_887 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@57443.4]
  assign _T_888 = _T_886 | _T_887; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@57444.4]
  assign _T_889 = _T_884 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@57445.4]
  assign _T_890 = _T_888 | _T_889; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@57446.4]
  assign _T_892 = _T_890 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57448.4]
  assign _T_893 = ~_T_892; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57449.4]
  assign _T_895 = _T_884 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@57455.4]
  assign _T_898 = _T_627 | _T_676; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@57459.4]
  assign _GEN_69 = io_in_a_valid & _T_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56145.10]
  assign _GEN_85 = io_in_a_valid & _T_197; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56255.10]
  assign _GEN_103 = io_in_a_valid & _T_270; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56376.10]
  assign _GEN_115 = io_in_a_valid & _T_303; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56435.10]
  assign _GEN_125 = io_in_a_valid & _T_332; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56486.10]
  assign _GEN_135 = io_in_a_valid & _T_363; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56539.10]
  assign _GEN_145 = io_in_a_valid & _T_392; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56590.10]
  assign _GEN_155 = io_in_a_valid & _T_421; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56641.10]
  assign _GEN_167 = io_in_d_valid & _T_483; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56730.10]
  assign _GEN_177 = io_in_d_valid & _T_503; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56772.10]
  assign _GEN_189 = io_in_d_valid & _T_531; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56830.10]
  assign _GEN_201 = io_in_d_valid & _T_560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56889.10]
  assign _GEN_207 = io_in_d_valid & _T_577; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56924.10]
  assign _GEN_213 = io_in_d_valid & _T_595; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56960.10]
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
  _T_636 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_647 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_648 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_649 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_650 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  _T_651 = _RAND_5[13:0];
  _RAND_6 = {1{`RANDOM}};
  _T_684 = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  _T_695 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_696 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_697 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_698 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  _T_699 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  _T_700 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[18:0];
  _RAND_14 = {3{`RANDOM}};
  inflight_opcodes = _RAND_14[75:0];
  _RAND_15 = {5{`RANDOM}};
  inflight_sizes = _RAND_15[151:0];
  _RAND_16 = {1{`RANDOM}};
  _T_738 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  _T_756 = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  _T_884 = _RAND_18[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_636 <= 10'h0;
    end else if (_T_627) begin
      if (_T_639) begin
        if (_T_634) begin
          _T_636 <= _T_31[11:2];
        end else begin
          _T_636 <= 10'h0;
        end
      end else begin
        _T_636 <= _T_638;
      end
    end
    if (_T_675) begin
      _T_647 <= io_in_a_bits_opcode;
    end
    if (_T_675) begin
      _T_648 <= io_in_a_bits_param;
    end
    if (_T_675) begin
      _T_649 <= io_in_a_bits_size;
    end
    if (_T_675) begin
      _T_650 <= io_in_a_bits_source;
    end
    if (_T_675) begin
      _T_651 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_684 <= 10'h0;
    end else if (_T_676) begin
      if (_T_687) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_684 <= _T_680[11:2];
        end else begin
          _T_684 <= 10'h0;
        end
      end else begin
        _T_684 <= _T_686;
      end
    end
    if (_T_728) begin
      _T_695 <= io_in_d_bits_opcode;
    end
    if (_T_728) begin
      _T_696 <= io_in_d_bits_param;
    end
    if (_T_728) begin
      _T_697 <= io_in_d_bits_size;
    end
    if (_T_728) begin
      _T_698 <= io_in_d_bits_source;
    end
    if (_T_728) begin
      _T_699 <= io_in_d_bits_sink;
    end
    if (_T_728) begin
      _T_700 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 19'h0;
    end else begin
      inflight <= _T_877;
    end
    if (reset) begin
      inflight_opcodes <= 76'h0;
    end else begin
      inflight_opcodes <= _T_880;
    end
    if (reset) begin
      inflight_sizes <= 152'h0;
    end else begin
      inflight_sizes <= _T_883;
    end
    if (reset) begin
      _T_738 <= 10'h0;
    end else if (_T_627) begin
      if (a_first) begin
        if (_T_634) begin
          _T_738 <= _T_31[11:2];
        end else begin
          _T_738 <= 10'h0;
        end
      end else begin
        _T_738 <= _T_740;
      end
    end
    if (reset) begin
      _T_756 <= 10'h0;
    end else if (_T_676) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_756 <= _T_680[11:2];
        end else begin
          _T_756 <= 10'h0;
        end
      end else begin
        _T_756 <= _T_758;
      end
    end
    if (reset) begin
      _T_884 <= 32'h0;
    end else if (_T_898) begin
      _T_884 <= 32'h0;
    end else begin
      _T_884 <= _T_895;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56145.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56146.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56190.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56191.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56197.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56198.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56205.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56206.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56220.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56221.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56229.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56230.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_139) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56300.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_173) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56301.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56307.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56308.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_180) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56315.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_180) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56316.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56322.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56323.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56330.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56331.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_260) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56338.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_260) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56339.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_192) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56347.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_192) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56348.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56355.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56356.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56376.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56377.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56383.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56384.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56390.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56391.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56398.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56399.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56406.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56407.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56414.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56415.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56486.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56487.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56493.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56494.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_294) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_294) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56518.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56519.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_377) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56546.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56547.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56553.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56554.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_387) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56561.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_387) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56562.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56569.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56570.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56590.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_377) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56591.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56597.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56598.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56604.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56605.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_416) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56612.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_416) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56613.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56620.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56621.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_284) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56641.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_284) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56642.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_176) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56648.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_176) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56649.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_183) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56655.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_183) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56656.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_445) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56663.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_445) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56664.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_298) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56671.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_298) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56672.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_196) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56679.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_196) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@56680.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_457) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56690.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_457) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56691.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56730.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56731.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56738.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56739.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_494) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56755.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_502) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56762.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_502) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56763.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56772.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56773.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56779.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56780.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56787.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56788.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56795.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_517) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56796.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56803.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_521) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56804.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56811.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56812.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56830.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56831.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56837.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_139) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56838.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_490) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56845.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_490) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56846.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56853.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_517) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56854.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56861.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_521) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56862.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56870.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56871.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56889.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56890.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56897.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_494) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56898.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56905.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56906.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56924.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56925.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56932.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_494) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56933.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56941.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56942.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56960.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_486) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56961.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56968.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_494) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56969.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@56977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57056.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57057.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_661) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57064.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_661) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57065.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_665) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57072.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_665) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57073.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_669) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57080.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_669) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57081.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_653 & _T_673) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57088.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_653 & _T_673) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57089.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_706) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57137.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_706) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57138.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_710) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57145.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_710) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57146.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57153.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_714) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57154.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57161.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57162.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57169.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_722) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57170.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57177.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57178.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_785 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57314.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_785 & _T_801) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57315.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_835) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57365.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_835) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57366.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_848) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57382.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_848) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57383.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_824 & _T_855) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57393.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_824 & _T_855) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57394.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_862 & _T_867) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57411.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_862 & _T_867) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57412.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_874) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57423.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_874) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@57424.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_893) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CanHaveBuiltInDevices.scala:33:32)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57451.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_893) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@57452.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
