`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:26:30
// Design Name: 
// Module Name: muxresult
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


module muxresult(
    input [1:0] resultsrc ,
    input [31:0] aluresult ,
    input [31:0] pc_4 ,
    input [31:0] readdata ,
    output reg [31:0] result 
);

    always @ (*) begin 
        if(resultsrc == 2'b01) begin 
            result <= readdata ;
        end
        else if(resultsrc == 2'b10) begin 
            result <= pc_4 ;
        end
        else begin 
            result <= aluresult ;
        end
    end

endmodule
