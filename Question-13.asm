; Bir dizide 1’den 100’e kadar 5 tane sayı olsun. Sayılar arasından en yükseğini bulup, DL yazmacına atan programı yazınız.


org 100h 
lea si, sayilar ; sayilar etiketi ile tanimli ilk sayinin ofset adresini si yazmacina attim 
mov cx, 4 ; 4 kez loop'a sokacagim (5 sayi var)
mov al, [si] ; si adresine denk gelen sayiyi al yazmacina atiyorum(al min deger tutar) 
dongu: 
inc si ;bir sonraki adrese gidiyorum 
mov bl, [si] ; o adresteki sayiyi bl'ye atiyorum 
cmp al, bl ; al ile bl'yi kiyasliyorum 
jnb devam ; eger al buyukse al degerini degistirmez 
mov al, bl ; eger al kucukse buyuk degeri al'ye atar 
devam: 
loop dongu 
mov dl,al
hlt 
sayilar db 9,7, 72, 6, 45