import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class PC4Tests(c: PC4) extends Tester(c) {
  val test_in = 119
  for (t <- 0 until 4) {
    poke(c.io.PC4_in,     test_in)
    step(1)
    expect(c.io.PC4_out, (test_in << t) & 0xFFFF)
  }
}

class PC4Tester extends ChiselFlatSpec {
  behavior of "PC4"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new PC4())(c => new PC4Tests(c)) should be (true)
    }
  }
}
