`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 09:23:12 AM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();

    reg     [3:0]   funct;
    reg     [31:0]  input1;
    reg     [31:0]  input2;
    wire    [31:0]  out;
    wire    [31:0]  adder_out;
    
    ALU alu(
        .io_fn(funct),
        .io_in2(input2),
        .io_in1(input1),
        .io_out(out),
        .io_adder_out(adder_out)
    );
    
    initial begin
        funct  = 0;
        input1 = 5;
        input2 = 7;
        #100
        funct  = 10;
        input1 = 20;
        input2 = 7;
        #100
        funct  = 1;
        input1 = 20;
        input2 = 2;

    end

endmodule
