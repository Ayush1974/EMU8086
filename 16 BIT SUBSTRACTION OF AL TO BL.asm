.MODEL MODEL SMALL
.STACK 100h
.DATA
.CODE
    SUB BH, BH
    MOV AL, 0FFH
    MOV BL, 0FFH
    SUB BL, AL
    
    ADC BH, BH
    
    
    MOV CX, 10H

prn: MOV AH, 02H
    MOV DL, 30H
    TEST BX, 8000H
    
    
    
    JZ zro
    
    MOV DL, 31H
        
zro: INT 21H
    SHL BX, 0001H
    LOOP PRN
    
    
    MOV AH, 4CH
    
    INT 21H
    
    END