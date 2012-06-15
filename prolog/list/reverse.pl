reverse_a([], X, X).
reverse_a([X|Y], Z, W) :-
	reverse_a(Y, [X|Z], W).

%-- hide the acuumulating parameter.
reverse_a(A,R) :- reverse_a(A,[],R).
