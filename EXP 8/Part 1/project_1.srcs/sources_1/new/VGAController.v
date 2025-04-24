`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 01:08:26 PM
// Design Name: 
// Module Name: VGAController
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


module VGAController(
    input RESET,
    output reg HS,
    output reg VS,
    input CLK,
    output reg [3:0] RED,
    output reg [3:0] GREEN,
    output reg [3:0] BLUE
);

    wire clk25;
    integer HC=0, VC=0;
    clk_div clk_div_inst(.clk_in(CLK), .clk_out(clk25));


      always @ (negedge (RESET),posedge (clk25))begin

        if (RESET==0)
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

    always@(negedge RESET or posedge clk25) begin
        if(RESET == 0) begin
            RED = 4'h0;
            BLUE = 4'h0;
            GREEN = 4'h0;
        end
        else begin
            if (VC >=35 && VC<515) begin
                if (HC >= 144 && HC <= 784) begin
                     if (VC >= 35 && VC <= 155) begin
                        if (HC >= 144 && HC <= 784) begin
                            RED = 4'hF;
                            BLUE = 4'hF;
                            GREEN = 4'h0;
                     end
                   end
                     else if (VC >= 155 && VC < 275) begin
                     if (HC >= 144 && HC < 224) begin
                        RED = 4'h0;
                        BLUE = 4'h0;
                        GREEN = 4'h0;
                     end
                     if (HC >= 224 && HC < 384) begin
                        RED = 4'hF;
                        BLUE = 4'h0;
                        GREEN = 4'h0;
                     end
                     if (HC >= 384 && HC < 544) begin
                        RED = 4'h0;
                        BLUE = 4'h0;
                        GREEN = 4'hF;
                     end
                     if (HC >= 544 && HC < 704) begin
                        RED = 4'h0;
                        BLUE = 4'hF;
                        GREEN = 4'h0;
                     end
                     if (HC >= 704 && HC < 784) begin
                        RED = 4'h0;
                        BLUE = 4'h0;
                        GREEN = 4'h0;
                     end
                     end
                     
                     else if (VC>=275 && VC<395) begin
                     if(HC>=144&&HC<224)begin
                        RED = 4'h0;
                        BLUE = 4'h0;
                        GREEN = 4'h0;
                     end
                     if(HC>=224&&HC<304)begin
                        RED = 4'hF;
                        BLUE = 4'h0;
                        GREEN = 4'hF;
                     end
                     if(HC>=304&&HC<464)begin
                        RED = 4'hF;
                        BLUE = 4'hF;
                        GREEN = 4'hF;
                     end
                     if(HC>=464&&HC<624)begin
                        RED = 4'h0;
                        BLUE = 4'hF;
                        GREEN = 4'hF;
                     end
                     if(HC>=624&&HC<704)begin
                        RED = 4'hF;
                        BLUE = 4'h0;
                        GREEN = 4'hF;
                     end
                     if(HC>=704&&HC<784)begin
                        RED = 4'h0;
                        BLUE = 4'h0;
                        GREEN = 4'h0;
                     end   
                end
                
                else if (VC>=395 && VC<515) begin
                     if (HC>=144 && HC<784) begin
                        RED = 4'hF;
                        BLUE = 4'hF;
                        GREEN = 4'h0;
                    end
                 end
                 end       
                else begin
                RED = 4'h0;
                BLUE = 4'h0;
                GREEN = 4'h0;
                end
            end
            else begin
                RED = 4'h0;
                BLUE = 4'h0;
                GREEN = 4'h0;
                end
       end
end
endmodule 


//module VGAController(
//    input RESET,
//    output reg HS,
//    output reg VS,
//    input CLK,
//    output reg [3:0] RED,
//    output reg [3:0] GREEN,
//    output reg [3:0] BLUE
//);

//    wire clk25;
//    integer HC = 0, VC = 0;
//    clk_div clk_div_inst(.clk_in(CLK), .clk_out(clk25));

//    always @ (negedge RESET or posedge clk25) begin
//        if (RESET == 0) begin
//            HS = 0;
//            HC = 0;
//            VC = 0;
//            VS = 0;
//        end else begin
//            if (HC == 799) begin
//                HC = 0;
//                if (VC == 524) begin
//                    VC = 0;
//                end else begin
//                    VC = VC + 1;
//                end
//            end else begin
//                HC = HC + 1;
//            end

//            if (HC >= 96)
//                HS = 1;
//            else
//                HS = 0;

//            if (VC >= 2)
//                VS = 1;
//            else
//                VS = 0;
//        end
//    end

//    always @ (negedge RESET or posedge clk25) begin
//        if (RESET == 0) begin
//            RED = 4'h0;
//            BLUE = 4'h0;
//            GREEN = 4'h0;
//        end else begin
//            if ((HC >= 144 && HC <= 264) || (HC >= 505 && HC <= 624)) begin
//                if (VC >= 35 && VC <= 675) begin
//                    RED = 4'hf;
//                    BLUE = 4'hf;
//                    GREEN = 4'hf;
//                end else begin
//                    RED = 4'h0;
//                    BLUE = 4'h0;
//                    GREEN = 4'h0;
//                end
//            end else if (HC >= 265 && HC <= 504) begin
//                if ((VC >= 35 && VC <= 115) || (VC >= 595 && VC <= 675)) begin
//                    RED = 4'h0;
//                    BLUE = 4'h0;
//                    GREEN = 4'h0;
//                end else if (VC >= 116 && VC <= 275) begin
//                    RED = 4'hf;
//                    BLUE = 4'h0;
//                    GREEN = 4'h0;
//                end else if (VC >= 276 && VC <= 435) begin
//                    RED = 4'h0;
//                    BLUE = 4'h0;
//                    GREEN = 4'hf;
//                end else if (VC >= 436 && VC <= 594) begin
//                    RED = 4'h0;
//                    BLUE = 4'hf;
//                    GREEN = 4'h0;
//                end else begin
//                    RED = 4'h0;
//                    BLUE = 4'h0;
//                    GREEN = 4'h0;
//                end
//            end else if (HC >= 385 && HC <= 504) begin
//                if ((VC >= 116 && VC <= 195) || (VC >= 516 && VC <= 594)) begin
//                    RED = 4'hf;
//                    BLUE = 4'hf;
//                    GREEN = 4'h0;
//                end else if (VC >= 196 && VC <= 355) begin
//                    RED = 4'hf;
//                    BLUE = 4'hf;
//                    GREEN = 4'hf;
//                end else if (VC >= 356 && VC <= 515) begin
//                    RED = 4'h0;
//                    BLUE = 4'hf;
//                    GREEN = 4'hf;
//                end else begin
//                    RED = 4'h0;
//                    BLUE = 4'h0;
//                    GREEN = 4'h0;
//                end
//            end else begin
//                RED = 4'h0;
//                BLUE = 4'h0;
//                GREEN = 4'h0;
//            end
//        end
//    end
//endmodule
