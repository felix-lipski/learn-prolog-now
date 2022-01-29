append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

prefix(P,L):-  append(P,_,L).

reverse([],[]).
reverse([A|Ta1], L) :- append(Ta2,[A],L), reverse(Ta1,Ta2).

revAcc([],Acc,Acc).
revAcc([H|T],Acc,Res) :- revAcc(T,[H|Acc],Res).

rev(L,R) :- revAcc(L,[],R).

doubled(L) :- append(A,B,L), A = B.

palindrome([]).
palindrome([_]).
palindrome([H|T]) :- append(A,B,T), [H]=B, palindrome(A).

toptail([_|Ta], B) :- append(B,H,Ta), H=[_].

lastRev(L,X) :- rev(L,[X|_]).

last([A],A).
last([_|Ta],B) :- last(Ta,B).

swapfl([A|Ta],B) :- append(Ta,[A],B).





export(append).


