package core{
import chisel3._
import chisel3.util._

class reg_write_mux extends Module {
  val io = IO(new Bundle {
    val data_mem 			= Input(UInt(width = 32))
    val alu_out 			= Input(UInt(width = 32))
	val pc_4 				= Input(UInt(width = 32))
	val reg_write_mux_sel 	= Input(UInt(width = 2))
    val to_reg 				= Output(UInt(width = 32))	//csr????
  })
  
  val D_MEM = UInt(0, 2)
  val ALU_O = UInt(1, 2)
  val PC4   = UInt(2, 2) 
  io.to_reg := MuxCase(io.alu_out,Array(
					(io.reg_write_mux_sel === PC4)  -> io.pc_4,
					(io.reg_write_mux_sel === D_MEM) -> io.data_mem,
					(io.reg_write_mux_sel === ALU_O) -> io.alu_out
					))
}
}
