
; You may customize this and other start-up templates;

MOV AX , 0200H

MOV DS , AX

MOV DI , 0000H
MOV [DI] ,01H

MOV DI , 0001H
MOV [DI] , 02H

MOV DI , 0002H
MOV [DI] ,03H

MOV DI , 0003H
MOV [DI] ,04H


MOV DI , 0004H
MOV [DI] , 05H

MOV CX , 5

ret
