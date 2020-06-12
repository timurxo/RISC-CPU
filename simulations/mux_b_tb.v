`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 03:33:34 PM
// Design Name: 
// Module Name: mux_b_tb
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


module mux_b_tb;
    reg B_data, CS11, MB1;
    wire [15:0] Bus_B;
    
MUX_B uut(.B_data(B_data),
            .CS11(CS11),
            .MB1(MB1),
            .Bus_B(Bus_B));
            
initial begin
        #100;
        MB1 = 0;
        CS11 = 0;
        B_data = 0;        
        
        #100;
        MB1 = 1;
        CS11 = 0;
        B_data = 0;
        
        #100;
        MB1 = 1;
        CS11 = 1;
        B_data = 0;
        
        #100;
        MB1 = 1;
        CS11 = 1;
        B_data = 1;
        
        #100;
        MB1 = 1;
        CS11 = 0;
        B_data = 1;
        
        #100;
        MB1 = 0;
        CS11 = 0;
        B_data = 0;
        
        #100;
        MB1 = 0;
        CS11 = 1;
        B_data = 0;
        
        #100;
        MB1 = 0;
        CS11 = 0;
        B_data = 1;
        
        #100;
        MB1 = 0;
        CS11 = 1;
        B_data = 1;
        
    end
    
endmodule
