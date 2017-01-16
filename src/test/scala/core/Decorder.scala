package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import chisel3._
import chisel3.core.Bool

class DecorderTests(c: Decorder) extends PeekPokeTester(c) {

poke(c.io.IR,54456)
poke(c.io.br_eq,0)
poke(c.io.br_lt,0)
poke(c.io.br_ltu,0)
poke(c.io.DataMem_rdy, 1)
              step(1)
             
              expect(c.io.PC_MUX_sel, 0)
}

class DecorderTester extends ChiselFlatSpec {
  behavior of "Decorder"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new Decorder())(c => new DecorderTests(c)) should be (true)
    }
  }
}
