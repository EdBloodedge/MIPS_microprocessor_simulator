`timescale 1ns/1ns

module MUX(

	input sel, [31:0]a, [31:0]b,
	output reg [31:0]c

);

always @sel
begin

	if (sel == 1)
		c = a;
		
	if(sel == 0)
		c = b;
		
end

endmodule
	