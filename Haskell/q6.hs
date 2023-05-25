somaIntervaloExcluindo x y
  | x + 1 >= y = 0
  | otherwise = (x + 1) + somaIntervaloExcluindo (x + 1)  y
somaIntervaloIncluindo x y
  | x + 1 > y = 0
  | otherwise = (x + 1) + somaIntervaloIncluindo (x + 1)  y
main = do
    let valores = somaIntervaloExcluindo 1 5
    putStrLn$ "Soma dos numeros inteiros do intervalo: " ++ show valores
    let valores = somaIntervaloIncluindo 1 5
    putStrLn$ "Soma dos numeros inteiros do intervalo: " ++ show valores
