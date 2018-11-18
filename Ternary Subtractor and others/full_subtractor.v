module full_subtractor(
	input [1:0] P, Q, b_in,
	output [1:0] diff, b_out
);

wire [1:0] temp1 = 2'b01;
wire [1:0] temp2 = 2'b10;
wire [1:0] a0, a1, a2, b0, b1, b2;
wire [1:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17;
wire [1:0] c0, c1, c2, c3;
wire [1:0] h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11;
wire [1:0] t0, t1, t2, t3, t4, t5, t6, t7, t8, t9;

wire [1:0] p0, p1, p2;
wire [1:0] q0, q1, q2;

mask mk_1(P, p0, p1, p2);
mask mk_2(Q, q0, q1, q2);
mask mk_3(b_in, b0, b1, b2);

andgate and_0(p0, q1, i0);
andgate3 and3_0(p2, p1, q2, i1);
orgate or_0(i0, i1, i2);
andgate and_1(b0, i2, i3); // first expression

andgate and_2(p0, q0, i4);
andgate and_3(p1, q1, i5);
andgate and_4(p2, q2, i6);
orgate or_1(i4, i5, i7);
orgate or_2(i7, i6, i8);
andgate and_5(i8, b1, i9); // second expression

andgate and_6(p1, q0, i10);
andgate and_7(p0, q2, i11);
andgate and_8(p2, q1, i12);
orgate or_3(i10, i11, i13);
orgate or_4(i13, i12, i14);
andgate and_9(i14, b2, i15); // third expression

orgate or_5(i3, i9, i16);
orgate or_6(i16, i15, c0); //f1

orgate or_7(i10, i12, t0);
orgate or_8(t0, i11, t1);
andgate and_10(t1, b0, t2); // 1 expression

andgate and_11(p1, q2, i17);
orgate or_9(i4, i17, t3);
andgate and_12(t3, b1, t4); // 1- expression

orgate or_10(i4, i5, t5);
orgate or_11(t5, i6, t6);
andgate and_12_(t6, b2, t7); // 1-- expression

orgate or_12(t2, t4, t8);
orgate or_13(t8, t7, t9);
andgate and_13(t9, temp1, c1);

orgate or_14(c0, c1, diff); // difference
 
orgate or_15(q1, q2, h0);
andgate and_14(h0, temp2, h1);
andgate and_15(h1, b2, h3); // 1 b

orgate or_16(i0, i11, h4);
andgate and_16(h4, temp2, h5); // 1- b

andgate and_17(i17, temp2, h6); // 1-- b

andgate3 and3_1(p2, q2, b1, h7); // 1--- b
andgate3 and3_2(p1, q0, b2, h8); // 1---- b

orgate or_17(h3, h5, h9);
orgate or_18(h9, h6, h10);
orgate or_19(h10, h7, h11);
orgate or_20(h11, h8, b_out); // borrow
endmodule
