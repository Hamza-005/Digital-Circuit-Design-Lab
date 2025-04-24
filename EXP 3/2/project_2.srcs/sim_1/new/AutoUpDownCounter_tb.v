`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:18:49 PM
// Design Name: 
// Module Name: AutoUpDownCounter_tb
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


module AutoUpDownCounter_tb();
reg clk,UD,reset;
wire [3:0]Q;
integer i;
AutoUpDownCounter uut(clk,UD,reset,Q);
initial begin
clk=0;
for(i=0;i<6000;i=i+1)
begin
#20;clk=~clk;
end
end
initial begin
reset=0;UD=0;
#100;reset=1;UD=1;
#100;reset=1;UD=0;
#100;reset=1;
#100;reset=1;UD=1;
#1000;
end
endmodule


