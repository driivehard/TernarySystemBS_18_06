module andgate3_tb;

// input and output test signals
reg [1:0] A;
reg [1:0] B;
reg [1:0] C;
wire [1:0] D;

// creating the instance of the module we want to test
andgate3 andg(A, B, C, D);

initial
begin
A = 2'b00;
B = 2'b00;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b00;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b00;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b00;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b00;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b00;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
C = 2'b10;
#5; // pause (5 units of delay)

A = 2'b10;
B = 2'b00;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b00;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b00;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
C = 2'b10;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
C = 2'b01;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
C = 2'b10;
#5; // pause (5 units of delay)
end

// print signal values on every change
initial
$monitor("%b %b %b   %b", A, B, C, D);

initial
$dumpvars;

endmodule

