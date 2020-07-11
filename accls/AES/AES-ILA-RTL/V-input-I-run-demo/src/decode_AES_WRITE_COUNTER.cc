#include "AES.h"
bool AES::decode_AES_WRITE_COUNTER() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_1523 = AES_cmd == 2;
  c_1516 = AES_cmdaddr == 65312;
  c_1518 = AES_cmdaddr > 65312;
  c_1520 = (c_1516 | c_1518);
  c_1525 = (c_1523 & c_1520);
  c_1512 = AES_cmdaddr < 65328;
  c_1526 = (c_1525 & c_1512);
  return c_1526;
};
