`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 12:42:58 PM
// Design Name: 
// Module Name: BCD_To_SevenSeg
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


module BCD_To_SevenSeg(
    input [3:0] BCD,
    output reg AA,
    output reg AB,
    output reg AC,
    output reg  AD,
    output reg AE,
    output reg AF,
    output reg AG
    );
    always@(BCD)
    begin
    case(BCD)
    0:
    begin
    AA=1;
    AB=1;
    AC=1;
    AD=1;
    AE=1;
    AF=1;
    AG=0;
    end
    1:
    begin
    AA=0;
    AB=1;
    AC=1;
    AD=0;
    AE=0;
    AF=0;
    AG=0;
    end
    2:
    begin
    AA=1;
    AB=1;
    AC=0;
    AD=1;
    AE=1;
    AF=0;
    AG=1;
    end
    3:
    begin
    AA=1;
    AB=1;
    AC=1;
    AD=1;
    AE=0;
    AF=0;
    AG=1;
    end
    4:
    begin
    AA=0;
    AB=1;
    AC=1;
    AD=0;
    AE=0;
    AF=1;
    AG=1;
    end
    5:
    begin
    AA=1;
    AB=0;
    AC=1;
    AD=1;
    AE=0;
    AF=1;
    AG=1;
    end
    6:
    begin
    AA=1;
    AB=0;
    AC=1;
    AD=1;
    AE=1;
    AF=1;
    AG=1;
    end
    7:
    begin
    AA=1;
    AB=1;
    AC=1;
    AD=0;
    AE=0;
    AF=0;
    AG=0;
    end
    8:
    begin
    AA=1;
    AB=1;
    AC=1;
    AD=1;
    AE=1;
    AF=1;
    AG=1;
    end
    9:
    begin
    AA=1;
    AB=1;
    AC=1;
    AD=0;
    AE=0;
    AF=1;
    AG=1;
    end
    endcase
    end
endmodule