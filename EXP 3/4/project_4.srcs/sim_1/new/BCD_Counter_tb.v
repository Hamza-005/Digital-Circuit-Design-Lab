`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:47:47 PM
// Design Name: 
// Module Name: BCD_Counter_tb
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


module BCD_Counter_tb(

    );
    reg reset;
    reg updown;
    reg clk;
    wire [3:0]d0;
    wire [3:0]d1;
  	integer i;
  	BCD_Counter uut(clk,reset,updown,d0,d1);
    initial
    begin 
      $dumpfile("dump.vcd");
      $dumpvars;
    reset=0;
    updown=0;
    clk=0;
    #10
    reset=1;
    #400
    updown=1;
    #20000;
    end
    initial
    begin
    for(i=0;i<45000;i=i+1)
    begin
    clk=~clk;
    #10;
    end
    end
endmodule
//ALL EYES ON RAFAH...
//ALL EYES ON GAZA..