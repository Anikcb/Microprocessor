
.Model Small
.Stack 100h

.Data
       

.Code
    main Proc
    
    MOV ax, @data
    MOV ds, ax    
    
    
    
    MOV AH, 1
    INT 21h
    MOV bl, al
    SUB bl, 48
    
    
    MOV AH, 2
    MOV DL, 10 
    INT 21H
    MOV AH, 2
    MOV DL, 13
    INT 21H
    
    
    
    MOV AH, 1
    INT 21h
    MOV bh, al
    SUB BH, 48
    
    
    ADD bl, bh
    ;SUB bl, 60
    
    
    
    MOV AH, 2
    MOV DL, 10 
    INT 21H
    MOV AH, 2
    MOV DL, 13
    INT 21H
    
    
    mov CX, 8
    PRINT: MOV AL, 2 
           MOV DL, '0'
           TEST BL, 10000000b
           JZ Zero
           mov DL, '1'
    Zero:  INT 21h
           SHL BL, 1
    LOOP PRINT
    
    
    
    MOV AH, 2
    MOV DL, 'b'
    INT 21H
   
        
        
        
        
        
        
        
        Exit:
        MOV AH, 4ch
        INT 21h
        main ENDP
    END main








