module full_add (
	input [1:0] A, [1:0] B, [1:0] c_in,
	output [1:0] sum, [1:0] c_out

);
wire [1:0] temp1 = 2'b01;
wire [1:0] temp2 = 2'b00;
wire [1:0] a0, a1, a2, b0, b1, b2, a20;
wire [1:0] i0, i1, i2, i3, i4;
wire [1:0] i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17;
wire [1:0] o0, o1, o2, o3, o4, o5, o6, o7, o8, o9;
wire [1:0] c0, c1, c2;
wire [1:0] h0, h1, h2, h3, h4, h5, h6, h7;
wire [1:0] t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16;
wire [1:0] g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15;

mask mk_1(A, a0, a1, a2);
mask mk_2(B, b0, b1, b2);
mask mk_3(c_in, c0, c1, c2);

andgate3 and3_1(a2,b0,c0, i0);
andgate3 and3_2(a1,b0,c1, i1);
andgate3 and3_3(a0,b0,c2, i2);
andgate3 and3_4(a1,b1,c0, i3);

andgate3 and3_5(a0,b1,c1, i4);
andgate3 and3_6(a2,b1,c2, i5);
andgate3 and3_7(a0,b2,c0, i6);
andgate3 and3_8(a2,b2,c1, i7);
andgate3 and3_9(a1,b2,c2, i8);


andgate3 and3_10(a1,b0,c0, i9);
andgate3 and3_11(a0,b0,c1, i10);
orgate or__(a2, a0, a20);
andgate3 and3_12(a20,b0,c2, i11); // note a20
andgate3 and3_13(a0,b1,c0, i12);
andgate3 and3_14(a2,b1,c1, i13);
andgate3 and3_15(a1,B,c2, i14);
andgate3 and3_16(a2,b2,c0, i15);
andgate3 and3_17(a1,b2,c1, i16);
andgate3 and3_18(temp2,b2,c2, i17);

orgate or_1(i9, i10, o0);
orgate or_2(o0, i11, o1);
orgate or_3(o1, i12, o2);
orgate or_4(o2, i13, o3);
orgate or_5(o3, i14, o4);
orgate or_6(o4, i15, o5);
orgate or_7(o5, i16, o6);
orgate or_8(o6, i17, o7);

andgate and_1(o7, temp1, o8); // 1.f2

orgate or_9(i0, i1, h0);
orgate or_10(h0, i2, h1);
orgate or_11(h1, i3, h2);
orgate or_12(h2, i4, h3);
orgate or_13(h3, i5, h4);
orgate or_14(h4, i6, h5);
orgate or_15(h5, i7, h6);
orgate or_16(h6, i8, h7);

orgate or_17_(h7, o8, sum); // sum

// carry
andgate3 and3_19(a2,b2,c2, t0); // f1

andgate3 and3_20(a0,b1,c2, t1);
andgate3 and3_21(a0,b2,c2, t2);
andgate3 and3_22(a0,b2,c1, t3);
andgate3 and3_23(a1,b2,c0, t4);
andgate3 and3_24(a2,b2,c0, t5);

andgate3 and3_25(a1,b1,c1, t6);
andgate3 and3_26(a1,b2,c1, t7); //here
andgate3 and3_27(a1,b0,c2, t8);
andgate3 and3_28(a1,b1,c2, t9);
andgate3 and3_29(a1,b2,c2, t10);

andgate3 and3_25_(a2,b0,c2, t11);
andgate3 and3_26_(a2,b1,c2, t12); //here
andgate3 and3_27_(a2,b0,c1, t13);
andgate3 and3_28_(a2,b1,c1, t14);
andgate3 and3_29_(a2,b2,c1, t15);
andgate3 and3_9_(a2,b1,c0, t16);


orgate or_17(t1, t2, g0);
orgate or_18(g0, t3, g1);
orgate or_19(g1, t4, g2);
orgate or_20(g2, t5, g3);
orgate or_21(g3, t6, g4);
orgate or_22(g4, t7, g5);
orgate or_23(g5, t8, g6);
orgate or_24(g6, t9, g7);
orgate or_25(g7, t10, g8);
 
orgate or_21_(g8, t11, g9);
orgate or_22_(g9, t12, g10);
orgate or_23_(g10, t13, g11);
orgate or_24_(g11, t14, g12);
orgate or_25_(g12, t15, g13);
orgate or_5_(g13, t16, g14); 



//f2

andgate and_2(g14, temp1, g15); // 1.f2

orgate or_26(g15, t0, c_out); // carry

endmodule
