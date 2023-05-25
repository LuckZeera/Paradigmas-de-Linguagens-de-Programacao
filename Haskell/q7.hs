mmc a b = div (a * b) (mdc a b)

mdc a b
  | b == 0 = a
  | otherwise = mdc b (a `rem` b)

main = do
  let a = 12
  let b = 15
  let resultado = mmc a b
  putStrLn $ "MMC entre " ++ show a ++ " e " ++ show b ++ ": " ++ show resultado
