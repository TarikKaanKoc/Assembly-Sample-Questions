; 1’den 99’e kadar olan sayilarin toplamini yapan ve sonucu 1000’e bolup kalani 0100:0010h bellek adresine yazan Intel x86 programini olusturunuz.

org 100h

mov bx,100h
mov ds,bx      ;ds'ye 100h aktar 
              
mov ax,0       ;ax 'e 0 aktar
mov cx,99      ;cx 'e 99 aktar 


topla:

add ax,cx      ;1-99 arasindaki sayilar toplanir 
               
loop topla     ;toplam ax 'e aktarilir 
           
mov bx,1000    ;sonucu 1000e bolmek icin bx'e 1000 aktarilir
div bx         ;ax/bx islemi yap ax'e bolumu dx'e kalani aktar
mov [0010h],dx ;0100:0010h bellek adresine dx deki kalan degerini aktar           

ret