#include "AES.h"
bool AES::decode_AES_BLOCK_STORE() {
  c_125 = AES_aes_status == 0;
  c_127 = !c_125;
  if (!c_127) {
    return false;
  }
  c_430 = AES_aes_status == 3;
  return c_430;
};
