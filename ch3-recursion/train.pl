directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(A, B) :- directTrain(A, B).
travelFromTo(A, C) :-
    directTrain(A, B),
    travelFromTo(B, C).
