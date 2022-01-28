word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(V1,V2,V3,H1,H2,H3) :-
    word(V1,  _,A,_,E,_,H,_),
    word(V2,  _,B,_,F,_,I,_),
    word(V3,  _,C,_,G,_,J,_),
    word(H1,  _,A,_,B,_,C,_),
    word(H2,  _,E,_,F,_,G,_),
    word(H3,  _,H,_,I,_,J,_).
    
