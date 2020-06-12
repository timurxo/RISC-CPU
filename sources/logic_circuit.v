`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2020 06:49:14 AM
// Design Name: 
// Module Name: logic_circuit
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


module logic_circuit(
        input PS1,
        input Z,
       // input [1:0] BS11,
        input [1:0] BS,
        output [1:0] output_lgate
    );

    assign output_lgate = {BS[1],BS[0] & (BS[1] | (PS1 ^ Z))};

    
endmodule
