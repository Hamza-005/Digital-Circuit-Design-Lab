`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:50:16 PM
// Design Name: 
// Module Name: Top_entity
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


module Top_entity(
    input reset,
    input enable,
    input clk,
    output [3:0] q
    );
    
    wire clk_out;
    
    clk_divider c1(clk,clk_out);
    ripple_counter c2(clk_out,enable,reset,q);
endmodule