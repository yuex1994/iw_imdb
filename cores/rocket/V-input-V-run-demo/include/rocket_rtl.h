#include "VRocket.h"


class RTLVerilated {
  public:
    VRocket* v_top;
    RTLVerilated() {
      v_top = new VRocket("v_top");
    } 
    ~RTLVerilated() {}
};

class v_in {
  public:
    uint32_t io_imem_resp_bits_data;
};
