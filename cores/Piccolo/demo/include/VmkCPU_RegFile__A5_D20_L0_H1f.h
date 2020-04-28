// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VmkCPU.h for the primary calling header

#ifndef _VMKCPU_REGFILE__A5_D20_L0_H1F_H_
#define _VMKCPU_REGFILE__A5_D20_L0_H1F_H_  // guard

#include "verilated_heavy.h"
#include "VmkCPU__Dpi.h"

//==========

class VmkCPU__Syms;
class VmkCPU_VerilatedVcd;


//----------

VL_MODULE(VmkCPU_RegFile__A5_D20_L0_H1f) {
  public:
    
    // PORTS
    VL_IN8(__PVT__CLK,0,0);
    VL_IN8(__PVT__ADDR_IN,4,0);
    VL_IN8(__PVT__WE,0,0);
    VL_IN8(__PVT__ADDR_1,4,0);
    VL_IN8(__PVT__ADDR_2,4,0);
    VL_IN8(__PVT__ADDR_3,4,0);
    VL_IN8(__PVT__ADDR_4,4,0);
    VL_IN8(__PVT__ADDR_5,4,0);
    VL_IN(__PVT__D_IN,31,0);
    VL_OUT(__PVT__D_OUT_1,31,0);
    VL_OUT(__PVT__D_OUT_2,31,0);
    VL_OUT(__PVT__D_OUT_3,31,0);
    VL_OUT(__PVT__D_OUT_4,31,0);
    VL_OUT(__PVT__D_OUT_5,31,0);
    
    // LOCAL SIGNALS
    CData/*0:0*/ __PVT__runtime_check__DOT__enable_check;
    IData/*31:0*/ arr[32];
    
    // INTERNAL VARIABLES
  private:
    VmkCPU__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VmkCPU_RegFile__A5_D20_L0_H1f);  ///< Copying not allowed
  public:
    VmkCPU_RegFile__A5_D20_L0_H1f(const char* name = "TOP");
    ~VmkCPU_RegFile__A5_D20_L0_H1f();
    
    // INTERNAL METHODS
    void __Vconfigure(VmkCPU__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__mkCPU__gpr_regfile__regfile__1(VmkCPU__Syms* __restrict vlSymsp);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
