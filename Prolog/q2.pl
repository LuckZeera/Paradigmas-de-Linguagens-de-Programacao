situacao_aluno(Aluno, Situacao) :-
    nota(Aluno, Nota),
    (
        (Nota >= 7.0, Situacao = 'Aprovado');
        (Nota >= 5.0, Nota =< 6.9, Situacao = 'Recuperacao');
        (Nota >= 0.0, Nota =< 4.9, Situacao = 'Reprovado')
    ).
