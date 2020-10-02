#include "AES.h"
bool AES::decode_AES_WRITE_KEY() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_1254 = AES_cmd == 2;
  c_1247 = AES_cmdaddr == 65296;
  c_1249 = AES_cmdaddr > 65296;
  c_1251 = (c_1247 | c_1249);
  c_1256 = (c_1254 & c_1251);
  c_1243 = AES_cmdaddr < 65312;
  c_1257 = (c_1256 & c_1243);
  return c_1257;
};
