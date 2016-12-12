import chisel3._

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
   val imm_z = Cat(Fill(UInt(0), 27), io.ir_in(19,15))

   io.imm_i_sext = Cat(Fill(imm_i(11), 20), imm_i)
   io.imm_s_sext = Cat(Fill(imm_s(11), 20), imm_s)
   io.imm_b_sext = Cat(Fill(imm_b(11), 19), imm_b, UInt(0))
   io.imm_u_sext = Cat(imm_u, Fill(UInt(0), 12))
   io.imm_j_sext = Cat(Fill(imm_j(19), 11), imm_j, UInt(0))
}