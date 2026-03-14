`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:24:51
// Design Name: 
// Module Name: alu
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

module alu(
    input [31:0] A ,
    input [31:0] B ,
    input [2:0] aluctrl ,
    output reg [31:0] result ,
    output zero 
);

    always @ (*) begin 
        case (aluctrl) 
            3'b000 : result <= A + B ;
            3'b001 : result <= A - B ;
            3'b010 : result <= A & B ;
            3'b011 : result <= ~A ;
            3'b100 : result <= (A < B);
            default : result <= 32'b0;
        endcase
    end

    assign zero = (result == 32'b0);

endmodule