#include "AES.h"
bool AES::decode_AES_BLOCK_LOAD() {
  c_125 = AES_aes_status == 0;
  c_127 = !c_125;
  if (!c_127) {
    return false;
  }
  c_147 = AES_aes_status == 1;
  return c_147;
};
