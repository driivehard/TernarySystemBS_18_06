module ternary_multiplier (
	input [1:0] A, [1:0] B,
	output [1:0] product, [1:0] carry

);

wire [1:0] temp = 2'b01;
wire [1:0] a0, a1, a2, b0, b1, b2;
wire [1:0] i0, i1, i2, i3, i4, i5;
wire [1:0] o0, o1, o2, o3, o4;

mask msk_1(A, a0, a1, a2);
mask msk_2(B, b0, b1, b2);

andgate and_1(a1,b2,i0);
andgate and_2(a2,b1,i1);

orgate or_1(i0, i1, o0); // f1


andgate and_4(a1,b1,i3);
andgate and_5(a2,b2,i4);
orgate or_3(i3, i4, o2);
andgate and_3(temp,o2,o3);
orgate or_4(o3, o0, product); // product

andgate andc_0(a2,b2,o4);
andgate andc_1(temp,o4,carry); // carry

endmodule
