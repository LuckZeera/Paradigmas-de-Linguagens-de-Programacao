produtoIntervalo m n
  | m +1 > n = m
  | otherwise = m * produtoIntervalo (m + 1) n


main = do
  let resultado = produtoIntervalo 2 5
  putStrLn $ "Produto do intervalo: " ++ show resultado
