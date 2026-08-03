
# SIPO (Serial-In Parallel-Out) Shift Register

## Overview

This project implements a **4-bit Serial-In Parallel-Out (SIPO) Shift Register** using Verilog HDL. A SIPO shift register receives data serially, one bit at a time, and after successive clock cycles, the data is available simultaneously at the parallel output.

The design was developed and simulated using **Xilinx Vivado 2023.2**.

---

## Features

* 4-bit shift register
* Serial data input
* 4-bit parallel data output
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
SIPO/
│── rtl/
│   └── sipo.v
│
├── testbench/
│   └── sipo_tb.v
│
├── waveforms/
│   └── sipo_waveform.png
│
├── schematic/
│   └── sipo_schematic.png
│
└── README.md
```

---

## Inputs and Outputs

| Signal       | Width | Description                    |
| ------------ | ----: | ------------------------------ |
| clk          |     1 | Clock input                    |
| rst          |     1 | Active-high asynchronous reset |
| serial_in    |     1 | Serial data input              |
| parallel_out |     4 | Parallel data output           |

---

## Working Principle

1. When `rst` is asserted, all register bits are cleared to `0`.
2. On every rising edge of the clock, the incoming serial bit is shifted into the register.
3. Previously stored bits shift one position.
4. After four clock cycles, the complete 4-bit data is available at the `parallel_out` output.

---

## Simulation

The design was verified using a Verilog testbench in Vivado.

### Simulation Steps

1. Create a Vivado RTL project.
2. Add `sipo.v` as the design source.
3. Add `sipo_tb.v` as the simulation source.
4. Set `sipo_tb` as the simulation top module.
5. Run **Behavioral Simulation**.
6. Observe the waveform and verify the serial-to-parallel conversion.

---

## Results

* Successfully shifts serial input data into the register.
* Generates the correct 4-bit parallel output after four clock cycles.
* Reset functionality clears the register correctly.
* Simulation results match the expected SIPO shift register behavior.

---

## Applications

* Serial communication interfaces
* Data acquisition systems
* Serial-to-parallel data conversion
* Embedded systems
* Digital communication systems

---

## Future Improvements

* Make the register width configurable using a parameter.
* Add a shift enable signal.
* Support bidirectional shifting.
* Extend the design to a universal shift register.

---


