member(A,B) :- append([A],_,C), append(_,C,B).

notMember(_,[]).
notMember(M,[A|Ta]) :- A \= M, notMember(M,Ta).

setAcc([],R,R).
setAcc([H|T],Acc,R) :- member(H,T), setAcc(T,Acc,R).
setAcc([H|T],Acc,R) :- notMember(H,T), setAcc(T,[H|Acc],R).

set(A,B) :- setAcc(A,[],C), reverse(B,C).

flat([],[]) :- !.
flat([H|Ta],R) :-
    !,
    flat(H,H2),
    flat(Ta,Ta2),
    append(H2,Ta2,R).
flat(A, [A]).
