🎯4-Bit Adder/Subtractor using Ripple Carry Adders with Enable

This project implements a 4-bit Adder/Subtractor circuit using Ripple Carry Adders (RCA) and logic gates. The design can switch between addition and subtraction based on an enable signal.

⚒️Functionality

When en = 0, the circuit performs A + B (4-bit binary addition).

When en = 1, the circuit performs A – B using 2’s complement logic:

Input B is XORed with en to generate either B (for addition) or B’ (for subtraction).

The carry-in (cin) is set to en to complete the 2’s complement subtraction.

The result is provided on the 4-bit output s with a final carry/borrow flag cout.

🪄Key Features

Efficient reuse of the same RCA for both operations.

Controlled inversion of b enables subtraction without extra logic.

Supports signed results in subtraction.

⚡Verifcation using testbench

Addition Mode (en=0)

a = 1000 (8), b = 0001 (1) → Output s = 1001 (9)

a = 0010 (2), b = 0110 (6) → Output s = 1000 (8)

Subtraction Mode (en=1)

a = 1100 (12), b = 1010 (10) → Output s = 0010 (2)

a = 1000 (8), b = 0001 (1) → Output s = 0111 (7)

a = 1000 (8), b = 1001 (9) → Output s = 1111 (-1) (2’s complement)

a = 1010 (10), b = 1100 (12) → Output s = 1110 (-2) (2’s complement)
