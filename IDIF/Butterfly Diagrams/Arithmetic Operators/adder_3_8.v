module adder_3_8
(
a,b,sum
);

input wire signed [2:0] a;
input wire signed[7:0] b;
output wire signed[7:0] sum;

assign sum=(a+b)/2;

endmodule
