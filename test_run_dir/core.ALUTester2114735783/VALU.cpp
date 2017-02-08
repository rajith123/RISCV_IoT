// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU.h for the primary calling header

#include "VALU.h"              // For This
#include "VALU__Syms.h"

//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VALU) {
    VALU__Syms* __restrict vlSymsp = __VlSymsp = new VALU__Syms(this, name());
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VALU::__Vconfigure(VALU__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VALU::~VALU() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VALU::eval() {
    VALU__Syms* __restrict vlSymsp = this->__VlSymsp; // Setup global symbol table
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    VL_DEBUG_IF(VL_PRINTF("\n----TOP Evaluate VALU::eval\n"); );
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	VL_DEBUG_IF(VL_PRINTF(" Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
    }
}

void VALU::_eval_initial_loop(VALU__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
    }
}

//--------------------
// Internal Methods

VL_INLINE_OPT void VALU::_combo__TOP__1(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__1\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_17 = (VL_ULL(0x1ffffffff) 
			       & ((QData)((IData)(vlTOPp->io_in1)) 
				  + (QData)((IData)(
						    ((8U 
						      & (IData)(vlTOPp->io_fn))
						      ? (IData)(
								(VL_ULL(0x1ffffffff) 
								 & VL_NEGATE_Q((QData)((IData)(vlTOPp->io_in2)))))
						      : vlTOPp->io_in2)))));
    vlTOPp->ALU__DOT___T_28 = ((5U == (IData)(vlTOPp->io_fn)) 
			       | (0xdU == (IData)(vlTOPp->io_fn)));
    vlTOPp->ALU__DOT___T_39 = ((0xffffU & (vlTOPp->io_in1 
					   >> 0x10U)) 
			       | (0xffff0000U & (vlTOPp->io_in1 
						 << 0x10U)));
}

void VALU::_settle__TOP__2(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__2\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_17 = (VL_ULL(0x1ffffffff) 
			       & ((QData)((IData)(vlTOPp->io_in1)) 
				  + (QData)((IData)(
						    ((8U 
						      & (IData)(vlTOPp->io_fn))
						      ? (IData)(
								(VL_ULL(0x1ffffffff) 
								 & VL_NEGATE_Q((QData)((IData)(vlTOPp->io_in2)))))
						      : vlTOPp->io_in2)))));
    vlTOPp->ALU__DOT___T_28 = ((5U == (IData)(vlTOPp->io_fn)) 
			       | (0xdU == (IData)(vlTOPp->io_fn)));
    vlTOPp->ALU__DOT___T_39 = ((0xffffU & (vlTOPp->io_in1 
					   >> 0x10U)) 
			       | (0xffff0000U & (vlTOPp->io_in1 
						 << 0x10U)));
    vlTOPp->io_adder_out = (IData)(vlTOPp->ALU__DOT___T_17);
    vlTOPp->ALU__DOT___T_49 = ((0xff00ffU & (vlTOPp->ALU__DOT___T_39 
					     >> 8U)) 
			       | (0xff00ff00U & (vlTOPp->ALU__DOT___T_39 
						 << 8U)));
}

VL_INLINE_OPT void VALU::_combo__TOP__3(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__3\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_adder_out = (IData)(vlTOPp->ALU__DOT___T_17);
    vlTOPp->ALU__DOT___T_49 = ((0xff00ffU & (vlTOPp->ALU__DOT___T_39 
					     >> 8U)) 
			       | (0xff00ff00U & (vlTOPp->ALU__DOT___T_39 
						 << 8U)));
    vlTOPp->ALU__DOT___T_59 = ((0xf0f0f0fU & (vlTOPp->ALU__DOT___T_49 
					      >> 4U)) 
			       | (0xf0f0f0f0U & (vlTOPp->ALU__DOT___T_49 
						 << 4U)));
}

void VALU::_settle__TOP__4(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__4\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_59 = ((0xf0f0f0fU & (vlTOPp->ALU__DOT___T_49 
					      >> 4U)) 
			       | (0xf0f0f0f0U & (vlTOPp->ALU__DOT___T_49 
						 << 4U)));
    vlTOPp->ALU__DOT___T_69 = ((0x33333333U & (vlTOPp->ALU__DOT___T_59 
					       >> 2U)) 
			       | (0xccccccccU & (vlTOPp->ALU__DOT___T_59 
						 << 2U)));
}

VL_INLINE_OPT void VALU::_combo__TOP__5(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__5\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_69 = ((0x33333333U & (vlTOPp->ALU__DOT___T_59 
					       >> 2U)) 
			       | (0xccccccccU & (vlTOPp->ALU__DOT___T_59 
						 << 2U)));
    vlTOPp->ALU__DOT__shin = ((IData)(vlTOPp->ALU__DOT___T_28)
			       ? vlTOPp->io_in1 : (
						   (0x55555555U 
						    & (vlTOPp->ALU__DOT___T_69 
						       >> 1U)) 
						   | (0xaaaaaaaaU 
						      & (vlTOPp->ALU__DOT___T_69 
							 << 1U))));
}

void VALU::_settle__TOP__6(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__6\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT__shin = ((IData)(vlTOPp->ALU__DOT___T_28)
			       ? vlTOPp->io_in1 : (
						   (0x55555555U 
						    & (vlTOPp->ALU__DOT___T_69 
						       >> 1U)) 
						   | (0xaaaaaaaaU 
						      & (vlTOPp->ALU__DOT___T_69 
							 << 1U))));
    vlTOPp->ALU__DOT___T_85 = (VL_ULL(0x1ffffffff) 
			       & VL_SHIFTRS_QQI(33,33,5, 
						(((QData)((IData)(
								  (1U 
								   & (((IData)(vlTOPp->io_fn) 
								       >> 3U) 
								      & (vlTOPp->ALU__DOT__shin 
									 >> 0x1fU))))) 
						  << 0x20U) 
						 | (QData)((IData)(vlTOPp->ALU__DOT__shin))), 
						(0x1fU 
						 & vlTOPp->io_in2)));
}

VL_INLINE_OPT void VALU::_combo__TOP__7(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__7\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_85 = (VL_ULL(0x1ffffffff) 
			       & VL_SHIFTRS_QQI(33,33,5, 
						(((QData)((IData)(
								  (1U 
								   & (((IData)(vlTOPp->io_fn) 
								       >> 3U) 
								      & (vlTOPp->ALU__DOT__shin 
									 >> 0x1fU))))) 
						  << 0x20U) 
						 | (QData)((IData)(vlTOPp->ALU__DOT__shin))), 
						(0x1fU 
						 & vlTOPp->io_in2)));
    vlTOPp->ALU__DOT___T_96 = ((0xffffU & (IData)((vlTOPp->ALU__DOT___T_85 
						   >> 0x10U))) 
			       | (0xffff0000U & ((IData)(vlTOPp->ALU__DOT___T_85) 
						 << 0x10U)));
}

void VALU::_settle__TOP__8(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__8\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_96 = ((0xffffU & (IData)((vlTOPp->ALU__DOT___T_85 
						   >> 0x10U))) 
			       | (0xffff0000U & ((IData)(vlTOPp->ALU__DOT___T_85) 
						 << 0x10U)));
    vlTOPp->ALU__DOT___T_106 = ((0xff00ffU & (vlTOPp->ALU__DOT___T_96 
					      >> 8U)) 
				| (0xff00ff00U & (vlTOPp->ALU__DOT___T_96 
						  << 8U)));
}

VL_INLINE_OPT void VALU::_combo__TOP__9(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__9\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_106 = ((0xff00ffU & (vlTOPp->ALU__DOT___T_96 
					      >> 8U)) 
				| (0xff00ff00U & (vlTOPp->ALU__DOT___T_96 
						  << 8U)));
    vlTOPp->ALU__DOT___T_116 = ((0xf0f0f0fU & (vlTOPp->ALU__DOT___T_106 
					       >> 4U)) 
				| (0xf0f0f0f0U & (vlTOPp->ALU__DOT___T_106 
						  << 4U)));
}

void VALU::_settle__TOP__10(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__10\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_116 = ((0xf0f0f0fU & (vlTOPp->ALU__DOT___T_106 
					       >> 4U)) 
				| (0xf0f0f0f0U & (vlTOPp->ALU__DOT___T_106 
						  << 4U)));
    vlTOPp->ALU__DOT___T_126 = ((0x33333333U & (vlTOPp->ALU__DOT___T_116 
						>> 2U)) 
				| (0xccccccccU & (vlTOPp->ALU__DOT___T_116 
						  << 2U)));
}

VL_INLINE_OPT void VALU::_combo__TOP__11(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_combo__TOP__11\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ALU__DOT___T_126 = ((0x33333333U & (vlTOPp->ALU__DOT___T_116 
						>> 2U)) 
				| (0xccccccccU & (vlTOPp->ALU__DOT___T_116 
						  << 2U)));
    vlTOPp->io_out = (((0U == (IData)(vlTOPp->io_fn)) 
		       | (8U == (IData)(vlTOPp->io_fn)))
		       ? (IData)(vlTOPp->ALU__DOT___T_17)
		       : (((0xaU == (IData)(vlTOPp->io_fn)) 
			   | (0xbU == (IData)(vlTOPp->io_fn)))
			   ? (1U & (((1U & (vlTOPp->io_in1 
					    >> 0x1fU)) 
				     == (1U & (vlTOPp->io_in2 
					       >> 0x1fU)))
				     ? (IData)((vlTOPp->ALU__DOT___T_17 
						>> 0x1fU))
				     : ((1U & (IData)(vlTOPp->io_fn))
					 ? (vlTOPp->io_in2 
					    >> 0x1fU)
					 : (vlTOPp->io_in1 
					    >> 0x1fU))))
			   : ((IData)(vlTOPp->ALU__DOT___T_28)
			       ? (IData)(vlTOPp->ALU__DOT___T_85)
			       : ((1U == (IData)(vlTOPp->io_fn))
				   ? ((0x55555555U 
				       & (vlTOPp->ALU__DOT___T_126 
					  >> 1U)) | 
				      (0xaaaaaaaaU 
				       & (vlTOPp->ALU__DOT___T_126 
					  << 1U))) : 
				  ((7U == (IData)(vlTOPp->io_fn))
				    ? (vlTOPp->io_in1 
				       & vlTOPp->io_in2)
				    : ((6U == (IData)(vlTOPp->io_fn))
				        ? (vlTOPp->io_in1 
					   | vlTOPp->io_in2)
				        : ((4U == (IData)(vlTOPp->io_fn))
					    ? (vlTOPp->io_in1 
					       ^ vlTOPp->io_in2)
					    : vlTOPp->io_in1)))))));
}

void VALU::_settle__TOP__12(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_settle__TOP__12\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_out = (((0U == (IData)(vlTOPp->io_fn)) 
		       | (8U == (IData)(vlTOPp->io_fn)))
		       ? (IData)(vlTOPp->ALU__DOT___T_17)
		       : (((0xaU == (IData)(vlTOPp->io_fn)) 
			   | (0xbU == (IData)(vlTOPp->io_fn)))
			   ? (1U & (((1U & (vlTOPp->io_in1 
					    >> 0x1fU)) 
				     == (1U & (vlTOPp->io_in2 
					       >> 0x1fU)))
				     ? (IData)((vlTOPp->ALU__DOT___T_17 
						>> 0x1fU))
				     : ((1U & (IData)(vlTOPp->io_fn))
					 ? (vlTOPp->io_in2 
					    >> 0x1fU)
					 : (vlTOPp->io_in1 
					    >> 0x1fU))))
			   : ((IData)(vlTOPp->ALU__DOT___T_28)
			       ? (IData)(vlTOPp->ALU__DOT___T_85)
			       : ((1U == (IData)(vlTOPp->io_fn))
				   ? ((0x55555555U 
				       & (vlTOPp->ALU__DOT___T_126 
					  >> 1U)) | 
				      (0xaaaaaaaaU 
				       & (vlTOPp->ALU__DOT___T_126 
					  << 1U))) : 
				  ((7U == (IData)(vlTOPp->io_fn))
				    ? (vlTOPp->io_in1 
				       & vlTOPp->io_in2)
				    : ((6U == (IData)(vlTOPp->io_fn))
				        ? (vlTOPp->io_in1 
					   | vlTOPp->io_in2)
				        : ((4U == (IData)(vlTOPp->io_fn))
					    ? (vlTOPp->io_in1 
					       ^ vlTOPp->io_in2)
					    : vlTOPp->io_in1)))))));
}

void VALU::_eval(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_eval\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    vlTOPp->_combo__TOP__3(vlSymsp);
    vlTOPp->_combo__TOP__5(vlSymsp);
    vlTOPp->_combo__TOP__7(vlSymsp);
    vlTOPp->_combo__TOP__9(vlSymsp);
    vlTOPp->_combo__TOP__11(vlSymsp);
}

void VALU::_eval_initial(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_eval_initial\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VALU::final() {
    VL_DEBUG_IF(VL_PRINTF("    VALU::final\n"); );
    // Variables
    VALU__Syms* __restrict vlSymsp = this->__VlSymsp;
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VALU::_eval_settle(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_eval_settle\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
    vlTOPp->_settle__TOP__4(vlSymsp);
    vlTOPp->_settle__TOP__6(vlSymsp);
    vlTOPp->_settle__TOP__8(vlSymsp);
    vlTOPp->_settle__TOP__10(vlSymsp);
    vlTOPp->_settle__TOP__12(vlSymsp);
}

VL_INLINE_OPT QData VALU::_change_request(VALU__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_change_request\n"); );
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

void VALU::_ctor_var_reset() {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_fn = VL_RAND_RESET_I(4);
    io_in2 = VL_RAND_RESET_I(32);
    io_in1 = VL_RAND_RESET_I(32);
    io_out = VL_RAND_RESET_I(32);
    io_adder_out = VL_RAND_RESET_I(32);
    ALU__DOT___T_17 = VL_RAND_RESET_Q(33);
    ALU__DOT___T_28 = VL_RAND_RESET_I(1);
    ALU__DOT___T_39 = VL_RAND_RESET_I(32);
    ALU__DOT___T_49 = VL_RAND_RESET_I(32);
    ALU__DOT___T_59 = VL_RAND_RESET_I(32);
    ALU__DOT___T_69 = VL_RAND_RESET_I(32);
    ALU__DOT__shin = VL_RAND_RESET_I(32);
    ALU__DOT___T_85 = VL_RAND_RESET_Q(33);
    ALU__DOT___T_96 = VL_RAND_RESET_I(32);
    ALU__DOT___T_106 = VL_RAND_RESET_I(32);
    ALU__DOT___T_116 = VL_RAND_RESET_I(32);
    ALU__DOT___T_126 = VL_RAND_RESET_I(32);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}

void VALU::_configure_coverage(VALU__Syms* __restrict vlSymsp, bool first) {
    VL_DEBUG_IF(VL_PRINTF("    VALU::_configure_coverage\n"); );
}
