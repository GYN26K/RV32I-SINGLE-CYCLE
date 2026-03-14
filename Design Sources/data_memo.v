`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:24:35
// Design Name: 
// Module Name: data_memo
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


module datamemo(
    input clk ,
    input we ,
    input [31:0] addr ,
    input [31:0] wd ,
    output [31:0] rd
);

    reg [31:0] mem [31:0] ;
    
    always@(posedge clk ) begin 
        if(we) begin 
            mem[addr[6:2]] <= wd ;
        end
    end

    assign rd = mem[addr[6:2]];

endmodule