#include "AES.h"
bool AES::decode_AES_READ_KEY() {
  c_51 = AES_cmd == 1;
  c_47 = AES_cmd == 2;
  c_53 = (c_51 | c_47);
  if (!c_53) {
    return false;
  }
  c_695 = AES_cmd == 1;
  c_688 = AES_cmdaddr == 65296;
  c_690 = AES_cmdaddr > 65296;
  c_692 = (c_688 | c_690);
  c_697 = (c_695 & c_692);
  c_684 = AES_cmdaddr < 65312;
  c_698 = (c_697 & c_684);
  return c_698;
};
