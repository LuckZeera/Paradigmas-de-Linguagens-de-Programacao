removerEspacosRepetidos :: String -> String
removerEspacosRepetidos [] = []
removerEspacosRepetidos [x] = [x]
removerEspacosRepetidos (x:y:xs)
  | x == ' ' && y == ' ' = removerEspacosRepetidos (y:xs)
  | otherwise = x : removerEspacosRepetidos (y:xs)

main = do
  let texto = "Ola   mundo!   Como    vai?"
  let resultado = removerEspacosRepetidos texto
  print resultado
