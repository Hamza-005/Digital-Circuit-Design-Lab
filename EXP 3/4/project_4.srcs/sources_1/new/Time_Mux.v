`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:44:00 PM
// Design Name: 
// Module Name: Time_Mux
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


module Time_Mux(
    input CLK,
    input [3:0] Digit0,
    input [3:0] Digit1,
    output reg [3:0] BCD_Value,
    output reg DigSelect=0
    );
    integer counter=0;
    integer maxnum=1000000;
    always@(posedge CLK)
    begin
    counter=counter+1;
    if(counter==maxnum)
    begin
    DigSelect=~DigSelect;
    counter=0;
    end
    if(DigSelect==1)
    begin
    BCD_Value=Digit1;
    end
    else
     begin
    BCD_Value=Digit0;
    end
    end
endmodule