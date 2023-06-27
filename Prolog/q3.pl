remover([X|T], X, T).
remover([H|T], X, [H|R]) :-
    X \= H,
    remover(T, X, R).
