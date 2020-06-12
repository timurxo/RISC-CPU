`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 06:07:05 AM
// Design Name: 
// Module Name: MUX_A
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


module MUX_A(
    input A_data,
    input pc_1,
    input MA1,
    output [15:0] Bus_A

    );
    
    reg [15:0] result;
    assign Bus_A = result;

   always@(*)
    begin
        case (MA1)
           
            0: result = A_data;  
            
            1: result = A_data - 1;  
        
        endcase
    end
    
endmodule
