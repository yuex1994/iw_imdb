#include "AES.h"
class Ilated {
  public:
    Ilated() {
      i_top = new AES;
    }
    ~Ilated() {
      delete i_top;
    }
    AES* i_top;
};
