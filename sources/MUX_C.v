`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2020 07:09:04 AM
// Design Name: 
// Module Name: MUX_C
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


module MUX_C(
        input [1:0] BS1,
        input [63:0] BrA,
        input [31:0] Bus_A,
        input [1:0] output_lgate,
        output [31:0] output_muxc
    );
 

  reg [31:0] result;
  assign output_muxc = result;

 
   always@(*)
    begin
        case (output_lgate)
             
        2'b00: result = result; 
        2'b01: result = BrA[31:0];  
        2'b10: result = Bus_A; 
        2'b11: result = BrA[63:32];  
        
        endcase
    end
    
    
endmodule
