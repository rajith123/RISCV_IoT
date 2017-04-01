package core
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import chisel3._

class Bubble_StallTests(c: Bubble_Stall) extends PeekPokeTester(c) {

   poke(c.io.IR,3)
   poke(c.io.Mem_rdy,1)
   step(1)
   poke(c.io.Mem_rdy,0)
  // expect(test1,test2)
   expect(c.io.IR_skip_Mux_sel,1)
   expect(c.io.to_Stall_Mux0,1)
   
   
   step(1)
   poke(c.io.Mem_rdy,1)
   expect(c.io.IR_skip_Mux_sel,0)
   expect(c.io.to_Stall_Mux0,0)
}

class Bubble_StallTester extends ChiselFlatSpec {
  behavior of "Bubble_Stall"
  backends foreach {backend =>    it should s"correctly add randomly generated numbers $backend" in {
      Driver(() => new Bubble_Stall())(c => new Bubble_StallTests(c)) should be (true)
    }
  }
}
