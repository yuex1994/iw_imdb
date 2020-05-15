#include "AES.h"
void AES::decode_AES_WRITE_LENGTH_update() {
  c_56 = AES_aes_status == 0;
  c_1223 = (AES_cmdaddr - 65284);
  c_1226 = c_1223 == 1;
  uint8_t tmp_1219 = 0 - 1;
  c_1219 = static_cast<uint8_t> ((AES_aes_length >> 8) & tmp_1219);
  c_1228 = (c_1226) ? AES_cmddata : c_1219;
  c_1213 = (AES_cmdaddr - 65284);
  c_1216 = c_1213 == 0;
  uint8_t tmp_1209 = 0 - 1;
  c_1209 = static_cast<uint8_t> ((AES_aes_length >> 0) & tmp_1209);
  c_1218 = (c_1216) ? AES_cmddata : c_1209;
  c_1233 = (static_cast<uint16_t>(c_1228) << 8) + (static_cast<uint16_t>(c_1218));
  c_1235 = (c_56) ? c_1233 : AES_aes_length;
  AES_aes_length_next = c_1235;
  c_1238 = unknown1();
  c_1239 = (c_56) ? AES_aes_status : c_1238;
  AES_aes_status_next = c_1239;
};
