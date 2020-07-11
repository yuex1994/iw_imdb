#include "AES.h"
void AES::decode_AES_WRITE_ADDRESS_update() {
  c_56 = AES_aes_status == 0;
  c_87 = AES_cmdaddr == 65283;
  uint8_t tmp_83 = 0 - 1;
  c_83 = static_cast<uint8_t> ((AES_aes_address >> 8) & tmp_83);
  c_89 = (c_87) ? AES_cmddata : c_83;
  c_80 = AES_cmdaddr == 65282;
  uint8_t tmp_76 = 0 - 1;
  c_76 = static_cast<uint8_t> ((AES_aes_address >> 0) & tmp_76);
  c_82 = (c_80) ? AES_cmddata : c_76;
  c_94 = (static_cast<uint16_t>(c_89) << 8) + (static_cast<uint16_t>(c_82));
  c_96 = (c_56) ? c_94 : AES_aes_address;
  AES_aes_address_next = c_96;
};
