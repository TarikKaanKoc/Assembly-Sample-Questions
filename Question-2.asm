; İsaretsiz 0CFBh sayisini 0FBh sayisina bolen Intel x86 programini olusturunuz. Daha sonra kalani 0500:0100h adresine ve bolumu ise 14h sayisi ile carpip 0500:102h adresine yaziniz.

org 100h

mov ax,0CFBh ;ax e 0CFBh sayisini aktar
mov cx,0FBh  ;cx e 0FBh sayisini aktar      
div cx       ;ax/cx islemi yap ax'e bolumu aktar dx'e kalani aktar
mov bx,0500h ;ds ye 0500h aktarmak icin bx e once 0500h aktarilir
mov ds,bx    ;ds 0500h olsun.

mov [0100h],dx ;0500:0100h adresine kalani aktar   
mov dl,14h
mul dl        ;ax*14h islemini yap sonucu ax e aktar
mov [0102h],ax ;0500:0102h adresine bolum*14h i aktar

ret
