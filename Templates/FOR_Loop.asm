;; Example FOR loop. _LOOPLABEL_ acts as the entry/return point for the loop, while _ACTION_LABEL_ is the set of actions to be executed for each iteration of the loop.
; r8 here is reserved for LEA commands

clr 
mov r1 _INTVAL_ ;Starting value & register for counter
mov r2 _ENDVAL_ ;Stop after reaching this value

:_LOOPLABEL_
lea r8 :_LOOPLABEL_ 
blt r1 r2 :_ACTION_LABEL_ ;example branching command
jmp :_CONT_

:_ACTION_LABEL_
;[DO STUFF HERE]
inc r1 ;increment counter
jmp r8 ;return to main loop 

:_CONT_ ;where to go after loop is finished running
