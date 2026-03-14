`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:26:17
// Design Name: 
// Module Name: pc_target
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


module pctarget (
    input [31:0] pc ,
    input [31:0] immext ,
    output reg [31:0] pc_target
);

    always @ (*) begin 
        pc_target <= pc + immext ;
    end

endmodule