`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 03:57:06 PM
// Design Name: 
// Module Name: mux_d_tb
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


module mux_d_tb;
    reg F, data_out, MD, N_xor_V;
    wire [31:0] Bus_D;

MUX_D uut(.F(F),
            .data_out(data_out),
            .MD(MD),
            .N_xor_V(N_xor_V),
            .Bus_D(Bus_D));
            
initial begin
    #100;
    F = 0;
    data_out = 0;
    MD = 0;
    N_xor_V = 0;
    
    #100;
    F = 1;
    data_out = 1;
    MD = 1;
    N_xor_V = 1;
    
    #100;
    F = 1;
    data_out = 0;
    MD = 0;
    N_xor_V = 0;
    
    #100;
    F = 0;
    data_out = 1;
    MD = 0;
    N_xor_V = 0;
    
    #100;
    F = 0;
    data_out = 0;
    MD = 1;
    N_xor_V = 0;
    
    #100;
    F = 0;
    data_out = 0;
    MD = 0;
    N_xor_V = 1;
    
   #100;
    F = 0;
    data_out = 1;
    MD = 0;
    N_xor_V = 1;
    
    #100;
    F = 1;
    data_out = 0;
    MD = 1;
    N_xor_V = 0;
    
    #100;
    F = 1;
    data_out = 1;
    MD = 0;
    N_xor_V = 0;
    
    #100;
    F = 0;
    data_out = 1;
    MD = 1;
    N_xor_V = 1;
    
end
endmodule
