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
    lea di, msg
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h

again: 
    cmp [di],'$'
    je Exit
    cmp [di],32
    je next
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again

next: 
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    inc di
    jmp again
    
   
        
        
             
        
        
        
Exit:
    MOV AH, 4ch
    INT 21h
    main ENDP
END main








