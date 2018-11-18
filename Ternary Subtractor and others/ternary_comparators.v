module ternary_comparators (
	input [1:0] x1, x2,
	output [1:0] f1, f2, f3
);

wire [1:0] t0, t1, t2, t3, t4, t5, t6, t7;
wire [1:0] h0, h1, h2, h3, h4, h5;
wire [1:0] x10, x11, x12;
wire [1:0] x20, x21, x22;

mask mk_1(x1, x10, x11, x12);
mask mk_2(x2, x20, x21, x22);

andgate and_0(x10, x20, t0);
andgate and_1(x22, x22, t1);
orgate or_0(t0, t1, h0);
orgate or_1(h0, x11, h1);
orgate or_2(h1, x21, f1); // x1 == x2

andgate and_2(x11, x20, t2);
andgate and_3(x12, x20, t3);
andgate and_4(x12, x21, t4);
orgate or_3(t2, t3, h3);
orgate or_4(h3, t4, f2); // x1>x2


andgate and_5(x10, x21, t5);
andgate and_6(x10, x22, t6);
andgate and_7(x11, x22, t7);
orgate or_5(t5, t6, h4);
orgate or_6(h4, t7, f3); // x1<X2

endmodule
