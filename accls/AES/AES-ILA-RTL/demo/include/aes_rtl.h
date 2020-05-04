#include <Vaes_top.h>
#include <Vaes_top_aes_top.h>
#include <Vaes_top_reg2byte.h>

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
