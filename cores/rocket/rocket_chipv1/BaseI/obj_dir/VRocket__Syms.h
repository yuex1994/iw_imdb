// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VROCKET__SYMS_H_
#define _VROCKET__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "VRocket.h"
#include "VRocket_Rocket.h"
#include "VRocket_IBuf.h"
#include "VRocket_RVCExpander.h"

// DPI TYPES for DPI Export callbacks (Internal use)

// SYMS CLASS
class VRocket__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VRocket*                       TOPp;
    VRocket_Rocket                 TOP__Rocket;
    VRocket_IBuf                   TOP__Rocket__ibuf;
    VRocket_RVCExpander            TOP__Rocket__ibuf__RVCExpander_1;
    
    // SCOPE NAMES
    VerilatedScope __Vscope_Rocket;
    VerilatedScope __Vscope_Rocket__csr;
    VerilatedScope __Vscope_Rocket__ibuf__RVCExpander_1;
    VerilatedScope __Vscope_TOP;
    
    // CREATORS
    VRocket__Syms(VRocket* topp, const char* namep);
    ~VRocket__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
