`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 02:20:31 AM
// Design Name: 
// Module Name: ADDER
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


module ADDER(
     input [31:0] output_muxc,
     input [31:0] Bus_B,
     output reg [63:0] BrA
    );
 
    always @(*)
        begin
            BrA = output_muxc + Bus_B; 
        end
endmodule
