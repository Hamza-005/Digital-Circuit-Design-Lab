`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:49:19 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk_in,
    output reg clk_out
    );
    
    integer i=0;
  reg temp;

  always@(posedge clk_in)
    begin
      if(i==50000000)
        begin
        temp=~temp;
        clk_out=temp;
        i=0;
        end
      else i=i+1;
     
    end
endmodule