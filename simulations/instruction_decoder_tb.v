`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 08:58:49 PM
// Design Name: 
// Module Name: instruction_decoder_tb
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


module instruction_decoder_tb;
    reg [15:0] instr;
    wire CS11, BA1, AA1, MB1, MA1, SH1, FS1, MW1, PS1, BS, MD1, DA1, RW1;


INSTRUCTION_DECODER uut(.instr(instr),
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
            .RW1(RW1));
            
            integer i;
            
initial begin
    instr = 0;
    


    #100;
    instr = 16'b0100000;
    #100
    instr = 16'b1100000;
    #100;
    instr = 16'b1000100;
    #100;
    instr = 16'b0000111;
    #100;
    
        for (i = 5; i <= 15; i = i + 1) begin
        #100;
        instr = instr + 1;
        
    end


end
            
endmodule
