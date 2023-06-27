iguaisL([], []).
iguaisL([X|T1], [X|T2]) :-
    iguaisL(T1, T2).
