; 0700:150Ah bellek adresine 12h, 0700:150Bh bellek adresine 2Ch, 0700:150Ch bellek adresine A2h degerini vererek bu adreslerdeki verileri toplayan, sonucu 0700:1300h adresine ve elde olusmussa eldeyi de 0700:1298h adresine atan programi yaziniz.

org 100h
mov [150Ah],12h
mov [150Bh],2Ch
mov [150Ch],A2h;adreslere degerler aktarildi

mov al,[150Ah]
add al,[150Bh] ;150Ah ve 150Bh degerlerini topla eger elde yoksa eldeyok etiketine git
jnc eldeyok
mov [1298h],1 ;fakat elde varsa 1298h adresine 1 aktar
eldeyok:
add al,[150Ch] ;150Ah+150Bh+150Ch degerlerini topla
jnc eldeyok1   ; elde yoksa eldeyok1 etiketine git
add [1298h],1  ;elde varsa 1298h adresini 1 artir
eldeyok1:
add ah,[1298h] ;eger eldeler varsa ah'ye eldeleri topla
mov [1300h],ax ;sonucu 1300h a aktar..

end