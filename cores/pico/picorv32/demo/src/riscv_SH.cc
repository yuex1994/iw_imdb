#include "riscv.h"
void riscv::decode_riscv_SH_update() {
  uint5_t tmp_19 = 0 - 1;
  c_19 = static_cast<uint5_t> ((riscv_inst >> 15) & tmp_19);
  c_2208 = c_19 == 31;
  c_2203 = c_19 == 30;
  c_2198 = c_19 == 29;
  c_2193 = c_19 == 28;
  c_2188 = c_19 == 27;
  c_2183 = c_19 == 26;
  c_2178 = c_19 == 25;
  c_2173 = c_19 == 24;
  c_2168 = c_19 == 23;
  c_2163 = c_19 == 22;
  c_2158 = c_19 == 21;
  c_2153 = c_19 == 20;
  c_2148 = c_19 == 19;
  c_2143 = c_19 == 18;
  c_2138 = c_19 == 17;
  c_2133 = c_19 == 16;
  c_2128 = c_19 == 15;
  c_2123 = c_19 == 14;
  c_2118 = c_19 == 13;
  c_2113 = c_19 == 12;
  c_2108 = c_19 == 11;
  c_2103 = c_19 == 10;
  c_2098 = c_19 == 9;
  c_2093 = c_19 == 8;
  c_2088 = c_19 == 7;
  c_2083 = c_19 == 6;
  c_2078 = c_19 == 5;
  c_2073 = c_19 == 4;
  c_2068 = c_19 == 3;
  c_2063 = c_19 == 2;
  c_2058 = c_19 == 1;
  c_2060 = (c_2058) ? riscv_x1 : 0;
  c_2065 = (c_2063) ? riscv_x2 : c_2060;
  c_2070 = (c_2068) ? riscv_x3 : c_2065;
  c_2075 = (c_2073) ? riscv_x4 : c_2070;
  c_2080 = (c_2078) ? riscv_x5 : c_2075;
  c_2085 = (c_2083) ? riscv_x6 : c_2080;
  c_2090 = (c_2088) ? riscv_x7 : c_2085;
  c_2095 = (c_2093) ? riscv_x8 : c_2090;
  c_2100 = (c_2098) ? riscv_x9 : c_2095;
  c_2105 = (c_2103) ? riscv_x10 : c_2100;
  c_2110 = (c_2108) ? riscv_x11 : c_2105;
  c_2115 = (c_2113) ? riscv_x12 : c_2110;
  c_2120 = (c_2118) ? riscv_x13 : c_2115;
  c_2125 = (c_2123) ? riscv_x14 : c_2120;
  c_2130 = (c_2128) ? riscv_x15 : c_2125;
  c_2135 = (c_2133) ? riscv_x16 : c_2130;
  c_2140 = (c_2138) ? riscv_x17 : c_2135;
  c_2145 = (c_2143) ? riscv_x18 : c_2140;
  c_2150 = (c_2148) ? riscv_x19 : c_2145;
  c_2155 = (c_2153) ? riscv_x20 : c_2150;
  c_2160 = (c_2158) ? riscv_x21 : c_2155;
  c_2165 = (c_2163) ? riscv_x22 : c_2160;
  c_2170 = (c_2168) ? riscv_x23 : c_2165;
  c_2175 = (c_2173) ? riscv_x24 : c_2170;
  c_2180 = (c_2178) ? riscv_x25 : c_2175;
  c_2185 = (c_2183) ? riscv_x26 : c_2180;
  c_2190 = (c_2188) ? riscv_x27 : c_2185;
  c_2195 = (c_2193) ? riscv_x28 : c_2190;
  c_2200 = (c_2198) ? riscv_x29 : c_2195;
  c_2205 = (c_2203) ? riscv_x30 : c_2200;
  c_2210 = (c_2208) ? riscv_x31 : c_2205;
  uint7_t tmp_33 = 0 - 1;
  c_33 = static_cast<uint7_t> ((riscv_inst >> 25) & tmp_33);
  uint5_t tmp_35 = 0 - 1;
  c_35 = static_cast<uint5_t> ((riscv_inst >> 7) & tmp_35);
  c_41 = (static_cast<uint12_t>(c_33) << 5) + (static_cast<uint12_t>(c_35));
  c_43 = static_cast<uint32_t>(c_41);
  c_43 = (c_41 >> 11) ? static_cast<uint32_t>(~c_41) : static_cast<uint32_t>(c_41);
  c_43 = (c_41 >> 11) ? (~c_43) : c_43;
  c_2368 = (c_2210 + c_43);
  uint14_t tmp_2369 = 0 - 1;
  c_2369 = static_cast<uint14_t> ((c_2368 >> 2) & tmp_2369);
  uint2_t tmp_2404 = 0 - 1;
  c_2404 = static_cast<uint2_t> ((c_2368 >> 0) & tmp_2404);
  c_2437 = c_2404 == 0;
  uint5_t tmp_21 = 0 - 1;
  c_21 = static_cast<uint5_t> ((riscv_inst >> 20) & tmp_21);
  c_2365 = c_21 == 31;
  c_2360 = c_21 == 30;
  c_2355 = c_21 == 29;
  c_2350 = c_21 == 28;
  c_2345 = c_21 == 27;
  c_2340 = c_21 == 26;
  c_2335 = c_21 == 25;
  c_2330 = c_21 == 24;
  c_2325 = c_21 == 23;
  c_2320 = c_21 == 22;
  c_2315 = c_21 == 21;
  c_2310 = c_21 == 20;
  c_2305 = c_21 == 19;
  c_2300 = c_21 == 18;
  c_2295 = c_21 == 17;
  c_2290 = c_21 == 16;
  c_2285 = c_21 == 15;
  c_2280 = c_21 == 14;
  c_2275 = c_21 == 13;
  c_2270 = c_21 == 12;
  c_2265 = c_21 == 11;
  c_2260 = c_21 == 10;
  c_2255 = c_21 == 9;
  c_2250 = c_21 == 8;
  c_2245 = c_21 == 7;
  c_2240 = c_21 == 6;
  c_2235 = c_21 == 5;
  c_2230 = c_21 == 4;
  c_2225 = c_21 == 3;
  c_2220 = c_21 == 2;
  c_2215 = c_21 == 1;
  c_2217 = (c_2215) ? riscv_x1 : 0;
  c_2222 = (c_2220) ? riscv_x2 : c_2217;
  c_2227 = (c_2225) ? riscv_x3 : c_2222;
  c_2232 = (c_2230) ? riscv_x4 : c_2227;
  c_2237 = (c_2235) ? riscv_x5 : c_2232;
  c_2242 = (c_2240) ? riscv_x6 : c_2237;
  c_2247 = (c_2245) ? riscv_x7 : c_2242;
  c_2252 = (c_2250) ? riscv_x8 : c_2247;
  c_2257 = (c_2255) ? riscv_x9 : c_2252;
  c_2262 = (c_2260) ? riscv_x10 : c_2257;
  c_2267 = (c_2265) ? riscv_x11 : c_2262;
  c_2272 = (c_2270) ? riscv_x12 : c_2267;
  c_2277 = (c_2275) ? riscv_x13 : c_2272;
  c_2282 = (c_2280) ? riscv_x14 : c_2277;
  c_2287 = (c_2285) ? riscv_x15 : c_2282;
  c_2292 = (c_2290) ? riscv_x16 : c_2287;
  c_2297 = (c_2295) ? riscv_x17 : c_2292;
  c_2302 = (c_2300) ? riscv_x18 : c_2297;
  c_2307 = (c_2305) ? riscv_x19 : c_2302;
  c_2312 = (c_2310) ? riscv_x20 : c_2307;
  c_2317 = (c_2315) ? riscv_x21 : c_2312;
  c_2322 = (c_2320) ? riscv_x22 : c_2317;
  c_2327 = (c_2325) ? riscv_x23 : c_2322;
  c_2332 = (c_2330) ? riscv_x24 : c_2327;
  c_2337 = (c_2335) ? riscv_x25 : c_2332;
  c_2342 = (c_2340) ? riscv_x26 : c_2337;
  c_2347 = (c_2345) ? riscv_x27 : c_2342;
  c_2352 = (c_2350) ? riscv_x28 : c_2347;
  c_2357 = (c_2355) ? riscv_x29 : c_2352;
  c_2362 = (c_2360) ? riscv_x30 : c_2357;
  c_2367 = (c_2365) ? riscv_x31 : c_2362;
  uint16_t tmp_2430 = 0 - 1;
  c_2430 = static_cast<uint16_t> ((c_2367 >> 0) & tmp_2430);
  c_2432 = 0;
  c_2432 = static_cast<uint32_t>(c_2430);
  c_2428 = ~65535;
  c_2371 = riscv_mem[static_cast<uint32_t> (c_2369)];
  c_2429 = (c_2428 & c_2371);
  c_2434 = (c_2432 | c_2429);
  c_2423 = c_2404 == 2;
  uint16_t tmp_2412 = 0 - 1;
  c_2412 = static_cast<uint16_t> ((c_2367 >> 0) & tmp_2412);
  c_2418 = (static_cast<uint32_t>(c_2412) << 16) + (static_cast<uint32_t>(0));
  c_2408 = ~4294901760;
  c_2409 = (c_2408 & c_2371);
  c_2420 = (c_2418 | c_2409);
  c_2425 = (c_2423) ? c_2420 : c_2371;
  c_2439 = (c_2437) ? c_2434 : c_2425;
  riscv_mem_type c_2440;
  c_2440.original_map = riscv_mem;
  c_2440.update_map[c_2369] = c_2439;
  riscv_mem_next.original_map = c_2440.original_map;
  riscv_mem_next.update_map = c_2440.update_map;
  c_2375 = (riscv_pc + 4);
  riscv_pc_next = c_2375;
};
