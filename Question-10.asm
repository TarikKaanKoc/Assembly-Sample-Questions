;50’den kucuk 2’ye ve 3’e tam bolunemeyen dogal sayilarin toplamini bulan ve bu toplami DX yazmacina atan programi yaziniz.

org 100h

mov cl,50  
ikiyebol:  ;ikiyebol etiketinde sayi ikiye bolunur 
mov bl,2   ;eger sayi ikiye tam bolunurse ,sayinin uce bolunup bolunmedigine bakmaya gerek kalmaz.
mov al,cl  ; bl yazmacina 2 degeri, al yazmacina cl degeri aktarilarak div komutu ile bolme yapilir
mov ah,0   ; bolme isleminden sonra kalan ah yazmacina bolum al yazmacina aktarilir.
div bl     ; ah yazmaci ile 0 compare edilir ve sayi 2 ye tam bolunmus ise ucebol etiketine gecilmez
cmp ah,0   ; eger ah yazmaci 0'a esit degilse ucebol etiketine gider.(sayi ikiye tam bolunmemis demektir)
jnz ucebol
loop ikiyebol

ucebol:    ; ucebol etiketinde sayi uce tam bolunuyormu diye kontrol edilir.
mov bl,3   ;
mov al,cl  ; uce tam bolunme kontrolu bl yazmacina 3 degeri,
mov ah,0   ; al yazmacina cl degeri ve ah yazmacina 0 degeri atildiktan sonra div bl komutu ile
div bl     ; yapilir. cmp ah,0 komutu ile kalan kisim 0 a esitmi diye kontrol edilir.Kalan 0 ise cl degeri
cmp ah,0   ; bir azaltilir (yeni sayi icin) ve ikiyebol etiketine gidilir.
jnz topla  ; Fakat kalan 0 dan farkli bir sayi ise cl yazmacindaki sayi hem 2 ye hem 3 tam bolunmuyor 
dec cl      ; demektir. cl yazmacindaki sayinin toplanmasi icin topla etiketine gidilir.
jmp ikiyebol

topla:         ; topla etiketinde 2'ye ve 3'e tam bolunmeyen sayilar
mov [1300h],cl ; once bir adrese aktarilir daha sonra bolunemeyen sayilari gormek icin
push [1300h]   ; push komutu ile stack'e aktarilir. Adreste tutulan sayi dx yazmacinda toplanir
add dx,[1300h] ; cl degeri bir azaltilir ve sifir ile karsilastirilir.
dec cl         ; cl yazmaci sifira ulasmamissa ikiyebol etiketine gidilir ve yeni sayi kontrolu yapilir.
cmp cl,0       ; fakat cl yazmaci sifira ulastiysa butun sayilar kontrol edilmistir
jnz ikiyebol   ; ve program sonlanabilir.

end