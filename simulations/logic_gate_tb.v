`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2020 07:01:51 AM
// Design Name: 
// Module Name: logic_gate_tb
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


module logic_gate_tb;

        reg PS;
        reg Z;
        reg BS1;
        reg BS0;
        wire output_lgate;
        
        logic_circuit uut(.PS(PS),
                          .Z(Z),
                          .BS1(BS1),
                          .BS0(BS0),
                          .output_lgate(output_lgate));
                              
        initial begin
        
            #100;
            PS = 1;
            Z = 1;
            BS1 = 0;
            BS0 = 1;
            
            #100;
            PS = 0;
            Z = 0;
            BS1 = 1;
            BS0 = 1;
            
            #100;
            PS = 0;
            Z = 0;
            BS1 = 0;
            BS0 = 0;
            
            #100;
            PS = 1;
            Z = 1;
            BS1 = 1;
            BS0 = 1;
            
            #100;
            PS = 1;
            Z = 1;
            BS1 = 0;
            BS0 = 0;
            
            #100;
            PS = 0;
            Z = 0;
            BS1 = 1;
            BS0 = 1;
            
            #100;
        
        end

endmodule
