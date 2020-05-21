#include "AES.h"
bool AES::decode_AES_READ_ADDRESS() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_665 = AES_cmd == 1;
  c_658 = AES_cmdaddr == 65282;
  c_660 = AES_cmdaddr > 65282;
  c_662 = (c_658 | c_660);
  c_667 = (c_665 & c_662);
  c_654 = AES_cmdaddr < 65284;
  c_668 = (c_667 & c_654);
  return c_668;
};
