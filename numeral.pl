
numeral(zero).
numeral(suc(X)) :- numeral(X).

add(zero, Y, Y).
add(suc(X), Y, suc(Z)) :-
    add(X, Y, Z).

sub(zero, _, zero).
sub(A, zero, A).
sub(suc(A), suc(B), C) :-
    sub(A, B, C).

mul(zero, _, zero).
mul(_, zero, zero).
mul(suc(A), B, C) :-
    mul(A, B, D),
    add(B, D, C).

% pow(_, zero, succ(zero)).
% pow(A, succ(B), C) :-
%     pow(A, B, D),
%     mul(A, D, C).

% mul(zero, _) = zero
% mul(suc(a), b) = add(b, mul(a, b))
