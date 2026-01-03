module multiplier_3_8
(
a,b,prod
);

input wire signed [2:0] a;
input wire signed [7:0] b;
output wire signed [7:0] prod;

assign prod=a*b;

endmodule
