---
title: Theory
parent: Instruction Cycle
nav_order: 1
---

# Theory
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Instruction Set Architecture

**ISA** (or Instruction Set Architecture) is the limit between Software and Hardware. It defines how a programmer interacts and observes the systems architecture.

### Properties

- **Complexity of its instruction set**: CISC vs RISC (Complex / Reduced Instruction Set Computer)
- **Length of the instructions**: fixed or variable.
- **Amount of memory used by a program**
- **Data**: types of data available and their representation: big and little endian, two complement, etc.

### Adressing Mode

- **Inmediate**: the operand is a fixed value, and thus doesn't need any additional memory accesses.
- **Direct/Absolute**: the memory address is obtained as operand of the instruction.

For example: `MOV R1, Var`

- **Indirect**: the address is obtained by accessing the address as an operand of the instruction.

For example: `MOV R1, [Var]`
