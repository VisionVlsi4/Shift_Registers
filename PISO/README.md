
# PISO (Parallel-In Serial-Out) Shift Register

## Overview

This project implements a **4-bit Parallel-In Serial-Out (PISO) Shift Register** using Verilog HDL. A PISO shift register loads all input bits simultaneously and then shifts them out one bit at a time on each rising edge of the clock. This type of register is commonly used to convert parallel data into serial data for transmission.

The design is implemented in **Verilog HDL** and verified using **Xilinx Vivado 2023.2**.

---

## Features

* 4-bit parallel data input
* Serial data output
* Parallel load control (`load`)
* Positive-edge-triggered operation
* Active-high asynchronous reset
* Synthesizable RTL design
* Functional verification using a Verilog testbench

---

## Tools Used

* **HDL:** Verilog HDL
* **EDA Tool:** Xilinx Vivado 2023.2
* **Simulator:** Vivado Simulator

---

## Directory Structure

```text
PISO/
├── rtl/
│   └── piso.v
├── testbench/
│   └── piso_tb.v
├── waveforms/
│   └── piso_waveform.png
├── schematic/
│   └── piso_schematic.png
└── README.md
```

---

## Inputs and Outputs

| Signal        | Width | Description                    |
| ------------- | :---: | ------------------------------ |
| `clk`         |   1   | Clock input                    |
| `rst`         |   1   | Active-high asynchronous reset |
| `load`        |   1   | Parallel load enable           |
| `parallel_in` |   4   | 4-bit parallel input           |
| `serial_out`  |   1   | Serial data output             |

---

## Working

* When `rst` is asserted, the shift register is cleared to `0000`.
* When `load = 1`, the 4-bit input (`parallel_in`) is loaded into the register.
* When `load = 0`, the register shifts one bit on each rising edge of the clock.
* The most significant bit (MSB) is available at `serial_out` and is shifted out serially.

---

## Simulation Procedure

1. Create a new RTL project in Vivado.
2. Add `piso.v` as the design source.
3. Add `piso_tb.v` as the simulation source.
4. Set `piso_tb` as the simulation top module.
5. Run **Behavioral Simulation**.
6. Verify that:

   * Data is loaded when `load = 1`.
   * Data is shifted out serially when `load = 0`.
   * Reset clears the register correctly.

---

## Simulation Result

The simulation confirms that:

* Parallel data is loaded successfully into the shift register.
* Serial output is generated correctly after loading.
* Reset operation clears the register.
* The design behaves as expected for all test cases.

---

## Applications

* Parallel-to-serial data conversion
* Serial communication interfaces
* UART and SPI data transmission
* Digital communication systems
* FPGA and ASIC designs
* Embedded systems

---

## Future Enhancements

* Parameterize the register width.
* Add left and right shift modes.
* Implement a shift enable signal.
* Extend the design into a universal shift register.
* Support configurable shift direction.

---

