// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VHLS_TARGET_H_
#define _VHLS_TARGET_H_  // guard

#include "verilated.h"
#include "Vhls_target__Dpi.h"

//==========

class Vhls_target__Syms;
class Vhls_target_hls_target;


//----------

VL_MODULE(Vhls_target) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    Vhls_target_hls_target* hls_target;
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(ap_clk,0,0);
    VL_IN8(s_axi_config_AWVALID,0,0);
    VL_OUT8(s_axi_config_AWREADY,0,0);
    VL_IN8(s_axi_config_AWADDR,4,0);
    VL_IN8(s_axi_config_WVALID,0,0);
    VL_OUT8(s_axi_config_WREADY,0,0);
    VL_IN8(s_axi_config_WSTRB,3,0);
    VL_IN8(s_axi_config_ARVALID,0,0);
    VL_OUT8(s_axi_config_ARREADY,0,0);
    VL_IN8(s_axi_config_ARADDR,4,0);
    VL_OUT8(s_axi_config_RVALID,0,0);
    VL_IN8(s_axi_config_RREADY,0,0);
    VL_OUT8(s_axi_config_RRESP,1,0);
    VL_OUT8(s_axi_config_BVALID,0,0);
    VL_IN8(s_axi_config_BREADY,0,0);
    VL_OUT8(s_axi_config_BRESP,1,0);
    VL_IN8(ap_rst_n,0,0);
    VL_OUT8(v_interrupt,0,0);
    VL_OUT8(arg_0_TDATA,7,0);
    VL_OUT8(arg_0_TLAST,0,0);
    VL_IN8(arg_1_TDATA,7,0);
    VL_IN8(arg_1_TLAST,0,0);
    VL_IN8(arg_1_TVALID,0,0);
    VL_OUT8(arg_1_TREADY,0,0);
    VL_OUT8(arg_0_TVALID,0,0);
    VL_IN8(arg_0_TREADY,0,0);
    VL_IN(s_axi_config_WDATA,31,0);
    VL_OUT(s_axi_config_RDATA,31,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__ap_clk;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vhls_target__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vhls_target);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vhls_target(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vhls_target();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vhls_target__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vhls_target__Syms* symsp, bool first);
  private:
    static QData _change_request(Vhls_target__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vhls_target__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(Vhls_target__Syms* __restrict vlSymsp);
    static void _settle__TOP__1(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__3(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
