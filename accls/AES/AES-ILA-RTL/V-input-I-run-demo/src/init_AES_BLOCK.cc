#include "AES.h"
void AES::init_AES_BLOCK() {
  c_125 = AES_aes_status == 0;
  c_127 = !c_125;
  if (!c_127) {
    return;
  }
  AES_BLOCK_byte_cnt = 0;
  AES_BLOCK_blk_cnt = 0;
  return ;
};
