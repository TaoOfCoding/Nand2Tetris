// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

  @i // i refers to some mem. location.
	M=1 // i=1
  // Set R2 to be zero
	@2 
	M=0
(LOOP)
  // If i > R0, end
  @0 // Access R0
  D=M // Set D Register to be R0
  @i
	D=M-D // D=i-R0
	@END
	D;JGT // If i > R0 goto END

  // else, sum+=R1, i += 1
	@1
	D=M // D=R1
	@2
	M=D+M // sum=sum+R1
	@i
	M=M+1 // i=i+1
	@LOOP
	0;JMP // Goto LOOP
(END)
	@END
	0;JMP // Infinite loop
