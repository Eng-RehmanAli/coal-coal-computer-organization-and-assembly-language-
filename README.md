# coal(coal computer organization and assembly language)
“This is my syllabus and the files are understandable. They include all the concepts.”
# 🏭 Coal Field - Computer Organization & 8088 Assembly Language Project

## Overview
This project simulates and analyzes **coal field operations** using **8088 assembly language** and C++ logic.  
It focuses on:  
- Mathematical algorithms for coal tracking  
- Player/worker identification tables  
- BFS, DFS, and Queue implementations  
- Screen visualization and stack operations in 8088  

## Features
- 🔹 **Coal tracking system**: Tracks each player/worker location and tasks mathematically.  
- 🔹 **Graph algorithms**: BFS & DFS to navigate coal mining paths.  
- 🔹 **Queue management**: Task scheduling and worker management.  
- 🔹 **Screen operations in 8088**: Learn cursor control, screen printing, and text-based UI.  
- 🔹 **Stack operations practice**: Push, pop, and arithmetic using the 8088 stack.  

## 8088 Practice Notes
### Screen Understanding
Use **BIOS interrupts** for printing text:
```asm
mov ah, 0x0E   ; Teletype output
mov al, 'A'    ; Character to print
int 0x10       ; Call BIOS


##Stack Practice

Push & Pop operations:

mov ax, 1234h
push ax      ; Push value onto stack
pop bx       ; Pop value from stack into BX

How to Run
Clone the repository:
git clone https://github.com/Eng-RehmanAli/coal-coal-computer-organization-and-assembly-language-.git
