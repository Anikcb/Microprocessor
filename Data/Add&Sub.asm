
.Model Small
.Stack 100h

.Data
       
msg db 'Hello, World$'

.Code
    main Proc
    
    MOV ax, @data
    MOV ds, ax
    
    mov al, 5       
    mov bl, 10     
    
    add bl, al
    sub bl, 1
    
    ; print result in binary:
    mov cx, 8
    print: mov ah, 2   
           mov dl, '0'
           test bl, 10000000b  
           jz zero
           mov dl, '1'
    zero:  int 21h
           shl bl, 1
    loop print
    
    mov dl, 'b'
    int 21h
   
        
        
        
        
        
        
        
        Exit:
        MOV AH, 4ch
        INT 21h
        main ENDP
    END main








