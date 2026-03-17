# Demultiplexers (DEMUX)

This section details the design and logic of 1:2, 1:4, and 1:8 Demultiplexers. A demultiplexer takes a single input data line and routes it to one of several output lines based on the state of the select signals.

---

## 🛠 Tools Used

* **Design & Simulation:** Xilinx Vivado
* **Hardware Description Language:** Verilog HDL

---

## 1. 1-to-2 Demultiplexer (1:2 DEMUX)
The 1:2 DEMUX routes a single data input ($I$) to one of two possible outputs ($Y_0, Y_1$) based on a single select line ($S$). 


### Truth Table
| Select ($S$) | Input ($I$) | Output ($Y_1$) | Output ($Y_0$) |
| :---: | :---: | :---: | :---: |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 |

### Boolean Equations
$$Y_0 = \overline{S} \cdot I$$
$$Y_1 = S \cdot I$$

---

## 2. 1-to-4 Demultiplexer (1:4 DEMUX)
The 1:4 DEMUX uses two select lines ($S_1, S_0$) to route a single data input ($I$) to one of four outputs ($Y_0$ to $Y_3$). 


### Truth Table
*Note: Unselected outputs remain at logic 0.*

| Select ($S_1$) | Select ($S_0$) | Active Output |
| :---: | :---: | :---: |
| 0 | 0 | $Y_0 = I$ |
| 0 | 1 | $Y_1 = I$ |
| 1 | 0 | $Y_2 = I$ |
| 1 | 1 | $Y_3 = I$ |

### Boolean Equations
$$Y_0 = \overline{S_1} \cdot \overline{S_0} \cdot I$$
$$Y_1 = \overline{S_1} \cdot S_0 \cdot I$$
$$Y_2 = S_1 \cdot \overline{S_0} \cdot I$$
$$Y_3 = S_1 \cdot S_0 \cdot I$$

---

## 3. 1-to-8 Demultiplexer (1:8 DEMUX)
The 1:8 DEMUX uses three select lines ($S_2, S_1, S_0$) to route a single data input ($I$) to one of eight outputs ($Y_0$ to $Y_7$).



### Truth Table
*Note: Unselected outputs remain at logic 0.*

| $S_2$ | $S_1$ | $S_0$ | Active Output |
| :---: | :---: | :---: | :---: |
| 0 | 0 | 0 | $Y_0 = I$ |
| 0 | 0 | 1 | $Y_1 = I$ |
| 0 | 1 | 0 | $Y_2 = I$ |
| 0 | 1 | 1 | $Y_3 = I$ |
| 1 | 0 | 0 | $Y_4 = I$ |
| 1 | 0 | 1 | $Y_5 = I$ |
| 1 | 1 | 0 | $Y_6 = I$ |
| 1 | 1 | 1 | $Y_7 = I$ |

### Boolean Equations
$$Y_0 = \overline{S_2} \cdot \overline{S_1} \cdot \overline{S_0} \cdot I$$
$$Y_1 = \overline{S_2} \cdot \overline{S_1} \cdot S_0 \cdot I$$
$$Y_2 = \overline{S_2} \cdot S_1 \cdot \overline{S_0} \cdot I$$
$$Y_3 = \overline{S_2} \cdot S_1 \cdot S_0 \cdot I$$
$$Y_4 = S_2 \cdot \overline{S_1} \cdot \overline{S_0} \cdot I$$
$$Y_5 = S_2 \cdot \overline{S_1} \cdot S_0 \cdot I$$
$$Y_6 = S_2 \cdot S_1 \cdot \overline{S_0} \cdot I$$
$$Y_7 = S_2 \cdot S_1 \cdot S_0 \cdot I$$
