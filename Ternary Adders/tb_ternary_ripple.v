module tb_ternary_ripple;

// input and output test signals
reg [15:0] A;
reg [15:0] B;
wire [15:0] sum;
wire [1:0] overflow;

// creating the instance of the module we want to test
ternary_ripple_adder tra(A, B, sum, overflow);

initial
begin
A = 16'ha550;
B = 16'h1a81;
#5; // pause (5 units of delay)
A = 16'haa01;
B = 16'h8101;
#5; // pause (5 units of delay)
A = 16'h0000;
B = 16'h0000;
#5; // pause (5 units of delay)
A = 16'haaaa;
B = 16'h0001;
#5; // pause (5 units of delay)
A = 16'h0aaa;
B = 16'h0111;
#5; // pause (5 units of delay)

end

// print signal values on every change
initial
$monitor("%b %b   %b %b", A, B, sum, overflow);

initial
$dumpvars;

endmodule

