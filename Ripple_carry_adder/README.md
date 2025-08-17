🎯4-Bit Ripple Carry Adder

📌 Overview

This project implements a 4-bit Ripple Carry Adder (RCA) in Verilog using four Full Adders connected in series.
Each Full Adder handles one bit of addition and passes its carry to the next stage.
This design highlights hierarchical modeling and carry propagation in adders

⚙️ Functionality

The 4-bit RCA adds two 4-bit binary numbers and an optional carry-in.
Each stage computes a sum bit and generates a carry for the next stage.
The final outputs are a 4-bit Sum and a single-bit Carry-out.


🔍 Example Simulation Outputs

Input: A=0001, B=0001, Cin=0 → Output: Sum=0010, Cout=0

Input: A=0010, B=0001, Cin=0 → Output: Sum=0011, Cout=0

Input: A=1000, B=0000, Cin=0 → Output: Sum=1000, Cout=0

🖼️ Simulation Results

Logic Schematic: Shows four Full Adders connected in series with carry signals rippling through.

Waveform Output: Validates correct 4-bit addition and carry propagation for different test cases.
