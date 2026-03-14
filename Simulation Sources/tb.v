`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2026 21:48:59
// Design Name: 
// Module Name: tb
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


module tb;

reg clk;
reg reset;
wire [6:0] seg;
wire [3:0] an;

top_module uut (
    .clk(clk),
    .reset(reset),
    .seg(seg),
    .an(an)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;   
end

initial begin
    reset = 1;
    #20;
    reset = 0;

    #100000;   
    $finish;
end

endmodule
