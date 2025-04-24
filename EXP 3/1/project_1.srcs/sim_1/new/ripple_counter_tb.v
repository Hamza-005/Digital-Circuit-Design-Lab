`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 01:51:51 PM
// Design Name: 
// Module Name: ripple_counter_tb
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

module ripple_counter_tb( );

reg CLK;
reg Enable;
reg Reset;
wire [3:0] Q;
integer i;
ripple_counter I(CLK , Enable, Reset, Q) ;
initial begin CLK=0;
for(i=0;1<4000;i=i+1)
begin
#20; CLK=~CLK;
end 
end
initial begin
Reset=0;
Enable=0;
#80; Reset=1; Enable=0;
#80; Reset=1; Enable=1;
#80; Reset=0; Enable=1;
#200; Reset=0; Enable=1;
#10;Reset=1; Enable=1;
#1000;Reset=1; Enable=1;
#100; Enable=0;
#80;
end
endmodule