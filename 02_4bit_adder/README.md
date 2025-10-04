# Module 02: 4-Bit Ripple-Carry Adder

A combinational circuit that adds two 4-bit numbers. This module is designed structurally by cascading four instances of the previously verified 1-bit Full Adder.

## 1. Overview

This module implements a 4-bit ripple-carry adder, a fundamental component in digital computer arithmetic. It takes two 4-bit operands (`a` and `b`) and a 1-bit carry-in (`cin`) to produce a 4-bit sum (`s`) and a 1-bit final carry-out (`cout`). Its purpose is to serve as the core arithmetic component for the project's future Arithmetic Logic Unit (ALU).

## 2. Ports

| Name     | Direction | Width (Bits) | Description                                         |
| :------- | :-------: | :----------: | :-------------------------------------------------- |
| `a`      |   Input   |      4       | First 4-bit input operand                           |
| `b`      |   Input   |      4       | Second 4-bit input operand                          |
| `cin`    |   Input   |      1       | Initial carry-in bit                                |
| `s`      |  Output   |      4       | 4-bit sum output vector                             |
| `cout`   |  Output   |      1       | Final carry-out bit                                 |

## 3. Verification

The functionality of the adder was verified using a self-checking testbench (`adder_4_bit_tb.v`). The simulation was performed using Icarus Verilog and the waveforms were visualized with GTKWave.

To run the simulation, execute the following commands from the root directory of the project:

```bash
# Compile the design, its dependencies, and the testbench
iverilog -o adder_4_bit_sim full_adder.v adder_4_bit.v adder_4_bit_tb.v

# Run the simulation
vvp adder_4_bit_sim
