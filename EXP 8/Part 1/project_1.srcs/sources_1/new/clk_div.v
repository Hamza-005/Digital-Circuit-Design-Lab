`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 12:43:46 PM
// Design Name: 
// Module Name: clk_div
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


module clk_div( input clk_in,output reg clk_out);
reg temp=0;
integer count=0;
always @ (posedge clk_in)
begin
     if( count==1)
        begin
            count =0;
            temp=~temp;
        end
     else 
        count=count+1;
        clk_out=temp;
     end
endmodule

