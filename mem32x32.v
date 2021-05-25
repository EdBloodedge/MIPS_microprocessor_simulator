`timescale 1ns/1ns

module mem32x32(

	input Ewr, [4:0]dir, [31:0]dataIn,
	output reg [31:0]dataOut

);

reg [31:0]mem[0:31];



always @*
begin

	if(Ewr == 1)
	begin
		
		mem[dir] = dataIn;
		dataOut = 32'dx;
			
	end else 
		
		dataOut = mem[dir];
		
end

endmodule

