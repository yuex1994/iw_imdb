#include "AES.h"
bool AES::decode_AES_WRITE_ADDRESS() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_72 = AES_cmd == 2;
  c_65 = AES_cmdaddr == 65282;
  c_67 = AES_cmdaddr > 65282;
  c_69 = (c_65 | c_67);
  c_74 = (c_72 & c_69);
  c_61 = AES_cmdaddr < 65284;
  c_75 = (c_74 & c_61);
  return c_75;
};
