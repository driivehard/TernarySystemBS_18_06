module or_testbench;

// input and output test signals
reg [1:0] A;
reg [1:0] B;

wire [1:0] C;

// creating the instance of the module we want to test
orgate og(A, B, C);

initial
begin
A = 2'b00;
B = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
#5; // pause (5 units of delay)
end

// print signal values on every change
initial
$monitor("%b %b %b", A, B, C);

initial
$dumpvars;

endmodule


