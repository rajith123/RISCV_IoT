// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VALU__Syms.h"


//======================

void VALU::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VALU* t=(VALU*)userthis;
    VALU__Syms* __restrict vlSymsp = t->__VlSymsp; // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis (vlSymsp, vcdp, code);
    }
}

//======================


void VALU::traceChgThis(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
			       | (vlTOPp->__Vm_traceActivity 
				  >> 1U))))) {
	    vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
	}
	vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VALU::traceChgThis__2(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus  (c+1,((IData)(vlTOPp->ALU__DOT___T_17)),32);
	vcdp->chgBus  (c+2,(vlTOPp->ALU__DOT__shin),32);
	vcdp->chgBus  (c+3,((IData)(vlTOPp->ALU__DOT___T_85)),32);
	vcdp->chgBus  (c+4,(((0x55555555U & (vlTOPp->ALU__DOT___T_126 
					     >> 1U)) 
			     | (0xaaaaaaaaU & (vlTOPp->ALU__DOT___T_126 
					       << 1U)))),32);
    }
}

void VALU::traceChgThis__3(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit  (c+5,(vlTOPp->clock));
	vcdp->chgBit  (c+6,(vlTOPp->reset));
	vcdp->chgBus  (c+7,(vlTOPp->io_fn),4);
	vcdp->chgBus  (c+8,(vlTOPp->io_in2),32);
	vcdp->chgBus  (c+9,(vlTOPp->io_in1),32);
	vcdp->chgBus  (c+10,(vlTOPp->io_out),32);
	vcdp->chgBus  (c+11,(vlTOPp->io_adder_out),32);
	vcdp->chgBit  (c+12,((1U & (((1U & (vlTOPp->io_in1 
					    >> 0x1fU)) 
				     == (1U & (vlTOPp->io_in2 
					       >> 0x1fU)))
				     ? (IData)((vlTOPp->ALU__DOT___T_17 
						>> 0x1fU))
				     : ((1U & (IData)(vlTOPp->io_fn))
					 ? (vlTOPp->io_in2 
					    >> 0x1fU)
					 : (vlTOPp->io_in1 
					    >> 0x1fU))))));
	vcdp->chgBus  (c+13,((0x1fU & vlTOPp->io_in2)),5);
	vcdp->chgBus  (c+14,(((7U == (IData)(vlTOPp->io_fn))
			       ? (vlTOPp->io_in1 & vlTOPp->io_in2)
			       : ((6U == (IData)(vlTOPp->io_fn))
				   ? (vlTOPp->io_in1 
				      | vlTOPp->io_in2)
				   : ((4U == (IData)(vlTOPp->io_fn))
				       ? (vlTOPp->io_in1 
					  ^ vlTOPp->io_in2)
				       : vlTOPp->io_in1)))),32);
	vcdp->chgBus  (c+15,((((0U == (IData)(vlTOPp->io_fn)) 
			       | (0xaU == (IData)(vlTOPp->io_fn)))
			       ? (IData)(vlTOPp->ALU__DOT___T_17)
			       : (((0xcU == (IData)(vlTOPp->io_fn)) 
				   | (0xeU == (IData)(vlTOPp->io_fn)))
				   ? (1U & (((1U & 
					      (vlTOPp->io_in1 
					       >> 0x1fU)) 
					     == (1U 
						 & (vlTOPp->io_in2 
						    >> 0x1fU)))
					     ? (IData)(
						       (vlTOPp->ALU__DOT___T_17 
							>> 0x1fU))
					     : ((1U 
						 & (IData)(vlTOPp->io_fn))
						 ? 
						(vlTOPp->io_in2 
						 >> 0x1fU)
						 : 
						(vlTOPp->io_in1 
						 >> 0x1fU))))
				   : ((IData)(vlTOPp->ALU__DOT___T_28)
				       ? (IData)(vlTOPp->ALU__DOT___T_85)
				       : ((1U == (IData)(vlTOPp->io_fn))
					   ? ((0x55555555U 
					       & (vlTOPp->ALU__DOT___T_126 
						  >> 1U)) 
					      | (0xaaaaaaaaU 
						 & (vlTOPp->ALU__DOT___T_126 
						    << 1U)))
					   : ((7U == (IData)(vlTOPp->io_fn))
					       ? (vlTOPp->io_in1 
						  & vlTOPp->io_in2)
					       : ((6U 
						   == (IData)(vlTOPp->io_fn))
						   ? 
						  (vlTOPp->io_in1 
						   | vlTOPp->io_in2)
						   : 
						  ((4U 
						    == (IData)(vlTOPp->io_fn))
						    ? 
						   (vlTOPp->io_in1 
						    ^ vlTOPp->io_in2)
						    : vlTOPp->io_in1)))))))),32);
    }
}
