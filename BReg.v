`timescale 1ns/1ns

module BReg(

	input RegEwr, [4:0]A1, [4:0]A2, [31:0]dataIn, [4:0]dataDir,
	output reg [31:0]D1, [31:0]D2

);


reg [31:0]Rmem[0:31];

initial
begin
	$readmemb("Bregdata.txt", Rmem);
end

always @*
begin
	
	if (RegEwr == 1)
	begin
		Rmem[dataDir] = dataIn;
	end
	
	D1 <= Rmem[A1];
	D2 <= Rmem[A2];

		
end

endmodule