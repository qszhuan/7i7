member_a(X, [X|_]).
member_a(X, [_|R]) :- member_a(X, R).

takeout(X, [X|R], R).
takeout(X, [H|R], [H|S]) :- takeout(X, R, S).

putin(X, L, R) :- takeout(X, R, L).