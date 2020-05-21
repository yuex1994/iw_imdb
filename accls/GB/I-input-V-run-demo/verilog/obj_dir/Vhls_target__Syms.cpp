// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vhls_target__Syms.h"
#include "Vhls_target.h"
#include "Vhls_target_hls_target.h"



// FUNCTIONS
Vhls_target__Syms::Vhls_target__Syms(Vhls_target* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_didInit(false)
    // Setup submodule names
    , TOP__hls_target(Verilated::catName(topp->name(), "hls_target"))
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    TOPp->hls_target = &TOP__hls_target;
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    TOP__hls_target.__Vconfigure(this, true);
    // Setup scopes
    __Vscope_hls_target.configure(this, name(), "hls_target", "hls_target", VerilatedScope::SCOPE_OTHER);
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_hls_target.varInsert(__Vfinal,"GB_pc", &(TOP__hls_target.GB_pc), VLVT_UINT32,VLVD_NODIR|VLVF_PUB_RW,1 ,31,0);
    }
}
