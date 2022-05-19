;Girilen sayı 2’nin tam kuvveti ise ah yazmacına 2, 4’in tam kuvveti ise ah yazmacına 4 yazan programı yazınız.

org 100h
 
mov si,8       ;si'ye kontrol edilecek sayi atilir
mov ax,si      ;si deki sayi ax yazmacina atilir
mov bx,2 
mov cx,1000    
IK:             ;IK etiketinde
div bx          ; sayiyi 2 ye bolerek ikinin kacinci kuvveti olduguna bakilir. 
cmp al,1        ; sayi 2 nin tam kuvveti degil ise dl , yazmacindaki sayibolme isleminden sonra 0 a esit olmaz
jz a            ; ve sayiyi kontrol etmeye gerek yoktur.
cmp dl,0
jnz DK
loop IK  
a:
cmp dl,0
jnz DK 
mov [1000h],2

DK:             ;DK etiketinde
mov ax,si       ;sayiyi 4 e bolerek dordun kacinci kuvveti olduguna bakilir
mov bx,4        ;sayi 4 un tam kuvveti degil ise dl yazmacindaki sayi bolme isleminden sonra
ab:             ;0 a esit olmaz ve sayiyi kontrol etmeye gerek yoktur.
div bx
cmp al,1
jz as
cmp dl,0
jnz bitir
loop ab  
as:
cmp dl,0
jnz bitir
mov [1001h],4 
bitir:
mov ah,[1000h]
mov al,[1001h]
end