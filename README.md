# The-16-Bit-PC

This project is aimed at creating a 16 bit computer from the ground up starting with only NAND gates in a virtual environment(HDL). 

[My notes(blog) for the course](https://scientia72.notion.site/From-NAND-to-Tetris-1-561e43324a0145eaaa1a2d5aefbdcf74)


## Details

![Alt text](Schematics/PC_Architecture.jpg?raw=true "Title")

The project is part of a course developed by Noam Nisan and Shimon Schocken, named NandtoTetris. Link: https://www.nand2tetris.org/


This part(first) of the course focuses on the creation of the hardware components and abstracting a software layer towards the near end.(Machine and Assembly Language) 

---

Here’s a brief summary on what all we cover throughout:

- Create gates ranging from AND to Or8Way, Mux16 and Dmux8Way in HDL.
- Create a fully functioning ALU with 18 distinct computable functions over two 16 bit inputs.
- Created a series of RAM chips from 8 to 16K memory. Work on creating a addressing mechanism to select a specific register.

- Create a machine language with support for two distinct 16 bit instructions that allow for addressing memory or performing computation, storage and a jump to instruction by manipulation of the 16 bits sectionally.
- Create an addressing mechanism(device driver) for a 256*512p monochrome display. Worked on a mechanism and character set (EASCII) for the keyboard.
- For the assembly language, worked on realizing key concepts such an branching, variable creation, iteration, pointers and addressing mechanisms.

- Construct a fully functioning schematic ground up for the computer with all components and buses linked.  
- Implement a basic memory controller to select the respective memory device(among the three) when specific register is addressed.

- Programmed a two-pass assembler that is capable of storing variables, keywords, identifiers and program instruction references. Deals with whitespace and comments and converts the worded assembly to 16 bit binary instructions.
- [Here's a link to the slightly deatiled summary on what to expect](https://scientia72.notion.site/Course-Details-1ff1573dc8af4d4cbb09d0b083bc4b57)


