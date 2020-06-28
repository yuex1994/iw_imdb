module TLMonitor_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1832.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1833.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1834.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [31:0] io_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [2:0]  io_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [3:0]  io_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [31:0] io_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input         io_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
  input  [1:0]  io_in_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@1835.4]
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@4698.4]
  wire  _T_4; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1846.6]
  wire  _T_5; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1847.6]
  wire  _T_6; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1848.6]
  wire  _T_8; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@1854.6]
  wire  _T_9; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@1855.6]
  wire [26:0] _T_11; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@1857.6]
  wire [11:0] _T_13; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@1859.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@1860.6]
  wire [31:0] _T_14; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@1860.6]
  wire  _T_15; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@1861.6]
  wire [1:0] _T_18; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@1864.6]
  wire [1:0] _T_20; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@1866.6]
  wire  _T_21; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@1867.6]
  wire  _T_24; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@1870.6]
  wire  _T_26; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1872.6]
  wire  _T_27; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1873.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1875.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1876.6]
  wire  _T_33; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@1879.6]
  wire  _T_34; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1880.6]
  wire  _T_35; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1881.6]
  wire  _T_36; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1882.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1883.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1884.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1885.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1886.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1887.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1888.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1889.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1890.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1891.6]
  wire [3:0] _T_48; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@1894.6]
  wire [32:0] _T_52; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1898.6]
  wire  _T_78; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@1928.6]
  wire [32:0] _T_83; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1934.8]
  wire  _T_84; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1935.8]
  wire [31:0] _T_85; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1936.8]
  wire [32:0] _T_86; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1937.8]
  wire [32:0] _T_88; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1939.8]
  wire  _T_89; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1940.8]
  wire [31:0] _T_90; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1941.8]
  wire [32:0] _T_91; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1942.8]
  wire [32:0] _T_93; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1944.8]
  wire  _T_94; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1945.8]
  wire [31:0] _T_95; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1946.8]
  wire [32:0] _T_96; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1947.8]
  wire [32:0] _T_98; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1949.8]
  wire  _T_99; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1950.8]
  wire [31:0] _T_100; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1951.8]
  wire [32:0] _T_101; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1952.8]
  wire [32:0] _T_103; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1954.8]
  wire  _T_104; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1955.8]
  wire [31:0] _T_105; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1956.8]
  wire [32:0] _T_106; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1957.8]
  wire [32:0] _T_108; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1959.8]
  wire  _T_109; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1960.8]
  wire  _T_110; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@1961.8]
  wire  _T_117; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@1968.8]
  wire [31:0] _T_120; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1971.8]
  wire [32:0] _T_121; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1972.8]
  wire [32:0] _T_123; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1974.8]
  wire  _T_124; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1975.8]
  wire  _T_125; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@1976.8]
  wire  _T_129; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1980.8]
  wire  _T_130; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1981.8]
  wire  _T_135; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@1994.8]
  wire  _T_136; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@1995.8]
  wire  _T_143; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2003.8]
  wire  _T_144; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2004.8]
  wire  _T_146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2010.8]
  wire  _T_147; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2011.8]
  wire  _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2018.8]
  wire  _T_151; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2019.8]
  wire  _T_153; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2025.8]
  wire  _T_154; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2026.8]
  wire  _T_155; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@2031.8]
  wire  _T_157; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2033.8]
  wire  _T_158; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2034.8]
  wire [3:0] _T_159; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@2039.8]
  wire  _T_160; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@2040.8]
  wire  _T_162; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2042.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2043.8]
  wire  _T_164; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@2048.8]
  wire  _T_166; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2050.8]
  wire  _T_167; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2051.8]
  wire  _T_168; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@2057.6]
  wire  _T_249; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@2168.8]
  wire  _T_251; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2170.8]
  wire  _T_252; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2171.8]
  wire  _T_262; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@2194.6]
  wire  _T_264; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2197.8]
  wire  _T_272; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2205.8]
  wire  _T_307; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2240.8]
  wire  _T_308; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2241.8]
  wire  _T_309; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2242.8]
  wire  _T_310; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2243.8]
  wire  _T_311; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2244.8]
  wire  _T_312; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2245.8]
  wire  _T_314; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2247.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2249.8]
  wire  _T_317; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2250.8]
  wire  _T_324; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@2269.8]
  wire  _T_326; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2271.8]
  wire  _T_327; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2272.8]
  wire  _T_328; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@2277.8]
  wire  _T_330; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2279.8]
  wire  _T_331; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2280.8]
  wire  _T_336; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@2294.6]
  wire  _T_371; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2330.8]
  wire  _T_372; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2331.8]
  wire  _T_373; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2332.8]
  wire  _T_374; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2333.8]
  wire  _T_383; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2342.8]
  wire  _T_391; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2350.8]
  wire  _T_393; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2352.8]
  wire  _T_395; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2354.8]
  wire  _T_397; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2356.8]
  wire  _T_398; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2357.8]
  wire  _T_413; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@2393.6]
  wire [3:0] _T_486; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@2483.8]
  wire [3:0] _T_487; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@2484.8]
  wire  _T_488; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@2485.8]
  wire  _T_490; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2487.8]
  wire  _T_491; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2488.8]
  wire  _T_492; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@2494.6]
  wire  _T_494; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2497.8]
  wire  _T_518; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2521.8]
  wire  _T_519; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2522.8]
  wire  _T_520; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2523.8]
  wire  _T_543; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2546.8]
  wire  _T_544; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2547.8]
  wire  _T_551; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@2566.8]
  wire  _T_553; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2568.8]
  wire  _T_554; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2569.8]
  wire  _T_559; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@2583.6]
  wire  _T_618; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@2655.8]
  wire  _T_620; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2657.8]
  wire  _T_621; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2658.8]
  wire  _T_626; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@2672.6]
  wire  _T_677; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2724.8]
  wire  _T_678; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2725.8]
  wire  _T_685; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@2744.8]
  wire  _T_687; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2746.8]
  wire  _T_688; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2747.8]
  wire  _T_697; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@2771.6]
  wire  _T_699; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2773.6]
  wire  _T_700; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2774.6]
  wire  _T_701; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2779.6]
  wire  _T_702; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2780.6]
  wire  _T_703; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2781.6]
  wire  _T_705; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@2787.6]
  wire  _T_706; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@2788.6]
  wire  _T_708; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@2790.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2793.8]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2794.8]
  wire  _T_712; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@2799.8]
  wire  _T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2801.8]
  wire  _T_715; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2802.8]
  wire  _T_716; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@2807.8]
  wire  _T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2809.8]
  wire  _T_719; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2810.8]
  wire  _T_720; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@2815.8]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2817.8]
  wire  _T_723; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2818.8]
  wire  _T_724; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@2823.8]
  wire  _T_726; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2825.8]
  wire  _T_727; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2826.8]
  wire  _T_728; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@2832.6]
  wire  _T_739; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@2856.8]
  wire  _T_741; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2858.8]
  wire  _T_742; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2859.8]
  wire  _T_743; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@2864.8]
  wire  _T_745; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2866.8]
  wire  _T_746; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2867.8]
  wire  _T_756; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@2890.6]
  wire  _T_776; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@2931.8]
  wire  _T_778; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2933.8]
  wire  _T_779; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2934.8]
  wire  _T_785; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@2949.6]
  wire  _T_802; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@2984.6]
  wire  _T_820; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@3020.6]
  wire [32:0] _T_844; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3068.6]
  wire [31:0] _T_870; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3098.6]
  wire [32:0] _T_871; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3099.6]
  wire [32:0] _T_873; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3101.6]
  wire  _T_874; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3102.6]
  wire [31:0] _T_875; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3103.6]
  wire [32:0] _T_876; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3104.6]
  wire [32:0] _T_878; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3106.6]
  wire  _T_879; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3107.6]
  wire [31:0] _T_880; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3108.6]
  wire [32:0] _T_881; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3109.6]
  wire [32:0] _T_883; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3111.6]
  wire  _T_884; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3112.6]
  wire [32:0] _T_888; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3116.6]
  wire  _T_889; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3117.6]
  wire [31:0] _T_890; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3118.6]
  wire [32:0] _T_891; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3119.6]
  wire [32:0] _T_893; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3121.6]
  wire  _T_894; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3122.6]
  wire [31:0] _T_895; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3123.6]
  wire [32:0] _T_896; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3124.6]
  wire [32:0] _T_898; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3126.6]
  wire  _T_899; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3127.6]
  wire [31:0] _T_900; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3128.6]
  wire [32:0] _T_901; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3129.6]
  wire [32:0] _T_903; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3131.6]
  wire  _T_904; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3132.6]
  wire  _T_906; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3142.6]
  wire  _T_907; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3143.6]
  wire  _T_908; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3144.6]
  wire  _T_909; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3145.6]
  wire  _T_910; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3146.6]
  wire  _T_911; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3147.6]
  wire [31:0] _T_916; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3152.6]
  wire  _T_917; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@3153.6]
  wire  _T_978; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3229.8]
  wire  _T_979; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3230.8]
  wire  _T_984; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3243.8]
  wire  _T_985; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3244.8]
  wire  _T_986; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@3249.8]
  wire  _T_988; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3251.8]
  wire  _T_989; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3252.8]
  wire  _T_1134; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3576.6]
  wire  _T_1135; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3577.6]
  wire  _T_1136; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3578.6]
  wire  _T_1138; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@3584.6]
  wire  _T_1139; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@3585.6]
  wire [26:0] _T_1141; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@3587.6]
  wire [11:0] _T_1143; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@3589.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3590.6]
  wire [31:0] _T_1144; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3590.6]
  wire  _T_1145; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@3591.6]
  wire [31:0] _T_1146; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3592.6]
  wire [32:0] _T_1147; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3593.6]
  wire [32:0] _T_1149; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3595.6]
  wire  _T_1150; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3596.6]
  wire [31:0] _T_1151; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3597.6]
  wire [32:0] _T_1152; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3598.6]
  wire [32:0] _T_1154; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3600.6]
  wire  _T_1155; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3601.6]
  wire [31:0] _T_1156; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3602.6]
  wire [32:0] _T_1157; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3603.6]
  wire [32:0] _T_1159; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3605.6]
  wire  _T_1160; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3606.6]
  wire [32:0] _T_1162; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3608.6]
  wire [32:0] _T_1164; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3610.6]
  wire  _T_1165; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3611.6]
  wire [31:0] _T_1166; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3612.6]
  wire [32:0] _T_1167; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3613.6]
  wire [32:0] _T_1169; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3615.6]
  wire  _T_1170; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3616.6]
  wire [31:0] _T_1171; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3617.6]
  wire [32:0] _T_1172; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3618.6]
  wire [32:0] _T_1174; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3620.6]
  wire  _T_1175; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3621.6]
  wire [31:0] _T_1176; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3622.6]
  wire [32:0] _T_1177; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3623.6]
  wire [32:0] _T_1179; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3625.6]
  wire  _T_1180; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3626.6]
  wire  _T_1182; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3636.6]
  wire  _T_1183; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3637.6]
  wire  _T_1184; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3638.6]
  wire  _T_1185; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3639.6]
  wire  _T_1186; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3640.6]
  wire  _T_1187; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3641.6]
  wire  _T_1217; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@3675.6]
  wire  _T_1219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3678.8]
  wire  _T_1220; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3679.8]
  wire  _T_1222; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3685.8]
  wire  _T_1223; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3686.8]
  wire  _T_1224; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@3691.8]
  wire  _T_1226; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3693.8]
  wire  _T_1227; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3694.8]
  wire  _T_1229; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3700.8]
  wire  _T_1230; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3701.8]
  wire  _T_1231; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@3706.8]
  wire  _T_1233; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3708.8]
  wire  _T_1234; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3709.8]
  wire  _T_1235; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@3714.8]
  wire  _T_1237; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3716.8]
  wire  _T_1238; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3717.8]
  wire  _T_1239; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@3723.6]
  wire  _T_1257; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@3763.6]
  wire  _T_1296; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@3803.8]
  wire  _T_1304; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@3811.8]
  wire  _T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3815.8]
  wire  _T_1309; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3816.8]
  wire  _T_1314; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@3829.8]
  wire  _T_1315; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@3830.8]
  wire  _T_1322; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3838.8]
  wire  _T_1323; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3839.8]
  wire  _T_1334; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@3866.8]
  wire  _T_1336; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3868.8]
  wire  _T_1337; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3869.8]
  wire  _T_1342; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@3883.6]
  wire  _T_1423; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@3995.6]
  wire  _T_1433; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@4018.8]
  wire  _T_1435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4020.8]
  wire  _T_1436; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4021.8]
  wire  _T_1441; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@4035.6]
  wire  _T_1455; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@4067.6]
  wire  _T_1477; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4118.4]
  wire  _T_1484; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@4125.4]
  reg [9:0] _T_1486; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4127.4]
  wire [9:0] _T_1488; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4129.4]
  wire  _T_1489; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4130.4]
  reg [2:0] _T_1497; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@4141.4]
  reg [2:0] _T_1498; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@4142.4]
  reg [3:0] _T_1499; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@4143.4]
  reg [1:0] _T_1500; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@4144.4]
  reg [31:0] _T_1501; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@4145.4]
  wire  _T_1502; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@4146.4]
  wire  _T_1503; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@4147.4]
  wire  _T_1504; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@4149.6]
  wire  _T_1506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4151.6]
  wire  _T_1507; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4152.6]
  wire  _T_1508; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@4157.6]
  wire  _T_1510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4159.6]
  wire  _T_1511; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4160.6]
  wire  _T_1512; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@4165.6]
  wire  _T_1514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4167.6]
  wire  _T_1515; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4168.6]
  wire  _T_1516; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@4173.6]
  wire  _T_1518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4175.6]
  wire  _T_1519; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4176.6]
  wire  _T_1520; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@4181.6]
  wire  _T_1522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4183.6]
  wire  _T_1523; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4184.6]
  wire  _T_1525; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@4191.4]
  wire  _T_1526; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4199.4]
  wire [26:0] _T_1528; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@4201.4]
  wire [11:0] _T_1530; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@4203.4]
  reg [9:0] _T_1534; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4207.4]
  wire [9:0] _T_1536; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4209.4]
  wire  _T_1537; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4210.4]
  reg [2:0] _T_1545; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@4221.4]
  reg [1:0] _T_1546; // @[Monitor.scala 533:22:freechips.rocketchip.system.DefaultRV32Config.fir@4222.4]
  reg [3:0] _T_1547; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@4223.4]
  reg [1:0] _T_1548; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@4224.4]
  reg [1:0] _T_1549; // @[Monitor.scala 536:22:freechips.rocketchip.system.DefaultRV32Config.fir@4225.4]
  reg  _T_1550; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@4226.4]
  wire  _T_1551; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@4227.4]
  wire  _T_1552; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@4228.4]
  wire  _T_1553; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@4230.6]
  wire  _T_1555; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4232.6]
  wire  _T_1556; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4233.6]
  wire  _T_1557; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@4238.6]
  wire  _T_1559; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4240.6]
  wire  _T_1560; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4241.6]
  wire  _T_1561; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@4246.6]
  wire  _T_1563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4248.6]
  wire  _T_1564; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4249.6]
  wire  _T_1565; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@4254.6]
  wire  _T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4256.6]
  wire  _T_1568; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4257.6]
  wire  _T_1569; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@4262.6]
  wire  _T_1571; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4264.6]
  wire  _T_1572; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4265.6]
  wire  _T_1573; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@4270.6]
  wire  _T_1575; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4272.6]
  wire  _T_1576; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4273.6]
  wire  _T_1578; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@4280.4]
  wire  _T_1579; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4289.4]
  reg [9:0] _T_1588; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4298.4]
  wire [9:0] _T_1590; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4300.4]
  wire  _T_1591; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4301.4]
  reg [1:0] _T_1600; // @[Monitor.scala 405:22:freechips.rocketchip.system.DefaultRV32Config.fir@4313.4]
  reg [31:0] _T_1603; // @[Monitor.scala 408:22:freechips.rocketchip.system.DefaultRV32Config.fir@4316.4]
  wire  _T_1604; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@4317.4]
  wire  _T_1605; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@4318.4]
  wire  _T_1610; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@4328.6]
  wire  _T_1612; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4330.6]
  wire  _T_1613; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4331.6]
  wire  _T_1622; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@4352.6]
  wire  _T_1624; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4354.6]
  wire  _T_1625; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4355.6]
  wire  _T_1627; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@4362.4]
  wire  _T_1628; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4370.4]
  reg [9:0] _T_1636; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4378.4]
  wire [9:0] _T_1638; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4380.4]
  wire  _T_1639; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4381.4]
  reg [2:0] _T_1647; // @[Monitor.scala 509:22:freechips.rocketchip.system.DefaultRV32Config.fir@4392.4]
  reg [2:0] _T_1648; // @[Monitor.scala 510:22:freechips.rocketchip.system.DefaultRV32Config.fir@4393.4]
  reg [3:0] _T_1649; // @[Monitor.scala 511:22:freechips.rocketchip.system.DefaultRV32Config.fir@4394.4]
  reg [1:0] _T_1650; // @[Monitor.scala 512:22:freechips.rocketchip.system.DefaultRV32Config.fir@4395.4]
  reg [31:0] _T_1651; // @[Monitor.scala 513:22:freechips.rocketchip.system.DefaultRV32Config.fir@4396.4]
  wire  _T_1652; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@4397.4]
  wire  _T_1653; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@4398.4]
  wire  _T_1654; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@4400.6]
  wire  _T_1656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4402.6]
  wire  _T_1657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4403.6]
  wire  _T_1658; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@4408.6]
  wire  _T_1660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4410.6]
  wire  _T_1661; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4411.6]
  wire  _T_1662; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@4416.6]
  wire  _T_1664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4418.6]
  wire  _T_1665; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4419.6]
  wire  _T_1666; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@4424.6]
  wire  _T_1668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4426.6]
  wire  _T_1669; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4427.6]
  wire  _T_1670; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@4432.6]
  wire  _T_1672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4434.6]
  wire  _T_1673; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4435.6]
  wire  _T_1675; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@4442.4]
  reg [2:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@4450.4]
  reg [11:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@4451.4]
  reg [23:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@4452.4]
  reg [9:0] _T_1685; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4462.4]
  wire [9:0] _T_1687; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4464.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4465.4]
  reg [9:0] _T_1703; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4484.4]
  wire [9:0] _T_1705; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4486.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4487.4]
  wire [3:0] _GEN_73; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@4506.4]
  wire [4:0] _T_1713; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@4506.4]
  wire [11:0] _T_1714; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@4507.4]
  wire [15:0] _T_1718; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@4511.4]
  wire [15:0] _GEN_74; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@4512.4]
  wire [15:0] _T_1719; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@4512.4]
  wire [15:0] _T_1720; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@4513.4]
  wire [4:0] _T_1721; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@4517.4]
  wire [23:0] _T_1722; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@4518.4]
  wire [15:0] _T_1726; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@4522.4]
  wire [23:0] _GEN_76; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@4523.4]
  wire [23:0] _T_1727; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@4523.4]
  wire [23:0] _T_1728; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@4524.4]
  wire  _T_1732; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@4549.4]
  wire [3:0] _T_1734; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4552.6]
  wire [3:0] _T_1735; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@4554.6]
  wire [3:0] _T_1736; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@4555.6]
  wire [4:0] _T_1737; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@4557.6]
  wire [4:0] _T_1738; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@4558.6]
  wire [3:0] _GEN_78; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@4560.6]
  wire [4:0] _T_1739; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@4560.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  wire [34:0] _GEN_79; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@4561.6]
  wire [34:0] _T_1740; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@4561.6]
  wire [4:0] _T_1741; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@4563.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  wire [35:0] _GEN_80; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@4564.6]
  wire [35:0] _T_1742; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@4564.6]
  wire [2:0] _T_1743; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@4566.6]
  wire  _T_1745; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@4568.6]
  wire  _T_1747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4570.6]
  wire  _T_1748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4571.6]
  wire [3:0] _GEN_27; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  wire [34:0] _GEN_30; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  wire [35:0] _GEN_31; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  wire  _T_1751; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@4585.4]
  wire  _T_1753; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@4587.4]
  wire  _T_1754; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@4588.4]
  wire [3:0] _T_1755; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4590.6]
  wire [46:0] _GEN_82; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@4597.6]
  wire [46:0] _T_1761; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@4597.6]
  wire [46:0] _GEN_83; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@4604.6]
  wire [46:0] _T_1767; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@4604.6]
  wire [3:0] _GEN_32; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  wire [46:0] _GEN_33; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  wire [46:0] _GEN_34; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  wire  _T_1768; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@4607.4]
  wire  _T_1771; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@4610.4]
  wire [2:0] _T_1772; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@4612.6]
  wire  _T_1774; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@4614.6]
  wire  _T_1775; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@4615.6]
  wire  _T_1776; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@4616.6]
  wire  _T_1777; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@4617.6]
  wire  _T_1778; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@4618.6]
  wire  _T_1779; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@4619.6]
  wire  _T_1781; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4621.6]
  wire  _T_1782; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4622.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4504.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4505.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@4514.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire  _T_1784; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  wire  _T_1786; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  wire  _T_1787; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@4631.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire  _T_1788; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  wire  _T_1789; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  wire  _T_1790; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@4634.6]
  wire  _T_1791; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@4635.6]
  wire  _T_1792; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@4636.6]
  wire  _T_1794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4638.6]
  wire  _T_1795; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4639.6]
  wire [7:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4515.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4516.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@4525.4]
  wire [7:0] _GEN_84; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@4644.6]
  wire  _T_1796; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@4644.6]
  wire  _T_1798; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@4646.6]
  wire  _T_1799; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@4647.6]
  wire  _T_1801; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4649.6]
  wire  _T_1802; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4650.6]
  wire  _T_1804; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@4657.4]
  wire  _T_1805; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@4658.4]
  wire  _T_1807; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@4660.4]
  wire  _T_1809; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@4662.4]
  wire  _T_1810; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@4664.6]
  wire  _T_1811; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@4665.6]
  wire  _T_1813; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4667.6]
  wire  _T_1814; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4668.6]
  wire [2:0] a_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4498.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4499.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@4553.6]
  wire [2:0] d_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4577.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4578.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@4591.6]
  wire  _T_1815; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@4674.4]
  wire  _T_1816; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@4675.4]
  wire  _T_1817; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@4676.4]
  wire  _T_1818; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@4677.4]
  wire  _T_1820; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4679.4]
  wire  _T_1821; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4680.4]
  wire [2:0] _T_1822; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@4685.4]
  wire [2:0] _T_1823; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@4686.4]
  wire [2:0] _T_1824; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@4687.4]
  wire [11:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4500.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4501.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@4562.6]
  wire [11:0] _T_1825; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@4689.4]
  wire [11:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4579.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4580.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@4598.6]
  wire [11:0] _T_1826; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@4690.4]
  wire [11:0] _T_1827; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@4691.4]
  wire [23:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4502.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4503.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@4565.6]
  wire [23:0] _T_1828; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@4693.4]
  wire [23:0] d_sizes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4581.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4582.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@4605.6]
  wire [23:0] _T_1829; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@4694.4]
  wire [23:0] _T_1830; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@4695.4]
  reg [31:0] _T_1831; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@4697.4]
  wire  _T_1832; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@4700.4]
  wire  _T_1833; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@4701.4]
  wire  _T_1834; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@4702.4]
  wire  _T_1835; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@4703.4]
  wire  _T_1836; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@4704.4]
  wire  _T_1837; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@4705.4]
  wire  _T_1839; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4707.4]
  wire  _T_1840; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4708.4]
  wire [31:0] _T_1842; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@4714.4]
  wire  _T_1845; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@4718.4]
  reg [3:0] _T_1846; // @[Monitor.scala 694:27:freechips.rocketchip.system.DefaultRV32Config.fir@4722.4]
  reg [9:0] _T_1855; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@4731.4]
  wire [9:0] _T_1857; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4733.4]
  wire  _T_1858; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4734.4]
  wire  _T_1868; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@4748.4]
  wire  _T_1871; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@4751.4]
  wire  _T_1872; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@4752.4]
  wire  _T_1873; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@4753.4]
  wire [3:0] _T_1874; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4755.6]
  wire [3:0] _T_1875; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@4757.6]
  wire  _T_1877; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@4759.6]
  wire  _T_1879; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4761.6]
  wire  _T_1880; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4762.6]
  wire [3:0] _GEN_69; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@4754.4]
  wire [3:0] _T_1885; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4774.6]
  wire [3:0] _T_1886; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@4776.6]
  wire [3:0] _T_1887; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@4777.6]
  wire  _T_1890; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4780.6]
  wire  _T_1891; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4781.6]
  wire [3:0] _GEN_70; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@4773.4]
  wire [3:0] _T_1892; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@4787.4]
  wire [3:0] _T_1893; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@4788.4]
  wire [3:0] _T_1894; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@4789.4]
  wire  _GEN_85; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1983.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2112.10]
  wire  _GEN_119; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2252.10]
  wire  _GEN_131; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2359.10]
  wire  _GEN_141; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2458.10]
  wire  _GEN_151; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2549.10]
  wire  _GEN_161; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2638.10]
  wire  _GEN_171; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2727.10]
  wire  _GEN_183; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2796.10]
  wire  _GEN_193; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2838.10]
  wire  _GEN_203; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2896.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2955.10]
  wire  _GEN_219; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2990.10]
  wire  _GEN_225; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3026.10]
  wire  _GEN_231; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3681.10]
  wire  _GEN_243; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3729.10]
  wire  _GEN_253; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3818.10]
  wire  _GEN_267; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3938.10]
  wire  _GEN_279; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4001.10]
  wire  _GEN_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4041.10]
  wire  _GEN_297; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4073.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@4698.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 2'h0; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1846.6]
  assign _T_5 = io_in_a_bits_source == 2'h1; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1847.6]
  assign _T_6 = io_in_a_bits_source == 2'h2; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@1848.6]
  assign _T_8 = _T_4 | _T_5; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@1854.6]
  assign _T_9 = _T_8 | _T_6; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@1855.6]
  assign _T_11 = 27'hfff << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@1857.6]
  assign _T_13 = ~_T_11[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@1859.6]
  assign _GEN_71 = {{20'd0}, _T_13}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@1860.6]
  assign _T_14 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@1860.6]
  assign _T_15 = _T_14 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@1861.6]
  assign _T_18 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@1864.6]
  assign _T_20 = _T_18 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@1866.6]
  assign _T_21 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@1867.6]
  assign _T_24 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@1870.6]
  assign _T_26 = _T_20[1] & _T_24; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1872.6]
  assign _T_27 = _T_21 | _T_26; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1873.6]
  assign _T_29 = _T_20[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1875.6]
  assign _T_30 = _T_21 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1876.6]
  assign _T_33 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@1879.6]
  assign _T_34 = _T_24 & _T_33; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1880.6]
  assign _T_35 = _T_20[0] & _T_34; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1881.6]
  assign _T_36 = _T_27 | _T_35; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1882.6]
  assign _T_37 = _T_24 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1883.6]
  assign _T_38 = _T_20[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1884.6]
  assign _T_39 = _T_27 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1885.6]
  assign _T_40 = io_in_a_bits_address[1] & _T_33; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1886.6]
  assign _T_41 = _T_20[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1887.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1888.6]
  assign _T_43 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@1889.6]
  assign _T_44 = _T_20[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@1890.6]
  assign _T_45 = _T_30 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@1891.6]
  assign _T_48 = {_T_45,_T_42,_T_39,_T_36}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@1894.6]
  assign _T_52 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1898.6]
  assign _T_78 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@1928.6]
  assign _T_83 = $signed(_T_52) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1934.8]
  assign _T_84 = $signed(_T_83) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1935.8]
  assign _T_85 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1936.8]
  assign _T_86 = {1'b0,$signed(_T_85)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1937.8]
  assign _T_88 = $signed(_T_86) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1939.8]
  assign _T_89 = $signed(_T_88) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1940.8]
  assign _T_90 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1941.8]
  assign _T_91 = {1'b0,$signed(_T_90)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1942.8]
  assign _T_93 = $signed(_T_91) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1944.8]
  assign _T_94 = $signed(_T_93) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1945.8]
  assign _T_95 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1946.8]
  assign _T_96 = {1'b0,$signed(_T_95)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1947.8]
  assign _T_98 = $signed(_T_96) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1949.8]
  assign _T_99 = $signed(_T_98) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1950.8]
  assign _T_100 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1951.8]
  assign _T_101 = {1'b0,$signed(_T_100)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1952.8]
  assign _T_103 = $signed(_T_101) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1954.8]
  assign _T_104 = $signed(_T_103) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1955.8]
  assign _T_105 = io_in_a_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1956.8]
  assign _T_106 = {1'b0,$signed(_T_105)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1957.8]
  assign _T_108 = $signed(_T_106) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1959.8]
  assign _T_109 = $signed(_T_108) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1960.8]
  assign _T_110 = _T_84 | _T_89; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@1961.8]
  assign _T_117 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@1968.8]
  assign _T_120 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@1971.8]
  assign _T_121 = {1'b0,$signed(_T_120)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@1972.8]
  assign _T_123 = $signed(_T_121) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@1974.8]
  assign _T_124 = $signed(_T_123) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@1975.8]
  assign _T_125 = _T_117 & _T_124; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@1976.8]
  assign _T_129 = _T_125 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1980.8]
  assign _T_130 = ~_T_129; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1981.8]
  assign _T_135 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@1994.8]
  assign _T_136 = _T_4 & _T_135; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@1995.8]
  assign _T_143 = _T_136 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2003.8]
  assign _T_144 = ~_T_143; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2004.8]
  assign _T_146 = _T_9 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2010.8]
  assign _T_147 = ~_T_146; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2011.8]
  assign _T_150 = _T_21 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2018.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2019.8]
  assign _T_153 = _T_15 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2025.8]
  assign _T_154 = ~_T_153; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2026.8]
  assign _T_155 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@2031.8]
  assign _T_157 = _T_155 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2033.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2034.8]
  assign _T_159 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@2039.8]
  assign _T_160 = _T_159 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@2040.8]
  assign _T_162 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2042.8]
  assign _T_163 = ~_T_162; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2043.8]
  assign _T_164 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@2048.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2050.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2051.8]
  assign _T_168 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@2057.6]
  assign _T_249 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@2168.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2170.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2171.8]
  assign _T_262 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@2194.6]
  assign _T_264 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2197.8]
  assign _T_272 = _T_264 & _T_89; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2205.8]
  assign _T_307 = _T_84 | _T_94; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2240.8]
  assign _T_308 = _T_307 | _T_99; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2241.8]
  assign _T_309 = _T_308 | _T_104; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2242.8]
  assign _T_310 = _T_309 | _T_109; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2243.8]
  assign _T_311 = _T_310 | _T_124; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2244.8]
  assign _T_312 = _T_117 & _T_311; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2245.8]
  assign _T_314 = _T_272 | _T_312; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2247.8]
  assign _T_316 = _T_314 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2249.8]
  assign _T_317 = ~_T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2250.8]
  assign _T_324 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@2269.8]
  assign _T_326 = _T_324 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2271.8]
  assign _T_327 = ~_T_326; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2272.8]
  assign _T_328 = io_in_a_bits_mask == _T_48; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@2277.8]
  assign _T_330 = _T_328 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2279.8]
  assign _T_331 = ~_T_330; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2280.8]
  assign _T_336 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@2294.6]
  assign _T_371 = _T_84 | _T_99; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2330.8]
  assign _T_372 = _T_371 | _T_104; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2331.8]
  assign _T_373 = _T_372 | _T_124; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2332.8]
  assign _T_374 = _T_117 & _T_373; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2333.8]
  assign _T_383 = io_in_a_bits_size <= 4'h8; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2342.8]
  assign _T_391 = _T_383 & _T_109; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2350.8]
  assign _T_393 = _T_272 | _T_374; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2352.8]
  assign _T_395 = _T_393 | _T_391; // @[Parameters.scala 553:30:freechips.rocketchip.system.DefaultRV32Config.fir@2354.8]
  assign _T_397 = _T_395 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2356.8]
  assign _T_398 = ~_T_397; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2357.8]
  assign _T_413 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@2393.6]
  assign _T_486 = ~_T_48; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@2483.8]
  assign _T_487 = io_in_a_bits_mask & _T_486; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@2484.8]
  assign _T_488 = _T_487 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@2485.8]
  assign _T_490 = _T_488 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2487.8]
  assign _T_491 = ~_T_490; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2488.8]
  assign _T_492 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@2494.6]
  assign _T_494 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@2497.8]
  assign _T_518 = _T_110 | _T_99; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2521.8]
  assign _T_519 = _T_518 | _T_104; // @[Parameters.scala 552:42:freechips.rocketchip.system.DefaultRV32Config.fir@2522.8]
  assign _T_520 = _T_494 & _T_519; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@2523.8]
  assign _T_543 = _T_520 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2546.8]
  assign _T_544 = ~_T_543; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2547.8]
  assign _T_551 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@2566.8]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2568.8]
  assign _T_554 = ~_T_553; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2569.8]
  assign _T_559 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@2583.6]
  assign _T_618 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@2655.8]
  assign _T_620 = _T_618 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2657.8]
  assign _T_621 = ~_T_620; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2658.8]
  assign _T_626 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@2672.6]
  assign _T_677 = _T_272 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2724.8]
  assign _T_678 = ~_T_677; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2725.8]
  assign _T_685 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@2744.8]
  assign _T_687 = _T_685 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2746.8]
  assign _T_688 = ~_T_687; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2747.8]
  assign _T_697 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@2771.6]
  assign _T_699 = _T_697 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2773.6]
  assign _T_700 = ~_T_699; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2774.6]
  assign _T_701 = io_in_d_bits_source == 2'h0; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2779.6]
  assign _T_702 = io_in_d_bits_source == 2'h1; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2780.6]
  assign _T_703 = io_in_d_bits_source == 2'h2; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@2781.6]
  assign _T_705 = _T_701 | _T_702; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@2787.6]
  assign _T_706 = _T_705 | _T_703; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@2788.6]
  assign _T_708 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@2790.6]
  assign _T_710 = _T_706 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2793.8]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2794.8]
  assign _T_712 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@2799.8]
  assign _T_714 = _T_712 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2801.8]
  assign _T_715 = ~_T_714; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2802.8]
  assign _T_716 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:freechips.rocketchip.system.DefaultRV32Config.fir@2807.8]
  assign _T_718 = _T_716 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2809.8]
  assign _T_719 = ~_T_718; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2810.8]
  assign _T_720 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@2815.8]
  assign _T_722 = _T_720 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2817.8]
  assign _T_723 = ~_T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2818.8]
  assign _T_724 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@2823.8]
  assign _T_726 = _T_724 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2825.8]
  assign _T_727 = ~_T_726; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2826.8]
  assign _T_728 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@2832.6]
  assign _T_739 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@2856.8]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2858.8]
  assign _T_742 = ~_T_741; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2859.8]
  assign _T_743 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:freechips.rocketchip.system.DefaultRV32Config.fir@2864.8]
  assign _T_745 = _T_743 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2866.8]
  assign _T_746 = ~_T_745; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2867.8]
  assign _T_756 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@2890.6]
  assign _T_776 = _T_724 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@2931.8]
  assign _T_778 = _T_776 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2933.8]
  assign _T_779 = ~_T_778; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2934.8]
  assign _T_785 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@2949.6]
  assign _T_802 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@2984.6]
  assign _T_820 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@3020.6]
  assign _T_844 = {1'b0,$signed(io_in_b_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3068.6]
  assign _T_870 = io_in_b_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3098.6]
  assign _T_871 = {1'b0,$signed(_T_870)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3099.6]
  assign _T_873 = $signed(_T_871) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3101.6]
  assign _T_874 = $signed(_T_873) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3102.6]
  assign _T_875 = io_in_b_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3103.6]
  assign _T_876 = {1'b0,$signed(_T_875)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3104.6]
  assign _T_878 = $signed(_T_876) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3106.6]
  assign _T_879 = $signed(_T_878) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3107.6]
  assign _T_880 = io_in_b_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3108.6]
  assign _T_881 = {1'b0,$signed(_T_880)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3109.6]
  assign _T_883 = $signed(_T_881) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3111.6]
  assign _T_884 = $signed(_T_883) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3112.6]
  assign _T_888 = $signed(_T_844) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3116.6]
  assign _T_889 = $signed(_T_888) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3117.6]
  assign _T_890 = io_in_b_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3118.6]
  assign _T_891 = {1'b0,$signed(_T_890)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3119.6]
  assign _T_893 = $signed(_T_891) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3121.6]
  assign _T_894 = $signed(_T_893) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3122.6]
  assign _T_895 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3123.6]
  assign _T_896 = {1'b0,$signed(_T_895)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3124.6]
  assign _T_898 = $signed(_T_896) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3126.6]
  assign _T_899 = $signed(_T_898) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3127.6]
  assign _T_900 = io_in_b_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3128.6]
  assign _T_901 = {1'b0,$signed(_T_900)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3129.6]
  assign _T_903 = $signed(_T_901) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3131.6]
  assign _T_904 = $signed(_T_903) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3132.6]
  assign _T_906 = _T_874 | _T_879; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3142.6]
  assign _T_907 = _T_906 | _T_884; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3143.6]
  assign _T_908 = _T_907 | _T_889; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3144.6]
  assign _T_909 = _T_908 | _T_894; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3145.6]
  assign _T_910 = _T_909 | _T_899; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3146.6]
  assign _T_911 = _T_910 | _T_904; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3147.6]
  assign _T_916 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3152.6]
  assign _T_917 = _T_916 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@3153.6]
  assign _T_978 = _T_911 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3229.8]
  assign _T_979 = ~_T_978; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3230.8]
  assign _T_984 = _T_917 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3243.8]
  assign _T_985 = ~_T_984; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3244.8]
  assign _T_986 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@3249.8]
  assign _T_988 = _T_986 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3251.8]
  assign _T_989 = ~_T_988; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3252.8]
  assign _T_1134 = io_in_c_bits_source == 2'h0; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3576.6]
  assign _T_1135 = io_in_c_bits_source == 2'h1; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3577.6]
  assign _T_1136 = io_in_c_bits_source == 2'h2; // @[Parameters.scala 47:9:freechips.rocketchip.system.DefaultRV32Config.fir@3578.6]
  assign _T_1138 = _T_1134 | _T_1135; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@3584.6]
  assign _T_1139 = _T_1138 | _T_1136; // @[Parameters.scala 924:46:freechips.rocketchip.system.DefaultRV32Config.fir@3585.6]
  assign _T_1141 = 27'hfff << io_in_c_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@3587.6]
  assign _T_1143 = ~_T_1141[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@3589.6]
  assign _GEN_72 = {{20'd0}, _T_1143}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3590.6]
  assign _T_1144 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@3590.6]
  assign _T_1145 = _T_1144 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@3591.6]
  assign _T_1146 = io_in_c_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3592.6]
  assign _T_1147 = {1'b0,$signed(_T_1146)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3593.6]
  assign _T_1149 = $signed(_T_1147) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3595.6]
  assign _T_1150 = $signed(_T_1149) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3596.6]
  assign _T_1151 = io_in_c_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3597.6]
  assign _T_1152 = {1'b0,$signed(_T_1151)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3598.6]
  assign _T_1154 = $signed(_T_1152) & -33'sh4000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3600.6]
  assign _T_1155 = $signed(_T_1154) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3601.6]
  assign _T_1156 = io_in_c_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3602.6]
  assign _T_1157 = {1'b0,$signed(_T_1156)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3603.6]
  assign _T_1159 = $signed(_T_1157) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3605.6]
  assign _T_1160 = $signed(_T_1159) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3606.6]
  assign _T_1162 = {1'b0,$signed(io_in_c_bits_address)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3608.6]
  assign _T_1164 = $signed(_T_1162) & -33'sh1000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3610.6]
  assign _T_1165 = $signed(_T_1164) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3611.6]
  assign _T_1166 = io_in_c_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3612.6]
  assign _T_1167 = {1'b0,$signed(_T_1166)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3613.6]
  assign _T_1169 = $signed(_T_1167) & -33'sh10000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3615.6]
  assign _T_1170 = $signed(_T_1169) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3616.6]
  assign _T_1171 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3617.6]
  assign _T_1172 = {1'b0,$signed(_T_1171)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3618.6]
  assign _T_1174 = $signed(_T_1172) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3620.6]
  assign _T_1175 = $signed(_T_1174) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3621.6]
  assign _T_1176 = io_in_c_bits_address ^ 32'h60000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@3622.6]
  assign _T_1177 = {1'b0,$signed(_T_1176)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@3623.6]
  assign _T_1179 = $signed(_T_1177) & -33'sh20000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@3625.6]
  assign _T_1180 = $signed(_T_1179) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@3626.6]
  assign _T_1182 = _T_1150 | _T_1155; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3636.6]
  assign _T_1183 = _T_1182 | _T_1160; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3637.6]
  assign _T_1184 = _T_1183 | _T_1165; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3638.6]
  assign _T_1185 = _T_1184 | _T_1170; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3639.6]
  assign _T_1186 = _T_1185 | _T_1175; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3640.6]
  assign _T_1187 = _T_1186 | _T_1180; // @[Parameters.scala 535:64:freechips.rocketchip.system.DefaultRV32Config.fir@3641.6]
  assign _T_1217 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:freechips.rocketchip.system.DefaultRV32Config.fir@3675.6]
  assign _T_1219 = _T_1187 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3678.8]
  assign _T_1220 = ~_T_1219; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3679.8]
  assign _T_1222 = _T_1139 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3685.8]
  assign _T_1223 = ~_T_1222; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3686.8]
  assign _T_1224 = io_in_c_bits_size >= 4'h2; // @[Monitor.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@3691.8]
  assign _T_1226 = _T_1224 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3693.8]
  assign _T_1227 = ~_T_1226; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3694.8]
  assign _T_1229 = _T_1145 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3700.8]
  assign _T_1230 = ~_T_1229; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3701.8]
  assign _T_1231 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:freechips.rocketchip.system.DefaultRV32Config.fir@3706.8]
  assign _T_1233 = _T_1231 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3708.8]
  assign _T_1234 = ~_T_1233; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3709.8]
  assign _T_1235 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:freechips.rocketchip.system.DefaultRV32Config.fir@3714.8]
  assign _T_1237 = _T_1235 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3716.8]
  assign _T_1238 = ~_T_1237; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3717.8]
  assign _T_1239 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:freechips.rocketchip.system.DefaultRV32Config.fir@3723.6]
  assign _T_1257 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:freechips.rocketchip.system.DefaultRV32Config.fir@3763.6]
  assign _T_1296 = io_in_c_bits_size <= 4'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@3803.8]
  assign _T_1304 = _T_1296 & _T_1175; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@3811.8]
  assign _T_1308 = _T_1304 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3815.8]
  assign _T_1309 = ~_T_1308; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3816.8]
  assign _T_1314 = 4'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:freechips.rocketchip.system.DefaultRV32Config.fir@3829.8]
  assign _T_1315 = _T_1134 & _T_1314; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@3830.8]
  assign _T_1322 = _T_1315 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3838.8]
  assign _T_1323 = ~_T_1322; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3839.8]
  assign _T_1334 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:freechips.rocketchip.system.DefaultRV32Config.fir@3866.8]
  assign _T_1336 = _T_1334 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3868.8]
  assign _T_1337 = ~_T_1336; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3869.8]
  assign _T_1342 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:freechips.rocketchip.system.DefaultRV32Config.fir@3883.6]
  assign _T_1423 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:freechips.rocketchip.system.DefaultRV32Config.fir@3995.6]
  assign _T_1433 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:freechips.rocketchip.system.DefaultRV32Config.fir@4018.8]
  assign _T_1435 = _T_1433 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4020.8]
  assign _T_1436 = ~_T_1435; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4021.8]
  assign _T_1441 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:freechips.rocketchip.system.DefaultRV32Config.fir@4035.6]
  assign _T_1455 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:freechips.rocketchip.system.DefaultRV32Config.fir@4067.6]
  assign _T_1477 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4118.4]
  assign _T_1484 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@4125.4]
  assign _T_1488 = _T_1486 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4129.4]
  assign _T_1489 = _T_1486 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4130.4]
  assign _T_1502 = ~_T_1489; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@4146.4]
  assign _T_1503 = io_in_a_valid & _T_1502; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@4147.4]
  assign _T_1504 = io_in_a_bits_opcode == _T_1497; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@4149.6]
  assign _T_1506 = _T_1504 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4151.6]
  assign _T_1507 = ~_T_1506; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4152.6]
  assign _T_1508 = io_in_a_bits_param == _T_1498; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@4157.6]
  assign _T_1510 = _T_1508 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4159.6]
  assign _T_1511 = ~_T_1510; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4160.6]
  assign _T_1512 = io_in_a_bits_size == _T_1499; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@4165.6]
  assign _T_1514 = _T_1512 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4167.6]
  assign _T_1515 = ~_T_1514; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4168.6]
  assign _T_1516 = io_in_a_bits_source == _T_1500; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@4173.6]
  assign _T_1518 = _T_1516 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4175.6]
  assign _T_1519 = ~_T_1518; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4176.6]
  assign _T_1520 = io_in_a_bits_address == _T_1501; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@4181.6]
  assign _T_1522 = _T_1520 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4183.6]
  assign _T_1523 = ~_T_1522; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4184.6]
  assign _T_1525 = _T_1477 & _T_1489; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@4191.4]
  assign _T_1526 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4199.4]
  assign _T_1528 = 27'hfff << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@4201.4]
  assign _T_1530 = ~_T_1528[11:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@4203.4]
  assign _T_1536 = _T_1534 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4209.4]
  assign _T_1537 = _T_1534 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4210.4]
  assign _T_1551 = ~_T_1537; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@4227.4]
  assign _T_1552 = io_in_d_valid & _T_1551; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@4228.4]
  assign _T_1553 = io_in_d_bits_opcode == _T_1545; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@4230.6]
  assign _T_1555 = _T_1553 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4232.6]
  assign _T_1556 = ~_T_1555; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4233.6]
  assign _T_1557 = io_in_d_bits_param == _T_1546; // @[Monitor.scala 540:29:freechips.rocketchip.system.DefaultRV32Config.fir@4238.6]
  assign _T_1559 = _T_1557 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4240.6]
  assign _T_1560 = ~_T_1559; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4241.6]
  assign _T_1561 = io_in_d_bits_size == _T_1547; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@4246.6]
  assign _T_1563 = _T_1561 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4248.6]
  assign _T_1564 = ~_T_1563; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4249.6]
  assign _T_1565 = io_in_d_bits_source == _T_1548; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@4254.6]
  assign _T_1567 = _T_1565 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4256.6]
  assign _T_1568 = ~_T_1567; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4257.6]
  assign _T_1569 = io_in_d_bits_sink == _T_1549; // @[Monitor.scala 543:29:freechips.rocketchip.system.DefaultRV32Config.fir@4262.6]
  assign _T_1571 = _T_1569 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4264.6]
  assign _T_1572 = ~_T_1571; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4265.6]
  assign _T_1573 = io_in_d_bits_denied == _T_1550; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@4270.6]
  assign _T_1575 = _T_1573 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4272.6]
  assign _T_1576 = ~_T_1575; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4273.6]
  assign _T_1578 = _T_1526 & _T_1537; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@4280.4]
  assign _T_1579 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4289.4]
  assign _T_1590 = _T_1588 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4300.4]
  assign _T_1591 = _T_1588 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4301.4]
  assign _T_1604 = ~_T_1591; // @[Monitor.scala 409:22:freechips.rocketchip.system.DefaultRV32Config.fir@4317.4]
  assign _T_1605 = io_in_b_valid & _T_1604; // @[Monitor.scala 409:19:freechips.rocketchip.system.DefaultRV32Config.fir@4318.4]
  assign _T_1610 = io_in_b_bits_param == _T_1600; // @[Monitor.scala 411:32:freechips.rocketchip.system.DefaultRV32Config.fir@4328.6]
  assign _T_1612 = _T_1610 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4330.6]
  assign _T_1613 = ~_T_1612; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4331.6]
  assign _T_1622 = io_in_b_bits_address == _T_1603; // @[Monitor.scala 414:32:freechips.rocketchip.system.DefaultRV32Config.fir@4352.6]
  assign _T_1624 = _T_1622 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4354.6]
  assign _T_1625 = ~_T_1624; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4355.6]
  assign _T_1627 = _T_1579 & _T_1591; // @[Monitor.scala 416:20:freechips.rocketchip.system.DefaultRV32Config.fir@4362.4]
  assign _T_1628 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@4370.4]
  assign _T_1638 = _T_1636 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4380.4]
  assign _T_1639 = _T_1636 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4381.4]
  assign _T_1652 = ~_T_1639; // @[Monitor.scala 514:22:freechips.rocketchip.system.DefaultRV32Config.fir@4397.4]
  assign _T_1653 = io_in_c_valid & _T_1652; // @[Monitor.scala 514:19:freechips.rocketchip.system.DefaultRV32Config.fir@4398.4]
  assign _T_1654 = io_in_c_bits_opcode == _T_1647; // @[Monitor.scala 515:32:freechips.rocketchip.system.DefaultRV32Config.fir@4400.6]
  assign _T_1656 = _T_1654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4402.6]
  assign _T_1657 = ~_T_1656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4403.6]
  assign _T_1658 = io_in_c_bits_param == _T_1648; // @[Monitor.scala 516:32:freechips.rocketchip.system.DefaultRV32Config.fir@4408.6]
  assign _T_1660 = _T_1658 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4410.6]
  assign _T_1661 = ~_T_1660; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4411.6]
  assign _T_1662 = io_in_c_bits_size == _T_1649; // @[Monitor.scala 517:32:freechips.rocketchip.system.DefaultRV32Config.fir@4416.6]
  assign _T_1664 = _T_1662 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4418.6]
  assign _T_1665 = ~_T_1664; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4419.6]
  assign _T_1666 = io_in_c_bits_source == _T_1650; // @[Monitor.scala 518:32:freechips.rocketchip.system.DefaultRV32Config.fir@4424.6]
  assign _T_1668 = _T_1666 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4426.6]
  assign _T_1669 = ~_T_1668; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4427.6]
  assign _T_1670 = io_in_c_bits_address == _T_1651; // @[Monitor.scala 519:32:freechips.rocketchip.system.DefaultRV32Config.fir@4432.6]
  assign _T_1672 = _T_1670 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4434.6]
  assign _T_1673 = ~_T_1672; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4435.6]
  assign _T_1675 = _T_1628 & _T_1639; // @[Monitor.scala 521:20:freechips.rocketchip.system.DefaultRV32Config.fir@4442.4]
  assign _T_1687 = _T_1685 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4464.4]
  assign a_first = _T_1685 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4465.4]
  assign _T_1705 = _T_1703 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4486.4]
  assign d_first = _T_1703 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4487.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@4506.4]
  assign _T_1713 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@4506.4]
  assign _T_1714 = inflight_opcodes >> _T_1713; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@4507.4]
  assign _T_1718 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@4511.4]
  assign _GEN_74 = {{4'd0}, _T_1714}; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@4512.4]
  assign _T_1719 = _GEN_74 & _T_1718; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@4512.4]
  assign _T_1720 = {{1'd0}, _T_1719[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@4513.4]
  assign _T_1721 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:freechips.rocketchip.system.DefaultRV32Config.fir@4517.4]
  assign _T_1722 = inflight_sizes >> _T_1721; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@4518.4]
  assign _T_1726 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@4522.4]
  assign _GEN_76 = {{8'd0}, _T_1726}; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@4523.4]
  assign _T_1727 = _T_1722 & _GEN_76; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@4523.4]
  assign _T_1728 = {{1'd0}, _T_1727[23:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@4524.4]
  assign _T_1732 = _T_1477 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@4549.4]
  assign _T_1734 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4552.6]
  assign _T_1735 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@4554.6]
  assign _T_1736 = _T_1735 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@4555.6]
  assign _T_1737 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@4557.6]
  assign _T_1738 = _T_1737 | 5'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@4558.6]
  assign _GEN_78 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@4560.6]
  assign _T_1739 = {{1'd0}, _GEN_78}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@4560.6]
  assign a_opcodes_set_interm = _T_1732 ? _T_1736 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  assign _GEN_79 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@4561.6]
  assign _T_1740 = _GEN_79 << _T_1739; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@4561.6]
  assign _T_1741 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:freechips.rocketchip.system.DefaultRV32Config.fir@4563.6]
  assign a_sizes_set_interm = _T_1732 ? _T_1738 : 5'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  assign _GEN_80 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@4564.6]
  assign _T_1742 = _GEN_80 << _T_1741; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@4564.6]
  assign _T_1743 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@4566.6]
  assign _T_1745 = ~_T_1743[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@4568.6]
  assign _T_1747 = _T_1745 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4570.6]
  assign _T_1748 = ~_T_1747; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4571.6]
  assign _GEN_27 = _T_1732 ? _T_1734 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  assign _GEN_30 = _T_1732 ? _T_1740 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  assign _GEN_31 = _T_1732 ? _T_1742 : 36'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@4551.4]
  assign _T_1751 = _T_1526 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@4585.4]
  assign _T_1753 = ~_T_708; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@4587.4]
  assign _T_1754 = _T_1751 & _T_1753; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@4588.4]
  assign _T_1755 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4590.6]
  assign _GEN_82 = {{31'd0}, _T_1718}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@4597.6]
  assign _T_1761 = _GEN_82 << _T_1713; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@4597.6]
  assign _GEN_83 = {{31'd0}, _T_1726}; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@4604.6]
  assign _T_1767 = _GEN_83 << _T_1721; // @[Monitor.scala 663:72:freechips.rocketchip.system.DefaultRV32Config.fir@4604.6]
  assign _GEN_32 = _T_1754 ? _T_1755 : 4'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  assign _GEN_33 = _T_1754 ? _T_1761 : 47'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  assign _GEN_34 = _T_1754 ? _T_1767 : 47'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@4589.4]
  assign _T_1768 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@4607.4]
  assign _T_1771 = _T_1768 & _T_1753; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@4610.4]
  assign _T_1772 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@4612.6]
  assign _T_1774 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@4614.6]
  assign _T_1775 = io_in_a_valid & _T_1774; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@4615.6]
  assign _T_1776 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@4616.6]
  assign _T_1777 = _T_1775 & _T_1776; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@4617.6]
  assign _T_1778 = _T_1777 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@4618.6]
  assign _T_1779 = _T_1772[0] | _T_1778; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@4619.6]
  assign _T_1781 = _T_1779 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4621.6]
  assign _T_1782 = ~_T_1781; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4622.6]
  assign a_opcode_lookup = _T_1720[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4504.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4505.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@4514.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _T_1784 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@4628.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  assign _T_1786 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@4630.6]
  assign _T_1787 = _T_1784 | _T_1786; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@4631.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _T_1788 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@4632.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  assign _T_1789 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@4633.6]
  assign _T_1790 = _T_1788 | _T_1789; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@4634.6]
  assign _T_1791 = io_in_a_valid & _T_1790; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@4635.6]
  assign _T_1792 = _T_1787 | _T_1791; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@4636.6]
  assign _T_1794 = _T_1792 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4638.6]
  assign _T_1795 = ~_T_1794; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4639.6]
  assign a_size_lookup = _T_1728[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4515.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4516.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@4525.4]
  assign _GEN_84 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@4644.6]
  assign _T_1796 = _GEN_84 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@4644.6]
  assign _T_1798 = io_in_a_valid & _T_1776; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@4646.6]
  assign _T_1799 = _T_1796 | _T_1798; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@4647.6]
  assign _T_1801 = _T_1799 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4649.6]
  assign _T_1802 = ~_T_1801; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4650.6]
  assign _T_1804 = _T_1768 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@4657.4]
  assign _T_1805 = _T_1804 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@4658.4]
  assign _T_1807 = _T_1805 & _T_1774; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@4660.4]
  assign _T_1809 = _T_1807 & _T_1753; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@4662.4]
  assign _T_1810 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@4664.6]
  assign _T_1811 = _T_1810 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@4665.6]
  assign _T_1813 = _T_1811 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4667.6]
  assign _T_1814 = ~_T_1813; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4668.6]
  assign a_set = _GEN_27[2:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4498.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4499.4 Monitor.scala 644:13:freechips.rocketchip.system.DefaultRV32Config.fir@4553.6]
  assign d_clr = _GEN_32[2:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4577.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4578.4 Monitor.scala 661:13:freechips.rocketchip.system.DefaultRV32Config.fir@4591.6]
  assign _T_1815 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@4674.4]
  assign _T_1816 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@4675.4]
  assign _T_1817 = ~_T_1816; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@4676.4]
  assign _T_1818 = _T_1815 | _T_1817; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@4677.4]
  assign _T_1820 = _T_1818 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4679.4]
  assign _T_1821 = ~_T_1820; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4680.4]
  assign _T_1822 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@4685.4]
  assign _T_1823 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@4686.4]
  assign _T_1824 = _T_1822 & _T_1823; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@4687.4]
  assign a_opcodes_set = _GEN_30[11:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4500.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4501.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@4562.6]
  assign _T_1825 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@4689.4]
  assign d_opcodes_clr = _GEN_33[11:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4579.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4580.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@4598.6]
  assign _T_1826 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@4690.4]
  assign _T_1827 = _T_1825 & _T_1826; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@4691.4]
  assign a_sizes_set = _GEN_31[23:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4502.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4503.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@4565.6]
  assign _T_1828 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@4693.4]
  assign d_sizes_clr = _GEN_34[23:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@4581.4 :freechips.rocketchip.system.DefaultRV32Config.fir@4582.4 Monitor.scala 663:19:freechips.rocketchip.system.DefaultRV32Config.fir@4605.6]
  assign _T_1829 = ~d_sizes_clr; // @[Monitor.scala 682:56:freechips.rocketchip.system.DefaultRV32Config.fir@4694.4]
  assign _T_1830 = _T_1828 & _T_1829; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@4695.4]
  assign _T_1832 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@4700.4]
  assign _T_1833 = ~_T_1832; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@4701.4]
  assign _T_1834 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@4702.4]
  assign _T_1835 = _T_1833 | _T_1834; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@4703.4]
  assign _T_1836 = _T_1831 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@4704.4]
  assign _T_1837 = _T_1835 | _T_1836; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@4705.4]
  assign _T_1839 = _T_1837 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4707.4]
  assign _T_1840 = ~_T_1839; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4708.4]
  assign _T_1842 = _T_1831 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@4714.4]
  assign _T_1845 = _T_1477 | _T_1526; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@4718.4]
  assign _T_1857 = _T_1855 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@4733.4]
  assign _T_1858 = _T_1855 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@4734.4]
  assign _T_1868 = _T_1526 & _T_1858; // @[Monitor.scala 700:27:freechips.rocketchip.system.DefaultRV32Config.fir@4748.4]
  assign _T_1871 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@4751.4]
  assign _T_1872 = io_in_d_bits_opcode[2] & _T_1871; // @[Edges.scala 72:40:freechips.rocketchip.system.DefaultRV32Config.fir@4752.4]
  assign _T_1873 = _T_1868 & _T_1872; // @[Monitor.scala 700:38:freechips.rocketchip.system.DefaultRV32Config.fir@4753.4]
  assign _T_1874 = 4'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4755.6]
  assign _T_1875 = _T_1846 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:freechips.rocketchip.system.DefaultRV32Config.fir@4757.6]
  assign _T_1877 = ~_T_1875[0]; // @[Monitor.scala 702:14:freechips.rocketchip.system.DefaultRV32Config.fir@4759.6]
  assign _T_1879 = _T_1877 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4761.6]
  assign _T_1880 = ~_T_1879; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4762.6]
  assign _GEN_69 = _T_1873 ? _T_1874 : 4'h0; // @[Monitor.scala 700:72:freechips.rocketchip.system.DefaultRV32Config.fir@4754.4]
  assign _T_1885 = 4'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@4774.6]
  assign _T_1886 = _GEN_69 | _T_1846; // @[Monitor.scala 708:24:freechips.rocketchip.system.DefaultRV32Config.fir@4776.6]
  assign _T_1887 = _T_1886 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:freechips.rocketchip.system.DefaultRV32Config.fir@4777.6]
  assign _T_1890 = _T_1887[0] | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4780.6]
  assign _T_1891 = ~_T_1890; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4781.6]
  assign _GEN_70 = io_in_e_valid ? _T_1885 : 4'h0; // @[Monitor.scala 706:73:freechips.rocketchip.system.DefaultRV32Config.fir@4773.4]
  assign _T_1892 = _T_1846 | _GEN_69; // @[Monitor.scala 713:27:freechips.rocketchip.system.DefaultRV32Config.fir@4787.4]
  assign _T_1893 = ~_GEN_70; // @[Monitor.scala 713:38:freechips.rocketchip.system.DefaultRV32Config.fir@4788.4]
  assign _T_1894 = _T_1892 & _T_1893; // @[Monitor.scala 713:36:freechips.rocketchip.system.DefaultRV32Config.fir@4789.4]
  assign _GEN_85 = io_in_a_valid & _T_78; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1983.10]
  assign _GEN_101 = io_in_a_valid & _T_168; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2112.10]
  assign _GEN_119 = io_in_a_valid & _T_262; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2252.10]
  assign _GEN_131 = io_in_a_valid & _T_336; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2359.10]
  assign _GEN_141 = io_in_a_valid & _T_413; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2458.10]
  assign _GEN_151 = io_in_a_valid & _T_492; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2549.10]
  assign _GEN_161 = io_in_a_valid & _T_559; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2638.10]
  assign _GEN_171 = io_in_a_valid & _T_626; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2727.10]
  assign _GEN_183 = io_in_d_valid & _T_708; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2796.10]
  assign _GEN_193 = io_in_d_valid & _T_728; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2838.10]
  assign _GEN_203 = io_in_d_valid & _T_756; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2896.10]
  assign _GEN_213 = io_in_d_valid & _T_785; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2955.10]
  assign _GEN_219 = io_in_d_valid & _T_802; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2990.10]
  assign _GEN_225 = io_in_d_valid & _T_820; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3026.10]
  assign _GEN_231 = io_in_c_valid & _T_1217; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3681.10]
  assign _GEN_243 = io_in_c_valid & _T_1239; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3729.10]
  assign _GEN_253 = io_in_c_valid & _T_1257; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3818.10]
  assign _GEN_267 = io_in_c_valid & _T_1342; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3938.10]
  assign _GEN_279 = io_in_c_valid & _T_1423; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4001.10]
  assign _GEN_289 = io_in_c_valid & _T_1441; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4041.10]
  assign _GEN_297 = io_in_c_valid & _T_1455; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4073.10]
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
  _T_1486 = _RAND_0[9:0];
  _RAND_1 = {1{`RANDOM}};
  _T_1497 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_1498 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_1499 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  _T_1500 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  _T_1501 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_1534 = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  _T_1545 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_1546 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  _T_1547 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  _T_1548 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  _T_1549 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  _T_1550 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  _T_1588 = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  _T_1600 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  _T_1603 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  _T_1636 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  _T_1647 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  _T_1648 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  _T_1649 = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  _T_1650 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  _T_1651 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  inflight = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  inflight_opcodes = _RAND_23[11:0];
  _RAND_24 = {1{`RANDOM}};
  inflight_sizes = _RAND_24[23:0];
  _RAND_25 = {1{`RANDOM}};
  _T_1685 = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  _T_1703 = _RAND_26[9:0];
  _RAND_27 = {1{`RANDOM}};
  _T_1831 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  _T_1846 = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  _T_1855 = _RAND_29[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1486 <= 10'h0;
    end else if (_T_1477) begin
      if (_T_1489) begin
        if (_T_1484) begin
          _T_1486 <= _T_13[11:2];
        end else begin
          _T_1486 <= 10'h0;
        end
      end else begin
        _T_1486 <= _T_1488;
      end
    end
    if (_T_1525) begin
      _T_1497 <= io_in_a_bits_opcode;
    end
    if (_T_1525) begin
      _T_1498 <= io_in_a_bits_param;
    end
    if (_T_1525) begin
      _T_1499 <= io_in_a_bits_size;
    end
    if (_T_1525) begin
      _T_1500 <= io_in_a_bits_source;
    end
    if (_T_1525) begin
      _T_1501 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1534 <= 10'h0;
    end else if (_T_1526) begin
      if (_T_1537) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1534 <= _T_1530[11:2];
        end else begin
          _T_1534 <= 10'h0;
        end
      end else begin
        _T_1534 <= _T_1536;
      end
    end
    if (_T_1578) begin
      _T_1545 <= io_in_d_bits_opcode;
    end
    if (_T_1578) begin
      _T_1546 <= io_in_d_bits_param;
    end
    if (_T_1578) begin
      _T_1547 <= io_in_d_bits_size;
    end
    if (_T_1578) begin
      _T_1548 <= io_in_d_bits_source;
    end
    if (_T_1578) begin
      _T_1549 <= io_in_d_bits_sink;
    end
    if (_T_1578) begin
      _T_1550 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1588 <= 10'h0;
    end else if (_T_1579) begin
      if (_T_1591) begin
        _T_1588 <= 10'h0;
      end else begin
        _T_1588 <= _T_1590;
      end
    end
    if (_T_1627) begin
      _T_1600 <= io_in_b_bits_param;
    end
    if (_T_1627) begin
      _T_1603 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1636 <= 10'h0;
    end else if (_T_1628) begin
      if (_T_1639) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1636 <= _T_1143[11:2];
        end else begin
          _T_1636 <= 10'h0;
        end
      end else begin
        _T_1636 <= _T_1638;
      end
    end
    if (_T_1675) begin
      _T_1647 <= io_in_c_bits_opcode;
    end
    if (_T_1675) begin
      _T_1648 <= io_in_c_bits_param;
    end
    if (_T_1675) begin
      _T_1649 <= io_in_c_bits_size;
    end
    if (_T_1675) begin
      _T_1650 <= io_in_c_bits_source;
    end
    if (_T_1675) begin
      _T_1651 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 3'h0;
    end else begin
      inflight <= _T_1824;
    end
    if (reset) begin
      inflight_opcodes <= 12'h0;
    end else begin
      inflight_opcodes <= _T_1827;
    end
    if (reset) begin
      inflight_sizes <= 24'h0;
    end else begin
      inflight_sizes <= _T_1830;
    end
    if (reset) begin
      _T_1685 <= 10'h0;
    end else if (_T_1477) begin
      if (a_first) begin
        if (_T_1484) begin
          _T_1685 <= _T_13[11:2];
        end else begin
          _T_1685 <= 10'h0;
        end
      end else begin
        _T_1685 <= _T_1687;
      end
    end
    if (reset) begin
      _T_1703 <= 10'h0;
    end else if (_T_1526) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1703 <= _T_1530[11:2];
        end else begin
          _T_1703 <= 10'h0;
        end
      end else begin
        _T_1703 <= _T_1705;
      end
    end
    if (reset) begin
      _T_1831 <= 32'h0;
    end else if (_T_1845) begin
      _T_1831 <= 32'h0;
    end else begin
      _T_1831 <= _T_1842;
    end
    if (reset) begin
      _T_1846 <= 4'h0;
    end else begin
      _T_1846 <= _T_1894;
    end
    if (reset) begin
      _T_1855 <= 10'h0;
    end else if (_T_1526) begin
      if (_T_1858) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1855 <= _T_1530[11:2];
        end else begin
          _T_1855 <= 10'h0;
        end
      end else begin
        _T_1855 <= _T_1857;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_130) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1983.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_130) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@1984.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_144) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2006.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_144) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2007.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2013.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2014.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2021.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2022.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2028.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2029.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2036.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2037.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2045.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2046.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2053.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2054.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_130) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2112.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_130) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2113.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_144) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2135.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_144) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2136.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2142.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2143.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2150.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2151.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2157.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2158.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2165.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2166.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2173.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2174.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2182.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2183.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2190.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2191.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_317) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2252.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_317) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2253.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2259.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2260.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2266.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2267.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_327) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2274.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_327) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2275.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_331) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2282.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_331) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2283.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2290.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2291.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2359.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_398) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2360.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2373.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2374.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_327) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2381.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_327) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2382.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_331) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_331) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2472.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2473.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_327) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2480.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_327) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2481.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_491) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2490.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_491) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2491.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_544) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2549.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_544) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2550.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2556.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2557.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_554) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_331) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2579.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_331) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2580.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_544) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2638.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_544) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2639.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2645.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2646.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2652.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2653.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_621) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2660.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_621) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2661.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_331) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2668.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_331) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2669.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_678) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2727.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_678) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2728.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_147) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2741.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2742.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_688) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2749.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_688) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2750.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_331) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2757.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_331) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2758.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2765.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@2766.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_700) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2776.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_700) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2777.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2796.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2797.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2804.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2805.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_719) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2812.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_719) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2813.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2820.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2821.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_727) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2828.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_727) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2829.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2838.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2839.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2853.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2854.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_742) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2861.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_742) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2862.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_746) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2869.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_746) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2870.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2877.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2878.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2896.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2897.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_715) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2911.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_715) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2912.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_742) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2919.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_742) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2920.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_746) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2927.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_746) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2928.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_779) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2936.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_779) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2937.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2955.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2956.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_719) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2963.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_719) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2964.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2971.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2972.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2990.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2991.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_719) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2998.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_719) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@2999.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_779) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3007.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_779) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3008.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3026.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3027.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_719) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3034.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_719) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3035.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3042.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@3043.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_979) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3232.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_979) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3233.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_985) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3246.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_985) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3247.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_989) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3254.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_989) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3255.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1220) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3688.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3689.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1227) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3696.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1227) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3697.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3703.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3704.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1234) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1234) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1238) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3719.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1238) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3720.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1220) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3729.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3730.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3736.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3737.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1227) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3744.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1227) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3745.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1234) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1234) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1309) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3818.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1309) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3819.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1323) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3841.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1323) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3842.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3848.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3849.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1227) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3856.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1227) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3857.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3863.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3864.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1337) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3871.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1337) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3872.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1238) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3879.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1238) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3880.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1309) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3938.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1309) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3939.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1323) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3961.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1323) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3962.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3968.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3969.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1227) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1227) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3983.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3984.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1337) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1337) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@3992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1220) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4008.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4009.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4015.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4016.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1436) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4023.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1436) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4024.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1238) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4031.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1238) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4032.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1220) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4041.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4042.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4048.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4049.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4055.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4056.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1436) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4063.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1436) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4064.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1220) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1220) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1223) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4080.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1223) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4081.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1230) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4087.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1230) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4088.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1436) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4095.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1436) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4096.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1238) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1238) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4104.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1507) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4154.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1507) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4155.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1511) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4162.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1511) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4163.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1515) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4170.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1515) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4171.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1519) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4178.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1519) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4179.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1523) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4186.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1523) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4187.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1556) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4235.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1556) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4236.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1560) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4243.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1560) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4244.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1564) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4251.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1564) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4252.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1568) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4259.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1568) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4260.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1572) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4267.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1572) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4268.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1552 & _T_1576) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4275.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1552 & _T_1576) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4276.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1605 & _T_1613) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4333.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1605 & _T_1613) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4334.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1605 & _T_1625) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4357.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1605 & _T_1625) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4358.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653 & _T_1657) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4405.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653 & _T_1657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4406.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653 & _T_1661) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4413.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653 & _T_1661) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4414.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653 & _T_1665) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4421.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653 & _T_1665) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4422.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653 & _T_1669) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4429.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653 & _T_1669) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4430.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653 & _T_1673) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4437.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653 & _T_1673) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4438.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1732 & _T_1748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4573.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1732 & _T_1748) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4574.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1771 & _T_1782) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4624.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1771 & _T_1782) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4625.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1771 & _T_1795) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4641.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1771 & _T_1795) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4642.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1771 & _T_1802) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4652.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1771 & _T_1802) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4653.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1809 & _T_1814) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4670.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1809 & _T_1814) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4671.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1821) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4682.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1821) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4683.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1840) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4710.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1840) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4711.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1873 & _T_1880) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4764.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1873 & _T_1880) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@4765.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1891) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4783.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1891) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@4784.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
