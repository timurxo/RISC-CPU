`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 09:39:11 PM
// Design Name: 
// Module Name: modified_function_unit_tb
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


module modified_function_unit_tb;
    reg Bus_A, Bus_B;
    reg [4:0] SH1, FS1;
    wire [15:0] Z1, C, N, V, N_xor_V, F;

MODIFIED_FUNCTION_UNIT uut(.Bus_A(Bus_A),
                        .Bus_B(Bus_B),
                        .SH1(SH1),
                        .FS1(FS1),
                        .Z1(Z1),
                        .C(C),
                        .N(N),
                        .V(V),
                        .N_xor_V(N_xor_V),
                        .F(F));

    integer i;
    
    initial begin
        Bus_A = 0;
        Bus_B = 0;
        SH1 = 0;
        FS1 = 0;
    #100;
    
        for (i = 0; i <= 10;  i = i + 1) begin
            FS1 = FS1 + 1;
            #100;
        end
        
    end

endmodule
