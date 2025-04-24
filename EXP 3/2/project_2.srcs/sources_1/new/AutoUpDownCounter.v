`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:14:02 PM
// Design Name: 
// Module Name: AutoUpDownCounter
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


module AutoUpDownCounter(
    input CLK,
    input UpDown,
    input Reset,
    output reg [3:0] Q
    );
    

always @(posedge CLK, negedge Reset) begin
if(!Reset)
Q<=0;
else
begin
if(UpDown)
begin
Q<=(Q==9?0:Q+1);
end 
else begin
Q<=(Q==0?9:Q-1);
end 
end
end
endmodule
