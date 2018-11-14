module notgate(
	input [1:0] A,
	output [1:0] B
);
	//assign B[1] = ~ (A[1] | A[0]);
	//assign B[0] = A[0];
reg [1:0] t;
assign B = t;

initial
begin
 t <= 2 - A;
end

endmodule 