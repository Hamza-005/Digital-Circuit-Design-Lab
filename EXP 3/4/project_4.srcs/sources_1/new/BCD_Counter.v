`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:41:17 PM
// Design Name: 
// Module Name: BCD_Counter
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


module BCD_Counter (Clk, Clear, UpDown, BCD0, BCD1);
input Clk, Clear, UpDown;
output reg [3:0] BCD1, BCD0;
  always @(negedge Clear,posedge Clk)
begin
  if (!Clear)
begin
BCD1 <= 0;
BCD0 <= 0;
end
else
  begin
  if (!UpDown)
if (BCD0 == 4'b1001)
begin
BCD0 <= 0;
if (BCD1 == 4'b1001)
BCD1 <= 0;
else
BCD1 <= BCD1 + 1;
end
else
BCD0 <= BCD0 + 1;
  else if(UpDown)
    begin
      if(BCD0==0)
        begin
        BCD0=4'b1001;
        if(BCD1==0)
          BCD1=4'b1001;
         else BCD1=BCD1-1;
        end 
      else BCD0=BCD0-1;
    end
end
end
endmodule
  
