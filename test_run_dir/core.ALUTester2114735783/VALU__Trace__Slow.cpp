// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VALU__Syms.h"


//======================

void VALU::trace (VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback (&VALU::traceInit, &VALU::traceFull, &VALU::traceChg, this);
}
void VALU::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VALU* t=(VALU*)userthis;
    VALU__Syms* __restrict vlSymsp = t->__VlSymsp; // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) vl_fatal(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    vcdp->scopeEscape(' ');
    t->traceInitThis (vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VALU::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VALU* t=(VALU*)userthis;
    VALU__Syms* __restrict vlSymsp = t->__VlSymsp; // Setup global symbol table
    t->traceFullThis (vlSymsp, vcdp, code);
}

//======================


void VALU::traceInitThis(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name()); // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VALU::traceFullThis(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VALU::traceInitThis__1(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit  (c+5,"clock",-1);
	vcdp->declBit  (c+6,"reset",-1);
	vcdp->declBus  (c+7,"io_fn",-1,3,0);
	vcdp->declBus  (c+8,"io_in2",-1,31,0);
	vcdp->declBus  (c+9,"io_in1",-1,31,0);
	vcdp->declBus  (c+10,"io_out",-1,31,0);
	vcdp->declBus  (c+11,"io_adder_out",-1,31,0);
	vcdp->declBit  (c+5,"ALU clock",-1);
	vcdp->declBit  (c+6,"ALU reset",-1);
	vcdp->declBus  (c+7,"ALU io_fn",-1,3,0);
	vcdp->declBus  (c+8,"ALU io_in2",-1,31,0);
	vcdp->declBus  (c+9,"ALU io_in1",-1,31,0);
	vcdp->declBus  (c+10,"ALU io_out",-1,31,0);
	vcdp->declBus  (c+11,"ALU io_adder_out",-1,31,0);
	// Tracing: ALU _T_12 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:23
	// Tracing: ALU _T_14 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:24
	// Tracing: ALU _T_15 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:25
	// Tracing: ALU _T_16 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:26
	// Tracing: ALU _T_17 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:27
	// Tracing: ALU _T_18 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:28
	vcdp->declBus  (c+1,"ALU sum",-1,31,0);
	// Tracing: ALU _T_19 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:30
	// Tracing: ALU _T_20 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:31
	// Tracing: ALU _T_21 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:32
	// Tracing: ALU _T_22 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:33
	// Tracing: ALU _T_23 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:34
	// Tracing: ALU _T_26 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:35
	vcdp->declBit  (c+12,"ALU less",-1);
	vcdp->declBus  (c+13,"ALU shamt",-1,4,0);
	// Tracing: ALU _T_27 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:38
	// Tracing: ALU _T_28 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:39
	// Tracing: ALU _T_29 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:40
	// Tracing: ALU _T_34 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:41
	// Tracing: ALU _T_35 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:42
	// Tracing: ALU _T_36 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:43
	// Tracing: ALU _GEN_0 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:44
	// Tracing: ALU _T_37 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:45
	// Tracing: ALU _T_39 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:46
	// Tracing: ALU _T_40 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:47
	// Tracing: ALU _T_44 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:48
	// Tracing: ALU _GEN_1 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:49
	// Tracing: ALU _T_45 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:50
	// Tracing: ALU _T_46 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:51
	// Tracing: ALU _GEN_2 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:52
	// Tracing: ALU _T_47 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:53
	// Tracing: ALU _T_49 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:54
	// Tracing: ALU _T_50 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:55
	// Tracing: ALU _T_54 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:56
	// Tracing: ALU _GEN_3 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:57
	// Tracing: ALU _T_55 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:58
	// Tracing: ALU _T_56 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:59
	// Tracing: ALU _GEN_4 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:60
	// Tracing: ALU _T_57 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:61
	// Tracing: ALU _T_59 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:62
	// Tracing: ALU _T_60 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:63
	// Tracing: ALU _T_64 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:64
	// Tracing: ALU _GEN_5 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:65
	// Tracing: ALU _T_65 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:66
	// Tracing: ALU _T_66 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:67
	// Tracing: ALU _GEN_6 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:68
	// Tracing: ALU _T_67 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:69
	// Tracing: ALU _T_69 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:70
	// Tracing: ALU _T_70 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:71
	// Tracing: ALU _T_74 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:72
	// Tracing: ALU _GEN_7 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:73
	// Tracing: ALU _T_75 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:74
	// Tracing: ALU _T_76 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:75
	// Tracing: ALU _GEN_8 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:76
	// Tracing: ALU _T_77 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:77
	// Tracing: ALU _T_79 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:78
	// Tracing: ALU _T_80 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:79
	vcdp->declBus  (c+2,"ALU shin",-1,31,0);
	// Tracing: ALU _T_82 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:81
	// Tracing: ALU _T_83 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:82
	// Tracing: ALU _T_84 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:83
	// Tracing: ALU _T_85 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:84
	// Tracing: ALU _T_86 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:85
	vcdp->declBus  (c+3,"ALU shout_r",-1,31,0);
	// Tracing: ALU _T_91 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:87
	// Tracing: ALU _T_92 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:88
	// Tracing: ALU _T_93 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:89
	// Tracing: ALU _GEN_9 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:90
	// Tracing: ALU _T_94 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:91
	// Tracing: ALU _T_96 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:92
	// Tracing: ALU _T_97 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:93
	// Tracing: ALU _T_101 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:94
	// Tracing: ALU _GEN_10 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:95
	// Tracing: ALU _T_102 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:96
	// Tracing: ALU _T_103 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:97
	// Tracing: ALU _GEN_11 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:98
	// Tracing: ALU _T_104 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:99
	// Tracing: ALU _T_106 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:100
	// Tracing: ALU _T_107 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:101
	// Tracing: ALU _T_111 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:102
	// Tracing: ALU _GEN_12 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:103
	// Tracing: ALU _T_112 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:104
	// Tracing: ALU _T_113 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:105
	// Tracing: ALU _GEN_13 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:106
	// Tracing: ALU _T_114 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:107
	// Tracing: ALU _T_116 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:108
	// Tracing: ALU _T_117 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:109
	// Tracing: ALU _T_121 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:110
	// Tracing: ALU _GEN_14 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:111
	// Tracing: ALU _T_122 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:112
	// Tracing: ALU _T_123 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:113
	// Tracing: ALU _GEN_15 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:114
	// Tracing: ALU _T_124 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:115
	// Tracing: ALU _T_126 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:116
	// Tracing: ALU _T_127 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:117
	// Tracing: ALU _T_131 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:118
	// Tracing: ALU _GEN_16 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:119
	// Tracing: ALU _T_132 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:120
	// Tracing: ALU _T_133 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:121
	// Tracing: ALU _GEN_17 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:122
	// Tracing: ALU _T_134 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:123
	// Tracing: ALU _T_136 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:124
	vcdp->declBus  (c+4,"ALU shout_l",-1,31,0);
	// Tracing: ALU _T_137 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:126
	// Tracing: ALU _T_138 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:127
	// Tracing: ALU _T_139 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:128
	// Tracing: ALU _T_140 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:129
	// Tracing: ALU _T_141 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:130
	// Tracing: ALU _T_142 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:131
	// Tracing: ALU _T_143 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:132
	// Tracing: ALU _T_144 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:133
	vcdp->declBus  (c+14,"ALU bitwise_logic",-1,31,0);
	// Tracing: ALU _T_145 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:135
	// Tracing: ALU _T_146 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:136
	// Tracing: ALU _T_147 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:137
	// Tracing: ALU _T_148 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:138
	// Tracing: ALU _T_149 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:139
	// Tracing: ALU _T_150 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:140
	// Tracing: ALU _T_154 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:141
	// Tracing: ALU _T_155 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:142
	// Tracing: ALU _T_156 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:143
	// Tracing: ALU _T_157 // Ignored: Inlined leading underscore at /home/maduwantha/Documents/riscv/test_run_dir/core.ALUTester2114735783/ALU.v:144
	vcdp->declBus  (c+15,"ALU out_xpr_length",-1,31,0);
    }
}

