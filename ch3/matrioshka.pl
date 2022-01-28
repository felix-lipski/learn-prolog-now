
in(A, B) :- directlyIn(A, B).
in(A, C) :-
    directlyIn(A, B),
    in(B, C).

directlyIn(irina, natasha).
directlyIn(natasha, olga).
directlyIn(olga, katarina).
