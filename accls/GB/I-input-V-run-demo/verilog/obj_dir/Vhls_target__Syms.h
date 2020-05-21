// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VHLS_TARGET__SYMS_H_
#define _VHLS_TARGET__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vhls_target.h"
#include "Vhls_target_hls_target.h"

// DPI TYPES for DPI Export callbacks (Internal use)

// SYMS CLASS
class Vhls_target__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vhls_target*                   TOPp;
    Vhls_target_hls_target         TOP__hls_target;
    
    // SCOPE NAMES
    VerilatedScope __Vscope_hls_target;
    
    // CREATORS
    Vhls_target__Syms(Vhls_target* topp, const char* namep);
    ~Vhls_target__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
