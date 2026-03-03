# 4-Bit Carry Look-Ahead Adder (CLA)

### Project Overview
This project implements a **4-Bit Carry Look-Ahead Adder (CLA)** in Verilog. Unlike the Ripple Carry Adder (RCA), where the carry must "ripple" through each stage, the CLA uses look-ahead logic to calculate carries in parallel. This significantly reduces propagation delay and increases the speed of arithmetic operations.

---

### Repository Structure
* **src/**: 
     `cla.v`: Top-level module and Look-Ahead Carry Unit (LCU).
* **tb/**: `tb_cla.v`: Comprehensive testbench for timing and functional verification.

---

### Design Logic
The CLA works by defining two signals for each bit:
1. **Generate ($G_i$):** $A_i \cdot B_i$ (A carry is generated at this stage).
2. **Propagate ($P_i$):** $A_i \oplus B_i$ (A carry from the previous stage is passed through).



**Carry Equations:**
- $C_1 = G_0 + P_0C_{in}$
- $C_2 = G_1 + P_1G_0 + P_1P_0C_{in}$
- $C_3 = G_2 + P_2G_1 + P_2P_1G_0 + P_2P_1P_0C_{in}$
- $C_4 = G_3 + P_3G_2 + P_3P_2G_1 + P_3P_2P_1G_0 + P_3P_2P_1P_0C_{in}$

---

### Implementation Details
* **HDL:** Verilog HDL
* **Modeling Style:** Structural (Higher-level logic for carries, Gate-level for bits).
* **EDA Tool:** Xilinx Vivado

### Verification Results
The design was verified to ensure that the carry output $C_4$ is generated nearly simultaneously with the sum bits, demonstrating the speed advantage over an RCA.
