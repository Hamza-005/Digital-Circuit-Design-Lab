`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2024 11:11:48 AM
// Design Name: 
// Module Name: VGACONTROLLER
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


module VGACONTROLLER(
input CLK,
input Reset,
output reg HS,
output reg VS,
output reg [3:0] RED,
output reg [3:0] GREEN ,
output reg [3:0] BLUE

    );
    
    
   wire CLK25;
   integer HC =0;
   integer VC =0;
    
   reg [18:0] addr =0;
   wire [11:0] RGB_value;
    
   CLK_Divider Divider (.clk_in(CLK), .clk_out(CLK25));
   image_memory your_instance_name (.clka(CLK25),.addra(addr),.douta(RGB_value));
   
         always @(negedge (Reset),posedge (CLK25))begin

        if (Reset==0)
            begin
            HS=0;
            HC=0;
            VC=0;
            VS =0;
        end

        else 
            begin
                if(HC == 799) begin
                    HC=0;
                    if(VC == 524) begin
                        VC =0; 
                    end
                else    
                    VC =VC +1; 
                end
                else 
                HC = HC +1;

                if(HC >=96)
HS=1; 
else 
HS=0;
if (VC >= 2)
VS=1; 
else 
 VS=0;
    end
  end
  
  
    always @(negedge (Reset), posedge (CLK25))
        begin
            if (Reset == 0) begin 
            RED = 4'b0000; 
            GREEN = 4'b0000; 
            BLUE=4'b0000; 
            addr = 0;
        end
        else begin
            //if(addr >= 19'h4B000) begin
            if (addr == 307200) begin
                addr = 0;
            end
            if (VC >= 35 && VC <515) begin
                if (HC >=144 && HC<784) begin 
                    BLUE =RGB_value [11:8]; 
                    GREEN =RGB_value [7:4]; 
                    RED =RGB_value [3:0]; 
                    addr = addr + 1;
                end
                else begin
                    RED = 4'b0000; 
                    GREEN=4'b0000; 
                    BLUE =4'b0000;
                end
            end
        end
    end  
endmodule
