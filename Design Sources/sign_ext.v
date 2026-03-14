`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:25:22
// Design Name: 
// Module Name: sign_ext
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


module sign_ext(
    input  [24:0] imm,
    input  [1:0]  immsrc,
    output reg [31:0] immext
);

always @(*) begin
    case (immsrc)

        2'b00: immext = {{20{imm[24]}}, imm[24:13]};

        2'b01: immext = {{20{imm[24]}}, imm[24:18], imm[4:0]};

        2'b10: immext = {{19{imm[24]}}, imm[0], imm[23:18], imm[4:1], 1'b0};

        2'b11: immext = {{11{imm[24]}}, imm[24], imm[12:5], imm[13], imm[23:14], 1'b0};

    endcase
end

endmodule