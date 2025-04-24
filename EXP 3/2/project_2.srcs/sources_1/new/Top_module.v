`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:16:03 PM
// Design Name: 
// Module Name: Top_module
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

module Top_module(
    input reset,
    input UpDown,
    input clk,
    output [3:0] Q
    );
    
    
    wire clock_out;
    clk_divider u(clk,clock_out);
    AutoUpDownCounter c(clock_out, UpDown, reset,Q);
endmodule