`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 09:12:37 PM
// Design Name: 
// Module Name: data_memory1_tb
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


module data_memory_tb;
 //   reg clk;
    reg [31:0] Bus_A, Bus_B;
    reg MW1;
    wire [15:0] data_out;
    

DATA_MEMORY uut( .Bus_A(Bus_A),
                 .Bus_B(Bus_B),
                 .MW1(MW1),
                 .data_out(data_out));
         
      // always #50 clk = ~clk;  
           integer i;
initial begin
  //  clk = 0;
    Bus_A = 0;
    #100;
   
    MW1 = 0;
    Bus_A = 0;
    Bus_B = 0;
    
    #100;
   
    MW1 = 1;
    Bus_A = 4;
    Bus_B = 2;
    #100;
    
    MW1 = 0;
    Bus_A = 9;
    Bus_B = 1;
    #100;
    
    MW1 = 0;
    Bus_A = 4;
    Bus_B = 2;
    #100;
    
    MW1 = 1;
    Bus_A = 5;
    Bus_B = 7;
    #100;
//   for (i = 0; i <= 31; i = i + 1) begin
//        #100;
//        Bus_A = i; //Bus_A + 1;
        
//    end
    
end       
            
endmodule
