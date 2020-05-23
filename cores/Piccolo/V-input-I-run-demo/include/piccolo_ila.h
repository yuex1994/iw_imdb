#include "riscv.h"
class Ilated {
  public:
    Ilated() {
      i_top = new riscv;
    }
    ~Ilated() {
      delete i_top;
    }
    riscv* i_top;
};

class i_in {
  public:
    uint32_t riscv_inst;
};
