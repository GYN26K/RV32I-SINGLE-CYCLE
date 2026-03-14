`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:26:45
// Design Name: 
// Module Name: pcrlogic
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


module pcsrc_logic(
    input branch ,
    input zero ,
    input jump ,
    output pcsrc
);

    assign pcsrc = (branch & zero) | jump ;

endmodule