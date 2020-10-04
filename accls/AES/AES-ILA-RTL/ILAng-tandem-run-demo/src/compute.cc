#include "AES.h"
#ifdef TANDEM_VERIFICATION
void AES::compute(RTLVerilated* v) {
  tandem_f_ptr = -1;
#else
void AES::compute() {
#endif
  if (decode_AES_WRITE_ADDRESS()) {
    decode_AES_WRITE_ADDRESS_update();
    AES_aes_address = AES_aes_address_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = WRITE_ADDRESS;
    #endif
  }
  if (decode_AES_START_ENCRYPT()) {
    decode_AES_START_ENCRYPT_update();
    AES_aes_status = AES_aes_status_next;
    init_AES_BLOCK();
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = START_ENCRYPT;
    #endif
  }
  if (decode_AES_READ_LENGTH()) {
    decode_AES_READ_LENGTH_update();
    AES_outdata = AES_outdata_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = READ_LENGTH;
    #endif
  }
  if (decode_AES_READ_ADDRESS()) {
    decode_AES_READ_ADDRESS_update();
    AES_outdata = AES_outdata_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = READ_ADDRESS;
    #endif
  }
  if (decode_AES_READ_KEY()) {
    decode_AES_READ_KEY_update();
    AES_outdata = AES_outdata_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = READ_KEY;
    #endif
  }
  if (decode_AES_READ_COUNTER()) {
    decode_AES_READ_COUNTER_update();
    AES_outdata = AES_outdata_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = READ_COUNTER;
    #endif
  }
  if (decode_AES_GET_STATUS()) {
    decode_AES_GET_STATUS_update();
    AES_outdata = AES_outdata_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = GET_STATUS;
    #endif
  }
  if (decode_AES_WRITE_LENGTH()) {
    decode_AES_WRITE_LENGTH_update();
    AES_aes_length = AES_aes_length_next;
    AES_aes_status = AES_aes_status_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = WRITE_LENGTH;
    #endif
  }
  if (decode_AES_WRITE_KEY()) {
    decode_AES_WRITE_KEY_update();
    AES_aes_key = AES_aes_key_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = WRITE_KEY;
    #endif
  }
  if (decode_AES_WRITE_COUNTER()) {
    decode_AES_WRITE_COUNTER_update();
    AES_aes_counter = AES_aes_counter_next;
    #ifdef TANDEM_VERIFICATION
    tandem_f_ptr = WRITE_COUNTER;
    #endif
  }
  init_AES_BLOCK();
  while (1) {
    int schedule_counter = 0;
    if (decode_AES_BLOCK_LOAD()) {
      decode_AES_BLOCK_LOAD_update();
      AES_aes_status = AES_aes_status_next;
      AES_BLOCK_byte_cnt = AES_BLOCK_byte_cnt_next;
      AES_BLOCK_rd_data = AES_BLOCK_rd_data_next;
      schedule_counter++;
    }
    if (decode_AES_BLOCK_OPERATE()) {
      decode_AES_BLOCK_OPERATE_update();
      AES_aes_status = AES_aes_status_next;
      AES_BLOCK_enc_data = AES_BLOCK_enc_data_next;
      schedule_counter++;
    }
    if (decode_AES_BLOCK_STORE()) {
      decode_AES_BLOCK_STORE_update();
      for (std::map<uint16_t, uint8_t>::iterator it = AES_XRAM_next.update_map.begin(); it != AES_XRAM_next.update_map.end(); it++) {
        AES_XRAM[static_cast<uint32_t> (it->first)] = it->second;
      }
      AES_aes_status = AES_aes_status_next;
      AES_BLOCK_blk_cnt = AES_BLOCK_blk_cnt_next;
      AES_BLOCK_byte_cnt = AES_BLOCK_byte_cnt_next;
      schedule_counter++;
    }
    if (schedule_counter == 0) 
      break;
  }
 #ifdef TANDEM_VERIFICATION
if ((tandem_f_ptr >= 0) && (tandem_f_ptr < 10)) {
  (this->*(tandem_f[tandem_f_ptr]))(v);
}
else {
  throw AESException("Ran unspecified function!");
}
#endif
};
