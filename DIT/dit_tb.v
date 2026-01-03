module dit_tb;

reg clk,rst;

reg [2:0] xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,//Real part of input

	  xi0,xi1,xi2,xi3,xi4,xi5,xi6,xi7;//Imaginary part of input


//Twiddle Factors
localparam [7:0] wr20=1; //real
localparam [7:0] wi20=0; //imaginary


localparam [7:0] wr40=1; //real
localparam [7:0] wi40=0; //imaginary

localparam [7:0] wr41=0;  //real
localparam [7:0] wi41=-1; //imaginary


localparam [7:0] wr80=1; //real
localparam [7:0] wi80=0; //imaginary     

localparam [7:0] wr81=0.707;   //real
localparam [7:0] wi81=-0.707; //imaginary

localparam [7:0] wr82=0;      //real
localparam [7:0] wi82=-1;     //imaginary

localparam [7:0] wr83=-0.707; //real
localparam [7:0] wi83=-0.707; //imaginary

reg [2:0] sel;

wire [7:0] yr,yi;

integer i;


dit dut
(
clk,rst,
xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,
xi0,xi1,xi2,xi3,xi4,xi5,xi6,xi7,
sel,
yr,yi
);


initial 
	begin
	clk=1;
	end

always
   begin
      #5 clk = ~clk;
   end


//{1,0,1,0,1,0,1,0}
initial begin
for(i=0;i<8;i=i+1)
begin
rst=1;
sel=i;
xr0=1;
xi0=0;
xr1=0;
xi1=0;
xr2=1;
xi2=0;
xr3=0;
xi3=0;
xr4=1;
xi4=0;
xr5=0;
xi5=0;
xr6=1;
xi6=0;
xr7=0;
xi7=0;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=1;
xi0=0;
xr1=0;
xi1=0;
xr2=1;
xi2=0;
xr3=0;
xi3=0;
xr4=1;
xi4=0;
xr5=0;
xi5=0;
xr6=1;
xi6=0;
xr7=0;
xi7=0;
#20;
end

{4,0,0,0,4,0,0,0}
$finish;
end
endmodule
