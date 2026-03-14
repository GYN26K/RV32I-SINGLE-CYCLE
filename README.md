# RISC-V Processor Implementation on Basys3 FPGA

A complete implementation of a **32-bit RISC-V processor written in Verilog**, designed from scratch and deployed on the **Basys3 (Artix-7) FPGA board**.  
The processor executes a **Fibonacci sequence program stored in instruction memory**, demonstrating correct instruction decoding, ALU operations, register file interactions, and program control flow.

The design includes a **clock divider to convert the 100 MHz Basys3 clock to a slower clock**, allowing visible step-by-step execution of instructions and easier hardware verification.

The processor design was **fully simulated, synthesized, and verified on real FPGA hardware**.

---

# Project Overview

This project demonstrates the design and implementation of a **basic single-cycle RISC-V CPU architecture** using Verilog HDL.  
The processor supports essential arithmetic and control instructions and successfully executes a **Fibonacci program** loaded into instruction memory.

The system was implemented and verified using **Xilinx Vivado** and tested on the **Basys3 FPGA development board**.

---

# Key Features

- 32-bit **RISC-V processor implementation**
- Modular RTL design using **Verilog HDL**
- Functional modules including:
  - Program Counter
  - Instruction Memory
  - Register File
  - ALU
  - Control Unit
- Execution of **Fibonacci program**
- **Clock divider** for Basys3 100 MHz system clock
- Complete **simulation testbench**
- **XDC constraint file** for Basys3 board
- Successfully **synthesized and deployed on FPGA hardware**



