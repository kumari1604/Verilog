🎯4-Bit Ripple Carry Adder

📌 Overview

This project implements a 4-bit Ripple Carry Adder (RCA) in Verilog using four Full Adders connected in series.
Each Full Adder handles one bit of addition and passes its carry to the next stage.
This design highlights hierarchical modeling and carry propagation in adders

⚙️ Functionality

The 4-bit RCA adds two 4-bit binary numbers and an optional carry-in.
Each stage computes a sum bit and generates a carry for the next stage.
The final outputs are a 4-bit Sum and a single-bit Carry-out.
✅ Example Truth Table (Partial)
A (4-bit)	B (4-bit)	Cin	Sum (4-bit)	Cout
0000	0000	0	0000	0
0101	0011	0	1000	0
1111	0001	0	0000  1

🖼️ Simulation Results

Logic Schematic: Shows four Full Adders connected in series with carry signals rippling through.

Waveform Output: Validates correct 4-bit addition and carry propagation for different test cases.
