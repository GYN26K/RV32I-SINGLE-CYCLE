`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:23:46
// Design Name: 
// Module Name: pc_4
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


module pc_4(
    input [31:0] pc ,
    output reg [31:0] pc_4
);

    always @ (*) begin 
        pc_4 <= pc + 4 ;
    end

endmodule