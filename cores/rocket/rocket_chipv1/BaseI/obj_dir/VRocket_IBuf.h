// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VRocket.h for the primary calling header

#ifndef _VROCKET_IBUF_H_
#define _VROCKET_IBUF_H_  // guard

#include "verilated_heavy.h"
#include "VRocket__Dpi.h"

//==========

class VRocket__Syms;
class VRocket_VerilatedVcd;
class VRocket_RVCExpander;


//----------

VL_MODULE(VRocket_IBuf) {
  public:
    // CELLS
    VRocket_RVCExpander* RVCExpander_1;
    
    // PORTS
    VL_IN8(__PVT__clock,0,0);
    VL_IN8(__PVT__reset,0,0);
    VL_OUT8(__PVT__io_imem_ready,0,0);
    VL_IN8(__PVT__io_imem_valid,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_valid,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_taken,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_mask,1,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_bridx,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_entry,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_bht_history,0,0);
    VL_IN8(__PVT__io_imem_bits_btb_bits_bht_value,1,0);
    VL_IN8(__PVT__io_imem_bits_mask,1,0);
    VL_IN8(__PVT__io_imem_bits_xcpt_if,0,0);
    VL_IN8(__PVT__io_imem_bits_replay,0,0);
    VL_IN8(__PVT__io_kill,0,0);
    VL_OUT8(__PVT__io_btb_resp_taken,0,0);
    VL_OUT8(__PVT__io_btb_resp_mask,1,0);
    VL_OUT8(__PVT__io_btb_resp_bridx,0,0);
    VL_OUT8(__PVT__io_btb_resp_entry,0,0);
    VL_OUT8(__PVT__io_btb_resp_bht_history,0,0);
    VL_OUT8(__PVT__io_btb_resp_bht_value,1,0);
    VL_IN8(__PVT__io_inst_0_ready,0,0);
    VL_OUT8(__PVT__io_inst_0_valid,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_pf0,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_pf1,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_replay,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_btb_hit,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_rvc,0,0);
    VL_OUT8(__PVT__io_inst_0_bits_inst_rd,4,0);
    VL_OUT8(__PVT__io_inst_0_bits_inst_rs1,4,0);
    VL_OUT8(__PVT__io_inst_0_bits_inst_rs2,4,0);
    VL_OUT8(__PVT__io_inst_0_bits_inst_rs3,4,0);
    VL_IN(__PVT__io_imem_bits_btb_bits_target,31,0);
    VL_IN(__PVT__io_imem_bits_pc,31,0);
    VL_IN(__PVT__io_imem_bits_data,31,0);
    VL_OUT(__PVT__io_pc,31,0);
    VL_OUT(__PVT__io_btb_resp_target,31,0);
    VL_OUT(__PVT__io_inst_0_bits_inst_bits,31,0);
    
    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ __PVT__nBufValid;
        CData/*0:0*/ __PVT__buf_btb_valid;
        CData/*0:0*/ __PVT__buf_btb_bits_taken;
        CData/*1:0*/ __PVT__buf_btb_bits_mask;
        CData/*0:0*/ __PVT__buf_btb_bits_bridx;
        CData/*0:0*/ __PVT__buf_btb_bits_entry;
        CData/*0:0*/ __PVT__buf_btb_bits_bht_history;
        CData/*1:0*/ __PVT__buf_btb_bits_bht_value;
        CData/*1:0*/ __PVT__buf_mask;
        CData/*0:0*/ __PVT__buf_xcpt_if;
        CData/*0:0*/ __PVT__buf_replay;
        CData/*0:0*/ __PVT__ibufBTBHit;
        CData/*0:0*/ __PVT__ibufBTBResp_taken;
        CData/*1:0*/ __PVT__ibufBTBResp_mask;
        CData/*0:0*/ __PVT__ibufBTBResp_bridx;
        CData/*0:0*/ __PVT__ibufBTBResp_entry;
        CData/*0:0*/ __PVT__ibufBTBResp_bht_history;
        CData/*1:0*/ __PVT__ibufBTBResp_bht_value;
        CData/*2:0*/ __PVT__T_373;
        CData/*2:0*/ __PVT__T_374;
        CData/*2:0*/ __PVT__T_377;
        CData/*0:0*/ __PVT__T_378;
        CData/*2:0*/ __PVT__T_381;
        CData/*0:0*/ __PVT__T_399;
        CData/*1:0*/ __PVT__GEN_24;
        CData/*1:0*/ __PVT__GEN_29;
        CData/*1:0*/ __PVT__xcpt_if;
        CData/*1:0*/ __PVT__ic_replay;
        CData/*1:0*/ __PVT__T_471;
        CData/*3:0*/ __PVT__btbHitMask;
        CData/*0:0*/ __PVT__T_503;
        CData/*0:0*/ __PVT__T_519;
        CData/*0:0*/ __PVT__T_529;
        CData/*0:0*/ __PVT__T_540;
        CData/*1:0*/ __PVT__GEN_30;
        IData/*31:0*/ __PVT__GEN_33;
        IData/*31:0*/ __PVT__GEN_34;
        IData/*31:0*/ __PVT__GEN_35;
        IData/*31:0*/ __PVT__GEN_36;
        IData/*31:0*/ __PVT__GEN_37;
        IData/*31:0*/ __PVT__buf_btb_bits_target;
        IData/*31:0*/ __PVT__GEN_38;
        IData/*31:0*/ __PVT__GEN_43;
        IData/*31:0*/ __PVT__GEN_44;
        IData/*31:0*/ __PVT__GEN_48;
        IData/*31:0*/ __PVT__buf_pc;
        IData/*31:0*/ __PVT__GEN_51;
        IData/*31:0*/ __PVT__buf_data;
        IData/*31:0*/ __PVT__GEN_52;
        IData/*31:0*/ __PVT__GEN_53;
        IData/*31:0*/ __PVT__GEN_54;
        IData/*31:0*/ __PVT__GEN_55;
        IData/*31:0*/ __PVT__GEN_56;
        IData/*31:0*/ __PVT__GEN_57;
        IData/*31:0*/ __PVT__GEN_58;
        IData/*31:0*/ __PVT__GEN_59;
        IData/*31:0*/ __PVT__ibufBTBResp_target;
        IData/*31:0*/ __PVT__GEN_60;
        IData/*31:0*/ __PVT__GEN_61;
        IData/*31:0*/ __PVT__GEN_62;
        IData/*31:0*/ __PVT__GEN_63;
        IData/*31:0*/ __PVT__T_416;
        IData/*31:0*/ __PVT__T_488;
        QData/*63:0*/ __PVT__T_408;
    };
    struct {
        QData/*63:0*/ __PVT__T_427;
    };
    
    // INTERNAL VARIABLES
  private:
    VRocket__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VRocket_IBuf);  ///< Copying not allowed
  public:
    VRocket_IBuf(const char* name = "TOP");
    ~VRocket_IBuf();
    
    // INTERNAL METHODS
    void __Vconfigure(VRocket__Syms* symsp, bool first);
    static void _combo__TOP__Rocket__ibuf__3(VRocket__Syms* __restrict vlSymsp);
    static void _combo__TOP__Rocket__ibuf__5(VRocket__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__Rocket__ibuf__4(VRocket__Syms* __restrict vlSymsp);
    static void _settle__TOP__Rocket__ibuf__1(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__Rocket__ibuf__2(VRocket__Syms* __restrict vlSymsp);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
