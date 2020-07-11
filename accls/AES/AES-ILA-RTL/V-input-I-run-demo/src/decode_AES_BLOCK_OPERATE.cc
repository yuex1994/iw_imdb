#include "AES.h"
bool AES::decode_AES_BLOCK_OPERATE() {
  c_125 = AES_aes_status == 0;
  c_127 = !c_125;
  if (!c_127) {
    return false;
  }
  c_418 = AES_aes_status == 2;
  return c_418;
};
