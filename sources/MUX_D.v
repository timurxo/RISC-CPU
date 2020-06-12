`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 07:09:28 AM
// Design Name: 
// Module Name: MUX_D
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


module MUX_D(
        input F, data_out, MD1, N_xor_V,
        output [31:0] Bus_D
    );
    
     reg [31:0] result;
     assign Bus_D = result;

 
   always@(*)
    begin
        case (MD1)
             
        2'b00: result = F;  
        2'b01: result = data_out;  
        2'b11: result = {31'b0, N_xor_V}; //N_xor_V;
        
        endcase
    end
    
    
endmodule
