package core

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class IRTests(c: IR) extends PeekPokeTester(c) {
  
  for (t <- 0 until 1) {
    val test_in = rnd.nextInt(32)
    poke(c.io.IR_in,     test_in)
    step(1)
    expect(c.io.IR_out, test_in)
  }
}

class IRTester extends ChiselFlatSpec {
  behavior of "IR"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new IR())(c => new IRTests(c)) should be (true)
    }
  }
}
