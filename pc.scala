import chisel3._

class pc extends Module {
  val io = IO(new Bundle {
    val pc_in  = Input(UInt(width= 32))
    val pc_out = Output(UInt(width=32))
  })
  io.pc_out := Reg(next = io.pc_in)
}

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class pcTests(c: pc) extends PeekPokeTester(c) {
  for (t <- 0 until 1) {
    val rnd0 = rnd.nextInt(c.n)

    poke(c.io.pc_in, rnd0)
    step(1)
    val rout = rnd0
    expect(c.io.pc_out, rout)
  }
}

class pcTester extends ChiselFlatSpec {
  behavior of "pc"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new pc())(c => new pcTests(c)) should be (true)
    }
  }
}