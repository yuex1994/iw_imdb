#include "riscv.h"
class Ilated {
  public:
    riscv* i_top;
    Ilated() {
      i_top = new riscv();
    }
    ~Ilated() {
      //delete i_top;
    }
};
