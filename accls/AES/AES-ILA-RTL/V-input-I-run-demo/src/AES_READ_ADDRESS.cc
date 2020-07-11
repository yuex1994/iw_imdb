#include "AES.h"
void AES::decode_AES_READ_ADDRESS_update() {
  c_675 = (AES_cmdaddr - 65282);
  c_678 = c_675 == 1;
  uint8_t tmp_671 = 0 - 1;
  c_671 = static_cast<uint8_t> ((AES_aes_address >> 8) & tmp_671);
  uint8_t tmp_669 = 0 - 1;
  c_669 = static_cast<uint8_t> ((AES_aes_address >> 0) & tmp_669);
  c_680 = (c_678) ? c_671 : c_669;
  AES_outdata_next = c_680;
};
