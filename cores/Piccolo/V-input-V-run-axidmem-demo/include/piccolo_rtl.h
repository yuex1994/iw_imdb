#include "VmkCPU.h"
#include "VmkCPU_mkCPU.h"
#include "VmkCPU_mkNear_Mem.h"


class RTLVerilated {
  public:
    VmkCPU* v_top;
    RTLVerilated() {
      v_top = new VmkCPU("v_top");
    } 
    ~RTLVerilated() {}
};

class v_in {
  public:
    uint32_t prob_imem_instr;
};
