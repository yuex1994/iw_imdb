#include "AES.h"
bool AES::decode_AES_START_ENCRYPT() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_108 = AES_cmd == 2;
  c_104 = AES_cmdaddr == 65280;
  c_110 = (c_108 & c_104);
  c_100 = AES_cmddata == 1;
  c_111 = (c_110 & c_100);
  return c_111;
};
