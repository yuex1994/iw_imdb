// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VmkCPU.h for the primary calling header

#ifndef _VMKCPU_MKGPR_REGFILE_H_
#define _VMKCPU_MKGPR_REGFILE_H_  // guard

#include "verilated_heavy.h"
#include "VmkCPU__Dpi.h"

//==========

class VmkCPU__Syms;
class VmkCPU_VerilatedVcd;
class VmkCPU_RegFile__A5_D20_L0_H1f;


//----------

VL_MODULE(VmkCPU_mkGPR_RegFile) {
  public:
    // CELLS
    VmkCPU_RegFile__A5_D20_L0_H1f* regfile;
    
    // PORTS
    VL_IN8(__PVT__CLK,0,0);
    VL_IN8(__PVT__RST_N,0,0);
    VL_IN8(__PVT__EN_server_reset_request_put,0,0);
    VL_OUT8(__PVT__RDY_server_reset_request_put,0,0);
    VL_IN8(__PVT__EN_server_reset_response_get,0,0);
    VL_OUT8(__PVT__RDY_server_reset_response_get,0,0);
    VL_IN8(__PVT__read_rs1_rs1,4,0);
    VL_IN8(__PVT__read_rs1_port2_rs1,4,0);
    VL_IN8(__PVT__read_rs2_rs2,4,0);
    VL_IN8(__PVT__write_rd_rd,4,0);
    VL_IN8(__PVT__EN_write_rd,0,0);
    VL_OUT(__PVT__read_rs1,31,0);
    VL_OUT(__PVT__read_rs1_port2,31,0);
    VL_OUT(__PVT__read_rs2,31,0);
    VL_IN(__PVT__write_rd_rd_val,31,0);
    
    // LOCAL SIGNALS
    CData/*1:0*/ __PVT__rg_state;
    CData/*1:0*/ __PVT__rg_state__024D_IN;
    CData/*0:0*/ __PVT__rg_state__024EN;
    CData/*0:0*/ __PVT__f_reset_rsps__DOT__empty_reg;
    CData/*0:0*/ __PVT__f_reset_rsps__DOT__full_reg;
    CData/*0:0*/ __PVT__f_reset_rsps__DOT__error_checks__DOT__deqerror;
    CData/*0:0*/ __PVT__f_reset_rsps__DOT__error_checks__DOT__enqerror;
    
    // INTERNAL VARIABLES
  private:
    VmkCPU__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VmkCPU_mkGPR_RegFile);  ///< Copying not allowed
  public:
    VmkCPU_mkGPR_RegFile(const char* name = "TOP");
    ~VmkCPU_mkGPR_RegFile();
    
    // INTERNAL METHODS
    void __Vconfigure(VmkCPU__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__mkCPU__gpr_regfile__2(VmkCPU__Syms* __restrict vlSymsp);
    static void _settle__TOP__mkCPU__gpr_regfile__1(VmkCPU__Syms* __restrict vlSymsp);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
