#include "AES.h"

#ifdef TANDEM_VERIFICATION
void AES::check_aes_address(RTLVerilated* v) {
  if (AES_aes_address != v->v_top->aes_top->aes_reg_opaddr_i->reg_out)
    throw MismatchException("aes_address unequal." + std::to_string(AES_aes_address) + std::to_string(v->v_top->aes_top->aes_reg_opaddr_i->reg_out));
}

void AES::check_aes_length(RTLVerilated* v) {
  if (AES_aes_length != v->v_top->aes_top->aes_reg_oplen_i->reg_out)
    throw MismatchException("aes_length unequal." + std::to_string(AES_aes_length));
}

void AES::check_aes_key(RTLVerilated* v) {
  if (AES_aes_key % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[0])
    throw MismatchException("aes_key0 unequal.");
  if ((AES_aes_key >> 32) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[1])
    throw MismatchException("aes_key1 unequal.");
  if ((AES_aes_key >> 64) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[2])
    throw MismatchException("aes_key2 unequal.");
  if ((AES_aes_key >> 96) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[3])
    throw MismatchException("aes_key3 unequal.");
}

void AES::check_aes_counter(RTLVerilated* v) {
  if (AES_aes_counter % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[0])
    throw MismatchException("aes_counter0 unequal.");
  if ((AES_aes_counter >> 32) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[1])
    throw MismatchException("aes_counter1 unequal.");
  if ((AES_aes_counter >> 64) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[2])
    throw MismatchException("aes_counter2 unequal.");
  if ((AES_aes_counter >> 96) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[3])
    throw MismatchException("aes_counter3 unequal.");
}

void AES::check_aes_status(RTLVerilated* v) {
  if (AES_aes_status != v->v_top->aes_top->aes_reg_state)
    throw MismatchException("aes_status unequal.");
}

void AES::check_outdata(RTLVerilated* v) {
   if (AES_outdata != v->v_top->aes_top->data_out_reg)
    throw MismatchException("aes_outdata unequal. (" + std::to_string(v->v_top->aes_top->pc) + "): " + std::to_string(AES_outdata) + "; "+ std::to_string(v->v_top->aes_top->data_out_reg));
}

void AES::tandem_instr_write_address(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_length(v);
  check_aes_key(v);
  check_aes_counter(v);
}

void AES::tandem_instr_start_encryption(RTLVerilated* v) {
  check_aes_status(v);
}

void AES::tandem_instr_read_length(RTLVerilated* v) {
  check_outdata(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);
}

void AES::tandem_instr_read_address(RTLVerilated* v) {
  check_outdata(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);  
}

void AES::tandem_instr_read_key(RTLVerilated* v) {
  check_outdata(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);    
}

void AES::tandem_instr_read_counter(RTLVerilated* v) {
  check_outdata(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);    
}

void AES::tandem_instr_get_status(RTLVerilated* v) {
  check_outdata(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);  
}

void AES::tandem_instr_write_length(RTLVerilated* v) {
  check_aes_status(v);
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);  
  check_aes_counter(v);  
}

void AES::tandem_instr_write_key(RTLVerilated* v) {
  check_aes_key(v);
  check_aes_address(v);
  check_aes_length(v);  
  check_aes_counter(v);  
}

void AES::tandem_instr_write_counter(RTLVerilated* v) {
  check_aes_key(v);
  check_aes_address(v);
  check_aes_counter(v);  
}
#endif