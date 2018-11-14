module xor_testbench;

// input and output test signals
wire [1:0] t1;
wire [1:0] t2;

wire [1:0] C;

reg [1:0] A;
reg [1:0] B;

assign t1 = A;
assign t2 = B;

// creating the instance of the module we want to test
xorgate ag(t1, t2, C);

initial
begin
A = 2'b00;
B = 2'b00;
#10; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
#10; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
#10; // pause (5 units of delay)
A = 2'b01;
B = 2'b00;
#10; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
#10; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
#10; // pause (5 units of delay)
A = 2'b10;
B = 2'b00;
#100; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
#10; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
#100; // pause (5 units of delay)
end

// print signal values on every change
initial
$monitor("%b %b %b", A, B, C);

initial
$dumpvars;

endmodule
