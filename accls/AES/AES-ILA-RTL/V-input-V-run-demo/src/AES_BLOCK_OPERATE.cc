#include "AES.h"
void AES::decode_AES_BLOCK_OPERATE_update() {
  AES_aes_status_next = 3;
  c_420 = 0;
  c_420 = static_cast<uint128_t>(AES_BLOCK_blk_cnt);
  c_422 = (AES_aes_counter + c_420);
  c_423 = aes128(c_422, AES_aes_key);
  c_424 = (c_423 ^ AES_BLOCK_rd_data);
  AES_BLOCK_enc_data_next = c_424;
};
