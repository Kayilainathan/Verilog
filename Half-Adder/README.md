# Half Adder Implementation

### Project Overview
This project involves the design and verification of a **Half Adder** circuit using Verilog HDL. A Half Adder is a basic combinational circuit that performs binary addition on two 1-bit inputs, producing a Sum and a Carry.

---

### Repository Structure
* **src/**: Contains the synthesizable Verilog source code for the Half Adder.
* **tb/**: Contains the testbench for functional verification.

---

### Logic Specifications
The Half Adder logic is defined by the following boolean equations:
- **Sum (S)** = A ⊕ B (XOR Gate)
- **Carry (C)** = A ⋅ B (AND Gate)

| A | B | Sum (S) | Carry (C) |
|---|---|:---:|:---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |



[Image of Half Adder logic diagram and truth table]


---

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Dataflow modeling using continuous assignment (`assign` statements).
* **Tools:** Xilinx Vivado for design and simulation.

### Verification Results
I verified the design by simulating all four possible input combinations to ensure the Sum and Carry outputs match the truth table.
