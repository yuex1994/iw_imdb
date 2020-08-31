module TLMonitor_45( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107574.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107575.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107576.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [1:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [9:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [11:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [1:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
  input  [9:0]  io_in_d_bits_source // @[:freechips.rocketchip.system.DefaultRV32Config.fir@107577.4]
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
  reg [607:0] _RAND_10;
  reg [2431:0] _RAND_11;
  reg [2431:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@108853.4]
  wire  _T_10; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@107594.6]
  wire [4:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@107600.6]
  wire [1:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@107602.6]
  wire [11:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@107603.6]
  wire [11:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@107603.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@107604.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@107607.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@107609.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@107610.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@107613.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107615.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107616.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107618.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107619.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@107622.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107623.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107624.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107625.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107626.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107627.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107628.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107629.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107630.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107631.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107632.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107633.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107634.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@107637.6]
  wire [12:0] _T_62; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@107648.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@107660.6]
  wire [12:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@107666.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@107667.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107672.8]
  wire  _T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107685.8]
  wire  _T_87; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107686.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107693.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107694.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107700.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107701.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@107706.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107708.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107709.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@107714.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@107715.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107717.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107718.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@107723.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107725.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107726.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@107732.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@107786.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107788.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107789.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@107812.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@107815.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@107823.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107826.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107827.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@107846.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107848.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107849.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@107854.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107856.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107857.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@107871.6]
  wire  _T_212; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@107922.6]
  wire [3:0] _T_237; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@107964.8]
  wire [3:0] _T_238; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@107965.8]
  wire  _T_239; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@107966.8]
  wire  _T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107968.8]
  wire  _T_242; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107969.8]
  wire  _T_243; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@107975.6]
  wire  _T_261; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@108006.8]
  wire  _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108008.8]
  wire  _T_264; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108009.8]
  wire  _T_269; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@108023.6]
  wire  _T_287; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@108054.8]
  wire  _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108056.8]
  wire  _T_290; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108057.8]
  wire  _T_295; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@108071.6]
  wire  _T_313; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@108102.8]
  wire  _T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108104.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108105.8]
  wire  _T_325; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@108129.6]
  wire  _T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108131.6]
  wire  _T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108132.6]
  wire  _T_335; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@108143.6]
  wire  _T_339; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@108149.6]
  wire  _T_341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108152.8]
  wire  _T_342; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108153.8]
  wire  _T_343; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@108158.8]
  wire  _T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108160.8]
  wire  _T_346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108161.8]
  wire  _T_359; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@108191.6]
  wire  _T_387; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@108249.6]
  wire  _T_416; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@108308.6]
  wire  _T_433; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@108343.6]
  wire  _T_451; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@108379.6]
  wire  _T_483; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@108445.4]
  reg  _T_492; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@108454.4]
  wire  _T_494; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108456.4]
  wire  _T_495; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108457.4]
  reg [2:0] _T_503; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@108468.4]
  reg [2:0] _T_504; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@108469.4]
  reg [1:0] _T_505; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@108470.4]
  reg [9:0] _T_506; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@108471.4]
  reg [11:0] _T_507; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@108472.4]
  wire  _T_508; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@108473.4]
  wire  _T_509; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@108474.4]
  wire  _T_510; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@108476.6]
  wire  _T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108478.6]
  wire  _T_513; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108479.6]
  wire  _T_514; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@108484.6]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108486.6]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108487.6]
  wire  _T_518; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@108492.6]
  wire  _T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108494.6]
  wire  _T_521; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108495.6]
  wire  _T_522; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@108500.6]
  wire  _T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108502.6]
  wire  _T_525; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108503.6]
  wire  _T_526; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@108508.6]
  wire  _T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108510.6]
  wire  _T_529; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108511.6]
  wire  _T_531; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@108518.4]
  wire  _T_532; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@108526.4]
  reg  _T_540; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@108534.4]
  wire  _T_542; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108536.4]
  wire  _T_543; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108537.4]
  reg [2:0] _T_551; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@108548.4]
  reg [1:0] _T_553; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@108550.4]
  reg [9:0] _T_554; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@108551.4]
  wire  _T_557; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@108554.4]
  wire  _T_558; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@108555.4]
  wire  _T_559; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@108557.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108559.6]
  wire  _T_562; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108560.6]
  wire  _T_567; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@108573.6]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108575.6]
  wire  _T_570; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108576.6]
  wire  _T_571; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@108581.6]
  wire  _T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108583.6]
  wire  _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108584.6]
  wire  _T_584; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@108607.4]
  reg [607:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@108616.4]
  reg [2431:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@108617.4]
  reg [2431:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@108618.4]
  reg  _T_594; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@108628.4]
  wire  _T_596; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108630.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108631.4]
  reg  _T_612; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@108650.4]
  wire  _T_614; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108652.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108653.4]
  wire [11:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@108672.4]
  wire [12:0] _T_622; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@108672.4]
  wire [2431:0] _T_623; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@108673.4]
  wire [15:0] _T_627; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@108677.4]
  wire [2431:0] _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@108678.4]
  wire [2431:0] _T_628; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@108678.4]
  wire [2431:0] _T_629; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@108679.4]
  wire [2431:0] _T_631; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@108684.4]
  wire [2431:0] _T_636; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@108689.4]
  wire [2431:0] _T_637; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@108690.4]
  wire  _T_641; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@108715.4]
  wire [1023:0] _T_643; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@108718.6]
  wire [3:0] _T_644; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@108720.6]
  wire [3:0] _T_645; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@108721.6]
  wire [2:0] _T_646; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@108723.6]
  wire [2:0] _T_647; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@108724.6]
  wire [11:0] _GEN_63; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@108726.6]
  wire [12:0] _T_648; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@108726.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  wire [8194:0] _GEN_64; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@108727.6]
  wire [8194:0] _T_649; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@108727.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  wire [8193:0] _GEN_66; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@108730.6]
  wire [8193:0] _T_651; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@108730.6]
  wire [607:0] _T_652; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@108732.6]
  wire  _T_654; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@108734.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108736.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108737.6]
  wire [1023:0] _GEN_15; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  wire [8194:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  wire [8193:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  wire  _T_660; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@108751.4]
  wire  _T_662; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@108753.4]
  wire  _T_663; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@108754.4]
  wire [1023:0] _T_664; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@108756.6]
  wire [8206:0] _GEN_68; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@108763.6]
  wire [8206:0] _T_670; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@108763.6]
  wire [1023:0] _GEN_20; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@108755.4]
  wire [8206:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@108755.4]
  wire  _T_677; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@108773.4]
  wire  _T_680; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@108776.4]
  wire [607:0] _T_681; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@108778.6]
  wire  _T_683; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@108780.6]
  wire  _T_684; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@108781.6]
  wire  _T_685; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@108782.6]
  wire  _T_686; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@108783.6]
  wire  _T_687; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@108784.6]
  wire  _T_688; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@108785.6]
  wire  _T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108787.6]
  wire  _T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108788.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108670.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108671.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@108680.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire  _T_693; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  wire  _T_695; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  wire  _T_696; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@108797.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire  _T_697; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  wire  _T_698; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  wire  _T_699; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@108800.6]
  wire  _T_700; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@108801.6]
  wire  _T_701; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@108802.6]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108804.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108805.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108681.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108682.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@108691.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@108810.6]
  wire  _T_705; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@108810.6]
  wire  _T_707; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@108812.6]
  wire  _T_708; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@108813.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108815.6]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108816.6]
  wire  _T_713; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@108823.4]
  wire  _T_714; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@108824.4]
  wire  _T_716; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@108826.4]
  wire  _T_718; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@108828.4]
  wire  _T_719; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@108830.6]
  wire  _T_720; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@108831.6]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108833.6]
  wire  _T_723; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108834.6]
  wire [607:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108664.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108665.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@108719.6]
  wire [607:0] _T_724; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@108840.4]
  wire [607:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108743.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108744.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@108757.6]
  wire [607:0] _T_725; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@108841.4]
  wire [607:0] _T_726; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@108842.4]
  wire [2431:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108666.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108667.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@108728.6]
  wire [2431:0] _T_727; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@108844.4]
  wire [2431:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108745.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108746.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@108764.6]
  wire [2431:0] _T_728; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@108845.4]
  wire [2431:0] _T_729; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@108846.4]
  wire [2431:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108668.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108669.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@108731.6]
  wire [2431:0] _T_730; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@108848.4]
  wire [2431:0] _T_732; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@108850.4]
  reg [31:0] _T_733; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@108852.4]
  wire  _T_734; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@108855.4]
  wire  _T_735; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@108856.4]
  wire  _T_736; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@108857.4]
  wire  _T_737; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@108858.4]
  wire  _T_738; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@108859.4]
  wire  _T_739; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@108860.4]
  wire  _T_741; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108862.4]
  wire  _T_742; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108863.4]
  wire [31:0] _T_744; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@108869.4]
  wire  _T_747; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@108873.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107674.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107746.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107829.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107888.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107939.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107989.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108037.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108085.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108155.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108197.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108255.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108314.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108349.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108385.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@108853.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@107594.6]
  assign _T_14 = 5'h3 << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@107600.6]
  assign _T_16 = ~_T_14[1:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@107602.6]
  assign _GEN_56 = {{10'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@107603.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@107603.6]
  assign _T_18 = _T_17 == 12'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@107604.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@107607.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@107609.6]
  assign _T_24 = io_in_a_bits_size >= 2'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@107610.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@107613.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107615.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107616.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107618.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107619.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@107622.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107623.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107624.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107625.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107626.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107627.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107628.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107629.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107630.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107631.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@107632.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@107633.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@107634.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@107637.6]
  assign _T_62 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@107648.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@107660.6]
  assign _T_75 = $signed(_T_62) & -13'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@107666.8]
  assign _T_76 = $signed(_T_75) == 13'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@107667.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107672.8]
  assign _T_86 = _T_10 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107685.8]
  assign _T_87 = ~_T_86; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107686.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107693.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107694.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107700.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107701.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@107706.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107708.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107709.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@107714.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@107715.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107717.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107718.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@107723.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107725.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107726.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@107732.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@107786.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107788.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107789.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@107812.6]
  assign _T_152 = io_in_a_bits_size <= 2'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@107815.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@107823.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107826.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107827.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@107846.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107848.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107849.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@107854.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107856.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107857.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@107871.6]
  assign _T_212 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@107922.6]
  assign _T_237 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@107964.8]
  assign _T_238 = io_in_a_bits_mask & _T_237; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@107965.8]
  assign _T_239 = _T_238 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@107966.8]
  assign _T_241 = _T_239 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107968.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107969.8]
  assign _T_243 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@107975.6]
  assign _T_261 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@108006.8]
  assign _T_263 = _T_261 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108008.8]
  assign _T_264 = ~_T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108009.8]
  assign _T_269 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@108023.6]
  assign _T_287 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@108054.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108056.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108057.8]
  assign _T_295 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@108071.6]
  assign _T_313 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@108102.8]
  assign _T_315 = _T_313 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108104.8]
  assign _T_316 = ~_T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108105.8]
  assign _T_325 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@108129.6]
  assign _T_327 = _T_325 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108131.6]
  assign _T_328 = ~_T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108132.6]
  assign _T_335 = io_in_d_bits_source <= 10'h25f; // @[Parameters.scala 58:20:freechips.rocketchip.system.DefaultRV32Config.fir@108143.6]
  assign _T_339 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@108149.6]
  assign _T_341 = _T_335 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108152.8]
  assign _T_342 = ~_T_341; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108153.8]
  assign _T_343 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@108158.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108160.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108161.8]
  assign _T_359 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@108191.6]
  assign _T_387 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@108249.6]
  assign _T_416 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@108308.6]
  assign _T_433 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@108343.6]
  assign _T_451 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@108379.6]
  assign _T_483 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@108445.4]
  assign _T_494 = _T_492 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108456.4]
  assign _T_495 = ~_T_492; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108457.4]
  assign _T_508 = ~_T_495; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@108473.4]
  assign _T_509 = io_in_a_valid & _T_508; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@108474.4]
  assign _T_510 = io_in_a_bits_opcode == _T_503; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@108476.6]
  assign _T_512 = _T_510 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108478.6]
  assign _T_513 = ~_T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108479.6]
  assign _T_514 = io_in_a_bits_param == _T_504; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@108484.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108486.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108487.6]
  assign _T_518 = io_in_a_bits_size == _T_505; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@108492.6]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108494.6]
  assign _T_521 = ~_T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108495.6]
  assign _T_522 = io_in_a_bits_source == _T_506; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@108500.6]
  assign _T_524 = _T_522 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108502.6]
  assign _T_525 = ~_T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108503.6]
  assign _T_526 = io_in_a_bits_address == _T_507; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@108508.6]
  assign _T_528 = _T_526 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108510.6]
  assign _T_529 = ~_T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108511.6]
  assign _T_531 = _T_483 & _T_495; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@108518.4]
  assign _T_532 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@108526.4]
  assign _T_542 = _T_540 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108536.4]
  assign _T_543 = ~_T_540; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108537.4]
  assign _T_557 = ~_T_543; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@108554.4]
  assign _T_558 = io_in_d_valid & _T_557; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@108555.4]
  assign _T_559 = io_in_d_bits_opcode == _T_551; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@108557.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108559.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108560.6]
  assign _T_567 = io_in_d_bits_size == _T_553; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@108573.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108575.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108576.6]
  assign _T_571 = io_in_d_bits_source == _T_554; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@108581.6]
  assign _T_573 = _T_571 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108583.6]
  assign _T_574 = ~_T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108584.6]
  assign _T_584 = _T_532 & _T_543; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@108607.4]
  assign _T_596 = _T_594 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108630.4]
  assign a_first = ~_T_594; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108631.4]
  assign _T_614 = _T_612 - 1'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@108652.4]
  assign d_first = ~_T_612; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@108653.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@108672.4]
  assign _T_622 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@108672.4]
  assign _T_623 = inflight_opcodes >> _T_622; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@108673.4]
  assign _T_627 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@108677.4]
  assign _GEN_58 = {{2416'd0}, _T_627}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@108678.4]
  assign _T_628 = _T_623 & _GEN_58; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@108678.4]
  assign _T_629 = {{1'd0}, _T_628[2431:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@108679.4]
  assign _T_631 = inflight_sizes >> _T_622; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@108684.4]
  assign _T_636 = _T_631 & _GEN_58; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@108689.4]
  assign _T_637 = {{1'd0}, _T_636[2431:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@108690.4]
  assign _T_641 = _T_483 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@108715.4]
  assign _T_643 = 1024'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@108718.6]
  assign _T_644 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@108720.6]
  assign _T_645 = _T_644 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@108721.6]
  assign _T_646 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@108723.6]
  assign _T_647 = _T_646 | 3'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@108724.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@108726.6]
  assign _T_648 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@108726.6]
  assign a_opcodes_set_interm = _T_641 ? _T_645 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  assign _GEN_64 = {{8191'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@108727.6]
  assign _T_649 = _GEN_64 << _T_648; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@108727.6]
  assign a_sizes_set_interm = _T_641 ? _T_647 : 3'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  assign _GEN_66 = {{8191'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@108730.6]
  assign _T_651 = _GEN_66 << _T_648; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@108730.6]
  assign _T_652 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@108732.6]
  assign _T_654 = ~_T_652[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@108734.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108736.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108737.6]
  assign _GEN_15 = _T_641 ? _T_643 : 1024'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  assign _GEN_18 = _T_641 ? _T_649 : 8195'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  assign _GEN_19 = _T_641 ? _T_651 : 8194'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@108717.4]
  assign _T_660 = _T_532 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@108751.4]
  assign _T_662 = ~_T_339; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@108753.4]
  assign _T_663 = _T_660 & _T_662; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@108754.4]
  assign _T_664 = 1024'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@108756.6]
  assign _GEN_68 = {{8191'd0}, _T_627}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@108763.6]
  assign _T_670 = _GEN_68 << _T_622; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@108763.6]
  assign _GEN_20 = _T_663 ? _T_664 : 1024'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@108755.4]
  assign _GEN_21 = _T_663 ? _T_670 : 8207'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@108755.4]
  assign _T_677 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@108773.4]
  assign _T_680 = _T_677 & _T_662; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@108776.4]
  assign _T_681 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@108778.6]
  assign _T_683 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@108780.6]
  assign _T_684 = io_in_a_valid & _T_683; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@108781.6]
  assign _T_685 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@108782.6]
  assign _T_686 = _T_684 & _T_685; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@108783.6]
  assign _T_687 = _T_686 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@108784.6]
  assign _T_688 = _T_681[0] | _T_687; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@108785.6]
  assign _T_690 = _T_688 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108787.6]
  assign _T_691 = ~_T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108788.6]
  assign a_opcode_lookup = _T_629[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108670.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108671.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@108680.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _T_693 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@108794.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  assign _T_695 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@108796.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@108797.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _T_697 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@108798.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  assign _T_698 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@108799.6]
  assign _T_699 = _T_697 | _T_698; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@108800.6]
  assign _T_700 = io_in_a_valid & _T_699; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@108801.6]
  assign _T_701 = _T_696 | _T_700; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@108802.6]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108804.6]
  assign _T_704 = ~_T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108805.6]
  assign a_size_lookup = _T_637[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108681.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108682.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@108691.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@108810.6]
  assign _T_705 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@108810.6]
  assign _T_707 = io_in_a_valid & _T_685; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@108812.6]
  assign _T_708 = _T_705 | _T_707; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@108813.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108815.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108816.6]
  assign _T_713 = _T_677 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@108823.4]
  assign _T_714 = _T_713 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@108824.4]
  assign _T_716 = _T_714 & _T_683; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@108826.4]
  assign _T_718 = _T_716 & _T_662; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@108828.4]
  assign _T_719 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@108830.6]
  assign _T_720 = _T_719 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@108831.6]
  assign _T_722 = _T_720 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108833.6]
  assign _T_723 = ~_T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108834.6]
  assign a_set = _GEN_15[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108664.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108665.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@108719.6]
  assign _T_724 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@108840.4]
  assign d_clr = _GEN_20[607:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108743.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108744.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@108757.6]
  assign _T_725 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@108841.4]
  assign _T_726 = _T_724 & _T_725; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@108842.4]
  assign a_opcodes_set = _GEN_18[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108666.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108667.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@108728.6]
  assign _T_727 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@108844.4]
  assign d_opcodes_clr = _GEN_21[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108745.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108746.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@108764.6]
  assign _T_728 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@108845.4]
  assign _T_729 = _T_727 & _T_728; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@108846.4]
  assign a_sizes_set = _GEN_19[2431:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@108668.4 :freechips.rocketchip.system.DefaultRV32Config.fir@108669.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@108731.6]
  assign _T_730 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@108848.4]
  assign _T_732 = _T_730 & _T_728; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@108850.4]
  assign _T_734 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@108855.4]
  assign _T_735 = ~_T_734; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@108856.4]
  assign _T_736 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@108857.4]
  assign _T_737 = _T_735 | _T_736; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@108858.4]
  assign _T_738 = _T_733 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@108859.4]
  assign _T_739 = _T_737 | _T_738; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@108860.4]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108862.4]
  assign _T_742 = ~_T_741; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108863.4]
  assign _T_744 = _T_733 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@108869.4]
  assign _T_747 = _T_483 | _T_532; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@108873.4]
  assign _GEN_72 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107674.10]
  assign _GEN_88 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107746.10]
  assign _GEN_106 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107829.10]
  assign _GEN_118 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107888.10]
  assign _GEN_128 = io_in_a_valid & _T_212; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107939.10]
  assign _GEN_138 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107989.10]
  assign _GEN_148 = io_in_a_valid & _T_269; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108037.10]
  assign _GEN_158 = io_in_a_valid & _T_295; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108085.10]
  assign _GEN_170 = io_in_d_valid & _T_339; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108155.10]
  assign _GEN_174 = io_in_d_valid & _T_359; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108197.10]
  assign _GEN_180 = io_in_d_valid & _T_387; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108255.10]
  assign _GEN_186 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108314.10]
  assign _GEN_188 = io_in_d_valid & _T_433; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108349.10]
  assign _GEN_190 = io_in_d_valid & _T_451; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108385.10]
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
  _T_492 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  _T_503 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_504 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_505 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  _T_506 = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  _T_507 = _RAND_5[11:0];
  _RAND_6 = {1{`RANDOM}};
  _T_540 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  _T_551 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_553 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_554 = _RAND_9[9:0];
  _RAND_10 = {19{`RANDOM}};
  inflight = _RAND_10[607:0];
  _RAND_11 = {76{`RANDOM}};
  inflight_opcodes = _RAND_11[2431:0];
  _RAND_12 = {76{`RANDOM}};
  inflight_sizes = _RAND_12[2431:0];
  _RAND_13 = {1{`RANDOM}};
  _T_594 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  _T_612 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  _T_733 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_492 <= 1'h0;
    end else if (_T_483) begin
      if (_T_495) begin
        _T_492 <= 1'h0;
      end else begin
        _T_492 <= _T_494;
      end
    end
    if (_T_531) begin
      _T_503 <= io_in_a_bits_opcode;
    end
    if (_T_531) begin
      _T_504 <= io_in_a_bits_param;
    end
    if (_T_531) begin
      _T_505 <= io_in_a_bits_size;
    end
    if (_T_531) begin
      _T_506 <= io_in_a_bits_source;
    end
    if (_T_531) begin
      _T_507 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_540 <= 1'h0;
    end else if (_T_532) begin
      if (_T_543) begin
        _T_540 <= 1'h0;
      end else begin
        _T_540 <= _T_542;
      end
    end
    if (_T_584) begin
      _T_551 <= io_in_d_bits_opcode;
    end
    if (_T_584) begin
      _T_553 <= io_in_d_bits_size;
    end
    if (_T_584) begin
      _T_554 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 608'h0;
    end else begin
      inflight <= _T_726;
    end
    if (reset) begin
      inflight_opcodes <= 2432'h0;
    end else begin
      inflight_opcodes <= _T_729;
    end
    if (reset) begin
      inflight_sizes <= 2432'h0;
    end else begin
      inflight_sizes <= _T_732;
    end
    if (reset) begin
      _T_594 <= 1'h0;
    end else if (_T_483) begin
      if (a_first) begin
        _T_594 <= 1'h0;
      end else begin
        _T_594 <= _T_596;
      end
    end
    if (reset) begin
      _T_612 <= 1'h0;
    end else if (_T_532) begin
      if (d_first) begin
        _T_612 <= 1'h0;
      end else begin
        _T_612 <= _T_614;
      end
    end
    if (reset) begin
      _T_733 <= 32'h0;
    end else if (_T_747) begin
      _T_733 <= 32'h0;
    end else begin
      _T_733 <= _T_744;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107674.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107675.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107688.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107689.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107696.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107697.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107703.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107704.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107728.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107729.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107753.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107754.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107760.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107761.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107768.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107769.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107775.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107776.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107783.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107784.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_140) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107791.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_140) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107792.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107800.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107801.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107808.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107829.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107830.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107836.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107837.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107852.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107859.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107860.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107867.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107868.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107888.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107889.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107895.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107896.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107902.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107903.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107910.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107911.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107918.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107919.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107939.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107940.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107946.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107947.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107953.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107954.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107961.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107962.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107971.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107972.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107989.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107990.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107996.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@107997.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108003.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108004.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_264) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108011.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_264) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108012.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108019.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108020.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108038.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108044.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108045.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108051.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108052.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_290) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108059.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_290) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108060.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108067.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108068.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108085.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108086.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_87) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108092.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_87) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108093.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108099.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108100.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_316) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108107.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_316) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108108.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108115.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108116.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108123.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108124.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108134.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108135.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108155.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108156.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108163.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108164.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108197.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108198.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108204.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108205.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108262.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108263.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108270.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108271.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108314.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108315.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108349.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108350.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108385.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108386.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108481.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108482.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108489.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108490.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108497.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108498.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108505.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108506.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108513.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108514.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108562.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108563.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108578.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108579.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108586.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108587.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108739.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108740.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108790.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108791.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108807.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108808.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Periphery.scala:84:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108818.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108819.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108836.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@108837.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_742) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Periphery.scala:84:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108865.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_742) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@108866.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
