`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 08:51:35 PM
// Design Name: 
// Module Name: instruction_memory_tb
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


module instruction_memory_tb;
    reg [31:0] output_muxc;
    wire [31:0] instr;

INSTRUCTION_MEMORY uut(.output_muxc(output_muxc),
                .instr(instr));
                
   // reg [31:0] instruction_memory [0:31];
   
    initial begin
        #100;
        output_muxc = 0;
        
        #100;
        output_muxc = 100;
        
        #100;
        output_muxc = 92389;
        
        #100;
        output_muxc = 473679;

        
    end
endmodule
