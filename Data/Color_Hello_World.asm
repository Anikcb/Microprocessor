 
  
.Model Small
.Stack 100h

.Data
       
msg db  "Hello, World!"       
color db 181

.Code
    main Proc
    
    MOV ax, @data
    MOV ds, ax
    
    mov  es,ax ;ES SEGMENT MUST POINT TO DATA SEGMENT.
    mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
    mov  bp,offset msg ;STRING TO DISPLAY.
    mov  bl,color
    mov  cx,13 ;STRING LENGTH.
    ;mov  dl,0 ;X (SCREEN COORDINATE). 
    ;mov  dh,5 ;Y (SCREEN COORDINATE). 
    int  10h ;BIOS SCREEN SERVICES.
   
        
        
        
        
        
        
        
        Exit:
        MOV AH, 4ch
        INT 21h
        main ENDP
    end main
