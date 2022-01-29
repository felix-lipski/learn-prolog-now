sublist(A,B) :- append(A,_,C), append(_,C,B).

zebra(X, Y) :-
    length(Houses,3),
    Snl =           house(_         , _     , snail ),
    member(         house(english   , red   , _     ), Houses),
    member(         house(spanish   , _     , jaguar), Houses),
    member(         house(X         , _     , zebra ), Houses),
    sublist([Snl,   house(japanese  , _     , _     )], Houses),
    sublist([Snl,   house(_         , blue  , _     )], Houses),
    Y = Houses.
