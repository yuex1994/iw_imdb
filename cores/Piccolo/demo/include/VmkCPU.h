// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VMKCPU_H_
#define _VMKCPU_H_  // guard

#include "verilated_heavy.h"
#include "VmkCPU__Dpi.h"

//==========

class VmkCPU__Syms;
class VmkCPU_VerilatedVcd;
class VmkCPU_mkCPU;


//----------

VL_MODULE(VmkCPU) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    VmkCPU_mkCPU* mkCPU;
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(CLK,0,0);
    VL_IN8(RST_N,0,0);
    VL_IN8(hart0_server_reset_request_put,0,0);
    VL_IN8(EN_hart0_server_reset_request_put,0,0);
    VL_OUT8(RDY_hart0_server_reset_request_put,0,0);
    VL_IN8(EN_hart0_server_reset_response_get,0,0);
    VL_OUT8(hart0_server_reset_response_get,0,0);
    VL_OUT8(RDY_hart0_server_reset_response_get,0,0);
    VL_OUT8(imem_master_awvalid,0,0);
    VL_OUT8(imem_master_awid,3,0);
    VL_OUT8(imem_master_awlen,7,0);
    VL_OUT8(imem_master_awsize,2,0);
    VL_OUT8(imem_master_awburst,1,0);
    VL_OUT8(imem_master_awlock,0,0);
    VL_OUT8(imem_master_awcache,3,0);
    VL_OUT8(imem_master_awprot,2,0);
    VL_OUT8(imem_master_awqos,3,0);
    VL_OUT8(imem_master_awregion,3,0);
    VL_IN8(imem_master_awready,0,0);
    VL_OUT8(imem_master_wvalid,0,0);
    VL_OUT8(imem_master_wstrb,7,0);
    VL_OUT8(imem_master_wlast,0,0);
    VL_IN8(imem_master_wready,0,0);
    VL_IN8(imem_master_bvalid,0,0);
    VL_IN8(imem_master_bid,3,0);
    VL_IN8(imem_master_bresp,1,0);
    VL_OUT8(imem_master_bready,0,0);
    VL_OUT8(imem_master_arvalid,0,0);
    VL_OUT8(imem_master_arid,3,0);
    VL_OUT8(imem_master_arlen,7,0);
    VL_OUT8(imem_master_arsize,2,0);
    VL_OUT8(imem_master_arburst,1,0);
    VL_OUT8(imem_master_arlock,0,0);
    VL_OUT8(imem_master_arcache,3,0);
    VL_OUT8(imem_master_arprot,2,0);
    VL_OUT8(imem_master_arqos,3,0);
    VL_OUT8(imem_master_arregion,3,0);
    VL_IN8(imem_master_arready,0,0);
    VL_IN8(imem_master_rvalid,0,0);
    VL_IN8(imem_master_rid,3,0);
    VL_IN8(imem_master_rresp,1,0);
    VL_IN8(imem_master_rlast,0,0);
    VL_OUT8(imem_master_rready,0,0);
    VL_OUT8(dmem_master_awvalid,0,0);
    VL_OUT8(dmem_master_awid,3,0);
    VL_OUT8(dmem_master_awlen,7,0);
    VL_OUT8(dmem_master_awsize,2,0);
    VL_OUT8(dmem_master_awburst,1,0);
    VL_OUT8(dmem_master_awlock,0,0);
    VL_OUT8(dmem_master_awcache,3,0);
    VL_OUT8(dmem_master_awprot,2,0);
    VL_OUT8(dmem_master_awqos,3,0);
    VL_OUT8(dmem_master_awregion,3,0);
    VL_IN8(dmem_master_awready,0,0);
    VL_OUT8(dmem_master_wvalid,0,0);
    VL_OUT8(dmem_master_wstrb,7,0);
    VL_OUT8(dmem_master_wlast,0,0);
    VL_IN8(dmem_master_wready,0,0);
    VL_IN8(dmem_master_bvalid,0,0);
    VL_IN8(dmem_master_bid,3,0);
    VL_IN8(dmem_master_bresp,1,0);
    VL_OUT8(dmem_master_bready,0,0);
    VL_OUT8(dmem_master_arvalid,0,0);
    VL_OUT8(dmem_master_arid,3,0);
    VL_OUT8(dmem_master_arlen,7,0);
    VL_OUT8(dmem_master_arsize,2,0);
    VL_OUT8(dmem_master_arburst,1,0);
    VL_OUT8(dmem_master_arlock,0,0);
    VL_OUT8(dmem_master_arcache,3,0);
    VL_OUT8(dmem_master_arprot,2,0);
    VL_OUT8(dmem_master_arqos,3,0);
    VL_OUT8(dmem_master_arregion,3,0);
    VL_IN8(dmem_master_arready,0,0);
    VL_IN8(dmem_master_rvalid,0,0);
    VL_IN8(dmem_master_rid,3,0);
    VL_IN8(dmem_master_rresp,1,0);
    VL_IN8(dmem_master_rlast,0,0);
    VL_OUT8(dmem_master_rready,0,0);
    VL_IN8(m_external_interrupt_req_set_not_clear,0,0);
    VL_IN8(s_external_interrupt_req_set_not_clear,0,0);
    VL_IN8(software_interrupt_req_set_not_clear,0,0);
    VL_IN8(timer_interrupt_req_set_not_clear,0,0);
    VL_IN8(nmi_req_set_not_clear,0,0);
    VL_IN8(set_verbosity_verbosity,3,0);
    VL_IN8(EN_set_verbosity,0,0);
    VL_OUT8(RDY_set_verbosity,0,0);
    VL_IN(prob_imem_instr,31,0);
    VL_OUT64(imem_master_awaddr,63,0);
    VL_OUT64(imem_master_wdata,63,0);
    VL_OUT64(imem_master_araddr,63,0);
    VL_IN64(imem_master_rdata,63,0);
    VL_OUT64(dmem_master_awaddr,63,0);
    VL_OUT64(dmem_master_wdata,63,0);
    VL_OUT64(dmem_master_araddr,63,0);
    VL_IN64(dmem_master_rdata,63,0);
    VL_IN64(set_verbosity_logdelay,63,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__CLK;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VmkCPU__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VmkCPU);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VmkCPU(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VmkCPU();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
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
    static void _eval_initial_loop(VmkCPU__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VmkCPU__Syms* symsp, bool first);
  private:
    static QData _change_request(VmkCPU__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__4(VmkCPU__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VmkCPU__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VmkCPU__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VmkCPU__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VmkCPU__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__3(VmkCPU__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VmkCPU__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__6(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__7(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VmkCPU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
