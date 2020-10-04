#include "AES.h"
#ifdef TANDEM_VERIFICATION
AES::AES() {
  tandem_f[0] = &AES::tandem_instr_WRITE_ADDRESS;
  tandem_f[1] = &AES::tandem_instr_START_ENCRYPT;
  tandem_f[2] = &AES::tandem_instr_READ_LENGTH;
  tandem_f[3] = &AES::tandem_instr_READ_ADDRESS;
  tandem_f[4] = &AES::tandem_instr_READ_KEY;
  tandem_f[5] = &AES::tandem_instr_READ_COUNTER;
  tandem_f[6] = &AES::tandem_instr_GET_STATUS;
  tandem_f[7] = &AES::tandem_instr_WRITE_LENGTH;
  tandem_f[8] = &AES::tandem_instr_WRITE_KEY;
  tandem_f[9] = &AES::tandem_instr_WRITE_COUNTER;
}
#endif
