#include "AES.h"
void AES::decode_AES_READ_LENGTH_update() {
  c_645 = (AES_cmdaddr - 65284);
  c_648 = c_645 == 1;
  uint8_t tmp_641 = 0 - 1;
  c_641 = static_cast<uint8_t> ((AES_aes_length >> 8) & tmp_641);
  uint8_t tmp_639 = 0 - 1;
  c_639 = static_cast<uint8_t> ((AES_aes_length >> 0) & tmp_639);
  c_650 = (c_648) ? c_641 : c_639;
  AES_outdata_next = c_650;
};
