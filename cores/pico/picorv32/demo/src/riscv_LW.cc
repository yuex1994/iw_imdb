#include "riscv.h"
void riscv::decode_riscv_LW_update() {
  c_1095 = (riscv_pc + 4);
  riscv_pc_next = c_1095;
  riscv_x0_next = 0;
  uint5_t tmp_17 = 0 - 1;
  c_17 = static_cast<uint5_t> ((riscv_inst >> 7) & tmp_17);
  c_1119 = c_17 == 1;
  uint5_t tmp_19 = 0 - 1;
  c_19 = static_cast<uint5_t> ((riscv_inst >> 15) & tmp_19);
  c_1085 = c_19 == 31;
  c_1080 = c_19 == 30;
  c_1075 = c_19 == 29;
  c_1070 = c_19 == 28;
  c_1065 = c_19 == 27;
  c_1060 = c_19 == 26;
  c_1055 = c_19 == 25;
  c_1050 = c_19 == 24;
  c_1045 = c_19 == 23;
  c_1040 = c_19 == 22;
  c_1035 = c_19 == 21;
  c_1030 = c_19 == 20;
  c_1025 = c_19 == 19;
  c_1020 = c_19 == 18;
  c_1015 = c_19 == 17;
  c_1010 = c_19 == 16;
  c_1005 = c_19 == 15;
  c_1000 = c_19 == 14;
  c_995 = c_19 == 13;
  c_990 = c_19 == 12;
  c_985 = c_19 == 11;
  c_980 = c_19 == 10;
  c_975 = c_19 == 9;
  c_970 = c_19 == 8;
  c_965 = c_19 == 7;
  c_960 = c_19 == 6;
  c_955 = c_19 == 5;
  c_950 = c_19 == 4;
  c_945 = c_19 == 3;
  c_940 = c_19 == 2;
  c_935 = c_19 == 1;
  c_937 = (c_935) ? riscv_x1 : 0;
  c_942 = (c_940) ? riscv_x2 : c_937;
  c_947 = (c_945) ? riscv_x3 : c_942;
  c_952 = (c_950) ? riscv_x4 : c_947;
  c_957 = (c_955) ? riscv_x5 : c_952;
  c_962 = (c_960) ? riscv_x6 : c_957;
  c_967 = (c_965) ? riscv_x7 : c_962;
  c_972 = (c_970) ? riscv_x8 : c_967;
  c_977 = (c_975) ? riscv_x9 : c_972;
  c_982 = (c_980) ? riscv_x10 : c_977;
  c_987 = (c_985) ? riscv_x11 : c_982;
  c_992 = (c_990) ? riscv_x12 : c_987;
  c_997 = (c_995) ? riscv_x13 : c_992;
  c_1002 = (c_1000) ? riscv_x14 : c_997;
  c_1007 = (c_1005) ? riscv_x15 : c_1002;
  c_1012 = (c_1010) ? riscv_x16 : c_1007;
  c_1017 = (c_1015) ? riscv_x17 : c_1012;
  c_1022 = (c_1020) ? riscv_x18 : c_1017;
  c_1027 = (c_1025) ? riscv_x19 : c_1022;
  c_1032 = (c_1030) ? riscv_x20 : c_1027;
  c_1037 = (c_1035) ? riscv_x21 : c_1032;
  c_1042 = (c_1040) ? riscv_x22 : c_1037;
  c_1047 = (c_1045) ? riscv_x23 : c_1042;
  c_1052 = (c_1050) ? riscv_x24 : c_1047;
  c_1057 = (c_1055) ? riscv_x25 : c_1052;
  c_1062 = (c_1060) ? riscv_x26 : c_1057;
  c_1067 = (c_1065) ? riscv_x27 : c_1062;
  c_1072 = (c_1070) ? riscv_x28 : c_1067;
  c_1077 = (c_1075) ? riscv_x29 : c_1072;
  c_1082 = (c_1080) ? riscv_x30 : c_1077;
  c_1087 = (c_1085) ? riscv_x31 : c_1082;
  uint12_t tmp_29 = 0 - 1;
  c_29 = static_cast<uint12_t> ((riscv_inst >> 20) & tmp_29);
  c_31 = static_cast<uint32_t>(c_29);
  c_31 = (c_29 >> 11) ? static_cast<uint32_t>(~c_29) : static_cast<uint32_t>(c_29);
  c_31 = (c_29 >> 11) ? (~c_31) : c_31;
  c_1088 = (c_1087 + c_31);
  uint2_t tmp_1106 = 0 - 1;
  c_1106 = static_cast<uint2_t> ((c_1088 >> 0) & tmp_1106);
  c_1112 = c_1106 == 0;
  uint14_t tmp_1089 = 0 - 1;
  c_1089 = static_cast<uint14_t> ((c_1088 >> 2) & tmp_1089);
  c_1091 = riscv_mem[static_cast<uint32_t> (c_1089)];
  c_1114 = (c_1112) ? c_1091 : 0;
  c_1121 = (c_1119) ? c_1114 : riscv_x1;
  riscv_x1_next = c_1121;
  c_1164 = c_17 == 10;
  c_1166 = (c_1164) ? c_1114 : riscv_x10;
  riscv_x10_next = c_1166;
  c_1169 = c_17 == 11;
  c_1171 = (c_1169) ? c_1114 : riscv_x11;
  riscv_x11_next = c_1171;
  c_1174 = c_17 == 12;
  c_1176 = (c_1174) ? c_1114 : riscv_x12;
  riscv_x12_next = c_1176;
  c_1179 = c_17 == 13;
  c_1181 = (c_1179) ? c_1114 : riscv_x13;
  riscv_x13_next = c_1181;
  c_1184 = c_17 == 14;
  c_1186 = (c_1184) ? c_1114 : riscv_x14;
  riscv_x14_next = c_1186;
  c_1189 = c_17 == 15;
  c_1191 = (c_1189) ? c_1114 : riscv_x15;
  riscv_x15_next = c_1191;
  c_1194 = c_17 == 16;
  c_1196 = (c_1194) ? c_1114 : riscv_x16;
  riscv_x16_next = c_1196;
  c_1199 = c_17 == 17;
  c_1201 = (c_1199) ? c_1114 : riscv_x17;
  riscv_x17_next = c_1201;
  c_1204 = c_17 == 18;
  c_1206 = (c_1204) ? c_1114 : riscv_x18;
  riscv_x18_next = c_1206;
  c_1209 = c_17 == 19;
  c_1211 = (c_1209) ? c_1114 : riscv_x19;
  riscv_x19_next = c_1211;
  c_1124 = c_17 == 2;
  c_1126 = (c_1124) ? c_1114 : riscv_x2;
  riscv_x2_next = c_1126;
  c_1214 = c_17 == 20;
  c_1216 = (c_1214) ? c_1114 : riscv_x20;
  riscv_x20_next = c_1216;
  c_1219 = c_17 == 21;
  c_1221 = (c_1219) ? c_1114 : riscv_x21;
  riscv_x21_next = c_1221;
  c_1224 = c_17 == 22;
  c_1226 = (c_1224) ? c_1114 : riscv_x22;
  riscv_x22_next = c_1226;
  c_1229 = c_17 == 23;
  c_1231 = (c_1229) ? c_1114 : riscv_x23;
  riscv_x23_next = c_1231;
  c_1234 = c_17 == 24;
  c_1236 = (c_1234) ? c_1114 : riscv_x24;
  riscv_x24_next = c_1236;
  c_1239 = c_17 == 25;
  c_1241 = (c_1239) ? c_1114 : riscv_x25;
  riscv_x25_next = c_1241;
  c_1244 = c_17 == 26;
  c_1246 = (c_1244) ? c_1114 : riscv_x26;
  riscv_x26_next = c_1246;
  c_1249 = c_17 == 27;
  c_1251 = (c_1249) ? c_1114 : riscv_x27;
  riscv_x27_next = c_1251;
  c_1254 = c_17 == 28;
  c_1256 = (c_1254) ? c_1114 : riscv_x28;
  riscv_x28_next = c_1256;
  c_1259 = c_17 == 29;
  c_1261 = (c_1259) ? c_1114 : riscv_x29;
  riscv_x29_next = c_1261;
  c_1129 = c_17 == 3;
  c_1131 = (c_1129) ? c_1114 : riscv_x3;
  riscv_x3_next = c_1131;
  c_1264 = c_17 == 30;
  c_1266 = (c_1264) ? c_1114 : riscv_x30;
  riscv_x30_next = c_1266;
  c_1269 = c_17 == 31;
  c_1271 = (c_1269) ? c_1114 : riscv_x31;
  riscv_x31_next = c_1271;
  c_1134 = c_17 == 4;
  c_1136 = (c_1134) ? c_1114 : riscv_x4;
  riscv_x4_next = c_1136;
  c_1139 = c_17 == 5;
  c_1141 = (c_1139) ? c_1114 : riscv_x5;
  riscv_x5_next = c_1141;
  c_1144 = c_17 == 6;
  c_1146 = (c_1144) ? c_1114 : riscv_x6;
  riscv_x6_next = c_1146;
  c_1149 = c_17 == 7;
  c_1151 = (c_1149) ? c_1114 : riscv_x7;
  riscv_x7_next = c_1151;
  c_1154 = c_17 == 8;
  c_1156 = (c_1154) ? c_1114 : riscv_x8;
  riscv_x8_next = c_1156;
  c_1159 = c_17 == 9;
  c_1161 = (c_1159) ? c_1114 : riscv_x9;
  riscv_x9_next = c_1161;
};
