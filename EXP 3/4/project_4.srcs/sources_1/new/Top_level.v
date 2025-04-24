`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:45:06 PM
// Design Name: 
// Module Name: Top_level
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


module Top_level(
    input Reset,
    input UpDown,
    input CLK,
    output [6:0] Seven_Seq,
    output C
    );
    wire cc1;
    wire[3:0]d0;
    wire [3:0]d1;
    wire[3:0]bcd;
    Clk_div c1(CLK,cc1);
    BCD_Counter c2(cc1,Reset,UpDown,d0,d1);
    Time_Mux c3(CLK,d0,d1,bcd,C);
    BCD_To_SevenSeg c4(bcd,Seven_Seq[0],Seven_Seq[1],Seven_Seq[2],Seven_Seq[3],Seven_Seq[4],Seven_Seq[5],Seven_Seq[6]);
endmodule
