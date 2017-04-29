(LOOP)
@KBD
D=M
@STARTCLEAR
D; JEQ
@STARTPRINT
D; JGT

(STARTCLEAR)
@i
M=0
(CLEAR)
// Set Mem[SCREEN + i] = -1
@SCREEN
D=A
@i
A=D+M // A = SCREEN + i
M=0

// i = i + 1
@i
M=M+1

// If SCREEN + i >= KBD, then end printing
D=D+M // D = SCREEN + i
@KBD
D=D-A // D = SCREEN + i - KBD
@LOOP
D; JGE
// else, keep printing
@CLEAR
0; JMP

@LOOP
0; JMP

(STARTPRINT)
@i
M=0
(PRINT)
// Set Mem[SCREEN + i] = -1
@SCREEN
D=A
@i
A=D+M // A = SCREEN + i
M=-1 

// i = i + 1
@i
M=M+1

// If SCREEN + i >= KBD, then end printing
D=D+M // D = SCREEN + i
@KBD
D=D-A // D = SCREEN + i - KBD
@LOOP
D; JGE
// else, keep printing
@PRINT
0; JMP

@LOOP
0; JMP
