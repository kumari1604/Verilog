1-Bit Comparator (Verilog)    --> GATE LEVEL MODELING

📌 Overview

This project implements a 1-bit digital comparator using Verilog.
A comparator is a combinational circuit that compares two binary inputs (a and b) and produces three outputs:

e (equal) → High when a = b

g (greater) → High when a > b

l (less) → High when a < b

⚡ Design Explanation

XNOR gate is used to check equality (a == b).

NOT + AND gates are used to determine greater and less conditions:

g = a · b'

l = a' · b
Thus, the outputs correctly represent the relationship between a and b.


✅ Simulation Results

a	b	  e       	  g 	      l          	Description

1	0	 0	       1	            0	     a > b

0	0	 1         0              0      a = b

1	1	 1	       0	            0	     a = b

0	1	 0	       0	            1	     a < b

🔧 Tools Used

Language: Verilog HDL

Simulator: Vivado 
