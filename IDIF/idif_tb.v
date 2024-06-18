module idif_tb;

reg clk,rst;

reg [7:0] xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,//Real part of input

	  xi0,xi1,xi2,xi3,xi4,xi5,xi6,xi7;//Imaginary part of input

/*
reg [7:0] wr20,wi20,
          wr40,wi40,
          wr41,wi41,
	  wr80,wi80,
	  wr81,wi81,
          wr82,wi82,
  	  wr83,wi83;
*/

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


/*
idif dut
(
clk,rst,
xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,
xi0,xi1,xi2,xi3,xi4,xi5,xi6,xi7,
wr20,wi20,
wr40,wi40,
wr41,wi41,
wr80,wi80,
wr81,wi81,
wr82,wi82,
wr83,wi83,
sel,
yr,yi
);
*/

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
/*
initial 

begin

wr20=1;	//real
wi20=0;	//imaginary

wr40=1;  //real
wi40=0;  //imaginary

wr41=0;           //real
wi41=+1;		//imaginary

wr80=1;  //real
wi80=0;  //imaginary

wr81=0.707;      //real
wi81=+0.707;	//imaginary

wr82=0;		//real
wi82=+1;		//imaginary


wr83=-0.707;	//real
wi83=0.707;	//imaginary


end
*/


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

//initial 

//begin

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
//$finish;
//end
//endmodule

//initial 

//begin


for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=125;
xi0=125;
xr1=125;
xi1=125;
xr2=125;
xi2=125;
xr3=125;
xi3=125;
xr4=125;
xi4=125;
xr5=125;
xi5=125;
xr6=125;
xi6=125;
xr7=125;
xi7=125;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=127;
xi0=-127;
xr1=127;
xi1=127;
xr2=127;
xi2=-127;
xr3=127;
xi3=127;
xr4=127;
xi4=-127;
xr5=127;
xi5=-127;
xr6=127;
xi6=127;
xr7=127;
xi7=-127;
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

//initial 

//begin


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
//$finish;
//end
//endmodule

//initial 

//begin

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=125;
xi0=126;
xr1=125;
xi1=125;
xr2=125;
xi2=125;
xr3=125;
xi3=125;
xr4=125;
xi4=126;
xr5=125;
xi5=125;
xr6=125;
xi6=125;
xr7=125;
xi7=125;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=125;
xi0=-126;
xr1=125;
xi1=128;
xr2=125;
xi2=125;
xr3=125;
xi3=125;
xr4=125;
xi4=125;
xr5=125;
xi5=125;
xr6=125;
xi6=125;
xr7=125;
xi7=125;
#20;
end
for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=127;
xi0=126;
xr1=127;
xi1=126;
xr2=127;
xi2=127;
xr3=127;
xi3=126;
xr4=127;
xi4=126;
xr5=127;
xi5=-127;
xr6=127;
xi6=127;
xr7=127;
xi7=-127;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=0;
sel=i;
xr0=128;
xi0=128;
xr1=128;
xi1=128;
xr2=128;
xi2=128;
xr3=128;
xi3=128;
xr4=128;
xi4=128;
xr5=128;
xi5=128;
xr6=128;
xi6=128;
xr7=128;
xi7=128;
#20;
end

for(i=0;i<8;i=i+1)
begin
rst=1;
sel=i;
xr0=0;
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
$finish;
end
endmodule







