`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 01:21:59 PM
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;
    reg [31:0] output_muxc, Bus_B;
    wire [31:0] BrA;
    
ADDER uut(.output_muxc(output_muxc),
            .Bus_B(Bus_B),
            .BrA(BrA));

    initial begin
    #100;
    output_muxc = 0;
    Bus_B = 0;
    
    #100;
    output_muxc = 1;
    Bus_B = 1;  
    
    #100;
    output_muxc = 0;
    Bus_B = 1;
    
    #100;
    output_muxc = 1;
    Bus_B = 0;
    
    #100;
    output_muxc = 2;
    Bus_B = 3; 
    
    #100;
    output_muxc = 0;
    Bus_B = 0; 
    
    #100;
    output_muxc = 2147483647;
    Bus_B = 1;    
    
    #100;
    output_muxc = 1;
    Bus_B = 2147483647;   
    
    #100;
    output_muxc = 2147483647;
    Bus_B = 2147483647;   

    end
endmodule
