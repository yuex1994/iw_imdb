#include "AES.h"
bool AES::decode_AES_READ_COUNTER() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_865 = AES_cmd == 1;
  c_858 = AES_cmdaddr == 65312;
  c_860 = AES_cmdaddr > 65312;
  c_862 = (c_858 | c_860);
  c_867 = (c_865 & c_862);
  c_854 = AES_cmdaddr < 65328;
  c_868 = (c_867 & c_854);
  return c_868;
};
