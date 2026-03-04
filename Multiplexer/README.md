# Digital Logic Design: 2:1, 4:1, and 8:1 Multiplexers

This repository contains the design, logic verification, and implementation of standard Multiplexers (MUX). These circuits are essential for data routing and signal switching in digital systems.

---

## 🛠 Tools Used

* **Design & Simulation:** Xilinx Vivado
* **Hardware Description Language:** Verilog HDL

---

## 1. 2-to-1 Multiplexer (2:1 MUX)
The 2:1 MUX selects one of two data inputs ($I_0, I_1$) based on a single select line ($S$).



### Truth Table
| Select ($S$) | Output ($Y$) |
| :---: | :---: |
| 0 | $I_0$ |
| 1 | $I_1$ |

### Boolean Equation
$$Y = (I_0 \cdot \bar{S}) + (I_1 \cdot S)$$

---

## 2. 4-to-1 Multiplexer (4:1 MUX)
The 4:1 MUX uses two select lines ($S_1, S_0$) to route one of four data inputs to the output.



[Image of 4:1 Multiplexer block diagram]


### Truth Table
| $S_1$ | $S_0$ | Output ($Y$) |
| :---: | :---: | :---: |
| 0 | 0 | $I_0$ |
| 0 | 1 | $I_1$ |
| 1 | 0 | $I_2$ |
| 1 | 1 | $I_3$ |

### Boolean Equation
$$Y = I_0\bar{S_1}\bar{S_0} + I_1\bar{S_1}S_0 + I_2S_1\bar{S_0} + I_3S_1S_0$$

---

## 3. 8-to-1 Multiplexer (8:1 MUX)
The 8:1 MUX selects from eight input channels ($I_0$ to $I_7$) using three select lines ($S_2, S_1, S_0$).



### Truth Table
| $S_2$ | $S_1$ | $S_0$ | Output ($Y$) |
| :---: | :---: | :---: | :---: |
| 0 | 0 | 0 | $I_0$ |
| 0 | 0 | 1 | $I_1$ |
| 0 | 1 | 0 | $I_2$ |
| 0 | 1 | 1 | $I_3$ |
| 1 | 0 | 0 | $I_4$ |
| 1 | 0 | 1 | $I_5$ |
| 1 | 1 | 0 | $I_6$ |
| 1 | 1 | 1 | $I_7$ |

### Boolean Equation
$$Y = \bar{S_2}\bar{S_1}\bar{S_0}I_0 + \bar{S_2}\bar{S_1}S_0I_1 + \bar{S_2}S_1\bar{S_0}I_2 + \dots + S_2S_1S_0I_7$$

---
## Summary Table
| MUX Type | Data Inputs ($n$) | Select Lines ($m$) | Relation ($n = 2^m$) |
| :--- | :---: | :---: | :--- |
| **2:1** | 2 | 1 | $2 = 2^1$ |
| **4:1** | 4 | 2 | $4 = 2^2$ |
| **8:1** | 8 | 3 | $8 = 2^3$ |
## 📌 Applications
* **Data Selectors:** Routing data from multiple sources to a single destination.
* **Function Generators:** Implementing logical functions in hardware.
* **Parallel-to-Serial Conversion:** Standard in telecommunications for serializing data.
