module bfly2
(
xr0,xr1,xi0,xi1,
wr0,wi0,
yr0,yr1,yi0,yi1
);


input wire signed [2:0] xr0,xr1,	//Real part of input
			xi0,xi1;	//Imaginary part of input
	
input wire signed [7:0] wr0,	        //Real part of twiddle factor
			wi0;		//Imaginary part of twiddle factor 

output wire signed [7:0] yr0,yr1,	//Real part of output
			 yi0,yi1;	//Imaginary part of output

wire signed [7:0] pr0,pr1;   		//Real part of product

wire signed [7:0] pi0,pi1;		//Imaginary part of product

wire signed [7:0] si0,			//Imaginary part of sum
		  sr0;			//real part of sum

//wire signed [7:0] p,q;

/*
input wire [2:0] xr0,xr1,	//Real part of input
		 xi0,xi1;	//Imaginary part of input
	
input wire [7:0] wr0,	        //Real part of twiddle factor
		 wi0;		//Imaginary part of twiddle factor 

output wire [7:0] yr0,yr1,	//Real part of output
		  yi0,yi1;	//Imaginary part of output

wire [7:0] pr0,pr1;   		//Real part of product

wire [7:0] pi0,pi1;		//Imaginary part of product

wire [7:0] si0,			//Imaginary part of sum
	   sr0;			//real part of sum

wire [7:0] p,q;
*/

/*
assign pi0=wi0*xr1; 	//imaginary
assign pi1=wr0*xi1; 	//imaginary
assign pr0=wr0*xr1; 	//real
assign pr1=-wi0*xi1;	//real


assign si0=pi0+pi1; 	//imaginary
assign sr0=pr0+pr1; 	//real

assign yr0=xr0+sr0; 	//real
assign yi0=xi0+si0; 	//imaginary

assign yr1=xr0-sr0; 	//real
assign yi1=xi0-si0;  	//imaginary
*/

multiplier_3_8 m381(xr1,wi0,pi0);	//imaginary
multiplier_3_8 m382(xi1,wr0,pi1);	//imaginary
multiplier_3_8 m383(xr1,wr0,pr0);	//real
multiplier_3_8 m384(xi1,-wi0,pr1);	//real

adder_8_8 a881(pi0,pi1,si0);	//imaginary
adder_8_8 a882(pr0,pr1,sr0); 	//real

adder_3_8 a381(xr0,sr0,yr0);	//real
adder_3_8 a382(xi0,si0,yi0);	//imaginary

adder_3_8 a383(xr0,-sr0,yr1);	//real
adder_3_8 a384(xi0,-si0,yi1);	//imaginary

/*
sign_adder_4_8 s481(pi0,pi1,si0); //imaginary
sign_adder_4_8 s482(pr0,pr1,sr0); //real

sign_adder_2 s21(xi0,si0,yi0); //imaginary
sign_adder_2 s22(xr0,sr0,yr0); //real

assign p=-si0;
assign q=-sr0;

sign_adder_2 s23(xi0,p,yi1); //imaginary
sign_adder_2 s24(xr0,q,yr1); //real
*/

endmodule

