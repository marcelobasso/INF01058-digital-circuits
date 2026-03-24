# Neander Processor: 8-Bit FPGA Implementation

This repository contains the complete design, simulation, and hardware implementation of the **Neander Processor** [[1]](https://ic.ufrj.br/~gabriel/WEAC2006.pdf) [[2]](https://www.inf.ufrgs.br/arq/wiki/doku.php?id=neander), a classic accumulator-based architecture. Final project for the **INF01058 - Digital Circuits** course.

## 🏗️ Architecture Overview
The Neander is an 8-bit processor designed to demonstrate the fundamental principles of Von Neumann architecture. It features a simple but complete instruction set capable of performing arithmetic, logic, and flow control.

### Technical Specifications
* **Data & Address Width:** 8-bit.
* **Memory Space:** 256 bytes (shared for instructions and data).
* **Registers:**
    * **Accumulator (AC):** Primary 8-bit register for ALU operations.
    * **Program Counter (PC):** 8-bit pointer for the next instruction.
    * **Condition Flags:** **Negative (N)** and **Zero (Z)**, updated after ALU operations.
* **Instruction Set:** 11 instructions (NOP, STA, LDA, ADD, OR, AND, NOT, JMP, JN, JZ, HLT).

## 🛠️ Hardware Design (HDL)
The processor was modeled using Quartus:

1. **Arithmetic Logic Unit (ALU):** Implements addition and bitwise logic (AND, OR, NOT). It manages the internal status flags (N/Z) which are critical for conditional branching.
2. **Control Unit (FSM):** The "brain" of the processor. It was implemented as a robust **Finite State Machine** that handles the synchronization of the *Fetch, Decode, and Execute* cycles.
3. **Instruction Decoder:** Combinational logic that translates 4-bit opcodes into specific control signals for the datapath multiplexers and register enables.


## 🚀 FPGA Deployment & Testing
The design was synthesized and verified on physical hardware:
* **Clock Management:** Implemented a frequency divider to step down the high-frequency onboard clock, allowing for step-by-step visual debugging.
* **I/O Integration:** Mapped the **Accumulator** and **Program Counter** to 7-segment displays and LEDs for real-time monitoring of execution.
* **Simulation:** Used **Quartus** for functional testing.
* **FPGA Validation:** Wrote and executed implementation in the Cyclove V FPGA.


---
*Developed as part of the Computer Science curriculum UFRGS.*
