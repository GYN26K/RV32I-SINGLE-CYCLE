`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:23:13
// Design Name: 
// Module Name: pc
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


module pc(
    input [31:0] pc_next ,
    input clk ,
    input rst ,
    output reg [31:0]pc
);

    always @ (posedge clk) begin 
        if(rst) begin 
            pc <= 32'b0 ;
        end
        else begin 
            pc <= pc_next;
        end
    end

endmodule