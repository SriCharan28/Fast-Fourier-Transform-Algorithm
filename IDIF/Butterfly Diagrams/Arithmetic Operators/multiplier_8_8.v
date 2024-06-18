module multiplier_8_8
(
a,b,prod
);

input wire signed [7:0] a,b;
output wire signed [7:0] prod;

assign prod=a*b;

endmodule
