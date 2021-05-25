module ControlUnit(

	input [5:0]OP,
	output reg MemToReg, MemToWrite, RegWrite, [2:0]AluOp

);


always @* begin
	
	case(OP)
			
		6'b0: 
		begin
				
			MemToReg = 0;
			MemToWrite = 0;
			RegWrite = 1;
			AluOp = 010;
			
		end
		
	endcase
	
end

endmodule
