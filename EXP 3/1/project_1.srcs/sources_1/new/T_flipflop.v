`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:46:30 PM
// Design Name: 
// Module Name: T_flipflop
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
module T_flipflop(input clk, input clear, input t, output reg q, output reg qbar);

always @(posedge clk, negedge clear)
    if (clear == 0)
    begin
        q <= 0;
        qbar <= 1;
    end
    else if (t)
    begin
        q <= ~q;
        qbar <= q;
    end
    else
    begin
        q <= q;
        qbar <= ~q;
    end
endmodule
