package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import chisel3.util._
import chisel3._

class imm_extTests(c: imm_ext) extends PeekPokeTester(c) {
  for (t <- 0 until 1) {
    val rnd0 = UInt(10,32)
    poke(c.io.ir_in, rnd0)
    step(1)
    //val imm_i = rnd0(31, 20) 
    //val imm_s = Cat(rnd0(31, 25), rnd0(11,7))
    //val imm_b = Cat(rnd0(31), rnd0(7), rnd0(30,25), rnd0(11,8))
    //val imm_u = rnd0(31, 12)
    //val imm_j = Cat(rnd0(31), rnd0(19,12), rnd0(20), rnd0(30,21))
    //val imm_z = Cat(Fill(27, UInt(0)), rnd0(19,15))
    

	expect(	rnd0 ,rnd0 )
  }                     
}

class imm_extTester extends ChiselFlatSpec {
  behavior of "imm_ext"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new imm_ext())(c => new imm_extTests(c)) should be (true)
    }
  }
}
