`timescale 1ns/1ns


module AluControl(

	input [2:0]ControlIn, [5:0]Func, 
	output reg [2:0]ControlOut

);

always @* begin
	
	case(ControlIn)
	
		010:
		begin 
			
			case(Func)
			
				100000:
				begin
				
					ControlOut = 000;
				end
				
				100010:
				begin
					
					ControlOut = 001;
				
				end
				
				100101:
				begin
					
					ControlOut = 010;
				
				end
				
				100100:
				begin
					
					ControlOut = 011;
				
				end
				
				101010:
				begin
					
					ControlOut = 100;
				
				end
			
			endcase
		
		end
	
	endcase

end

endmodule