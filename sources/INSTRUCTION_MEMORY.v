`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2020 08:27:05 AM
// Design Name: 
// Module Name: INSTRUCTION_MEMORY
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

// IM - contains the list of instruction to be executed
module INSTRUCTION_MEMORY(    
        input clk,
        input [31:0] output_muxc, // address       
        output reg [31:0] PC_1,
        output reg [31:0] instr // from IR
    );
    
    `include "PATT.inc"
    
    reg [31:0] instruction_memory [255:0]; //[255:0];

  
    integer i;
    initial
      begin
        instruction_memory[0]  = {NOP,R1,R2,R2,PAD};									
        instruction_memory[1]  = {ADD,R1,R2,R2,PAD};									
        instruction_memory[2]  = {SUB,R1,R1,R2,PAD};									
        instruction_memory[3]  = {SLT,R1,R1,R2,PAD};
        instruction_memory[4]  = {AND,R1,R1,R2,PAD};									
        instruction_memory[5]  = {OR ,R1,R1,R2,PAD};									
        instruction_memory[6]  = {XOR,R1,R1,R2,PAD};									
        instruction_memory[7]  = {ST ,R1,R2,R2,PAD};									
        instruction_memory[8]  = {LD ,R1,R1,R2,PAD};									
        instruction_memory[9]  = {ADI,R1,R1,R2,PAD};									
        instruction_memory[10] = {SBI,R1,R1,R2,PAD};									
        instruction_memory[11] = {NOT,R1,R1,R2,PAD};									
        instruction_memory[12] = {ANI,R1,R1,R2,PAD};									
        instruction_memory[13] = {ORI,R1,R2,R2,PAD};								
        instruction_memory[14] = {XRI,R1,R1,R2,PAD};								
        instruction_memory[15] = {AIU,R1,R1,R2,PAD};									
        instruction_memory[16] = {SIU,R1,R1,R2,PAD};									
        instruction_memory[17] = {MOV,R1,R1,R2,PAD};									
        instruction_memory[18] = {LSL,R1,R1,R2,PAD};									
        instruction_memory[19] = {LSR,R1,R2,R2,PAD};									
        instruction_memory[20] = {JMR,R1,R1,R2,PAD};									
        instruction_memory[21] = {BZ ,R1,R1,R2,PAD};									
        instruction_memory[22] = {BNZ,R1,R1,R2,PAD};								
        instruction_memory[23] = {JMP,R1,R1,R2,PAD};									
        instruction_memory[24] = {JML,R1,R1,R2,PAD};		
        						
        for(i=25; i< 256; i = i+1)
            instruction_memory[i] = {32'b0};
      	
      end
      
    //------------output for MUXC and PC-1------------
    wire [31:0] PC_1;
    assign PC_1 = output_muxc + 1;
  
    
    always @(negedge clk)
        begin
            instr <= instruction_memory[output_muxc];
        end
    
endmodule
