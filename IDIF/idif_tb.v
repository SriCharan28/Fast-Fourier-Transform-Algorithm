module idif_tb;

reg clk,rst;

reg [7:0] xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,//Real part of input

	  xi0,xi1,xi2,xi3,xi4,xi5,xi6,xi7;//Imaginary part of input


//Twiddle Factors
localparam [7:0] wr20=1; //real
localparam [7:0] wi20=0; //imaginary


localparam [7:0] wr40=1; //real
localparam [7:0] wi40=0; //imaginary

localparam [7:0] wr41=0;  //real
localparam [7:0] wi41=1; //imaginary


localparam [7:0] wr80=1; //real
localparam [7:0] wi80=0; //imaginary     

localparam [7:0] wr81=0.707;   //real
localparam [7:0] wi81=0.707; //imaginary

localparam [7:0] wr82=0;      //real
localparam [7:0] wi82=1;     //imaginary

localparam [7:0] wr83=-0.707; //real
localparam [7:0] wi83=0.707; //imaginary

reg [2:0] sel;

wire [7:0] yr,yi;

integer i;

idif dut
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


initial 
begin
//{10,-2+2j,-2,-2-2j,10,-2+2j,-2,-2-2j}
for(i=0;i<8;i=i+1)
begin
rst=1;
sel=i;
xr0=10;
xi0=0;
xr1=-2;
xi1=2;
xr2=-2;
xi2=0;
xr3=-2;
xi3=-2;
xr4=10;
xi4=0;
xr5=-2;
xi5=+2;
xr6=-2;
xi6=0;
xr7=-2;
xi7=-2;
#20;

end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=10;
xi0=0;
xr1=-2;
xi1=2;
xr2=-2;
xi2=0;
xr3=-2;
xi3=-2;
xr4=10;
xi4=0;
xr5=-2;
xi5=+2;
xr6=-2;
xi6=0;
xr7=-2;
xi7=-2;
#20;
end
//OUTPUT {1,0,2,0,3,0,4,0}

//{8,0,0,0,0,0,0,0}
for(i=0;i<8;i=i+1)
begin
rst=1;
sel=i;
xr0=8;
xi0=0;
xr1=0;
xi1=0;
xr2=0;
xi2=0;
xr3=0;
xi3=0;
xr4=0;
xi4=0;
xr5=0;
xi5=0;
xr6=0;
xi6=0;
xr7=0;
xi7=0;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=8;
xi0=0;
xr1=0;
xi1=0;
xr2=0;
xi2=0;
xr3=0;
xi3=0;
xr4=0;
xi4=0;
xr5=0;
xi5=0;
xr6=0;
xi6=0;
xr7=0;
xi7=0;
#20;
end
//OUTPUT {1,1,1,1,1,1,1,1,1}

//{0,2+2j,0-4j,2-2j,0,2+2j,0+4j,2-2j}
for(i=0;i<8;i=i+1)
begin
rst=1;
sel=i;
xr0=0;
xi0=0;
xr1=2;
xi1=2;
xr2=0;
xi2=-4;
xr3=2;
xi3=-2;
xr4=0;
xi4=0;
xr5=2;
xi5=2;
xr6=0;
xi6=4;
xr7=2;
xi7=-2;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=0;
xi0=0;
xr1=2;
xi1=2;
xr2=0;
xi2=-4;
xr3=2;
xi3=-2;
xr4=0;
xi4=0;
xr5=2;
xi5=2;
xr6=0;
xi6=4;
xr7=2;
xi7=-2;
#20;
//OUTPUT {1,1,-1,-1,-1,1,1,-1}
end

//{8,0,0,0,8,0,0,0}
for(i=0;i<8;i=i+1)
begin

rst=1;
sel=i;
xr0=8;
xi0=0;
xr1=0;
xi1=0;
xr2=0;
xi2=0;
xr3=0;
xi3=0;
xr4=8;
xi4=0;
xr5=0;
xi5=0;
xr6=0;
xi6=0;
xr7=0;
xi7=0;
#20;

end

for(i=0;i<8;i=i+1)
begin

rst=0;
sel=i;
xr0=8;
xi0=0;
xr1=0;
xi1=0;
xr2=0;
xi2=0;
xr3=0;
xi3=0;
xr4=8;
xi4=0;
xr5=0;
xi5=0;
xr6=0;
xi6=0;
xr7=0;
xi7=0;
#20;
end

//Output {2,0,2,0,2,0,2,0}
$finish;
end
endmodule








