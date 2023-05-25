baskara a b c
  | delta == 0 = "Uma raiz" ++ " " ++ show x1
  | delta > 0 = "Duas raizes" ++ " " ++ show x1 ++ " " ++ show x2
  | otherwise = "Sem solucao"
  where
    delta = b ^ 2 - 4 * a * c
    x1 = (-b + sqrt delta) / (2 * a)
    x2 = (-b - sqrt delta) / (2 * a)

main = do
  print $ baskara 1 (-5) 6

-- a saída deve ser 3 e 2
