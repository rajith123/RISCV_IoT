package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class jmp_br_muxTests(c: jmp_br_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
	      val i0 = rnd.nextInt(32)
	      val i1 = rnd.nextInt(32)
              poke(c.io.jmp_br_mux_sel,s0)
              poke(c.io.jmp, i0)
              poke(c.io.br, i1)
              step(1)
              val out = if (s0 == 0) i0 else i1
              expect(c.io.to_adder, out)
  }
}

class jmp_br_muxTester extends ChiselFlatSpec {
  behavior of "jmp_br_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new jmp_br_mux())(c => new jmp_br_muxTests(c)) should be (true)
    }
  }
}
