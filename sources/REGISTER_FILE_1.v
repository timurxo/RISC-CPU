`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// register file is an array of processor registers in a central processing unit (CPU).
//////////////////////////////////////////////////////////////////////////////////

// RF - general purpose register to store temporary data that is executed by specific instruction. 
// Register files are pretty similar to the RAM except that it doesn't have as much capacity as 
// RAM and thus reduce the cost.
module REGISTER_FILE(
    
    input clk, reset,
    input [4:0] AA1, BA1,
    input [31:0] Bus_D,
    input RW1, DA1,
    output [31:0] A_data, B_data

    );
    
    
    reg [31:0] reg_arr [31:0];
    
    assign A_data = reg_arr[AA1];
    assign B_data = reg_arr[BA1];
    
    integer i;
    
    initial
	for(i = 0; i < 32; i = i + 1)
		reg_arr [i] = i;									
		
always @(posedge clk)
	begin
		if(reset)
			for(i = 0; i < 32; i = i + 1)
				reg_arr [i] <= 0;									
		else if(RW1)														
			    reg_arr[DA1] <= Bus_D;		
	end
    
   
    
endmodule
