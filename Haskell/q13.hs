somaElementos :: [Double] -> Double
somaElementos [] = 0
somaElementos (x:l1) = x + somaElementos l1

tamanhoLista :: [Double] -> Double
tamanhoLista [] = 0
tamanhoLista (x:l1) = 1 + tamanhoLista l1

menoresQueMedia :: [Double] ->  [Double]
menoresQueMedia lista  = [x | x <- lista, x < media]
  where
    media = somaElementos lista / tamanhoLista lista
      
main = do
  let lista = [5.2, 3.1, 4.7, 6.8, 2.9, 7.3]
  let tam = tamanhoLista lista
  let resultado = menoresQueMedia lista
  print resultado
