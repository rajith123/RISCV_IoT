package core

import chisel3._

class IR extends Module {
  val io = IO(new Bundle {
    val IR_in    = Input(UInt(width=32))
    val IR_out   = Output(UInt(width=32))
  })

  io.IR_out := Reg(next = io.IR_in)
}
