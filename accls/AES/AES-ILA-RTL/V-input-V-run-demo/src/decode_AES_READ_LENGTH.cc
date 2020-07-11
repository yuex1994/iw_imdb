#include "AES.h"
bool AES::decode_AES_READ_LENGTH() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_635 = AES_cmd == 1;
  c_628 = AES_cmdaddr == 65284;
  c_630 = AES_cmdaddr > 65284;
  c_632 = (c_628 | c_630);
  c_637 = (c_635 & c_632);
  c_624 = AES_cmdaddr < 65286;
  c_638 = (c_637 & c_624);
  return c_638;
};
