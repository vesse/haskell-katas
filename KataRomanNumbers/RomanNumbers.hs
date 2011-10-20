--http://codingdojo.org/cgi-bin/wiki.pl?KataRomanNumerals
module KataRomanNumbers.RomanNumbers where

hundreds = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
tens = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
ones = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

-- 123 -> [1,2,3]
intToList :: Int -> [Int]
intToList x = map (read) [[z] | z <- show x]

-- Just an "interface" for the actual function
toromans :: Int -> String
toromans 0 = ""
toromans x = toromans' $ intToList x

-- Returns given array of ints equivalent roman number
-- Notice that this does not work for numbers larger than 9999
toromans' :: [Int] -> String
toromans' [] = ""
toromans' (x:xs)
  | x == 0         = "" ++ (toromans' xs)
  | length xs > 2  = (take x $ repeat 'M') ++ (toromans' xs)
  | length xs > 1  = (hundreds !! (x - 1)) ++ (toromans' xs)
  | length xs > 0  = (tens !! (x - 1)) ++ (toromans' xs)
  | otherwise      = ones !! (x - 1)
