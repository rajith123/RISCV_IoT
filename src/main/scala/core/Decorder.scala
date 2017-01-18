package core

import chisel3._
import chisel3.util._

class Decorder extends Module{
	val io = IO(new Bundle {
	    val IR = Input(UInt(width=32))
        val br_eq = Input(UInt(width = 1))
        val br_lt = Input(UInt(width = 1))
        val br_ltu = Input(UInt(width = 1))
        val DataMem_rdy = Input(UInt(width = 1))
	    val BUS_A_sel = Output(UInt(width = 1))
        val BUS_B_sel = Output(UInt(width = 2))
        val WB_sel = Output(UInt(width = 2))
        val BRJMP_sel = Output(UInt(width = 1))
        val JBType_sel = Output(UInt(width = 1))
        val PC_MUX_sel = Output(UInt(width = 2))
        val WEN_RegFile = Output(UInt(width = 1))
        val Mem_rd = Output(UInt(width = 1))
        val Mem_wr = Output(UInt(width = 1))
        val ALU_func = Output(UInt(width = 4))
	})
	val rs2 = !io.IR(6) && io.IR(5) && io.IR(4)
    val i = (!io.IR(5) && !io.IR(2)) || (!io.IR(4) && !io.IR(3) && io.IR(2))
    val s = !io.IR(6) && io.IR(5) && !io.IR(4)
    val pcb = !io.IR(5) && !io.IR(3) && io.IR(2)
    
    val rs1 = (!io.IR(6) && !io.IR(2)) || (!io.IR(4) && !io.IR(3) && io.IR(2))
    val u = io.IR(4) && io.IR(2)
    
    val alu = (!io.IR(3) && io.IR(2)) || (!io.IR(6) && io.IR(4))
    val mem = !io.IR(5) && !io.IR(4) && !io.IR(3)
    val pcwb = io.IR(5) && io.IR(3)
    val br_jmp = (io.IR(5) && io.IR(3)) || (io.IR(6) && !io.IR(4) && !io.IR(2))
    val jalr = !io.IR(4) && !io.IR(3) && io.IR(2)
    val jtyp = io.IR(5) && io.IR(3)
    val btyp = io.IR(6) && !io.IR(4) && !io.IR(2)
    
    val func3 = io.IR(14,12)
    val br_eq_df = UInt(0,3)
    val br_ne_df = UInt(1,3)
    val br_lt_df = UInt(4,3)
    val br_ge_df = UInt(5,3)
    val br_ltu_df = UInt(6,3)
    val br_geu_df = UInt(7,3)

    
    when (rs2) {
        io.BUS_B_sel := UInt(3,2)
    }
    when (i) {
        io.BUS_B_sel := UInt(2,2)
    }
    when (s) {
        io.BUS_B_sel := UInt(1,2)
    }
    when (pcb) {
        io.BUS_B_sel := UInt(0,2)
    }


    when (rs1) {
        io.BUS_A_sel := UInt(0,1)
    }
    when (u) {
        io.BUS_A_sel := UInt(1,1)
    }

    when (alu) {
        io.WB_sel := UInt(1,2)
    }
    when (mem) {
        io.WB_sel := UInt(0,2)
    }
    when (pcwb) {
        io.WB_sel := UInt(2,2)
    }
    
    when(br_jmp) {
        io.BRJMP_sel := UInt(0,1)
    }
    when(jalr) {
        io.BRJMP_sel := UInt(1,1)
    }
    
    when(jtyp) {
        io.JBType_sel := UInt(0,1)
    }
    when(btyp) {
        io.JBType_sel := UInt(1,1)
    }
    

    val branch = ((func3 === br_eq_df) && (io.br_eq === UInt(1,1)) || (func3 === br_ne_df) && (io.br_eq === UInt(0,1)) || (func3 === br_lt_df) && (io.br_lt === UInt(1,1)) || (func3 === br_ge_df) && (io.br_lt === UInt(0,1)) || (func3 === br_ltu_df) && (io.br_ltu === UInt(1,1)) || (func3 === br_ge_df) && (io.br_ltu === UInt(0,1)))

    val jmp_jalr = io.IR(6) && io.IR(2)
    val br = io.IR(6) && !io.IR(4) && !io.IR(2)
    val pc4 = !io.IR(6) || io.IR(4)

    when((jmp_jalr || br)) {
       io.PC_MUX_sel := UInt(2,2)
    }
    when(pc4 && (io.DataMem_rdy === UInt(0,1))) {
        io.PC_MUX_sel := UInt(1,2) //STALL
    }
    when(pc4 && io.DataMem_rdy === UInt(1,1)) {
        io.PC_MUX_sel := UInt(0,2) //PC+4
    }


    io.WEN_RegFile := (!io.IR(6) && io.IR(4) && !io.IR(3)) || (!io.IR(6) && !io.IR(5) && !io.IR(3) && !io.IR(2)) || (io.IR(6) && io.IR(5) && !io.IR(4) && !io.IR(2))

    io.Mem_rd := !io.IR(5) && !io.IR(4) && !io.IR(3)
    io.Mem_wr := !io.IR(6) && io.IR(5) && !io.IR(4)

    val ALU_func3_bit  = (!io.IR(6) && io.IR(5) && io.IR(4) && !io.IR(2) && !io.IR(14) && io.IR(13)) || io.IR(30)

    when (ALU_func3_bit) {
        io.ALU_func := Cat(UInt(1,1),io.IR(14,12))
    }.otherwise {
        io.ALU_func := Cat(UInt(0,1),io.IR(14,12))
    }
    
}
