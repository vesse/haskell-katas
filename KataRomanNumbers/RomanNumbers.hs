--http://codingdojo.org/cgi-bin/wiki.pl?KataRomanNumerals
module KataRomanNumbers.RomanNumbers where

toromans :: Int -> String
toromans 0 = ""
toromans x
  | triggers 10 = (take (countof 10) $ repeat 'X') ++ (toromans (contwith 10))
  | triggers 5  = (take (countof 5)  $ repeat 'V') ++ (toromans (contwith 5))
  | otherwise   = if x == 4
                  then "IV"
                  else take x $ repeat 'I'
  where countof y  = floor $ fromIntegral(x) / fromIntegral(y)
        triggers y = countof y > 0
        contwith y = x - y * (countof y)
