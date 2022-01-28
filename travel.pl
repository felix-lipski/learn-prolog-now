byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

travel(A,B) :- byCar(A,B); byTrain(A,B); byPlane(A,B).
travel(A,C) :-
    (byCar(A,B); byTrain(A,B); byPlane(A,B)),
    travel(B,C).

% travel(A,B,go(A,B)) :- byCar(A,B); byTrain(A,B); byPlane(A,B).
% travel(A,C,go(A,B,R)) :-
%     (byCar(A,B); byTrain(A,B); byPlane(A,B)),
%     travel(B, C, R).

travel(A,B,byCar(A,B))   :- byCar(A,B).
travel(A,B,byTrain(A,B)) :- byTrain(A,B). 
travel(A,B,byPlane(A,B)) :- byPlane(A,B).
travel(A,C,byCar(A,B,R)) :- byCar(A,B), travel(B, C, R).
travel(A,C,byTrain(A,B,R)) :- byTrain(A,B), travel(B, C, R).
travel(A,C,byPlane(A,B,R)) :- byPlane(A,B), travel(B, C, R).
