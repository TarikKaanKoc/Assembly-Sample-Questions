;0200:0400h bellek adresindeki 40h sayisi ile 0200:0500h adresindeki 50h sayisini  toplayan, toplamdan 10 sayisini cikaran ve sonucu 0200:0600h bellek adresine yazdiran Intel x86 programini olusturunuz.


org 100h

mov cx,200h
mov ds,cx
mov [400h],40h    ;0200:0400h adresine 40h degeri aktarildi
mov [500h],50h    ;0200:0500h adresine 50h degeri aktarildi 
mov ax,[400h]     ; 40h degeri ax'e aktarildi  
mov bx,[500h]     ; 50h degeri bx'e aktarildi
add ax,bx         ;40h+50h sayisi toplandi toplam ax e aktarildi
sub ax,10         ;toplamdan 10 sayisi cikarildi  ,sonuc ax'e aktarildi
mov [600h],ax     ;sonuc 0200:0600h adresine aktarildi

ret
