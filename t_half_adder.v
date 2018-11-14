module half_adder (
	input [1:0] A, [1:0] B,
	output [1:0] sum, [1:0] carry

);

wire [1:0] temp = 2'b01;
wire [1:0] a0, a1, a2, b0, b1, b2;
wire [1:0] i0, i1, i2, i3, i4, i5;
wire [1:0] o0, o1, o2, o3, o4;
wire [1:0] c0, c1, c2, c3;

mask msk_1(A, a0, a1, a2);
mask msk_2(B, b0, b1, b2);

andgate and_1(a2,b0,i0);
andgate and_2(a1,b1,i1);
andgate and_3(a0,b2,i2); // partial products

orgate or_1(i0, i1, o0);
orgate or_2(o0, i2, o1); // f1


andgate and_4(a1,b0,i3);
andgate and_5(a0,b1,i4);
andgate and_6(a2,b2,i5); // partial products


orgate or_3(i3, i4, o2);
orgate or_4(o2, i5, o3); // f2

andgate and_7(o3,temp,o4); // 1.f2

andgate andc_0(a2,b1,c0);
andgate andc_1(a1,b2,c1);
orgate orc_0(c0,c1,c2);
orgate orc_1(c2,i5,c3);
andgate andc_2(c3,temp,carry); // carry

orgate or_5(o1, o4, sum); // sum

endmodule
