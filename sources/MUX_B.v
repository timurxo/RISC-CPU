`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 06:08:41 AM
// Design Name: 
// Module Name: MUX_B
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


module MUX_B(
    input B_data,
    input CS11, // constant unit
    input MB1,
    output [15:0] Bus_B

    );
    
    reg [15:0] result;
    assign Bus_B = result;

 
   always@(*)
    begin
        case (MB1)
             
        0: result = B_data;  
        1: result = CS11; 
        
        endcase
    end
    
endmodule
