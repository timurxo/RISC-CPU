`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2020 06:39:55 AM
// Design Name: 
// Module Name: MODIFIED_FUNCTION_UNIT
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

// ALU AND SHIFTER
module MODIFIED_FUNCTION_UNIT(
        input [31:0] Bus_A, Bus_B,
        input [4:0] SH1,
        input [4:0] FS1,
        output Z1, C, N, N_xor_V,
        output reg V,
        output reg [31:0] F

    );

    always@(*)
    begin
        case (FS1)
        5'b00000:
           F = Bus_A; 
        5'b00001: 
           F = Bus_A + 1;
        5'b00010: 
           F = Bus_A + Bus_B;
        5'b00011: 
           F = Bus_A + Bus_B + 1;
        5'b00100: 
           F = Bus_A + ~Bus_B;
        5'b00101: 
           F = Bus_A + ~Bus_B + 1;
        5'b00110: 
           F = Bus_A - 1;
        5'b00111:
           F = Bus_A;
        5'b01000: 
           F = Bus_A & Bus_B;
        5'b01001: 
           F = Bus_A | Bus_B;
        5'b01010:
           F = Bus_A ^ Bus_B;
        5'b01011: 
           F = ~Bus_A;
        5'b10000:
           F = Bus_A << SH1;
        5'b10001:
           F = Bus_A >> SH1;
          default: F = Bus_A + Bus_B; 
        endcase        
    end
    
always @(*)
begin
    if(Bus_A[31] & ~Bus_B[31] & ~F[31])
        V = 1;
    else if(~Bus_A[31] & Bus_B[31] & F[31])
        V = 1;
    else
        V = 0;
end

//  assign C = V[16];  // carryout
  assign C = Bus_A - Bus_B;
  assign N = F [31];
  assign Z1 = ~| F;
  
  // ================ XOR GATE ====================
  assign N_xor_V = N ^ V;
  
  
    
endmodule
