# Basic Logic Gates: AND and OR Implementation

### Project Overview
This project demonstrates the implementation of fundamental combinational logic gates using Verilog HDL. This serves as the foundation for complex digital systems, focusing on the basic behavior and RTL synthesis of AND and OR logic.

---

### Logic Specifications

#### 1. AND Gate
* **Function:** Output is HIGH only if all inputs are HIGH.
* **Verilog Operator:** `&`

| A | B | Output |
|---|---|:---:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |



[Image of AND gate logic symbol and truth table]


#### 2. OR Gate
* **Function:** Output is HIGH if at least one input is HIGH.
* **Verilog Operator:** `|`

| A | B | Output |
|---|---|:---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |



---

### Implementation Details
* **Hardware Description Language:** Verilog HDL
* **Modeling Style:** Dataflow modeling using continuous assignment (`assign` statements).
* **Software Tool:** Xilinx Vivado

### Verification Results
The design was verified using a testbench to simulate all possible input combinations. 
