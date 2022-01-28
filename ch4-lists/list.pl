member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

a2b([],[]).
a2b([a|TA], [b|TB]) :- a2b(TA,TB).

second(X,[_,X|_]).

swap12([A,B|T], [B,A|T]).

twice([],[]).
twice([A|Ta],[A,A|Tb]) :- twice(Ta,Tb).

combine1([],[],[]).
combine1([A|Ta],[B|Tb],[A,B|Tc]) :- combine1(Ta,Tb,Tc).

combine2([],[],[]).
combine2([A|Ta],[B|Tb],[[A,B]|Tc]) :- combine2(Ta,Tb,Tc).

combine3([],[],[]).
combine3([A|Ta],[B|Tb],[j(A,B)|Tc]) :- combine3(Ta,Tb,Tc).
