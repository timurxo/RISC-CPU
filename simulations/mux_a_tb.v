`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 02:10:38 PM
// Design Name: 
// Module Name: mux_a_tb
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


module mux_a_tb;
    reg A_data, pc_1, MA1;
    wire [15:0] Bus_A;

MUX_A uut(.A_data(A_data),
            .pc_1(pc_1),
            .MA1(MA1),
            .Bus_A(Bus_A));
            
    initial begin
        #100;
        MA1 = 0;
        pc_1 = 0;
        A_data = 0;        
        
        #100;
        MA1 = 1;
        pc_1 = 0;
        A_data = 0;
        
        #100;
        MA1 = 1;
        pc_1 = 1;
        A_data = 0;
        
        #100;
        MA1 = 1;
        pc_1 = 1;
        A_data = 1;
        
        #100;
        MA1 = 1;
        pc_1 = 0;
        A_data = 1;
        
        #100;
        MA1 = 0;
        pc_1 = 0;
        A_data = 0;
        
        #100;
        MA1 = 0;
        pc_1 = 1;
        A_data = 0;
        
        #100;
        MA1 = 0;
        pc_1 = 0;
        A_data = 1;
        
        #100;
        MA1 = 0;
        pc_1 = 1;
        A_data = 1;
        
    end
endmodule
