//R2= R1*R0
//Usage: Put values in R0 and R1

//Psuedo Code
//m0=R0
//m1=R1=i
//pro=0
//(LOOP)
//if: D!=0
//   d=m0
//   pro=pro+D
//   i--
//   goto LOOP
//else:STOP
//     R3=pro
//END

@R0
D=M
@m0
M=D   //m0=R0
@R1
D=M
@m1
M=D   //m1=R1
@i
M=D   //i=R1
@pro
M=0   //pro=0

(LOOP)
@i
D=M
@STOP
D;JEQ    //if: D!=0

@m0
D=M
@pro
M=M+D   //pro=pro+m1

@i
M=M-1   //i--
@LOOP
0;JMP   //goto LOOP

(STOP)
@pro
D=M
@R2
M=D     //R2=pro

(END)
@END   
0;JMP   //end