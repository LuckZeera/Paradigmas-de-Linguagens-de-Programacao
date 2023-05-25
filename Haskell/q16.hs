ackermann :: Int -> Int -> Int
ackermann m n
  | m == 0 = n + 1
  | m /= 0 && n == 0 = ackermann (m - 1) 1
  | m /= 0 && n /= 0 = ackermann (m - 1) (ackermann m (n - 1))

main = do
  let result = ackermann 4 0
  print result
