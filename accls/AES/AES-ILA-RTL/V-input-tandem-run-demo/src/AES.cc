#include "AES.h"

#ifdef TANDEM_VERIFICATION
AES::AES() {
  tandem_f[0] = &AES::tandem_instr_write_address;
  tandem_f[1] = &AES::tandem_instr_start_encryption;
  tandem_f[2] = &AES::tandem_instr_read_length;
  tandem_f[3] = &AES::tandem_instr_read_address;
  tandem_f[4] = &AES::tandem_instr_read_key;
  tandem_f[5] = &AES::tandem_instr_read_counter;
  tandem_f[6] = &AES::tandem_instr_get_status;
  tandem_f[7] = &AES::tandem_instr_write_length;
  tandem_f[8] = &AES::tandem_instr_write_key;
  tandem_f[9] = &AES::tandem_instr_write_counter;
}
#endif