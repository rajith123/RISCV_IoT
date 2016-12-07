package core

import chisel3._
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class RegFileTests(c: RegFile) extends PeekPokeTester(c) {

  val test_data = Vec.fill(16) { Reg(init = UInt(0, width = 32))}
  
  for (i <- 0 until 16) {
// 	test_data(i) := rnd.nextInt
	test_data(i) := UInt(125,32)
	poke(c.io.wen, UInt(1))
	poke(c.io.rs_in_adr,i)
	poke(c.io.rs_in_data,test_data(i))
  }
  
  for (t <- 0 until 4) {

	val test_addr_rs1 = rnd.nextInt(16)
	val test_addr_rs2 = rnd.nextInt(16)
	
	poke(c.io.rs1_out_addr,test_addr_rs1)
	poke(c.io.rs2_out_addr,test_addr_rs2)
	
    	step(1)
    	expect(c.io.rs1_out_data, test_data(test_addr_rs1))
	expect(c.io.rs2_out_data, test_data(test_addr_rs2))
  }
}

class RegFileTester extends ChiselFlatSpec {
  behavior of "RegFile"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new RegFile())(c => new RegFileTests(c)) should be (true)
    }
  }
}
