
4-bit ripple carry adder implemented in Verilog with testbench
# 4-Bit Ripple Carry Adder — Verilog

A 4-bit binary adder implemented in Verilog using a chain of 
full adder modules. Includes a testbench with 5 test cases 
covering normal addition, carry-out, and overflow.

## How it works
Four 1-bit full adders are chained together. The carry-out of 
each feeds into the carry-in of the next exactly like 
carrying a 1 in long addition by hand.

Each full adder computes:
- sum  = A XOR B XOR Cin
- cout = (A AND B) OR (B AND Cin) OR (A AND Cin)

## Files
- src/full_adder.v — single-bit full adder module
- src/adder_4bit.v — 4-bit adder chaining four full adders
- tb/tb_adder_4bit.v — testbench with 5 test cases

## Simulate it
Run in EDA Playground no install needed:
[Open simulation](https://www.edaplayground.com/x/e9yj)

## Test results
| A  | B  | Cin | Sum | Cout |
|----|----|-----|-----|------|
| 3  | 5  | 0   | 8   | 0    |
| 7  | 7  | 0   | 14  | 0    |
| 15 | 1  | 0   | 0   | 1    |
| 0  | 0  | 1   | 1   | 0    |
| 9  | 6  | 0   | 15  | 0    |
