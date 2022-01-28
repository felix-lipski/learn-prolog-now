len([],0).
len([_|T],N)  :-  len(T,X),  N  is  X+1.

accLen([], A, A).
accLen([_|T], A, L) :- Anew is A+1, accLen(T,Anew,L). 

leng(A,N) :- accLen(A,0,N).
