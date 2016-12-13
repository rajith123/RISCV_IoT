package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import chisel3._
import chisel3.core.Bool

class branch_checkTests(c: branch_check) extends PeekPokeTester(c) {
  for (s0 <- 0 until 2) {
    for (s1 <- 0 until 2) {
	      val i0 = rnd.nextInt(32)
	      val i1 = rnd.nextInt(32)
              poke(c.io.rs1, i0)
              poke(c.io.rs2, i1)
              step(1)
	      val i0_u = UInt(i0)
	      val i1_u = UInt(i1)
	      val eq = i0 == i1
	      val ltu = i0_u < i1_u
	      val lt = i0 < i1

              expect(c.io.br_eq, eq)
              expect(c.io.br_lt, lt)
              expect(c.io.br_ltu, ltu)
    }
  }
}

class branch_checkTester extends ChiselFlatSpec {
  behavior of "branch_check"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new branch_check())(c => new branch_checkTests(c)) should be (true)
    }
  }
}
