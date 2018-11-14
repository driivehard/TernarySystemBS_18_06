module orgate(
	input [1:0] A, [1:0] B,
	output [1:0] C
);
	//assign C[1] = A[1] | B[1];
	//assign C[0] = (A[0] | B[0]) ^ ((A[0] | B[0]) & C[1]);
reg [1:0] temp2;
assign C = temp2;

always @(*) begin
 if (A > B)
	temp2 <= A;
 else
	temp2 <= B;
end

endmodule 
