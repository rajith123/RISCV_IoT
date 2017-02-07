package Common

import chisel3._
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class memoryTests(c: OnChipMemory) extends PeekPokeTester(c) {
//	for(i <- 0 until 10){
//		val data_in = i*10
//		poke(c.io.port(0).req.valid, 1)
//		poke(c.io.port(0).req.bits.addr, i)
//		poke(c.io.port(0).req.bits.data, data_in)
//		poke(c.io.port(0).req.bits.fcn, 1)
//		poke(c.io.port(0).req.bits.typ, 3)
//		step(1)
//	}
//	for(i <- 0 until 10){
//		val data_in = rnd.nextInt(32)
//		poke(c.io.port(0).req.valid, 1)
//		poke(c.io.port(0).req.bits.addr, i)
		//poke(c.io.port(0).bits.data, data_in)
//		poke(c.io.port(0).req.bits.fcn, 0)
//		poke(c.io.port(0).req.bits.typ, 3)
//		step(1)
//		peek(c.io.port(0).resp.bits.data)
//		expect(c.io.port(0).resp.bits.data, i*10)
//		step(1)
//	}
	poke(c.io.port(0).req.valid, true)
	poke(c.io.port(0).req.bits.addr, 0)
	poke(c.io.port(0).req.bits.data, 55)
	poke(c.io.port(0).req.bits.fcn, 1)
	poke(c.io.port(0).req.bits.typ, 2)
	step(1)
	poke(c.io.port(0).req.valid, true)
	poke(c.io.port(0).req.bits.addr, 0)
	poke(c.io.port(0).req.bits.fcn, 0)
	poke(c.io.port(0).req.bits.typ, 2)
//	step(1)
	expect(c.io.port(0).resp.valid, true)
	expect(c.io.port(0).resp.bits.data, 55)
}

class memoryTester extends ChiselFlatSpec {
	implicit val config = new Configuration
	behavior of "memory"
	backends foreach {backend =>    it should s"correctly write and read data" in {
		Driver(() => new OnChipMemory())(c => new memoryTests(c)) should be (true)
	}
	}
}
