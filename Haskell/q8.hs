mdc :: [Int] -> Int
mdc [] = error "Lista vazia!"
mdc (x:xs) = mdc'  x (mdc xs)
  where
    mdc' a b
      | b == 0 = a
      | otherwise = mdc' b (a `mod` b)

main = do
  let numeros = [12, 18, 24]
  let resultado = mdc numeros
  putStrLn $ "MDC: " ++ show resultado
