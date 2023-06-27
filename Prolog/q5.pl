ultimo([X], X).
ultimo([_|T], X) :-
    ultimo(T, X).
