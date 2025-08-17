 🎯Full Adder
 📌 Overview

This project implements a Full Adder in Verilog by combining two Half Adders and an OR gate.

Inputs: A, B, Cin (carry-in)

Outputs: Sum, Carry (carry-out)

Design method: Gate-level modeling and Module instantiation

A Full Adder extends the functionality of a Half Adder by including a carry input, making it a key building block for arithmetic circuits such as adders and ALUs.

⚙️ Functionality

The Full Adder adds three 1-bit inputs (A, B, Cin) and produces a Sum and a Carry.
It is built using two Half Adders and an OR gate.
The Sum is high when an odd number of inputs are 1, while the Carry is high when at least two inputs are 1.

🖼️ Simulation Results

Logic Schematic:
Represents the Full Adder constructed from two Half Adders and one OR gate.

Waveform Output:
Confirms correct functionality for all 8 input combinations.

Sum output follows binary addition rules

Carry output is correctly generated when needed
