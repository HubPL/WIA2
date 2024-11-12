org 100h

mov CX, 12          ; Ustaw licznik powtórzeń na 12

druk:
    mov AH, 02h      ; Funkcja wyświetlania pojedynczego znaku
    mov DL, 'H'      ; Zapisz znak 'H' w rejestrze DL
    int 21h          ; Wywołanie funkcji DOS do wypisania znaku

    ; Przejście do nowej linii (powrót karetki + nowa linia)
    mov DL, 0Dh      ; Powrót karetki (Carriage Return) - CR
    int 21h

    mov DL, 0Ah      ; Nowa linia (Line Feed) - LF
    int 21h

    loop druk        ; Zmniejsz CX i powtórz, dopóki CX nie stanie się zerem

mov AH, 00h          ; Zakończ program
int 21h
