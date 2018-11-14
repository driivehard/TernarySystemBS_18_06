module andgate(
	input [1:0] A, [1:0] B,
	output [1:0] C
);
	//norgate nog (A, B, C);
reg [1:0] temp3;
assign C = temp3;

always @(*) begin
 if (A > B)
	temp3 <= B;
 else
	temp3 <= A;
end


endmodule 
