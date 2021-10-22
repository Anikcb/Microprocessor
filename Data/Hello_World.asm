.Model Small
.Stack 100h

.Data
       
msg db 'Hello, World!$'

.Code
    main Proc
    
    MOV ax, @data
    MOV ds, ax
    
    
    MOV AH, 9H
    LEA DX, msg
    INT 21H
        
        
        
        
        
        
        
        Exit:
        MOV AH, 4ch
        INT 21h
        main ENDP
    end main