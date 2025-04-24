`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:45:23 PM
// Design Name: 
// Module Name: PBUpDownCounter
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


module PBUpDownCounter(input Reset,input UpDown,input CLK,output reg[3:0] Q);
always@(posedge CLK , negedge Reset)
    begin
    if(!Reset)
    Q<=0;
   else
    
    if(!UpDown)
    begin
   if(Q==9)
            Q<=0;
    else Q<=Q+1;
        end
      else if(UpDown)
            if(Q==0)
              Q<=9;
          else Q<=Q-1;
        end
endmodule

