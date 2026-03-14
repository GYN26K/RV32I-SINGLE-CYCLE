`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 08:27:20
// Design Name: 
// Module Name: cpu
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


module cpu (
    input clk ,
    input reset ,
    output [31:0] result
);

    wire [31:0] pc_next ;
    wire [31:0] pc ;
    wire [31:0] instr ;
    wire [31:0] pc_4 ;
    wire [6:0] opcode ;
    wire [24:0] imm;
    wire [4:0] rs1 ;
    wire [4:0] rs2 ;
    wire [4:0] rd ;
    wire [2:0] funct3 ;
    wire [6:0] funct7 ;

    wire [4:0] ra1 ;
    wire [4:0] ra2 ;
    wire [4:0] wa3 ;
    wire [31:0] wd3 ;
    wire we3;
    wire [31:0] rd1 ;
    wire [31:0] rd2 ;
    wire [31:0] wd ;
    wire [31:0] rdmemo ;
    wire [31:0] addr ;
    wire regwrite ;
    wire alusrc ;
    wire memwrite ;
    wire [1:0] aluop ;
    wire branch ;
    wire [1:0] immsrc ;
    wire [1:0] resultsrc ;
    wire jump ;
    wire [31:0] immext ;

    wire [2:0] aluctrl ;
    wire [31:0] A ;
    wire [31:0] B ;
    wire zero ;
    wire [31:0] pc_target ;
    wire pcsrc ;
    wire [31:0] readdata ;
    wire [31:0] aluresult ;
    
    assign ra1 = rs1 ;
    assign ra2 = rs2 ;
    assign wa3 = rd ;
    assign we3 = regwrite ;
    assign A = rd1 ;
    assign addr = aluresult ;
    assign wd = rd2 ;
    assign readdata = rdmemo ;
    assign wd3 = result ;

    pc progc(pc_next , clk , reset , pc) ;

    instr_memo instrmemo(pc , instr) ;

    pc_4 pcplus4 (pc , pc_4) ;

    instr_decoder instr_decoder(instr ,clk , opcode , imm , rs1 , rs2 , funct3 , rd , funct7);

    reg_file regfile (clk , ra1 , ra2 , wa3 , wd3 , we3 , rd1 , rd2) ;

    datamemo datamemo (clk , memwrite , addr , wd , rdmemo) ;

    control_unit ctrlunit (opcode , regwrite , alusrc , memwrite , aluop , branch , immsrc , resultsrc , jump) ;

    sign_ext signext (imm , immsrc , immext) ;

    alu_ctrl alu_ctrl (aluop , funct3 , funct7 , aluctrl);

    alu alu1 (
        .A(A),
        .B(B),
        .aluctrl(aluctrl),
        .result(aluresult),
        .zero(zero)
    );

    muxpc muxpc (pc_4 , pc_target , pcsrc , pc_next) ;

    muxsrc muxsrc (immext , rd2 , alusrc , B );

    pctarget pctarget (pc , immext , pc_target );

    muxresult muxresult1 (
        .resultsrc(resultsrc),
        .aluresult(aluresult),
        .pc_4(pc_4),
        .readdata(readdata),
        .result(result)
    );

    pcsrc_logic pclogic (branch , zero , jump , pcsrc) ;

endmodule