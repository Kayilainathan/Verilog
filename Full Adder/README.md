# Full Adder Implementation

### Project Overview
This project involves the design and verification of a **Full Adder** circuit using Verilog HDL. Unlike a Half Adder, a Full Adder can handle a carry-in ($C_{in}$) from a previous stage, making it the essential building block for multi-bit ripple-carry adders and ALUs.

---

### Repository Structure
* **src/**: Contains the synthesizable Verilog source code for the Full Adder.
* **tb/**: Contains the testbench for functional verification across all 8 input combinations.

---

### Logic Specifications
The Full Adder logic is implemented based on the following boolean equations:
- **Sum (S)** = A ⊕ B ⊕ $C_{in}$
- **Carry-out ($C_{out}$)** = (A ⋅ B) + ($C_{in}$ ⋅ (A ⊕ B))

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



[Image of Full Adder logic diagram and truth table]


---

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Behavioral modeling using `assign` statements or structural modeling using Half Adder components.
* **Tools:** Designed and simulated in **Xilinx Vivado**.

### Verification Results
I verified the design by simulating all 8 possible input combinations (000 to 111) to ensure the Sum and Carry-out outputs match the mathematical truth table.
