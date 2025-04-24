`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:39:43 PM
// Design Name: 
// Module Name: Clk_div
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


module Clk_div(
    input CLK_IN,
    output reg CLK_OUT
    );
    integer i=0;
  reg temp= 0;
  always@(posedge CLK_IN)
    begin
      if(i==50000000)
        begin
        temp=~temp;
        CLK_OUT=temp;
        i=0;
        end
      else i=i+1;
    end
endmodule
