4-to-2 Priority Encoder using Verilog

Introduction

A priority encoder is a combinational logic circuit that converts multiple input lines into a smaller binary code. If more than one input is HIGH, the input with the highest priority is encoded.

This project implements a 4-to-2 priority encoder using Verilog HDL.

Features

- 4 input lines: "D[3:0]"
- 2 output lines: "Y[1:0]"
- "D3" has the highest priority
- "D0" has the lowest priority
- Valid output indicates whether any input is HIGH
- Includes a Verilog testbench for simulation

Truth Table

D3| D2| D1| D0| Y1| Y0| Valid
0| 0| 0| 0| 0| 0| 0
0| 0| 0| 1| 0| 0| 1
0| 0| 1| X| 0| 1| 1
0| 1| X| X| 1| 0| 1
1| X| X| X| 1| 1| 1

"X" means the input can be either 0 or 1 because it has lower priority.

Priority Order

D3 > D2 > D1 > D0

If "D3 = 1", the output is always "11", regardless of the other inputs.

Files

- "priority_encoder.v" – Main Verilog design
- "priority_encoder_tb.v" – Testbench
- "simulation.txt" – Expected simulation results

Tools

This project can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- Vivado

Author

Verilog HDL Mini Project – 4-to-2 Priority Encoder
author: Harshitha 