#include "AES.h"
void AES::decode_AES_START_ENCRYPT_update() {
  c_56 = AES_aes_status == 0;
  c_114 = unknown0();
  c_117 = (c_56) ? 1 : c_114;
  AES_aes_status_next = c_117;
};
