raizQuadrada n = buscaRaiz 0 n
  where
    buscaRaiz lo hi
      | lo > hi = hi
      | meio* meio <= n = buscaRaiz (meio + 1) hi
      | otherwise = buscaRaiz lo (meio - 1)
      where meio = (lo + hi) `div` 2

main = do
  let result = raizQuadrada 4
  putStrLn $ "Raiz = " ++ show result
