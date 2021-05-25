`timescale 1ns/1ns

module TopLevel(

	input MemEwr, [4:0]MemDir, [2:0]AluSel, [4:0]BrA1, [4:0]BrA2, [4:0]BrDDir, [31:0]BrDin, BrEwr,
	output AluZF, [31:0]MemDout

);

wire [31:0]AluMem;
wire [31:0]AluA;
wire [31:0]AluB;

Breg BREG_TL(

	.A1(BrA1),
	.A2(BrA2),
	.dataDir(BrDDir),
	.dataIn(BrDin),
	.RegEwr(BrEwr),
	.D1(AluA),
	.D2(AluB)

);

ALU ALU_TL(

	.a(AluA),
	.b(AluB),
	.sel(AluSel),
	.res(AluMem),
	.ZF(AluZF)
	
);

mem32x32 MEM_TL(

	.Ewr(MemEwr),
	.dataIn(AluMem),
	.dir(MemDir),
	.dataOut(MemDout)

);

endmodule