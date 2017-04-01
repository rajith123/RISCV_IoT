`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2016 09:30:27 AM
// Design Name: 
// Module Name: rs_bypass_mux_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rs_bypass_mux_tb();

  reg           clk;
  reg           rst;
  reg   [31:0]  rs;
  reg   [31:0]  bypass;
  reg   [1:0]   sel;
  wire  [31:0]  to_rs_mux;
 
rs_bypass_mux bypass_mux (
  .clock(clk),
  .reset(rst),
  .io_rs(rs),
  .io_bypass(bypass),
  .io_rs_bypass_mux_sel(sel),
  .io_to_rs_mux(to_rs_mux)
);
 
initial begin
  clk = 1'b0;
  rst = 1'b0;
  rs = $random;
  bypass = $random;
  sel = 0;
  #10 
  rs = $random;
  bypass = $random;
  sel = 1;
  #10 
  $finish;
end

always begin
  clk = ~clk;
  #5;
end
endmodule
