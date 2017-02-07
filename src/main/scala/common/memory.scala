package Common

import chisel3._
import chisel3.util._
import Constants._
   
trait MemOpConstants 
{
	val MT_X  = Bits(0, 3)	// memory transfer type
	val MT_B  = Bits(1, 3)
	val MT_H  = Bits(2, 3)
	val MT_W  = Bits(3, 3)
	val MT_D  = Bits(4, 3)
	val MT_BU = Bits(5, 3)
	val MT_HU = Bits(6, 3)
	val MT_WU = Bits(7, 3)

	val M_X   = Bits("b0", 1)	// access type
	val M_RD  = Bits("b0", 1) 	// load
	val M_WR  = Bits("b1", 1) 	// store
}

class MemReq(data_width: Int)(implicit config: Configuration) extends Bundle
{
	val addr = UInt(width = config.xprlen)
	val data = Bits(width = data_width)
	val fcn  = Bits(width = 1)  // memory function code
	val typ  = Bits(width = 3) // memory access type
	override def cloneType = { new MemReq(data_width).asInstanceOf[this.type] }
}

class MemResp(data_width: Int) extends Bundle
{
	val data = Bits(width = data_width)
	override def cloneType = { new MemResp(data_width).asInstanceOf[this.type] }
}

class MemPortIO(data_width: Int)(implicit config: Configuration) extends Bundle 	// constructor for IO interface of data memory
{
	val req    = Decoupled(new MemReq(data_width))					// ready valid pair
	val resp   = Flipped(new ValidIO(new MemResp(data_width)))			// valid signal
	//val resp   = Valid(new MemResp(data_width)).flip
	override def cloneType = { new MemPortIO(data_width).asInstanceOf[this.type] }
}

class OnChipMemory(num_ports: Int = 2, num_bytes: Int = (1 << 15), seq_read: Boolean = false)(implicit config: Configuration) extends Module
{
	val io = IO(new Bundle{
		//val port = Vec.fill(num_ports){(new MemPortIO(data_width = config.xprlen)).flip}
		val port = Vec(num_ports, Flipped(new MemPortIO(data_width = config.xprlen)))	
	})
	
	val num_bytes_per_line = 4
	val num_lines = num_bytes/num_bytes_per_line
	
	val lsb_idx = log2Up(num_bytes_per_line)	// index of lsb in address
	
	val chipMem = Mem(Vec(4, UInt(width = 8)), num_lines)	// memory
	
	for (i <- 0 until num_ports)
	{
		io.port(i).resp.valid := Reg(next = io.port(i).req.valid)

		io.port(i).req.ready := Bool(true) // for now

		val req_valid      = io.port(i).req.valid
		val req_addr       = io.port(i).req.bits.addr
		val req_data       = io.port(i).req.bits.data
		val req_fn         = io.port(i).req.bits.fcn
		val req_typ        = io.port(i).req.bits.typ
		val byte_shift_amt = io.port(i).req.bits.addr(1,0)
		val bit_shift_amt  = Cat(byte_shift_amt, UInt(0,3))
		
		//mem read
		val r_data_idx = Reg(UInt())
		
		val data_idx 	= req_addr >> UInt(lsb_idx)
		val read_data 	= Wire(Vec(4, UInt(8.W)))
		val rdata 	= Wire(Bits())
		
		if (seq_read)
		{
			 read_data := chipMem(r_data_idx)
			 rdata     := LoadDataGen((read_data.asUInt >> Reg(next=bit_shift_amt)), Reg(next=req_typ))
		}
		else
		{
			 read_data := chipMem.read(data_idx)
			 //read_data := Vec(UInt(5), UInt(0), UInt(0), UInt(0))
			 rdata     := LoadDataGen((read_data.asUInt >> bit_shift_amt), req_typ)
			 rdata     := StoreMask(req_typ)
		}
		
		io.port(i).resp.bits.data := rdata
		
		//mem write
		when (req_valid && req_fn === M_WR)
		{
			 val wdata = StoreDataGen(req_data, req_typ) 
			 //val wmask = ((StoreMask(req_typ) << bit_shift_amt)(31,0)).toBools
			 val wmask = ((StoreMask(req_typ) << byte_shift_amt)(3,0)).toBools
			 
			 //val wmask = Seq(mask(31,24), mask(23,16), mask(15, 8), mask( 7, 0))

			 chipMem.write(data_idx, wdata, wmask)
		}
		.elsewhen (req_valid && req_fn === M_RD)
		{
			 r_data_idx := data_idx
		}
	}

}

