.Model Small
.Stack 100h

.Data
       
msg db 60 dup(?)

.Code
    main Proc
    
    MOV ax, @data
    MOV ds, ax
    lea si, msg
    
    
input: 
    mov ah,1
    int 21h
    cmp al,13
    je display
    mov [si],al
    inc si
    jmp input

   
display: 
    mov [si],'$'
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h

    
mov cx, 8
print: mov ah, 2   
       mov dl, '0'
       test si, 10000000b  
       jz zero
       mov dl, '1'
zero:  int 21h
       shl si, 1
       loop print


       mov dl, 'b'
       int 21h   
        
        
             
        
        
        
Exit:
    MOV AH, 4ch
    INT 21h
    main ENDP
END main
