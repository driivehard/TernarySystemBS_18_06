module ternary_ripple_adder (
	input [15:0] input1 ,
	input [15:0] input2 ,
	output [15:0] out ,
	output [1:0] overflow_trit
);

wire [15:0] carry ;
reg tem;

assign carry[0] = tem;
assign carry[1] = tem;

always @(input1, input2)
begin
	tem <= 1'b0;
end

generate
  genvar i;
  for (i = 0; i <= 12; i=i+2)
    begin
	full_add af({input1[i+1],input1[i]}, {input2[i+1],input2[i]}, 
        {carry[i+1],carry[i]}, {out[i+1], out[i]}, {carry[i+3],carry[i+2]});
    end
    full_add af({input1[15],input1[14]}, {input2[15],input2[14]}, 
    {carry[15],carry[14]}, {out[15], out[14]}, overflow_trit);
endgenerate


endmodule
