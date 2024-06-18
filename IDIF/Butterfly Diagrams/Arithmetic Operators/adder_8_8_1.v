module adder_8_8_1
(
a,b,sum
);

input wire signed[7:0] a,b;
output wire signed[7:0] sum;
 
assign sum=(a+b);
//sum = sum/2;
endmodule
