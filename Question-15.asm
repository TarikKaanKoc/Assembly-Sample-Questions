;Bir dizideki belirli bir karakter kümesini başka bir diziye ters sırada yazabilen asm programı. Örneğin; A dizisi ['T' 'a' 'r' 'ı' 'k'] ise, B dizisi ['k' 'ı' 'r' 'a' 'T'] olmalıdır.
;Yığın ve LODSB-STOSB komutlarını kullanarak yazınız.

org 100h

LEA SI , string1  
LEA DI , string2  

MOV AH, 0h
MOV CX, k


L1:

LODSB   
PUSH ax 

LOOP L1

MOV CX , k


L2:

POP AX 
STOSB 

LOOP L2
 
ret

k dw 4

string1 db 'Tarik'    ;define the array1
string2 db k dup(?)  ;define the empty array
