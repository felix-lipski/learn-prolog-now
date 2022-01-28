beats(rock, scissors).
beats(scissors, paper).
beats(paper, rock).

wins(X):- throws(X, A), throws(Y, B), beats(A, B).
