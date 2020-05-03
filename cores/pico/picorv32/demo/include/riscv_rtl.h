#include <Vpicorv32_simple.h>
#include <Vpicorv32_simple_picorv32_simple.h>
class RTLVerilated {
public:
  Vpicorv32_simple *v_top;
  RTLVerilated() {
    v_top = new Vpicorv32_simple("v_top");
  }
  uint32_t prev_pc;
  uint32_t mem[16384*256];
  ~RTLVerilated() {}
};
