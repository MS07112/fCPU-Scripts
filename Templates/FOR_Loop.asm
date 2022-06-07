;; r8 here is reserved for LEA commands

clr 
mov r1 _INTVAL_ ;Starting value & register for counter
mov r2 _ENDVAL_ ;Stop after reaching this value

:_LOOPLABEL_
lea r8 :_LOOPLABEL_ 
blt r1 r2 :_ACTION_LABEL_
jmp :_CONT_

:_ACTION_LABEL_
inc r1 ;increment counter
jmp r8

:_CONT_
