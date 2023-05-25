maioresQueMedia a b c
  | a == media && b == media && c == media = 0
  | a > media && b > media || a > media && c > media || b > media && c > media = 2
  | otherwise = 1
  where
    media = (a + b + c) / 3

main = do
  let quantidade = maioresQueMedia 2 2 2
  putStrLn$ "Quantidade de valores maiores que a media " ++ show quantidade
