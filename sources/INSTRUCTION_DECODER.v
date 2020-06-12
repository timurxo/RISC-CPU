`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//          Decodes the instructions and
//			generates the control signals that
//			are going to be used throughout the pipeline.
//
//          IR - Instruction Register
//////////////////////////////////////////////////////////////////////////////////


module INSTRUCTION_DECODER(
        input [31:0] instr, // opcode
        output reg CS11, BA1, AA1, MB1, MA1, SH1, FS1, MW1, PS1, BS, MD1, DA1, RW1

    );
    
   `include "PATT.inc"	
   
always @(*)
    begin
		case(instr[31:25])           //  MA    MB       AA       BA             CS
            NOP :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            ADD :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            SUB :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            SLT :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            AND :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            OR  :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            XOR :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            ST  :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            LD  :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            ADI :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b1};
            SBI :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b1};
            NOT :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            ANI :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b0};
            ORI :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b0};
            XRI :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b0};
            AIU :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b0};
            SIU :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b0};
            MOV :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            LSL :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            LSR :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            JMR :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
            BZ  :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b1};
            BNZ :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b1};
            JMP :{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b1,instr[19:15],instr[14:10],1'b1};
            JML :{MA1,MB1,AA1,BA1,CS11} = {1'b1,1'b1,instr[19:15],instr[14:10],1'b1};
		   default:{MA1,MB1,AA1,BA1,CS11} = {1'b0,1'b0,instr[19:15],instr[14:10],1'b0};
		endcase
	end
    
endmodule
