package core{
import chisel3._
import chisel3.util._

class pc_mux extends Module {
  val io = IO(new Bundle {
    val pc_4 	= Input(UInt(width = 32))
    val pc 	= Input(UInt(width = 32))
    val jmp_br 	= Input(UInt(width = 32))
    val pc_sel 	= Input(UInt(width = 2))	
    val to_pc 	= Output(UInt(width = 32))
  })

  val PC4   	= UInt(0, 2) 
  val PC_STALL 	= UInt(1, 2)
  val JMPBR1 	= UInt(2, 2)
  val JMPBR2 	= UInt(3, 2)
  io.to_pc := MuxCase(io.pc_4,Array(
					(io.pc_sel === PC4)  	 -> io.pc_4,
					(io.pc_sel === PC_STALL) -> io.pc,
					(io.pc_sel === JMPBR1) 	 -> io.jmp_br,
                    (io.pc_sel === JMPBR2) 	 -> io.jmp_br
					))
}
}

