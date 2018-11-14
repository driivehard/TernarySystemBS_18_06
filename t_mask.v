module mask (
	input [1:0] x,
	output [1:0] x0, [1:0] x1, [1:0] x2
);
reg [1:0] y0;
reg [1:0] y1;
reg [1:0] y2;

assign x0 = y0;
assign x1 = y1;
assign x2 = y2;


always @(*) begin
 casex (x)
	2'b00: begin
	 y0 <= 2'b10;
	 y1 <= 2'b00;
	 y2 <= 2'b00;
	end
	2'b01: begin
	 y0 <= 2'b00;
	 y1 <= 2'b10;
	 y2 <= 2'b00;
	end
	2'b10: begin
	 y0 <= 2'b00;
	 y1 <= 2'b00;
	 y2 <= 2'b10;
	end
 endcase
end

endmodule
