`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:25:05
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [6:0] opcode ,
    output reg regwrite ,
    output reg alusrc ,
    output reg memwrite ,
    output reg [1:0] aluop ,
    output reg branch ,
    output reg [1:0] immsrc ,
    output reg [1:0] resultsrc ,
    output reg jump
);

    always @ (*) begin 
        regwrite <= 0;
        immsrc <= 2'b00 ;
        alusrc <= 0 ;
        memwrite <= 0 ;
        aluop <= 2'b00 ;
        branch <= 0 ;
        resultsrc <= 2'b00 ;
        jump <= 0 ;
        case(opcode) 
            // lw
            7'b0000011 : begin 
                    regwrite <= 1 ;
                    immsrc <= 2'b00 ;
                    alusrc <= 1 ;
                    memwrite <= 0 ;
                    resultsrc <= 2'b01 ;
                    branch <= 0 ;
                    aluop <= 2'b00 ;
                    jump <= 0 ;
            end

            // sw
            7'b0100011 : begin 
                    regwrite <= 0 ;
                    immsrc <= 2'b01 ;
                    alusrc <= 1 ;
                    memwrite <= 1 ;
                    resultsrc <= 2'b00 ;
                    branch <= 0 ;
                    aluop <= 2'b00 ;
                    jump <= 0 ;
            end

            // R-type
            7'b0110011 : begin 
                    regwrite <= 1 ;
                    immsrc <= 2'b00 ;
                    alusrc <= 0 ;
                    memwrite <= 0 ;
                    resultsrc <= 2'b00 ;
                    branch <= 0 ;
                    aluop <= 2'b10 ;
                    jump <= 0 ;
            end

            // beq
            7'b1100011 : begin 
                    regwrite <= 0 ;
                    immsrc <= 2'b10 ;
                    alusrc <= 0 ;
                    memwrite <= 0 ;
                    resultsrc <= 2'b00 ;
                    branch <= 1 ;
                    aluop <= 2'b01 ;
                    jump <= 0 ;
            end
            
            // I-type ALU
            7'b0010011 : begin 
                    regwrite <= 1 ;
                    immsrc <= 2'b00 ;
                    alusrc <= 1 ;
                    memwrite <= 0 ;
                    resultsrc <= 2'b00 ;
                    branch <= 0 ;
                    aluop <= 2'b10 ;
                    jump <= 0 ;
            end

            // jal
            7'b1101111 : begin 
                    regwrite <= 1 ;
                    immsrc <= 2'b11 ;
                    alusrc <= 0 ;
                    memwrite <= 0 ;
                    resultsrc <= 2'b10 ;
                    branch <= 0 ;
                    aluop <= 2'b00 ;
                    jump <= 1 ;
            end
        endcase
    end
endmodule
