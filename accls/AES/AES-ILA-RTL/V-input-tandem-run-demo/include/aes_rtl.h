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
  uint8_t xram[65535];
  ~RTLVerilated() {}
};

class v_in {
public:
  bool wr;
  bool stb;
  uint16_t addr;
  uint8_t data_in;
  uint8_t xram_data_in;
  bool xram_ack;
};


