`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 03:48:35 PM
// Design Name: 
// Module Name: PushButton
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
module PushButton(
    input CLK,
    input PB,
    output  PB_debounced
    );
    reg on_chang=0;
    reg old_pb;
    integer count=0;
    assign PB_debounced= old_pb;
    always@(posedge CLK)begin
    if(!on_chang)begin
    if(PB!=old_pb)begin
    on_chang=1;
    old_pb=!old_pb;
    end
    end
    else
    begin
    if(count==1000000)
    begin
    on_chang=0;
    count=0;
    end
    else
    begin
    count=count+1;
    end
    end
    
    end
endmodule