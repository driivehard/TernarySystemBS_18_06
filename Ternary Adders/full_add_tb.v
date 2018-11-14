module full_add_tb;

// input and output test signals
reg [1:0] A;
reg [1:0] B;
reg [1:0] C;
wire [1:0] sum;
wire [1:0] c_out;

// creating the instance of the module we want to test
full_add fad(A, B, C, sum, c_out);

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
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b01;
C = 2'b01;

#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b00;
B = 2'b10;
C = 2'b01;

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
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b01;
C = 2'b01;

#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b01;
B = 2'b10;
C = 2'b01;

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
B = 2'b01;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b01;
C = 2'b01;

#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
C = 2'b00;
#5; // pause (5 units of delay)
A = 2'b10;
B = 2'b10;
C = 2'b01;

#5; // pause (5 units of delay)
end

// print signal values on every change
initial
$monitor("%b %b %b   %b %b", A, B, C, sum, c_out);

initial
$dumpvars;

endmodule