void VALU::traceFullThis__1(VALU__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VALU* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullBus  (c+1,((IData)(vlTOPp->ALU__DOT___T_18)),32);
	vcdp->fullBus  (c+2,(vlTOPp->ALU__DOT__shin),32);
	vcdp->fullBus  (c+3,((IData)(vlTOPp->ALU__DOT___T_86)),32);
	vcdp->fullBus  (c+4,(((0x55555555U & (vlTOPp->ALU__DOT___T_127 
					      >> 1U)) 
			      | (0xaaaaaaaaU & (vlTOPp->ALU__DOT___T_127 
						<< 1U)))),32);
	vcdp->fullBit  (c+5,(vlTOPp->clock));
	vcdp->fullBit  (c+6,(vlTOPp->reset));
	vcdp->fullBus  (c+7,(vlTOPp->io_fn),4);
	vcdp->fullBus  (c+8,(vlTOPp->io_in2),32);
	vcdp->fullBus  (c+9,(vlTOPp->io_in1),32);
	vcdp->fullBus  (c+10,(vlTOPp->io_out),32);
	vcdp->fullBus  (c+11,(vlTOPp->io_adder_out),32);
	vcdp->fullBit  (c+12,((1U & (((1U & (vlTOPp->io_in1 
					     >> 0x1fU)) 
				      == (1U & (vlTOPp->io_in2 
						>> 0x1fU)))
				      ? (IData)((vlTOPp->ALU__DOT___T_18 
						 >> 0x1fU))
				      : ((1U & (IData)(vlTOPp->io_fn))
					  ? (vlTOPp->io_in2 
					     >> 0x1fU)
					  : (vlTOPp->io_in1 
					     >> 0x1fU))))));
	vcdp->fullBus  (c+13,((0x1fU & vlTOPp->io_in2)),5);
	vcdp->fullBus  (c+14,(((7U == (IData)(vlTOPp->io_fn))
			        ? (vlTOPp->io_in1 & vlTOPp->io_in2)
			        : ((6U == (IData)(vlTOPp->io_fn))
				    ? (vlTOPp->io_in1 
				       | vlTOPp->io_in2)
				    : ((4U == (IData)(vlTOPp->io_fn))
				        ? (vlTOPp->io_in1 
					   ^ vlTOPp->io_in2)
				        : vlTOPp->io_in1)))),32);
	vcdp->fullBus  (c+15,((((0U == (IData)(vlTOPp->io_fn)) 
				| (8U == (IData)(vlTOPp->io_fn)))
			        ? (IData)(vlTOPp->ALU__DOT___T_18)
			        : (((0xaU == (IData)(vlTOPp->io_fn)) 
				    | (0xbU == (IData)(vlTOPp->io_fn)))
				    ? (1U & (((1U & 
					       (vlTOPp->io_in1 
						>> 0x1fU)) 
					      == (1U 
						  & (vlTOPp->io_in2 
						     >> 0x1fU)))
					      ? (IData)(
							(vlTOPp->ALU__DOT___T_18 
							 >> 0x1fU))
					      : ((1U 
						  & (IData)(vlTOPp->io_fn))
						  ? 
						 (vlTOPp->io_in2 
						  >> 0x1fU)
						  : 
						 (vlTOPp->io_in1 
						  >> 0x1fU))))
				    : ((IData)(vlTOPp->ALU__DOT___T_29)
				        ? (IData)(vlTOPp->ALU__DOT___T_86)
				        : ((1U == (IData)(vlTOPp->io_fn))
					    ? ((0x55555555U 
						& (vlTOPp->ALU__DOT___T_127 
						   >> 1U)) 
					       | (0xaaaaaaaaU 
						  & (vlTOPp->ALU__DOT___T_127 
						     << 1U)))
					    : ((7U 
						== (IData)(vlTOPp->io_fn))
					        ? (vlTOPp->io_in1 
						   & vlTOPp->io_in2)
					        : (
						   (6U 
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
