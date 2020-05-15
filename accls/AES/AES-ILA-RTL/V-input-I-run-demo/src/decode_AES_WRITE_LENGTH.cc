#include "AES.h"
bool AES::decode_AES_WRITE_LENGTH() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_1205 = AES_cmd == 2;
  c_1198 = AES_cmdaddr == 65284;
  c_1200 = AES_cmdaddr > 65284;
  c_1202 = (c_1198 | c_1200);
  c_1207 = (c_1205 & c_1202);
  c_1194 = AES_cmdaddr < 65286;
  c_1208 = (c_1207 & c_1194);
  return c_1208;
};
