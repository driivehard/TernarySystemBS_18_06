module andgate3(
	input [1:0] A, [1:0] B, [1:0] C,
	output [1:0] D
);
wire [1:0] E;

andgate andt (A, B, E);
andgate andt2 (E, C, D);


endmodule 
