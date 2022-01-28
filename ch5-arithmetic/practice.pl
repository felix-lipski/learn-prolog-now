increment(A,B) :- B is A + 1. 

sum(A,B,C) :- C is A + B.

addone([],[]).
addone([A|Ta], [B|Tb]) :- increment(A,B), addone(Ta,Tb).

scalarMult(_,[],[]).
scalarMult(N,[A|Ta],[R|Tr]) :- R is A * N, scalarMult(N,Ta,Tr).

dotAcc([A|Ta],[B|Tb],Acc,R) :- NewAcc is Acc + (A * B), dotAcc(Ta,Tb,NewAcc,R).
dotAcc([],[],R,R).
dot(A,B,R) :- dotAcc(A,B,0,R).
