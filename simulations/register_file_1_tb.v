`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 07:28:59 PM
// Design Name: 
// Module Name: register_file_1_tb
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


module register_file_tb;
    reg clk, reset, AA1, BA1;
    wire [15:0] A_data, B_data;

REGISTER_FILE uut(.clk(clk),
            .reset(reset),
            .AA1(AA1),
            .BA1(BA1),
          //  .reg_arr(reg_arr),
            
            .A_data(A_data),
            .B_data(B_data));
            
    //    reg [31:0] reg_arr;
            
    always #50 clk = ~clk;
            
    initial begin
        clk = 1;
        reset = 1;
        
        #100;
        reset = 0;
        AA1 = 0;
        BA1 = 0;
        
        #100;
        AA1 = 1;
        BA1 = 1;
        
        #100;
        AA1 = 0;
        BA1 = 1;
      
        #100;
        AA1 = 1;
        BA1 = 0;

    end
endmodule
