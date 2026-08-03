
# SISO (Serial-In Serial-Out) Shift Register

## Overview

This project implements a **4-bit Serial-In Serial-Out (SISO) Shift Register** using Verilog HDL. A SISO shift register accepts one bit of serial data at each rising edge of the clock and shifts the stored data through the register. The output is also provided serially after the required number of clock cycles.

The design was developed and simulated using **Xilinx Vivado 2023.2**.

---

## Features

* 4-bit shift register
* Serial data input
* Serial data output
* Asynchronous active-high reset
* Positive-edge-triggered clock
* Synthesizable RTL design
* Functional verification using a Verilog testbench

---

## Tools Used

* **HDL:** Verilog
* **EDA Tool:** Xilinx Vivado 2023.2
* **Simulation:** Vivado Simulator

---

## File Structure

```text
SISO/
│── rtl/
│   └── siso.v
│
├── testbench/
│   └── siso_tb.v
│
├── waveforms/
│   └── siso_waveform.png
│
├── schematic/
│   └── siso_schematic.png
│
└── README.md
```

---

## Inputs and Outputs

| Signal     | Width | Description                    |
| ---------- | ----: | ------------------------------ |
| clk        |     1 | Clock input                    |
| rst        |     1 | Active-high asynchronous reset |
| serial_in  |     1 | Serial data input              |
| serial_out |     1 | Serial data output             |

---

## Working Principle

1. When `rst` is asserted, all register bits are cleared to `0`.
2. On every rising edge of the clock, the incoming serial bit is shifted into the register.
3. Existing bits move one position toward the output.
4. The most significant bit (MSB) is available at `serial_out`.

---

## Simulation

The design was verified using a Verilog testbench in Vivado.

**Simulation Steps**

1. Create a Vivado RTL project.
2. Add `siso.v` as the design source.
3. Add `siso_tb.v` as the simulation source.
4. Set `siso_tb` as the simulation top module.
5. Run **Behavioral Simulation**.
6. Observe the waveform and verify the shifting operation.

---

## Results

* Successfully shifts one serial bit into the register on each clock cycle.
* Produces the correct serial output after the required number of shifts.
* Reset functionality operates correctly.

---

## Future Improvements

* Parameterize the register width.
* Add a shift enable signal.
* Support left and right shift operations.
* Extend the design into a universal shift register.

---


