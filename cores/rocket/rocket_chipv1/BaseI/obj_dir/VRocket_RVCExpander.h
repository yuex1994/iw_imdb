// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VRocket.h for the primary calling header

#ifndef _VROCKET_RVCEXPANDER_H_
#define _VROCKET_RVCEXPANDER_H_  // guard

#include "verilated_heavy.h"
#include "VRocket__Dpi.h"

//==========

class VRocket__Syms;
class VRocket_VerilatedVcd;


//----------

VL_MODULE(VRocket_RVCExpander) {
  public:
    
    // PORTS
    VL_IN8(__PVT__clock,0,0);
    VL_IN8(__PVT__reset,0,0);
    VL_OUT8(__PVT__io_out_rd,4,0);
    VL_OUT8(__PVT__io_out_rs1,4,0);
    VL_OUT8(__PVT__io_out_rs2,4,0);
    VL_OUT8(__PVT__io_out_rs3,4,0);
    VL_OUT8(__PVT__io_rvc,0,0);
    VL_IN(io_in,31,0);
    VL_OUT(__PVT__io_out_bits,31,0);
    
    // LOCAL SIGNALS
    CData/*4:0*/ __PVT__T_62;
    CData/*6:0*/ __PVT__T_104;
    CData/*0:0*/ __PVT__T_608;
    CData/*5:0*/ __PVT__T_669;
    CData/*2:0*/ __PVT__T_728;
    CData/*7:0*/ __PVT__T_1197;
    CData/*5:0*/ __PVT__T_1397;
    CData/*5:0*/ __PVT__T_1434;
    CData/*7:0*/ __PVT__T_1449;
    CData/*4:0*/ __PVT__T_1635;
    CData/*4:0*/ __PVT__T_1778_rs2;
    CData/*4:0*/ __PVT__T_1778_rs3;
    CData/*4:0*/ __PVT__T_1784_rd;
    CData/*4:0*/ __PVT__T_1784_rs1;
    CData/*4:0*/ __PVT__T_1934_rd;
    CData/*4:0*/ __PVT__T_1934_rs1;
    CData/*4:0*/ __PVT__T_1934_rs2;
    CData/*4:0*/ __PVT__T_1934_rs3;
    CData/*4:0*/ __PVT__T_1940_rd;
    CData/*4:0*/ __PVT__T_1940_rs1;
    CData/*4:0*/ __PVT__T_1940_rs2;
    CData/*4:0*/ __PVT__T_1940_rs3;
    SData/*11:0*/ __PVT__T_114;
    SData/*11:0*/ __PVT__T_207;
    SData/*11:0*/ __PVT__T_386;
    SData/*11:0*/ __PVT__T_506;
    SData/*12:0*/ __PVT__T_955;
    SData/*9:0*/ __PVT__T_1284;
    IData/*20:0*/ __PVT__T_433;
    IData/*25:0*/ __PVT__T_681;
    IData/*31:0*/ __PVT__T_797;
    IData/*16:0*/ __PVT__T_1016;
    IData/*31:0*/ __PVT__T_1736_bits;
    IData/*31:0*/ __PVT__T_1778_bits;
    IData/*31:0*/ __PVT__T_1852_bits;
    IData/*31:0*/ __PVT__T_1922_bits;
    IData/*31:0*/ __PVT__T_1934_bits;
    
    // INTERNAL VARIABLES
  private:
    VRocket__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VRocket_RVCExpander);  ///< Copying not allowed
  public:
    VRocket_RVCExpander(const char* name = "TOP");
    ~VRocket_RVCExpander();
    
    // INTERNAL METHODS
    void __Vconfigure(VRocket__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _settle__TOP__Rocket__ibuf__RVCExpander_1__1(VRocket__Syms* __restrict vlSymsp);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
