`timescale 1ns/1ns

module ALU(

	input [31:0]a, [31:0]b, [2:0]sel,
	output reg ZF, [31:0]res

);


always @*
begin
	
	case(sel)
	
		3'b000:
		begin
			res = a+b;
		end
		
		3'b001:
		begin
			res = a-b;
		end
		
		3'b010:
		begin
			res = a|b;
		end
		
		3'b011:
		begin
			res = a&b;
		end
		
		3'b100:
		begin
			res = a<b;
		end
		
	endcase
	
	if(res == 0)
		
		ZF = 1;
		
	else 
	
		ZF = 0;
		
end
			

endmodule	
			
			