object StoreDataGen
{
	def apply(din: Bits, typ: Bits): Vec[UInt] =
	{
		val word 	= 	(typ.equals(MT_W)) || (typ.equals(MT_WU))
		val half 	= 	(typ.equals(MT_H)) || (typ.equals(MT_HU))
		val byte 	= 	(typ.equals(MT_B)) || (typ.equals(MT_BU))

		val dout 	=  	Wire(Vec(4, UInt(8.W)))
		dout 		:=  	Mux(Bool(byte), Vec(din( 7,0), din( 7,0), din( 7,0), din( 7,0)),
					Mux(Bool(half), Vec(din(15,8), din( 7,0), din(15,8), din( 7,0)),
							Vec(din(31,24), din(23,16), din(15,8), din( 7,0))))
//		dout 		:=  	Mux(Bool(byte), Vec(Seq.fill(4)(din(7,0))),
//					Mux(Bool(half), Vec(Seq(din(15,8), din( 7,0), din(15,8), din( 7,0))),
//							Vec(Seq(din(31,24), din(23,16), din(15,8), din( 7,0)))))

//	        val word 	= 	(typ === MT_W) || (typ === MT_WU)
//	        val half 	= 	(typ === MT_H) || (typ === MT_HU)
//	        val byte	= 	(typ === MT_B) || (typ === MT_BU)

//		val dout 	=  	Mux(byte, Vec(4, din( 7,0)),
//					Mux(half, Vec(din(15,8), din( 7,0), din(15,8), din( 7,0)),
//							Vec(din(31,24), din(23,16), din(15,8), din( 7,0))))

		return dout
	}
}


object StoreMask
{
	def apply(sel: Bits): UInt = 
	{
//		val mask 	= 	Mux(Bool(sel.equals(MT_H) || sel.equals(MT_HU)), Bits(0xffff, 32),
//					Mux(Bool(sel.equals(MT_B) || sel.equals(MT_BU)), Bits(0xff, 32),
//											 Bits(0xffffffffL, 32)))
		val mask 	= 	Mux(Bool(sel.equals(MT_H) || sel.equals(MT_HU)), Bits("b0011", 4),
					Mux(Bool(sel.equals(MT_B) || sel.equals(MT_BU)), Bits("b0001", 4),
											 Bits("b1111", 4)))
//		val mask 	= 	Mux(sel === MT_H || sel === MT_HU, Bits("b0011", 4),
//					Mux(sel === MT_B || sel === MT_BU, Bits("b0001", 4),
//							   		   Bits("b1111", 4)))
		return mask
	}
}

object LoadDataGen
{
   	def apply(din: Bits, typ: Bits) : Bits =
   	{
		val dout 	= 	Mux(Bool(typ.equals(MT_H)),  Cat(Fill(16, din(15)),   din(15,0)),
					Mux(Bool(typ.equals(MT_HU)), Cat(Fill(16, UInt(0x0)), din(15,0)),
					Mux(Bool(typ.equals(MT_B)),  Cat(Fill(24, din(7)),    din(7,0)),
					Mux(Bool(typ.equals(MT_BU)), Cat(Fill(24, UInt(0x0)), din(7,0)), 
										    din(31,0)))))
      
      		return dout
   	}
}
