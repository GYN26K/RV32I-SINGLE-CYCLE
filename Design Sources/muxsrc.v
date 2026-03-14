`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:26:01
// Design Name: 
// Module Name: muxsrc
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


module muxsrc(
    input [31:0] immext ,
    input [31:0] rd2 ,
    input alusrc ,
    output reg [31:0] B
);

    always @ (*) begin 
        if(alusrc) begin 
            B <= immext ;
        end
        else begin 
            B <= rd2 ;
        end
    end

endmodule