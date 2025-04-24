`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2024 01:20:10 PM
// Design Name: 
// Module Name: Main_tb
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

module Main_tb(
    );
 wire [7:0] p;
 reg [3:0] a;
 reg[3:0]b;
 reg clk;
 
 Main m(clk,a,b,p);
 initial
    begin 
    clk<=0;
        forever begin
        #5 clk<= ~clk;
    end ;
 end;
 
initial
    begin
    a<=0;
    b<=0;
        for (integer i=0 ;i<16;i=i+1)begin
            for (integer j=0 ;j<16;j=j+1)begin
            #50;
            b<=b+1;
            end
        a<=a+1;
        end;
end;
endmodule
