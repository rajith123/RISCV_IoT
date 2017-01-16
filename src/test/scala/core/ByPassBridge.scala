package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import chisel3._

class ByPassBridgeTests(c: ByPassBridge) extends PeekPokeTester(c) {
  
   val test = UInt(1,1)
   val test2 = UInt(1,1)
   val IRTest = rnd.nextInt(32)
   poke(c.io.IR,IRTest)
   step(1)
   
   expect(test, test2)
  
}

class ByPassBridgeTester extends ChiselFlatSpec {
  behavior of "ByPassBridge"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new ByPassBridge())(c => new ByPassBridgeTests(c)) should be (true)
    }
  }
}
