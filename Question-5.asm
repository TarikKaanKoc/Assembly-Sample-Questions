;2’den 6’ya kadar olan sayilarin faktoriyellerin toplaminin 3’e bolumunden kalan sayiyi bulan bir program yaziniz.

org 100h

mov bx,0
mov sp,7

d:              ;d etiketinde sp degeri bir azaltilarak
dec sp          ;cx degerinin bir bir azaltilmasi saglanmistir
mov cx,sp       ;cx'e sp'yi aktar
mov ax,1        ;yeni faktoriyel hesaplamak icin ax'e 1 degeri ver
cmp sp,1        ;sp degeri 1 e ulasmis ise 2-6 arasindaki butun faktoriyeller bulunmustur
jz  bol         ;bol etiketine gecilebilir


faktoriyel:      ;cx deki degerin faktoriyeli cx*ax ile ax e aktarilir
mul cx
loop faktoriyel

add bx,ax        ;ax de bulunan faktoriyel degeri bx de toplanir.

cmp cx,0         ;cx sifira ulasmissa yeni deger atamasi icin 
jz d:            ;d etiketine gonderilir.
     
bol:               
mov ax,bx          ;program bol etiketine gelmis ise 2 ile 6 arasindaki 
mov bx,3           ;sayilarin faktoriyellerini ve faktoriyellerinin 
div bx             ;toplamini bulmus demektir. bx de tutulan toplam
                   ;ax'e aktarilir, bx'e 3 degeri verilir
                   ;ax/bx islemi yapilir ax'e bolum dx'e kalan aktarilir
                   ;kalan sayi dx dedir.
end