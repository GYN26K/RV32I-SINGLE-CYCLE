`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:25:48
// Design Name: 
// Module Name: muxpc
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


module muxpc(
    input [31:0] pc_4 ,
    input [31:0] pc_target ,
    input pcsrc ,
    output reg [31:0] pc_next
);

    always @ (*) begin 
        if(pcsrc) begin 
            pc_next <= pc_target ;
        end
        else begin 
            pc_next <= pc_4 ;
        end
    end

endmodule