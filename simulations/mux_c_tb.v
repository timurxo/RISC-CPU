`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 04:24:10 PM
// Design Name: 
// Module Name: mux_c_tb
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


module mux_c_tb;
    reg BS, BrA, output_lgate;
    reg [31:0] Bus_A;
    wire [31:0] output_muxc;

MUX_C uut(.BS(BS),
            .BrA(BrA),
            .output_lgate(output_lgate),
            .Bus_A(Bus_A),
            .output_muxc(output_muxc));
            
initial begin
    #100;
    BS = 1;
    BrA = 1;
    output_lgate = 1;
    Bus_A = 3;
    
    #100;
    BS = 1;
    BrA = 0;
    output_lgate = 2;
    Bus_A = 0;
    
    #100;
    BS = 0;
    BrA = 1;
    output_lgate = 0;
    Bus_A = 0;
    
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 1;
    Bus_A = 0;
    
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 0;
    Bus_A = 1;
    
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 0;
    Bus_A = 50;
    
    //-------------
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 3;
    Bus_A = 900;
    
    #100;
    BS = 1;
    BrA = 0;
    output_lgate = 0;
    Bus_A = 500;
    
    #100;
    BS = 0;
    BrA = 1;
    output_lgate = 0;
    Bus_A = 2147483647;
    
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 1;
    Bus_A = 0;
    
    #100;
    BS = 0;
    BrA = 0;
    output_lgate = 0;
    Bus_A = 800088;

end
endmodule
