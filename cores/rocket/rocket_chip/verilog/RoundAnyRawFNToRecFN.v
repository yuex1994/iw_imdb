module RoundAnyRawFNToRecFN( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211703.2]
  input         io_invalidExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input         io_infiniteExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input         io_in_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input         io_in_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input         io_in_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input         io_in_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input  [9:0]  io_in_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input  [26:0] io_in_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.DefaultRV32Config.fir@211704.4]
);
  wire  roundingMode_near_even; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.DefaultRV32Config.fir@211707.4]
  wire  roundingMode_min; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.DefaultRV32Config.fir@211709.4]
  wire  roundingMode_max; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.DefaultRV32Config.fir@211710.4]
  wire  roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.DefaultRV32Config.fir@211711.4]
  wire  roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.DefaultRV32Config.fir@211712.4]
  wire  _T; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@211713.4]
  wire  _T_1; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.DefaultRV32Config.fir@211714.4]
  wire  _T_2; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@211715.4]
  wire  roundMagUp; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@211716.4]
  wire  doShiftSigDown1; // @[RoundAnyRawFNToRecFN.scala 118:61:freechips.rocketchip.system.DefaultRV32Config.fir@211718.4]
  wire [8:0] _T_4; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@211732.4]
  wire [64:0] _T_11; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@211739.4]
  wire [15:0] _T_17; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211745.4]
  wire [15:0] _T_19; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211747.4]
  wire [15:0] _T_21; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211749.4]
  wire [15:0] _T_22; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211750.4]
  wire [15:0] _GEN_0; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211755.4]
  wire [15:0] _T_27; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211755.4]
  wire [15:0] _T_29; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211757.4]
  wire [15:0] _T_31; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211759.4]
  wire [15:0] _T_32; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211760.4]
  wire [15:0] _GEN_1; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211765.4]
  wire [15:0] _T_37; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211765.4]
  wire [15:0] _T_39; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211767.4]
  wire [15:0] _T_41; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211769.4]
  wire [15:0] _T_42; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211770.4]
  wire [15:0] _GEN_2; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211775.4]
  wire [15:0] _T_47; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211775.4]
  wire [15:0] _T_49; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211777.4]
  wire [15:0] _T_51; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211779.4]
  wire [15:0] _T_52; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211780.4]
  wire [21:0] _T_69; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211797.4]
  wire [21:0] _T_70; // @[primitives.scala 74:36:freechips.rocketchip.system.DefaultRV32Config.fir@211798.4]
  wire [21:0] _T_71; // @[primitives.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@211799.4]
  wire [21:0] _T_72; // @[primitives.scala 74:17:freechips.rocketchip.system.DefaultRV32Config.fir@211800.4]
  wire [24:0] _T_73; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211801.4]
  wire [2:0] _T_83; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211811.4]
  wire [2:0] _T_84; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@211812.4]
  wire [24:0] _T_85; // @[primitives.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@211813.4]
  wire [24:0] _T_86; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@211814.4]
  wire [24:0] _GEN_3; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@211815.4]
  wire [24:0] _T_87; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@211815.4]
  wire [26:0] _T_88; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211816.4]
  wire [26:0] _T_90; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211818.4]
  wire [26:0] _T_91; // @[RoundAnyRawFNToRecFN.scala 161:28:freechips.rocketchip.system.DefaultRV32Config.fir@211819.4]
  wire [26:0] _T_92; // @[RoundAnyRawFNToRecFN.scala 161:46:freechips.rocketchip.system.DefaultRV32Config.fir@211820.4]
  wire [26:0] _T_93; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@211821.4]
  wire  _T_94; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.DefaultRV32Config.fir@211822.4]
  wire [26:0] _T_95; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.DefaultRV32Config.fir@211823.4]
  wire  _T_96; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@211824.4]
  wire  _T_97; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.DefaultRV32Config.fir@211825.4]
  wire  _T_98; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.DefaultRV32Config.fir@211826.4]
  wire  _T_99; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.DefaultRV32Config.fir@211827.4]
  wire  _T_100; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.DefaultRV32Config.fir@211828.4]
  wire  _T_101; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@211829.4]
  wire [26:0] _T_102; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.DefaultRV32Config.fir@211830.4]
  wire [25:0] _T_104; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.DefaultRV32Config.fir@211832.4]
  wire  _T_105; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@211833.4]
  wire  _T_106; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.DefaultRV32Config.fir@211834.4]
  wire  _T_107; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.DefaultRV32Config.fir@211835.4]
  wire [25:0] _T_109; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@211837.4]
  wire [25:0] _T_110; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.DefaultRV32Config.fir@211838.4]
  wire [25:0] _T_111; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.DefaultRV32Config.fir@211839.4]
  wire [26:0] _T_112; // @[RoundAnyRawFNToRecFN.scala 178:32:freechips.rocketchip.system.DefaultRV32Config.fir@211840.4]
  wire [26:0] _T_113; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@211841.4]
  wire  _T_115; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@211843.4]
  wire [25:0] _T_117; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.DefaultRV32Config.fir@211845.4]
  wire [25:0] _GEN_4; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@211846.4]
  wire [25:0] _T_118; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@211846.4]
  wire [25:0] _T_119; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.DefaultRV32Config.fir@211847.4]
  wire [2:0] _T_121; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.DefaultRV32Config.fir@211849.4]
  wire [9:0] _GEN_5; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@211850.4]
  wire [10:0] _T_122; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@211850.4]
  wire [8:0] common_expOut; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@211851.4]
  wire [22:0] common_fractOut; // @[RoundAnyRawFNToRecFN.scala 187:16:freechips.rocketchip.system.DefaultRV32Config.fir@211855.4]
  wire [3:0] _T_127; // @[RoundAnyRawFNToRecFN.scala 194:30:freechips.rocketchip.system.DefaultRV32Config.fir@211857.4]
  wire  common_overflow; // @[RoundAnyRawFNToRecFN.scala 194:50:freechips.rocketchip.system.DefaultRV32Config.fir@211858.4]
  wire  common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 198:31:freechips.rocketchip.system.DefaultRV32Config.fir@211860.4]
  wire  _T_132; // @[RoundAnyRawFNToRecFN.scala 201:16:freechips.rocketchip.system.DefaultRV32Config.fir@211864.4]
  wire  _T_134; // @[RoundAnyRawFNToRecFN.scala 203:30:freechips.rocketchip.system.DefaultRV32Config.fir@211866.4]
  wire  _T_136; // @[RoundAnyRawFNToRecFN.scala 203:70:freechips.rocketchip.system.DefaultRV32Config.fir@211868.4]
  wire  _T_137; // @[RoundAnyRawFNToRecFN.scala 203:49:freechips.rocketchip.system.DefaultRV32Config.fir@211869.4]
  wire  _T_139; // @[RoundAnyRawFNToRecFN.scala 205:67:freechips.rocketchip.system.DefaultRV32Config.fir@211871.4]
  wire  _T_140; // @[RoundAnyRawFNToRecFN.scala 207:29:freechips.rocketchip.system.DefaultRV32Config.fir@211872.4]
  wire  _T_141; // @[RoundAnyRawFNToRecFN.scala 206:46:freechips.rocketchip.system.DefaultRV32Config.fir@211873.4]
  wire  _T_144; // @[RoundAnyRawFNToRecFN.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@211876.4]
  wire [1:0] _T_145; // @[RoundAnyRawFNToRecFN.scala 218:48:freechips.rocketchip.system.DefaultRV32Config.fir@211877.4]
  wire  _T_146; // @[RoundAnyRawFNToRecFN.scala 218:62:freechips.rocketchip.system.DefaultRV32Config.fir@211878.4]
  wire  _T_147; // @[RoundAnyRawFNToRecFN.scala 218:32:freechips.rocketchip.system.DefaultRV32Config.fir@211879.4]
  wire  _T_150; // @[RoundAnyRawFNToRecFN.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@211882.4]
  wire  _T_151; // @[RoundAnyRawFNToRecFN.scala 218:74:freechips.rocketchip.system.DefaultRV32Config.fir@211883.4]
  wire  _T_155; // @[RoundAnyRawFNToRecFN.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@211887.4]
  wire  _T_156; // @[RoundAnyRawFNToRecFN.scala 221:34:freechips.rocketchip.system.DefaultRV32Config.fir@211888.4]
  wire  _T_158; // @[RoundAnyRawFNToRecFN.scala 224:38:freechips.rocketchip.system.DefaultRV32Config.fir@211890.4]
  wire  _T_159; // @[RoundAnyRawFNToRecFN.scala 225:45:freechips.rocketchip.system.DefaultRV32Config.fir@211891.4]
  wire  _T_160; // @[RoundAnyRawFNToRecFN.scala 225:60:freechips.rocketchip.system.DefaultRV32Config.fir@211892.4]
  wire  _T_161; // @[RoundAnyRawFNToRecFN.scala 220:27:freechips.rocketchip.system.DefaultRV32Config.fir@211893.4]
  wire  _T_162; // @[RoundAnyRawFNToRecFN.scala 219:76:freechips.rocketchip.system.DefaultRV32Config.fir@211894.4]
  wire  common_underflow; // @[RoundAnyRawFNToRecFN.scala 215:40:freechips.rocketchip.system.DefaultRV32Config.fir@211895.4]
  wire  common_inexact; // @[RoundAnyRawFNToRecFN.scala 228:49:freechips.rocketchip.system.DefaultRV32Config.fir@211897.4]
  wire  isNaNOut; // @[RoundAnyRawFNToRecFN.scala 233:34:freechips.rocketchip.system.DefaultRV32Config.fir@211899.4]
  wire  notNaN_isSpecialInfOut; // @[RoundAnyRawFNToRecFN.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@211900.4]
  wire  _T_165; // @[RoundAnyRawFNToRecFN.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@211901.4]
  wire  _T_166; // @[RoundAnyRawFNToRecFN.scala 235:36:freechips.rocketchip.system.DefaultRV32Config.fir@211902.4]
  wire  _T_167; // @[RoundAnyRawFNToRecFN.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@211903.4]
  wire  _T_168; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.DefaultRV32Config.fir@211904.4]
  wire  commonCase; // @[RoundAnyRawFNToRecFN.scala 235:61:freechips.rocketchip.system.DefaultRV32Config.fir@211905.4]
  wire  overflow; // @[RoundAnyRawFNToRecFN.scala 236:32:freechips.rocketchip.system.DefaultRV32Config.fir@211906.4]
  wire  underflow; // @[RoundAnyRawFNToRecFN.scala 237:32:freechips.rocketchip.system.DefaultRV32Config.fir@211907.4]
  wire  _T_169; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@211908.4]
  wire  inexact; // @[RoundAnyRawFNToRecFN.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@211909.4]
  wire  overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60:freechips.rocketchip.system.DefaultRV32Config.fir@211911.4]
  wire  _T_171; // @[RoundAnyRawFNToRecFN.scala 243:20:freechips.rocketchip.system.DefaultRV32Config.fir@211912.4]
  wire  _T_172; // @[RoundAnyRawFNToRecFN.scala 243:60:freechips.rocketchip.system.DefaultRV32Config.fir@211913.4]
  wire  pegMinNonzeroMagOut; // @[RoundAnyRawFNToRecFN.scala 243:45:freechips.rocketchip.system.DefaultRV32Config.fir@211914.4]
  wire  _T_173; // @[RoundAnyRawFNToRecFN.scala 244:42:freechips.rocketchip.system.DefaultRV32Config.fir@211915.4]
  wire  pegMaxFiniteMagOut; // @[RoundAnyRawFNToRecFN.scala 244:39:freechips.rocketchip.system.DefaultRV32Config.fir@211916.4]
  wire  _T_174; // @[RoundAnyRawFNToRecFN.scala 246:45:freechips.rocketchip.system.DefaultRV32Config.fir@211917.4]
  wire  notNaN_isInfOut; // @[RoundAnyRawFNToRecFN.scala 246:32:freechips.rocketchip.system.DefaultRV32Config.fir@211918.4]
  wire  signOut; // @[RoundAnyRawFNToRecFN.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@211919.4]
  wire  _T_175; // @[RoundAnyRawFNToRecFN.scala 251:32:freechips.rocketchip.system.DefaultRV32Config.fir@211920.4]
  wire [8:0] _T_176; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.DefaultRV32Config.fir@211921.4]
  wire [8:0] _T_177; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.DefaultRV32Config.fir@211922.4]
  wire [8:0] _T_178; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@211923.4]
  wire [8:0] _T_180; // @[RoundAnyRawFNToRecFN.scala 255:18:freechips.rocketchip.system.DefaultRV32Config.fir@211925.4]
  wire [8:0] _T_181; // @[RoundAnyRawFNToRecFN.scala 255:14:freechips.rocketchip.system.DefaultRV32Config.fir@211926.4]
  wire [8:0] _T_182; // @[RoundAnyRawFNToRecFN.scala 254:17:freechips.rocketchip.system.DefaultRV32Config.fir@211927.4]
  wire [8:0] _T_183; // @[RoundAnyRawFNToRecFN.scala 259:18:freechips.rocketchip.system.DefaultRV32Config.fir@211928.4]
  wire [8:0] _T_184; // @[RoundAnyRawFNToRecFN.scala 259:14:freechips.rocketchip.system.DefaultRV32Config.fir@211929.4]
  wire [8:0] _T_185; // @[RoundAnyRawFNToRecFN.scala 258:17:freechips.rocketchip.system.DefaultRV32Config.fir@211930.4]
  wire [8:0] _T_186; // @[RoundAnyRawFNToRecFN.scala 263:18:freechips.rocketchip.system.DefaultRV32Config.fir@211931.4]
  wire [8:0] _T_187; // @[RoundAnyRawFNToRecFN.scala 263:14:freechips.rocketchip.system.DefaultRV32Config.fir@211932.4]
  wire [8:0] _T_188; // @[RoundAnyRawFNToRecFN.scala 262:17:freechips.rocketchip.system.DefaultRV32Config.fir@211933.4]
  wire [8:0] _T_189; // @[RoundAnyRawFNToRecFN.scala 267:16:freechips.rocketchip.system.DefaultRV32Config.fir@211934.4]
  wire [8:0] _T_190; // @[RoundAnyRawFNToRecFN.scala 266:18:freechips.rocketchip.system.DefaultRV32Config.fir@211935.4]
  wire [8:0] _T_191; // @[RoundAnyRawFNToRecFN.scala 271:16:freechips.rocketchip.system.DefaultRV32Config.fir@211936.4]
  wire [8:0] _T_192; // @[RoundAnyRawFNToRecFN.scala 270:15:freechips.rocketchip.system.DefaultRV32Config.fir@211937.4]
  wire [8:0] _T_193; // @[RoundAnyRawFNToRecFN.scala 275:16:freechips.rocketchip.system.DefaultRV32Config.fir@211938.4]
  wire [8:0] _T_194; // @[RoundAnyRawFNToRecFN.scala 274:15:freechips.rocketchip.system.DefaultRV32Config.fir@211939.4]
  wire [8:0] _T_195; // @[RoundAnyRawFNToRecFN.scala 276:16:freechips.rocketchip.system.DefaultRV32Config.fir@211940.4]
  wire [8:0] expOut; // @[RoundAnyRawFNToRecFN.scala 275:77:freechips.rocketchip.system.DefaultRV32Config.fir@211941.4]
  wire  _T_196; // @[RoundAnyRawFNToRecFN.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@211942.4]
  wire  _T_197; // @[RoundAnyRawFNToRecFN.scala 278:38:freechips.rocketchip.system.DefaultRV32Config.fir@211943.4]
  wire [22:0] _T_198; // @[RoundAnyRawFNToRecFN.scala 279:16:freechips.rocketchip.system.DefaultRV32Config.fir@211944.4]
  wire [22:0] _T_199; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@211945.4]
  wire [22:0] _T_201; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@211947.4]
  wire [22:0] fractOut; // @[RoundAnyRawFNToRecFN.scala 281:11:freechips.rocketchip.system.DefaultRV32Config.fir@211948.4]
  wire [9:0] _T_202; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211949.4]
  wire [1:0] _T_204; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211952.4]
  wire [2:0] _T_206; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211954.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.DefaultRV32Config.fir@211707.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.DefaultRV32Config.fir@211709.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.DefaultRV32Config.fir@211710.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.DefaultRV32Config.fir@211711.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.DefaultRV32Config.fir@211712.4]
  assign _T = roundingMode_min & io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@211713.4]
  assign _T_1 = ~io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.DefaultRV32Config.fir@211714.4]
  assign _T_2 = roundingMode_max & _T_1; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@211715.4]
  assign roundMagUp = _T | _T_2; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@211716.4]
  assign doShiftSigDown1 = io_in_sig[26]; // @[RoundAnyRawFNToRecFN.scala 118:61:freechips.rocketchip.system.DefaultRV32Config.fir@211718.4]
  assign _T_4 = ~io_in_sExp[8:0]; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@211732.4]
  assign _T_11 = -65'sh10000000000000000 >>> _T_4[5:0]; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@211739.4]
  assign _T_17 = {{8'd0}, _T_11[57:50]}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211745.4]
  assign _T_19 = {_T_11[49:42], 8'h0}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211747.4]
  assign _T_21 = _T_19 & 16'hff00; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211749.4]
  assign _T_22 = _T_17 | _T_21; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211750.4]
  assign _GEN_0 = {{4'd0}, _T_22[15:4]}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211755.4]
  assign _T_27 = _GEN_0 & 16'hf0f; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211755.4]
  assign _T_29 = {_T_22[11:0], 4'h0}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211757.4]
  assign _T_31 = _T_29 & 16'hf0f0; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211759.4]
  assign _T_32 = _T_27 | _T_31; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211760.4]
  assign _GEN_1 = {{2'd0}, _T_32[15:2]}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211765.4]
  assign _T_37 = _GEN_1 & 16'h3333; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211765.4]
  assign _T_39 = {_T_32[13:0], 2'h0}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211767.4]
  assign _T_41 = _T_39 & 16'hcccc; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211769.4]
  assign _T_42 = _T_37 | _T_41; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211770.4]
  assign _GEN_2 = {{1'd0}, _T_42[15:1]}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211775.4]
  assign _T_47 = _GEN_2 & 16'h5555; // @[Bitwise.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@211775.4]
  assign _T_49 = {_T_42[14:0], 1'h0}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.DefaultRV32Config.fir@211777.4]
  assign _T_51 = _T_49 & 16'haaaa; // @[Bitwise.scala 103:75:freechips.rocketchip.system.DefaultRV32Config.fir@211779.4]
  assign _T_52 = _T_47 | _T_51; // @[Bitwise.scala 103:39:freechips.rocketchip.system.DefaultRV32Config.fir@211780.4]
  assign _T_69 = {_T_52,_T_11[58],_T_11[59],_T_11[60],_T_11[61],_T_11[62],_T_11[63]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211797.4]
  assign _T_70 = ~_T_69; // @[primitives.scala 74:36:freechips.rocketchip.system.DefaultRV32Config.fir@211798.4]
  assign _T_71 = _T_4[6] ? 22'h0 : _T_70; // @[primitives.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@211799.4]
  assign _T_72 = ~_T_71; // @[primitives.scala 74:17:freechips.rocketchip.system.DefaultRV32Config.fir@211800.4]
  assign _T_73 = {_T_72,3'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211801.4]
  assign _T_83 = {_T_11[0],_T_11[1],_T_11[2]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211811.4]
  assign _T_84 = _T_4[6] ? _T_83 : 3'h0; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@211812.4]
  assign _T_85 = _T_4[7] ? _T_73 : {{22'd0}, _T_84}; // @[primitives.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@211813.4]
  assign _T_86 = _T_4[8] ? _T_85 : 25'h0; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@211814.4]
  assign _GEN_3 = {{24'd0}, doShiftSigDown1}; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@211815.4]
  assign _T_87 = _T_86 | _GEN_3; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@211815.4]
  assign _T_88 = {_T_87,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211816.4]
  assign _T_90 = {1'h0,_T_88[26:1]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211818.4]
  assign _T_91 = ~_T_90; // @[RoundAnyRawFNToRecFN.scala 161:28:freechips.rocketchip.system.DefaultRV32Config.fir@211819.4]
  assign _T_92 = _T_91 & _T_88; // @[RoundAnyRawFNToRecFN.scala 161:46:freechips.rocketchip.system.DefaultRV32Config.fir@211820.4]
  assign _T_93 = io_in_sig & _T_92; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@211821.4]
  assign _T_94 = |_T_93; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.DefaultRV32Config.fir@211822.4]
  assign _T_95 = io_in_sig & _T_90; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.DefaultRV32Config.fir@211823.4]
  assign _T_96 = |_T_95; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@211824.4]
  assign _T_97 = _T_94 | _T_96; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.DefaultRV32Config.fir@211825.4]
  assign _T_98 = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.DefaultRV32Config.fir@211826.4]
  assign _T_99 = _T_98 & _T_94; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.DefaultRV32Config.fir@211827.4]
  assign _T_100 = roundMagUp & _T_97; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.DefaultRV32Config.fir@211828.4]
  assign _T_101 = _T_99 | _T_100; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@211829.4]
  assign _T_102 = io_in_sig | _T_88; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.DefaultRV32Config.fir@211830.4]
  assign _T_104 = _T_102[26:2] + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.DefaultRV32Config.fir@211832.4]
  assign _T_105 = roundingMode_near_even & _T_94; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@211833.4]
  assign _T_106 = ~_T_96; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.DefaultRV32Config.fir@211834.4]
  assign _T_107 = _T_105 & _T_106; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.DefaultRV32Config.fir@211835.4]
  assign _T_109 = _T_107 ? _T_88[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@211837.4]
  assign _T_110 = ~_T_109; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.DefaultRV32Config.fir@211838.4]
  assign _T_111 = _T_104 & _T_110; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.DefaultRV32Config.fir@211839.4]
  assign _T_112 = ~_T_88; // @[RoundAnyRawFNToRecFN.scala 178:32:freechips.rocketchip.system.DefaultRV32Config.fir@211840.4]
  assign _T_113 = io_in_sig & _T_112; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@211841.4]
  assign _T_115 = roundingMode_odd & _T_97; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@211843.4]
  assign _T_117 = _T_115 ? _T_92[26:1] : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.DefaultRV32Config.fir@211845.4]
  assign _GEN_4 = {{1'd0}, _T_113[26:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@211846.4]
  assign _T_118 = _GEN_4 | _T_117; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@211846.4]
  assign _T_119 = _T_101 ? _T_111 : _T_118; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.DefaultRV32Config.fir@211847.4]
  assign _T_121 = {1'b0,$signed(_T_119[25:24])}; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.DefaultRV32Config.fir@211849.4]
  assign _GEN_5 = {{7{_T_121[2]}},_T_121}; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@211850.4]
  assign _T_122 = $signed(io_in_sExp) + $signed(_GEN_5); // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@211850.4]
  assign common_expOut = _T_122[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@211851.4]
  assign common_fractOut = doShiftSigDown1 ? _T_119[23:1] : _T_119[22:0]; // @[RoundAnyRawFNToRecFN.scala 187:16:freechips.rocketchip.system.DefaultRV32Config.fir@211855.4]
  assign _T_127 = _T_122[10:7]; // @[RoundAnyRawFNToRecFN.scala 194:30:freechips.rocketchip.system.DefaultRV32Config.fir@211857.4]
  assign common_overflow = $signed(_T_127) >= 4'sh3; // @[RoundAnyRawFNToRecFN.scala 194:50:freechips.rocketchip.system.DefaultRV32Config.fir@211858.4]
  assign common_totalUnderflow = $signed(_T_122) < 11'sh6b; // @[RoundAnyRawFNToRecFN.scala 198:31:freechips.rocketchip.system.DefaultRV32Config.fir@211860.4]
  assign _T_132 = doShiftSigDown1 ? io_in_sig[2] : io_in_sig[1]; // @[RoundAnyRawFNToRecFN.scala 201:16:freechips.rocketchip.system.DefaultRV32Config.fir@211864.4]
  assign _T_134 = doShiftSigDown1 & io_in_sig[2]; // @[RoundAnyRawFNToRecFN.scala 203:30:freechips.rocketchip.system.DefaultRV32Config.fir@211866.4]
  assign _T_136 = |io_in_sig[1:0]; // @[RoundAnyRawFNToRecFN.scala 203:70:freechips.rocketchip.system.DefaultRV32Config.fir@211868.4]
  assign _T_137 = _T_134 | _T_136; // @[RoundAnyRawFNToRecFN.scala 203:49:freechips.rocketchip.system.DefaultRV32Config.fir@211869.4]
  assign _T_139 = _T_98 & _T_132; // @[RoundAnyRawFNToRecFN.scala 205:67:freechips.rocketchip.system.DefaultRV32Config.fir@211871.4]
  assign _T_140 = roundMagUp & _T_137; // @[RoundAnyRawFNToRecFN.scala 207:29:freechips.rocketchip.system.DefaultRV32Config.fir@211872.4]
  assign _T_141 = _T_139 | _T_140; // @[RoundAnyRawFNToRecFN.scala 206:46:freechips.rocketchip.system.DefaultRV32Config.fir@211873.4]
  assign _T_144 = doShiftSigDown1 ? _T_119[25] : _T_119[24]; // @[RoundAnyRawFNToRecFN.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@211876.4]
  assign _T_145 = io_in_sExp[9:8]; // @[RoundAnyRawFNToRecFN.scala 218:48:freechips.rocketchip.system.DefaultRV32Config.fir@211877.4]
  assign _T_146 = $signed(_T_145) <= 2'sh0; // @[RoundAnyRawFNToRecFN.scala 218:62:freechips.rocketchip.system.DefaultRV32Config.fir@211878.4]
  assign _T_147 = _T_97 & _T_146; // @[RoundAnyRawFNToRecFN.scala 218:32:freechips.rocketchip.system.DefaultRV32Config.fir@211879.4]
  assign _T_150 = doShiftSigDown1 ? _T_88[3] : _T_88[2]; // @[RoundAnyRawFNToRecFN.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@211882.4]
  assign _T_151 = _T_147 & _T_150; // @[RoundAnyRawFNToRecFN.scala 218:74:freechips.rocketchip.system.DefaultRV32Config.fir@211883.4]
  assign _T_155 = doShiftSigDown1 ? _T_88[4] : _T_88[3]; // @[RoundAnyRawFNToRecFN.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@211887.4]
  assign _T_156 = ~_T_155; // @[RoundAnyRawFNToRecFN.scala 221:34:freechips.rocketchip.system.DefaultRV32Config.fir@211888.4]
  assign _T_158 = _T_156 & _T_144; // @[RoundAnyRawFNToRecFN.scala 224:38:freechips.rocketchip.system.DefaultRV32Config.fir@211890.4]
  assign _T_159 = _T_158 & _T_94; // @[RoundAnyRawFNToRecFN.scala 225:45:freechips.rocketchip.system.DefaultRV32Config.fir@211891.4]
  assign _T_160 = _T_159 & _T_141; // @[RoundAnyRawFNToRecFN.scala 225:60:freechips.rocketchip.system.DefaultRV32Config.fir@211892.4]
  assign _T_161 = ~_T_160; // @[RoundAnyRawFNToRecFN.scala 220:27:freechips.rocketchip.system.DefaultRV32Config.fir@211893.4]
  assign _T_162 = _T_151 & _T_161; // @[RoundAnyRawFNToRecFN.scala 219:76:freechips.rocketchip.system.DefaultRV32Config.fir@211894.4]
  assign common_underflow = common_totalUnderflow | _T_162; // @[RoundAnyRawFNToRecFN.scala 215:40:freechips.rocketchip.system.DefaultRV32Config.fir@211895.4]
  assign common_inexact = common_totalUnderflow | _T_97; // @[RoundAnyRawFNToRecFN.scala 228:49:freechips.rocketchip.system.DefaultRV32Config.fir@211897.4]
  assign isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34:freechips.rocketchip.system.DefaultRV32Config.fir@211899.4]
  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@211900.4]
  assign _T_165 = ~isNaNOut; // @[RoundAnyRawFNToRecFN.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@211901.4]
  assign _T_166 = ~notNaN_isSpecialInfOut; // @[RoundAnyRawFNToRecFN.scala 235:36:freechips.rocketchip.system.DefaultRV32Config.fir@211902.4]
  assign _T_167 = _T_165 & _T_166; // @[RoundAnyRawFNToRecFN.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@211903.4]
  assign _T_168 = ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.DefaultRV32Config.fir@211904.4]
  assign commonCase = _T_167 & _T_168; // @[RoundAnyRawFNToRecFN.scala 235:61:freechips.rocketchip.system.DefaultRV32Config.fir@211905.4]
  assign overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32:freechips.rocketchip.system.DefaultRV32Config.fir@211906.4]
  assign underflow = commonCase & common_underflow; // @[RoundAnyRawFNToRecFN.scala 237:32:freechips.rocketchip.system.DefaultRV32Config.fir@211907.4]
  assign _T_169 = commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@211908.4]
  assign inexact = overflow | _T_169; // @[RoundAnyRawFNToRecFN.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@211909.4]
  assign overflow_roundMagUp = _T_98 | roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60:freechips.rocketchip.system.DefaultRV32Config.fir@211911.4]
  assign _T_171 = commonCase & common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 243:20:freechips.rocketchip.system.DefaultRV32Config.fir@211912.4]
  assign _T_172 = roundMagUp | roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 243:60:freechips.rocketchip.system.DefaultRV32Config.fir@211913.4]
  assign pegMinNonzeroMagOut = _T_171 & _T_172; // @[RoundAnyRawFNToRecFN.scala 243:45:freechips.rocketchip.system.DefaultRV32Config.fir@211914.4]
  assign _T_173 = ~overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 244:42:freechips.rocketchip.system.DefaultRV32Config.fir@211915.4]
  assign pegMaxFiniteMagOut = overflow & _T_173; // @[RoundAnyRawFNToRecFN.scala 244:39:freechips.rocketchip.system.DefaultRV32Config.fir@211916.4]
  assign _T_174 = overflow & overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 246:45:freechips.rocketchip.system.DefaultRV32Config.fir@211917.4]
  assign notNaN_isInfOut = notNaN_isSpecialInfOut | _T_174; // @[RoundAnyRawFNToRecFN.scala 246:32:freechips.rocketchip.system.DefaultRV32Config.fir@211918.4]
  assign signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@211919.4]
  assign _T_175 = io_in_isZero | common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 251:32:freechips.rocketchip.system.DefaultRV32Config.fir@211920.4]
  assign _T_176 = _T_175 ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.DefaultRV32Config.fir@211921.4]
  assign _T_177 = ~_T_176; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.DefaultRV32Config.fir@211922.4]
  assign _T_178 = common_expOut & _T_177; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@211923.4]
  assign _T_180 = pegMinNonzeroMagOut ? 9'h194 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 255:18:freechips.rocketchip.system.DefaultRV32Config.fir@211925.4]
  assign _T_181 = ~_T_180; // @[RoundAnyRawFNToRecFN.scala 255:14:freechips.rocketchip.system.DefaultRV32Config.fir@211926.4]
  assign _T_182 = _T_178 & _T_181; // @[RoundAnyRawFNToRecFN.scala 254:17:freechips.rocketchip.system.DefaultRV32Config.fir@211927.4]
  assign _T_183 = pegMaxFiniteMagOut ? 9'h80 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 259:18:freechips.rocketchip.system.DefaultRV32Config.fir@211928.4]
  assign _T_184 = ~_T_183; // @[RoundAnyRawFNToRecFN.scala 259:14:freechips.rocketchip.system.DefaultRV32Config.fir@211929.4]
  assign _T_185 = _T_182 & _T_184; // @[RoundAnyRawFNToRecFN.scala 258:17:freechips.rocketchip.system.DefaultRV32Config.fir@211930.4]
  assign _T_186 = notNaN_isInfOut ? 9'h40 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 263:18:freechips.rocketchip.system.DefaultRV32Config.fir@211931.4]
  assign _T_187 = ~_T_186; // @[RoundAnyRawFNToRecFN.scala 263:14:freechips.rocketchip.system.DefaultRV32Config.fir@211932.4]
  assign _T_188 = _T_185 & _T_187; // @[RoundAnyRawFNToRecFN.scala 262:17:freechips.rocketchip.system.DefaultRV32Config.fir@211933.4]
  assign _T_189 = pegMinNonzeroMagOut ? 9'h6b : 9'h0; // @[RoundAnyRawFNToRecFN.scala 267:16:freechips.rocketchip.system.DefaultRV32Config.fir@211934.4]
  assign _T_190 = _T_188 | _T_189; // @[RoundAnyRawFNToRecFN.scala 266:18:freechips.rocketchip.system.DefaultRV32Config.fir@211935.4]
  assign _T_191 = pegMaxFiniteMagOut ? 9'h17f : 9'h0; // @[RoundAnyRawFNToRecFN.scala 271:16:freechips.rocketchip.system.DefaultRV32Config.fir@211936.4]
  assign _T_192 = _T_190 | _T_191; // @[RoundAnyRawFNToRecFN.scala 270:15:freechips.rocketchip.system.DefaultRV32Config.fir@211937.4]
  assign _T_193 = notNaN_isInfOut ? 9'h180 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 275:16:freechips.rocketchip.system.DefaultRV32Config.fir@211938.4]
  assign _T_194 = _T_192 | _T_193; // @[RoundAnyRawFNToRecFN.scala 274:15:freechips.rocketchip.system.DefaultRV32Config.fir@211939.4]
  assign _T_195 = isNaNOut ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 276:16:freechips.rocketchip.system.DefaultRV32Config.fir@211940.4]
  assign expOut = _T_194 | _T_195; // @[RoundAnyRawFNToRecFN.scala 275:77:freechips.rocketchip.system.DefaultRV32Config.fir@211941.4]
  assign _T_196 = isNaNOut | io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@211942.4]
  assign _T_197 = _T_196 | common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 278:38:freechips.rocketchip.system.DefaultRV32Config.fir@211943.4]
  assign _T_198 = isNaNOut ? 23'h400000 : 23'h0; // @[RoundAnyRawFNToRecFN.scala 279:16:freechips.rocketchip.system.DefaultRV32Config.fir@211944.4]
  assign _T_199 = _T_197 ? _T_198 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@211945.4]
  assign _T_201 = pegMaxFiniteMagOut ? 23'h7fffff : 23'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.DefaultRV32Config.fir@211947.4]
  assign fractOut = _T_199 | _T_201; // @[RoundAnyRawFNToRecFN.scala 281:11:freechips.rocketchip.system.DefaultRV32Config.fir@211948.4]
  assign _T_202 = {signOut,expOut}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211949.4]
  assign _T_204 = {underflow,inexact}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211952.4]
  assign _T_206 = {io_invalidExc,io_infiniteExc,overflow}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@211954.4]
  assign io_out = {_T_202,fractOut}; // @[RoundAnyRawFNToRecFN.scala 284:12:freechips.rocketchip.system.DefaultRV32Config.fir@211951.4]
  assign io_exceptionFlags = {_T_206,_T_204}; // @[RoundAnyRawFNToRecFN.scala 285:23:freechips.rocketchip.system.DefaultRV32Config.fir@211956.4]
endmodule