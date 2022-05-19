;1-9 arasi tek sayilarin karesini toplayan program

org 100h    

mov cx,10 ;cx e 10 aktar
mov bx,0  ;bx e 0 aktar

sonuc:   
dec cx;cx 1 azalt 
mov ax,cx ;ax e cx i aktar  
mul cx ;ax*cx carp , ax de karesi tutuluyor
add bx,ax;ax+bx ve  bx e aktar
loop sonuc

end
