#include "AES.h"
void AES::compute() {
  if (decode_AES_WRITE_ADDRESS()) {
    decode_AES_WRITE_ADDRESS_update();
    AES_aes_address = AES_aes_address_next;
  }
  else if (decode_AES_START_ENCRYPT()) {
    decode_AES_START_ENCRYPT_update();
    AES_aes_status = AES_aes_status_next;
    init_AES_BLOCK();
  }
  else if (decode_AES_READ_LENGTH()) {
    decode_AES_READ_LENGTH_update();
    AES_outdata = AES_outdata_next;
  }
  else if (decode_AES_READ_ADDRESS()) {
    decode_AES_READ_ADDRESS_update();
    AES_outdata = AES_outdata_next;
  }
  else if (decode_AES_READ_KEY()) {
    decode_AES_READ_KEY_update();
    AES_outdata = AES_outdata_next;
  }
  else if (decode_AES_READ_COUNTER()) {
    decode_AES_READ_COUNTER_update();
    AES_outdata = AES_outdata_next;
  }
  else if (decode_AES_GET_STATUS()) {
    decode_AES_GET_STATUS_update();
    AES_outdata = AES_outdata_next;
  }
  else if (decode_AES_WRITE_LENGTH()) {
    decode_AES_WRITE_LENGTH_update();
    AES_aes_length = AES_aes_length_next;
    AES_aes_status = AES_aes_status_next;
  }
  else if (decode_AES_WRITE_KEY()) {
    decode_AES_WRITE_KEY_update();
    AES_aes_key = AES_aes_key_next;
  }
  else if (decode_AES_WRITE_COUNTER()) {
    decode_AES_WRITE_COUNTER_update();
    AES_aes_counter = AES_aes_counter_next;
  }
  else if (decode_AES_BLOCK_LOAD()) {
    decode_AES_BLOCK_LOAD_update();
    AES_aes_status = AES_aes_status_next;
    AES_BLOCK_byte_cnt = AES_BLOCK_byte_cnt_next;
    AES_BLOCK_rd_data = AES_BLOCK_rd_data_next;
  }
  else if (decode_AES_BLOCK_OPERATE()) {
    decode_AES_BLOCK_OPERATE_update();
    AES_aes_status = AES_aes_status_next;
    AES_BLOCK_enc_data = AES_BLOCK_enc_data_next;
  }
  else if (decode_AES_BLOCK_STORE()) {
    decode_AES_BLOCK_STORE_update();
    for (std::map<uint16_t, uint8_t>::iterator it = AES_XRAM_next.update_map.begin(); it != AES_XRAM_next.update_map.end(); it++) {
      AES_XRAM[static_cast<uint32_t> (it->first)] = it->second;
    }
    AES_aes_status = AES_aes_status_next;
    AES_BLOCK_blk_cnt = AES_BLOCK_blk_cnt_next;
    AES_BLOCK_byte_cnt = AES_BLOCK_byte_cnt_next;
  }
};
