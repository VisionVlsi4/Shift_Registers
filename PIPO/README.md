
# PIPO (Parallel-In Parallel-Out) Shift Register

## Overview

This project implements a **4-bit Parallel-In Parallel-Out (PIPO) Shift Register** using Verilog HDL. A PIPO register loads all input bits simultaneously on the rising edge of the clock and makes them available simultaneously at the output. Unlike other shift registers, a PIPO register does not perform any shifting operation; it is primarily used for temporary data storage and synchronization in digital systems.

The design was developed and simulated using **Xilinx Vivado 2023.2**.

---

## Features

* 4-bit parallel data input
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
PIPO/
│── rtl/
│   └── pipo.v
│
├── testbench/
│   └── pipo_tb.v
│
├── waveforms/
│   └── pipo_waveform.png
│
├── schematic/
│   └── pipo_schematic.png
│
└── README.md
```

---

## Inputs and Outputs

| Signal       | Width | Description                    |
| ------------ | ----: | ------------------------------ |
| clk          |     1 | Clock input                    |
| rst          |     1 | Active-high asynchronous reset |
| parallel_in  |     4 | Parallel data input            |
| parallel_out |     4 | Parallel data output           |

---

## Working Principle

1. When `rst` is asserted, all output bits are cleared to `0`.
2. On every rising edge of the clock, the 4-bit input data is loaded into the register simultaneously.
3. The stored data is immediately available at the 4-bit parallel output.
4. The output retains its value until new data is loaded or the register is reset.

---

## Simulation

The design was verified using a Verilog testbench in Vivado.

### Simulation Steps

1. Create a Vivado RTL project.
2. Add `pipo.v` as the design source.
3. Add `pipo_tb.v` as the simulation source.
4. Set `pipo_tb` as the simulation top module.
5. Run **Behavioral Simulation**.
6. Observe the waveform and verify that the output follows the input on each rising clock edge.

---

## Results

* Successfully loads 4-bit parallel data on every rising edge of the clock.
* Parallel output accurately reflects the input data.
* Reset operation clears the register correctly.
* Simulation results match the expected behavior of a PIPO register.

---

## Applications

* Temporary data storage
* CPU register implementation
* Pipeline registers
* Buffer registers
* Digital signal processing
* FPGA and ASIC designs

---

## Future Improvements

* Make the register width configurable using parameters.
* Add a load enable signal.
* Implement synchronous reset.
* Extend the design into a register file with multiple registers.

---


