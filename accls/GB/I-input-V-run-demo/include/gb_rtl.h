#include <Vhls_target.h>
#include <Vhls_target_hls_target.h>
#include <Vhls_target_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s.h>
#include <Vhls_target_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_shiftReg.h> 

class RTLVerilated {
public:
  Vhls_target *v_top;
  RTLVerilated() {
    v_top = new Vhls_target("v_top");
  }
  ~RTLVerilated() {}
};

class v_in {
public:
  bool arg_0_TREADY;  
  bool arg_1_TVALID;
  uint8_t arg_1_TDATA;
};
