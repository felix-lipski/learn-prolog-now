leaf(1).
leaf(2).
leaf(3).
leaf(4).
leaf(5).

swap(leaf(A), leaf(A)).
swap(tree(A, B), tree(C, D)) :-
    swap(A, D),
    swap(B, C).
