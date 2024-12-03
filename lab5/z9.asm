org 100h

mov AX, [a]		
mov DL, [c]	
div DL			
mov [y], AL		

mov AX, [b]		
add AX, [y]		
mov [y], AX		

mov AL, [y]		
mov DL, [a]		
mul DL			
mov [y], AX	

mov AH, 00h
int 21h

a dw 2h
b dw 2h
c dw 2h
y dw 0h
