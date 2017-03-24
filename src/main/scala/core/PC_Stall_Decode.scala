package core

import chisel3._
import chisel3.util._

class PC_Stall_Decode extends Module{
	val io = IO(new Bundle {
	    val IR = Input(UInt(width=32))
        val br_eq = Input(UInt(width = 1))
        val br_lt = Input(UInt(width = 1))
        val br_ltu = Input(UInt(width = 1))
        val DataMem_rdy = Input(UInt(width = 1))
        val PC_MUX_sel = Output(UInt(width = 2))
	}) 

    val func3 = io.IR(14,12)
    val br_eq_df = UInt(0,3)
    val br_ne_df = UInt(1,3)
    val br_lt_df = UInt(4,3)
    val br_ge_df = UInt(5,3)
    val br_ltu_df = UInt(6,3)
    val br_geu_df = UInt(7,3)

    val Mem_rd = !io.IR(5) && !io.IR(4) && !io.IR(3)
    val Mem_wr_valid = !io.IR(6) && io.IR(5) && !io.IR(4)     


    val branch = ((func3 === br_eq_df) && (io.br_eq === UInt(1,1)) || (func3 === br_ne_df) && (io.br_eq === UInt(0,1)) || (func3 === br_lt_df) && (io.br_lt === UInt(1,1)) || (func3 === br_ge_df) && (io.br_lt === UInt(0,1)) || (func3 === br_ltu_df) && (io.br_ltu === UInt(1,1)) || (func3 === br_ge_df) && (io.br_ltu === UInt(0,1)))

    val jmp_jalr = io.IR(6) && io.IR(2)
    val br = io.IR(6) && !io.IR(4) && !io.IR(2)

    //val pc4 = !io.IR(6) || io.IR(4)

    when(jmp_jalr || (br && branch)) {
       io.PC_MUX_sel := UInt(2,2)
    }.otherwise {
        when(Mem_rd === UInt(1,1) || Mem_wr_valid === UInt(1,1)){
            when(io.DataMem_rdy === UInt(0,1)) {
                io.PC_MUX_sel := UInt(1,2) //STALL
            }
            when(io.DataMem_rdy === UInt(1,1)) {
                io.PC_MUX_sel := UInt(0,2) //PC+4
            }
        }.otherwise{
            io.PC_MUX_sel := UInt(0,2) //PC+4
        }
    }
}
