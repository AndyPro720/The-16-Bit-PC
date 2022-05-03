// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//Psuedo code
//kadd=KBD(add)
//d_add=DIS(add)
//(ILOOP)
//@DARK
//D=KBD
//if D==0
//for(i=8192,i!=0;i--)
//d_add(D)=d_add+D
//A=d_add
//M=0
//D++
//goto ILOOP

//else: (DARK)
//for(i=8192,i!=0;i--)
//d_add(D)=d_add+D
//A=d_add
//M=-1
//D++
//goto ILOOP

@KBD
D=A
@k_add
M=D        //KBD(add)=k_add
@SCREEN
D=A
@d_add
M=D        //SCREEN(add)=d_add 

(ILOOP)
@KBD
D=M        //checks for KBD scan code
@DARK
D;JNE      //if!0; goto Dark

@8192      //last screen address
D=A
@i
M=D        //i=address
(L_LOOP)   //light loop starts
@i
D=M
@ILOOP
D;JEQ      //if i==0; goto iloop

@i
MD=M-1     //i--
@d_add 
D=M+D      
A=D
M=0        //d_add(D)=0
@L_LOOP
0;JMP      //goto light loop

(DARK)
@8192      //same as light loop
D=A
@i
M=D
(D_LOOP)   //dark loop starts
@i
D=M
@ILOOP
D;JEQ      //if i==0; goto i_loop

@i
MD=M-1
@d_add
D=M+D
A=D
M=-1      //d_add(D)=-1(all ones)
@D_LOOP
0;JMP     //goto dark loop