package core
import chisel3._
import chisel3.util._

class imm_ext extends Module {
  val io = IO(new Bundle {
    val ir_in			= Input(UInt(width = 32))
    val imm_i_sext 		= Output(UInt(width = 32))
	val imm_s_sext		= Output(UInt(width = 32))
	val imm_b_sext		= Output(UInt(width = 32))
	val imm_u_sext		= Output(UInt(width = 32))
	val imm_j_sext		= Output(UInt(width = 32))		
  })

   val imm_i = io.ir_in(31, 20) 
   val imm_s = Cat(io.ir_in(31, 25), io.ir_in(11,7))
   val imm_b = Cat(io.ir_in(31), io.ir_in(7), io.ir_in(30,25), io.ir_in(11,8))
   val imm_u = io.ir_in(31, 12)
   val imm_j = Cat(io.ir_in(31), io.ir_in(19,12), io.ir_in(20), io.ir_in(30,21))

   io.imm_i_sext := Cat(Fill(20, imm_i(11)), imm_i)
   io.imm_s_sext := Cat(Fill(20, imm_s(11)), imm_s)
   io.imm_b_sext := Cat(Fill(19, imm_b(11)), imm_b, UInt(0))
   io.imm_u_sext := Cat(imm_u, Fill(12, UInt(0)))
   io.imm_j_sext := Cat(Fill(11, imm_j(19)), imm_j, UInt(0))
}
