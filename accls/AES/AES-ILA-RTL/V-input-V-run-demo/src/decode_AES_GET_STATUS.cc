#include "AES.h"
bool AES::decode_AES_GET_STATUS() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_1035 = AES_cmd == 1;
  c_1028 = AES_cmdaddr == 65312;
  c_1030 = AES_cmdaddr > 65312;
  c_1032 = (c_1028 | c_1030);
  c_1037 = (c_1035 & c_1032);
  c_1024 = AES_cmdaddr < 65328;
  c_1038 = (c_1037 & c_1024);
  return c_1038;
};
