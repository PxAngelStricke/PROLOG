size([],0).
size([X|Y],N):-size(Y,N1), N is N1+1.