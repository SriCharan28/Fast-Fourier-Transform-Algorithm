module adder_8_8
(
a,b,sum
);

input wire signed[7:0] a,b;
output wire signed[7:0] sum;
 
assign sum=(a+b)/2;

endmodule
