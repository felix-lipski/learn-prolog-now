numeral(zero).
numeral(suc(X)) :- numeral(X).

add(zero, Y, Y).
add(suc(X), Y, suc(Z)) :-
    add(X, Y, Z).

sub(zero, A, zero) :- numeral(A).
sub(A, zero, A).
sub(suc(A), suc(B), C) :-
    sub(A, B, C).

mul(zero, A, zero) :- numeral(A).
mul(A, zero, zero) :- numeral(A).
mul(suc(A), B, C) :-
    add(B, D, C),
    mul(A, B, D).


greater_than(suc(A), zero) :- numeral(A).
greater_than(suc(A), suc(B)) :-
    greater_than(A, B).


% broken
pow(A, zero, succ(zero)) :- numeral(A).
pow(A, succ(B), C) :-
    mul(A, D, C),
    pow(A, B, D).
