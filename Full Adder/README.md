# Full Adder: Structural Gate-Level Implementation

### Project Overview
This project implements a 1-bit Full Adder using **Structural Modeling** in Verilog. Instead of using high-level operators, this design explicitly instantiates logic gates (`xor`, `and`, `or`) to mirror the physical hardware architecture. This approach demonstrates a deep understanding of how binary addition is synthesized at the gate level.

---

### Repository Structure
* **src/**: Contains `full_adder.v` (Structural gate-level design).
* **tb/**: Contains the testbench for functional verification.

---

### Hardware Logic Design
The module is designed using the following internal gate connections:
- **XOR (x1):** Generates intermediate sum ($s1$) from inputs $A$ and $B$.
- **AND (a1):** Generates intermediate carry ($s2$) from $A$ and $B$.
- **XOR (x2):** Generates final **Sum** from $C_{in}$ and $s1$.
- **AND (a2):** Generates intermediate carry ($s3$) from $s1$ and $C_{in}$.
- **OR (c0):** Combines $s2$ and $s3$ to produce the final **Carry-out** ($C_{out}$).



### Truth Table
| A | B | Cin | Sum (S) | Carry-out (Cout) |
|---|---|:---:|:---:|:---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Structural / Gate-Level Modeling
* **EDA Tool:** Xilinx Vivado

### Verification
The design was verified through behavioral simulation to confirm that the structural gate connections produce the correct arithmetic results.
