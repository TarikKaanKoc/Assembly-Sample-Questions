; 1000 ve 2000 adresli bellek gozlerindeki iki sayiyi toplayan ve sonuç FFH’tan buyukse 3000 adresine 99h, kucukkse 22h yazan programi olusturunuz. Ayni soruyu verilen adreslerin onaltilik tabana cevrilmis haliyle tekrar yaziniz.

Org 100h 
mov ax, 0h 
mov [3E8h], 22h 
mov [7D0h], 88h 
mov al, [3E8h] 
add al, [7D0h] 
jc buyuk 
mov [0BB8h], 22h 
jmp stop 
buyuk: mov [0BB8h], 99h 
stop: ret