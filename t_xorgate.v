module xorgate(
	input wire [1:0] A, wire [1:0] B,
	output wire [1:0] C
);

wire [1:0] temp = 2'b01;
wire [1:0] a0; wire [1:0] a1; wire [1:0] a2; wire [1:0] b0; wire [1:0] b1; wire [1:0] b2;
wire [1:0] i0; wire [1:0] i1; wire [1:0] i2; wire [1:0] i3; wire [1:0] i4; wire [1:0] i5;
wire [1:0] o0; wire [1:0] o1; wire [1:0] o2; wire [1:0] o3; wire [1:0] o4;

mask msk_1(A, a0, a1, a2);
mask msk_2(B, b0, b1, b2);

andgate and_1(a2,b0,i0);
andgate and_2(a1,b1,i1);
andgate and_3(a0,b2,i2);

orgate or_1(i0, i1, o0);
orgate or_2(o0, i2, o1); //2's midterms


andgate and_4(a1,b0,i3);
andgate and_5(a0,b1,i4);
andgate and_6(a2,b2,i5);


orgate or_3(i3, i4, o2);
orgate or_4(o2, i5, o3);

andgate and_7(o3,temp,o4);

orgate or_5(o1, o4, C);

endmodule 
