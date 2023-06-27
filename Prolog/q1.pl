 aluno_do_professor(X, Z) :-
    aluno(X, Y),
    professor(Z, Y).

pessoa_universidade(Pessoa, Universidade) :-
    ((aluno(Pessoa, _) ; professor(Pessoa, _)), frequenta(Pessoa, Universidade)) ; 
    ((funcionario(Pessoa, Universidade), professor(Pessoa, _))).
