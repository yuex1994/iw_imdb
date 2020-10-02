#include "AES.h"
class Ilated {
  public:
    Ilated() {
      i_top = new AES();
    }
    ~Ilated() {
      delete i_top;
    }
    AES* i_top;
};

class i_in {
public:
  uint2_t AES_cmd;
  uint16_t AES_cmdaddr;
  uint8_t AES_cmddata;
};
