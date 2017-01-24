package core{
import chisel3._
import chisel3.util._

class jmp_br_mux extends Module {
  val io = IO(new Bundle {
    val jmp		= Input(UInt(width = 32))
    val br 		= Input(UInt(width = 32))
    val jmp_br_mux_sel 	= Input(UInt(width = 1))
    val to_adder 	= Output(UInt(width = 32))
  })
  val J   	= UInt(0, 1) 
  val B 	= UInt(1, 1)
  io.to_adder := MuxCase(io.jmp,Array(
					(io.jmp_br_mux_sel === J)   -> io.jmp,
					(io.jmp_br_mux_sel === B) -> io.br
					))
}
}
