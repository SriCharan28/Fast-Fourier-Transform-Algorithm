This repository contains the Implementation of 8 Point Decimation In Time [DIT] and 8 Point Inverse Decimation In Frequency [IDIF] using Radix-2 Fast Fourier Transform Algorithm [FFT] in Verilog using Cadence Incisive.

The DIT Folder contains the following :-
1. "dit.v" - this file contains the top design code of DIT-FFT, where underlying components like butteryfly diagrams and arithmetic operators are integrated.
2. "dit_tb.v" - this file contains the testbench code of DIT-FFT.
3. "Butterfly Diagrams" - this folder containd the follwing :-
  1. "bfly2.v" - this file contains the design code of buttery diagram for 2-point DIT-FFT stage.
  2. "bfly4_8.v" - this file contains the design code of buttery diagram for 4-point and 8-point DIT-FFT stages.
  3. "Arithmetic Operator" - this folder containd the follwing :-
     1. "adder_3_8.v" - this file contains the design code of adder having operand-1 with 3 bit and operand-2 with 8-bit size.
     2. "adder_8_8.v" - this file contains the design code of adder having both operands of 8-bit size.
     3. "multiplier_3_8.v" - this file contains the design code of multiplier having operand-1 with 3 bit and operand-2 with 8-bit size.
     4. "multiplier_8_8.v" - this file contains the design code of multiplier having both operands of 8-bit size.

The IDIF Folder contains the following :-
1. "idif.v" - this file contains the top design code of IDIF-IFFT, where underlying components like butteryfly diagrams and arithmetic operators are integrated.
2. "idif_tb.v" - this file contains the testbench code of IDIF-IFFT.
3. "Butterfly Diagrams" - this folder containd the follwing :-
  1. "bfly2.v" - this file contains the design code of buttery diagram for 2-point IDIF-IFFT stage.
  2. "bfly4_8.v" - this file contains the design code of buttery diagram for 4-point and 8-point IDIF-IFFT stages.
  3. "Arithmetic Operator" - this folder containd the follwing :-
     1. "adder_3_8.v" - this file contains the design code of adder having operand-1 with 3 bit and operand-2 with 8-bit size, where final result is divided by 2.
     2. "adder_8_8.v" - this file contains the design code of adder having both operands of 8-bit size, where final result is divided by 2.
     3. "multiplier_3_8.v" - this file contains the design code of multiplier having operand-1 with 3 bit and operand-2 with 8-bit size.
     4. "multiplier_8_8.v" - this file contains the design code of multiplier having both operands of 8-bit size.
