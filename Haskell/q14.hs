type Nome = String
type Curso = String
type Periodo = Int
type Nota = Float
type Aluno = (Nome, Curso, Periodo, Nota)
type Disciplina = [Aluno]
alunos :: Int -> Aluno
alunos matricula
  | matricula == 1 = ("Rodrigo", "S.Inf.", 3, 6.0)
  | matricula == 2 = ("Joao", "Eng.Comp.", 5, 5.0)
  | matricula == 3 = ("Lucas", "C.Comp.", 8, 3.5)
  | matricula == 4 = ("Ana", "C.Comp.", 5, 8.0)
  | matricula == 5 = ("Maria", "C.Comp.", 7, 9.5)
  | matricula == 6 = ("Paulo", "C.Comp", 6, 6.0)
  | matricula == 7 = ("Jose", "S.Inf.", 8, 7.0)
  | matricula == 8 = ("Eduarda", "C.Comp.", 4, 1.0)
  | matricula == 9 = ("Carla", "Eng.Comp.", 6, 6.5)
  | matricula == 10 = ("Luiz", "C.Comp.", 7, 5.7)

alunoComMenorNota :: Disciplina -> Nome
alunoComMenorNota [] = "Nenhum aluno encontrado"
alunoComMenorNota [(nome, _, _, _)] = nome
alunoComMenorNota ((nome, _, _, nota) : outrosAlunos) = encontraMenorNota outrosAlunos nome nota
  where
    encontraMenorNota [] nomeMenorNota _ = nomeMenorNota
    encontraMenorNota ((nome, _, _, nota) : restante) nomeMenorNota notaMenor
      | nota < notaMenor = encontraMenorNota restante nome nota
      | otherwise = encontraMenorNota restante nomeMenorNota notaMenor

contarReprovados :: Disciplina -> Int
contarReprovados disciplina = contarReprovadosAux disciplina 0
  where
    contarReprovadosAux [] cont = cont
    contarReprovadosAux ((_, _, _, nota):alunos) cont
      | nota < 6.0 = contarReprovadosAux alunos (cont + 1)
      | otherwise = contarReprovadosAux alunos cont

main = do
  let disciplina = [alunos i | i <- [1..10]]
  let reprovados = contarReprovados disciplina
  let menorNota = alunoComMenorNota disciplina
  print menorNota
  print reprovados
