```markdown
# 2-to-1 Multiplexer (mux_2_1)

## Overview

This module implements a 2-to-1 combinational multiplexer. It selects one of two 1-bit input data channels (`CH0` or `CH1`) to be passed to the output `Out`, based on the value of a single select line (`Sel`).

## Ports

| Name  | Direction | Width (Bits) | Description                 |
| :---- | :-------: | :----------: | :-------------------------- |
| `CH0`   |   Input   |      1       | Input data channel 0.       |
| `CH1`   |   Input   |      1       | Input data channel 1.       |
| `Sel` |   Input   |      1       | Select line.                |
| `Out`   |  Output   |      1       | Selected output.            |

## Truth Table

| `Sel` | `Out` (Output) |
| :---: | :----------: |
|   0   |      `a`     |
|   1   |      `b`     |

## Verilog Instantiation

```verilog
module mux_2_1 (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);