type Pessoa = (String, Int, Float, Char)

pess :: Int -> Pessoa
pess x
  | x == 1 = ("Rosa", 27, 1.66, 'F')
  | x == 2 = ("João", 26, 1.85, 'M')
  | x == 3 = ("Maria", 67, 1.55, 'F')
  | x == 4 = ("Jose", 48, 1.78, 'M')
  | x == 5 = ("Paulo", 24, 1.93, 'M')
  | x == 6 = ("Clara", 38, 1.70, 'F')
  | x == 7 = ("Bob", 12, 1.45, 'M')
  | x == 8 = ("Rosana", 31, 1.58, 'F')
  | x == 9 = ("Daniel", 75, 1.74, 'M')
  | x == 10 = ("Jocileide", 21, 1.69, 'F')
  | otherwise = ("Acabou!", 0, 0.0, 'x')

maiorIdade = encontraMaiorIdade 1 0 0
  where
    encontraMaiorIdade i maior maiorId
      | i > 10 = maiorId
      | idade > maior = encontraMaiorIdade (i + 1) idade i
      | otherwise = encontraMaiorIdade (i + 1) maior maiorId
      where
        (_, idade, _, _) = pess i

somaIdade :: [Pessoa] -> Int
somaIdade [] = 0
somaIdade ((_, idade, _, _) : xs) = idade + somaIdade xs

mediaIdade :: [Pessoa] -> Double
mediaIdade pessoas = fromIntegral (somaIdade pessoas) / 10.0

consultaPessoas :: [Pessoa] -> Int
consultaPessoas pessoas = consultaAux pessoas 0
  where
    consultaAux :: [Pessoa] -> Int -> Int
    consultaAux [] cont = cont
    consultaAux ((_, idade, _, sexo) : pessoas) cont
      | idade > 25 && sexo == 'M' = consultaAux pessoas (cont + 1)
      | otherwise = consultaAux pessoas cont

main = do
  let pessoas = [pess i | i <- [1 .. 10]]
  let mIdade = maiorIdade
  let idadeMedia = mediaIdade pessoas
  let quantidade = consultaPessoas pessoas
  print mIdade
  print idadeMedia
  print quantidade
