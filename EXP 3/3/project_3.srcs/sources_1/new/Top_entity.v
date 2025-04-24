`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:50:00 PM
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
    input updown,
    input clk,
    input pb,
    output [3:0] q
    );
    
    wire pb_out;
    
    PushButton c1(clk,pb,pb_out);
    PBUpDownCounter c2(reset,updown,pb_out,q);
    
endmodule
