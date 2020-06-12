`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2020 07:24:44 AM
// Design Name: 
// Module Name: RISC_CPU
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


module RISC_CPU(
        input clk, reset,
        // LOGIC CIRCUIT
        output output_lgate,
                    //  input BS1,
        // IM
        output instr,
        // MUX C
        input BrA,
        input RAA,   
        output output_muxc,
        
        // DECODER
        output CS11, BA1, AA1, MB1, MA1, SH1, FS1, MW1, PS1, BS, MD1, DA1, RW1,
        
        // REG FILE 1
        output A_data, B_data,
        
        // MUX A
        input pc_1,
        output [31:0] Bus_A,
        
        // MUX B
        output [31:0] Bus_B,
        
        
        // MODIFIED FUNCTION UNIT
        output [15:0] Z1, C, N, V, N_xor_V,
        output [15:0] F,
        
        
        // DATA MEMORIES
        output [31:0] data_out,
        
        // MUX D
        output [31:0] Bus_D
        
    );
    
    logic_circuit logic_circuit(PS1, Z1, BS, output_lgate);
    MUX_C MUX_C(BS, BrA, Bus_A,  output_lgate, output_muxc);
    INSTRUCTION_MEMORY INSTRUCTION_MEMORY(output_muxc,  instr);
    INSTRUCTION_DECODER INSTRUCTION_DECODER(instr, CS11, BA1, AA1, MB1, MA1, SH1, FS1, MW1, PS1, BS, MD1, DA1, RW1);
    REGISTER_FILE REGISTER_FILE(clk, reset, AA1, BA1, A_data, B_data);
    MUX_A MUX_A(A_data, pc_1, MA1, Bus_A);
    MUX_B MUX_B(B_data, CS11, MB1, Bus_B);
    MODIFIED_FUNCTION_UNIT MODIFIED_FUNCTION_UNIT(Bus_A, Bus_B, SH1, FS1, Z, C, N, V, N_xor_V, F);
    DATA_MEMORY DATA_MEMORY(Bus_A, Bus_B, MW1, data_out);
    MUX_D MUX_D(F, data_out, MD1, N_xor_V, Bus_D);
 //   REGISTER_FILE2 REGISTER_FILE2(Bus_D, RW1, DA1);
    ADDER ADDER(output_muxc, Bus_B, BrA);
    
endmodule
