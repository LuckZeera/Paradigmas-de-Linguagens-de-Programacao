tamanhoPalavra :: String -> Int
tamanhoPalavra [] = 0
tamanhoPalavra (x:palavra)  = 1 + tamanhoPalavra palavra

eliminaVogal :: String -> (String, Int, Int)
eliminaVogal palavra = (palavraNova, tentrada, tsaida)
  where
    tentrada = tamanhoPalavra palavra
    palavraNova = removeVog palavra
    tsaida = tamanhoPalavra palavraNova

removeVog :: String -> String
removeVog [] = ""
removeVog (x:palavra)
  | not (ehVogal x) = x : removeVog palavra
  | otherwise = removeVog palavra

ehVogal :: Char -> Bool
ehVogal c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U'

main = do
  let result = eliminaVogal "Paradigmas de Linguagens de Programacao"
  print result
