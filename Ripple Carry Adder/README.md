# 4-Bit Ripple Carry Adder (Hierarchical Design)

### Project Overview
This project implements a 4-bit Ripple Carry Adder (RCA) using a hierarchical structural modeling approach in Verilog. The design demonstrates the use of sub-module instantiation, where a top-level module coordinates four 1-bit Full Adders to perform multi-bit binary arithmetic.

---

### Repository Structure
* **src/**: `ripple_adder.v` (Contains both the `ripple_adder` and `full_adder` modules).
* **tb/**: `tb_ripple_adder.v` (Testbench for functional verification).

---

### Hardware Architecture
The design utilizes a 5-bit internal `carry` wire to "ripple" the carry-out of each bit to the carry-in of the next significant bit.

**Logic Mapping:**
- **Bit 0:** `full_adder d0` (Inputs: a[0], b[0], cin)
- **Bit 1:** `full_adder d1` (Inputs: a[1], b[1], carry from d0)
- **Bit 2:** `full_adder d2` (Inputs: a[2], b[2], carry from d1)
- **Bit 3:** `full_adder d3` (Inputs: a[3], b[3], carry from d2)

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Structural / Hierarchical
* **EDA Tool:** Xilinx Vivado

### Verification
Verification was performed by simulating various 4-bit additions to ensure the carry-out correctly ripples through all stages, especially during overflow conditions (e.g., $1111 + 0001$).

* **RTL Schematic:**
The schematic shows the chain of four `full_adder` blocks connected via the carry path.
![Schematic](./docs/ripple_adder_rtl.png)
