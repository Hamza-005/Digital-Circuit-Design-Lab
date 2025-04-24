`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:48:11 PM
// Design Name: 
// Module Name: ripple_counter
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


module ripple_counter(
    input clk,
    input enable,
    input reset,
    output [3:0] q
    );
    wire [0:3] qbar;
    
    T_flipflop u0(clk,reset,enable,q[0],qbar[0]);
    T_flipflop u1(qbar[0],reset,enable,q[1],qbar[1]);
    T_flipflop u2(qbar[1],reset,enable,q[2],qbar[2]);
    T_flipflop u3(qbar[2],reset,enable,q[3],qbar[3]);
    
endmodule