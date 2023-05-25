funcZip3 :: [a] -> [b] -> [c] -> [(a, b, c)]
funcZip3 [] _ _ = []
funcZip3 _ [] _ = []
funcZip3 _ _ [] = []
funcZip3 (x:l1) (y:l2) (z:l3) = (x, y, z) : funcZip3 l1 l2 l3

main = do
  let result = funcZip3 ['a', 'b', 'c'] [1, 2, 3] [True, False, True]
  print result
