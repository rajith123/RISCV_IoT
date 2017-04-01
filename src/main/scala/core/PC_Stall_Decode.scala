package core

import chisel3._
import chisel3.util._

class PC_Stall_Decode extends Module{
	val io = IO(new Bundle {
	    val IR = Input(UInt(width=32))
        val DataMem_rdy = Input(UInt(width = 1))
        val PC_MUX_sel0 = Output(UInt(width = 1))
	}) 


    val Mem_rd = !io.IR(5) && !io.IR(4) && !io.IR(3)
    val Mem_wr_valid = !io.IR(6) && io.IR(5) && !io.IR(4)     


    val jmp_jalr = io.IR(6) && io.IR(2)
    val br = io.IR(6) && !io.IR(4) && !io.IR(2)

    //val pc4 = !io.IR(6) || io.IR(4)

        when(Mem_rd === UInt(1,1) || Mem_wr_valid === UInt(1,1)){
            when(io.DataMem_rdy === UInt(0,1)) {
                io.PC_MUX_sel0 := UInt(1,1) //STALL
            }
            when(io.DataMem_rdy === UInt(1,1)) {
                io.PC_MUX_sel0 := UInt(0,1) //PC+4
            }
        }.otherwise{
            io.PC_MUX_sel0 := UInt(0,1) //PC+4
        }
}
