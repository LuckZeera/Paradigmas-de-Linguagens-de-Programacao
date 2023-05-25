concatenar :: [a] -> [a] -> [a]
concatenar [] l2 = l2
concatenar (x:l1) l2 = x : concatenar l1 l2

main = do
  let lista1 = [1, 2, 3]
  let lista2 = [4, 5, 6]
  let resultado = concatenar lista1 lista2
  print resultado
