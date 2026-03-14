`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:25:36
// Design Name: 
// Module Name: alu_ctrl
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


module alu_ctrl (
    input [1:0] aluop ,
    input [2:0] funct3 ,
    input [6:0] funct7 ,
    output reg [2:0] aluctrl
);
    
    always @ (*) begin 
        if(aluop == 2'b00) begin 
            aluctrl <= 3'b000 ;
        end
        else if (aluop == 2'b01) begin 
            aluctrl <= 3'b001 ;
        end
        else if (aluop == 2'b10 ) begin 
            if(funct3 == 3'b000 && funct7 == 7'b0000000) begin 
                aluctrl <= 3'b000 ;
            end
            else if (funct3 == 3'b000 && funct7 == 7'b0100000) begin 
                aluctrl <= 3'b001;
            end
            else if(funct3 == 3'b111) begin
                aluctrl <= 3'b010 ;
            end
            else if (funct3 == 3'b110) begin
                aluctrl <= 3'b011 ;
            end
            else if(funct3 == 3'b010 ) begin 
                aluctrl <= 3'b100;
            end
        end
        else begin 
            aluctrl <= 3'b000 ;
        end
    end

endmodule