`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2024 01:14:38 PM
// Design Name: 
// Module Name: Main
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


module Main(input CLK, input [3:0] A, input [3:0] B, output [7:0] P );
mult_gen mult (
  .CLK(CLK),  // input wire CLK
  .A(A),      // input wire [3 : 0] A
  .B(B),      // input wire [3 : 0] B
  .P(P)      // output wire [7 : 0] P
);
endmodule
