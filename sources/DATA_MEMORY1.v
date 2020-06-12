`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 07:00:38 AM
// Design Name: 
// Module Name: DATA_MEMORY1
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

// READ MEM?
module DATA_MEMORY(
        input clk,
        input [31:0] Bus_A, [31:0] Bus_B, 
        input MW1,
        output reg [31:0] data_out
    );
    
    reg [31:0] mem_data [0:31];

    always @(posedge clk) 
    begin
        case(MW1)
            0: data_out = mem_data[Bus_A]; 
            1: data_out = mem_data[Bus_B];
        endcase
    end
     

    
endmodule
