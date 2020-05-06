#include <Vaes_top.h>
#include <Vaes_top_aes_top.h>
#include <Vaes_top_reg2byte.h>
#include <Vaes_top_reg16byte.h>

class RTLVerilated {
public:
  Vaes_top *v_top;
  RTLVerilated() {
    v_top = new Vaes_top("v_top");
    finish = 0;
  }
  bool finish;
  uint32_t prev_pc;
  uint32_t xram[65535];
  ~RTLVerilated() {}
};

class mnt_instr {
public:
  mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;
  virtual bool instr_done(RTLVerilated* v) = 0; 
};

class mnt_instr_WRITE_ADDRESS: public mnt_instr{
public:
  mnt_instr_WRITE_ADDRESS(): mnt_instr() {
    remaining_cycles = 1;
  }
  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_WRITE_LENGTH: public mnt_instr{
public:
  mnt_instr_WRITE_LENGTH(): mnt_instr() {
    remaining_cycles = 1;
  }
  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_WRITE_KEY: public mnt_instr {
public:
  mnt_instr_WRITE_KEY(): mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_WRITE_COUNTER: public mnt_instr {
public:
  mnt_instr_WRITE_COUNTER(): mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};


class mnt_instr_READ_ADDRESS: public mnt_instr {
public:
  mnt_instr_READ_ADDRESS(): mnt_instr() {
    remaining_cycles = 1;
  }

  bool instr_done(RTLVerilated* v) {
    // std::cout << "READ_ADDRESS" << std::endl;
    // std::cout << "remain_cycles" << remaining_cycles << std::endl;
    return remaining_cycles == 0;
  } 
};

class mnt_instr_READ_LENGTH: public mnt_instr {
public:
  mnt_instr_READ_LENGTH(): mnt_instr() {
    remaining_cycles = 1;
  }
  int remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_READ_KEY: public mnt_instr {
public:
  mnt_instr_READ_KEY(): mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_READ_COUNTER: public mnt_instr {
public:
  mnt_instr_READ_COUNTER(): mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_GET_STATUS: public mnt_instr {
public:
  mnt_instr_GET_STATUS(): mnt_instr() {
    remaining_cycles = 1;
  }
  uint32_t remaining_cycles;
  uint32_t cmd;
  uint32_t cmdaddr; 
  uint32_t cmddata;

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_instr_START_ENCRYPTION: public mnt_instr{
public:
  mnt_instr_START_ENCRYPTION(): mnt_instr() {
    remaining_cycles = 1;
  }
  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_child_instr_LOAD: public mnt_instr {
public:
  mnt_child_instr_LOAD(): mnt_instr() {
    remaining_cycles = 0;
  }

  bool instr_done(RTLVerilated* v) {
    return v->v_top->aes_top->xram_ack_delay_1 == 1;
  } 
};

class mnt_child_instr_OPERATE: public mnt_instr {
public:
  mnt_child_instr_OPERATE(): mnt_instr() {
    remaining_cycles = 1;
  }

  bool instr_done(RTLVerilated* v) {
    return remaining_cycles == 0;
  } 
};

class mnt_child_instr_STORE: public mnt_instr {
public:
  mnt_child_instr_STORE(): mnt_instr() {
    remaining_cycles = 0;
  }
  bool instr_done(RTLVerilated* v) {
    return v->v_top->aes_top->xram_ack_delay_1 == 1;
  } 
};

