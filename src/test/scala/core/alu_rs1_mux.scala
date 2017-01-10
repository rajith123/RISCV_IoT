package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class alu_rs1_muxTests(c: alu_rs1_mux) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
	      val i0 = rnd.nextInt(32)
	      val i1 = rnd.nextInt(32)
              poke(c.io.rs1_mux_sel,s0)
              poke(c.io.rs1, i0)
              poke(c.io.imm_u, i1)
              step(1)
              val out = if (s0 == 0) i0 else i1
              expect(c.io.to_alu_a, out)
  }
}

class alu_rs1_muxTester extends ChiselFlatSpec {
  behavior of "alu_rs1_mux"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new alu_rs1_mux())(c => new alu_rs1_muxTests(c)) should be (true)
    }
  }
}
