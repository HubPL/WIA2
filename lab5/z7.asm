org 100h

mov AL, [a]		
mov DL, [a]		
mul DL 			
mov [y], AX		

mov AL, 2h		
mov DL, [b]		
mul DL		

add AX, [y]	
mov [y], AX		

mov AX, [c]		
add AX, [y]		
mov [y], AX	

mov AH, 00h
int 21h

a dw 2h
b dw 3h
c dw 5h
y dw 0h
