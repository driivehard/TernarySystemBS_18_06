module nandgate(
	input [1:0] A, [1:0] B,
	output [1:0] C
);
	wire [1:0] D;
	andgate ag (A, B, D);
	notgate ng (D, C);
endmodule 
