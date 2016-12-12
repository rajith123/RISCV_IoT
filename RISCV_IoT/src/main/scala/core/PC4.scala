package core

import chisel3._

class PC4 extends Module {
  val io = IO(new Bundle {
    val PC4_in    = Input(UInt(width=32))
    val PC4_out   = Output(UInt(width=32))
  })

  io.PC4_out := Reg(next = io.PC4_in)
}
