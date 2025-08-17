🎯4-Bit Binary Subtractor

📌 Overview

This project implements a 4-bit Binary Subtractor in Verilog using two 4-bit Ripple Carry Adders (RCAs) and basic gates.
The design performs subtraction by using the 2’s complement method, followed by an adjustment stage to correctly handle borrows and produce signed results.

⚙️ Functionality

The bits of B are inverted and added to A with an initial carry-in (1) → equivalent to computing A – B.

The first RCA produces a partial difference along with an intermediate carry.

The carry is inverted and XORed with the partial sum to generate the corrected result.

A second RCA finalizes the difference output (s) and outputs the borrow flag (cout).

↪️Test Cases Applied

a=1001 (9), b=1000 (8) → Result s=0001 (1)

a=1111 (15), b=1111 (15) → Result s=0000 (0)

a=1000 (8), b=1001 (9) → Result s=1111 (-1)

a=1010 (10), b=0110 (6) → Result s=0100 (4)

a=0110 (6), b=1000 (8) → Result s=1110 (-2)

🖼️ Simulation Results

Schematic: Shows two RCAs connected with NOT and XOR gates to perform subtraction.

Waveform: Demonstrates correct outputs for both positive and negative subtraction cases.
