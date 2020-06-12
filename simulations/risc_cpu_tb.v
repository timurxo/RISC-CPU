`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 10:02:23 PM
// Design Name: 
// Module Name: risc_cpu_tb
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


module risc_cpu_tb;
    reg clk, reset;
    
    //logic ckt
 //   reg PS, Z, BS1, BS0;
    wire output_lgate;
    
    //IM
    wire instr;
    
    //Mux C
    reg BrA, RAA;
    wire output_muxc;
    
    //Decoder
    wire CS11, BA1, AA1, MB1, MA1, SH1, FS1, MW1, PS1, BS, MD1, DA1, RW1;
    
    //Reg file 1
    wire A_data, B_data;
    
    //Mux A
    reg pc_1;
    wire [31:0] Bus_A;
        
    //Mux B
    wire [31:0] Bus_B;
    
    //Modified function unit
    wire [15:0] Z1, C, N, V, N_xor_V, F;

    //Data memories
    wire [31:0] data_out;
    
    //Mux D
    wire [31:0] Bus_D;        

RISC_CPU uut(.clk(clk),
            .reset(reset),
//            .PS(PS),
//            .Z(Z),
//            .BS1(BS1),
//            .BS0(BS0),
            .output_lgate(output_lgate),
            .instr(instr),
            .BrA(BrA),
            .RAA(RAA),
            .output_muxc(output_muxc),
            .CS11(CS11),
            .BA1(BA1),
            .AA1(AA1),
            .MB1(MB1),
            .MA1(MA1),
            .SH1(SH1),
            .FS1(FS1),
            .MW1(MW1),
            .PS1(PS1),
            .BS(BS),
            .MD1(MD1),
            .DA1(DA1),
            .RW1(RW1),
            .A_data(A_data),
            .B_data(B_data),
            .pc_1(pc_1),
            .Bus_A(Bus_A),
            .Bus_B(Bus_B),
            .Z1(Z1),
            .C(C),
            .N(N),
            .V(V),
            .N_xor_V(N_xor_V),
            .F(F),
            .data_out(data_out),
            .Bus_D(Bus_D));


integer i;
always #50 clk = ~clk;  


initial begin
            clk = 1;
            reset = 1;

            #100;
            reset = 0;

            #100;
            reset = 1;
            #100;
            reset = 0;
            #100;
            reset = 1;
            #100;




end   
            
            
endmodule
