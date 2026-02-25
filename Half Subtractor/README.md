# Half Subtractor Implementation

### Project Overview
This project involves the design and verification of a **Half Subtractor** circuit using Verilog HDL. A Half Subtractor is a combinational logic circuit that performs subtraction on two 1-bit inputs, producing a **Difference (D)** and a **Borrow (Bout)**.

---

### Repository Structure
* **src/**: Synthesizable Verilog design files.
* **tb/**: Testbench for functional verification across all input combinations.

---

### Logic Specifications
The Half Subtractor logic is governed by the following boolean equations:
- **Difference (D)** = A ⊕ B
- **Borrow (Bout)** = A' ⋅ B



| A | B | Difference (D) | Borrow (Bout) |
|---|---|:---:|:---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

---

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Dataflow modeling using continuous assignments.
* **EDA Tool:** Xilinx Vivado

### Verification Results
The design was verified through behavioral simulation to confirm the borrow-in logic, specifically focusing on the case where $A < B$.
