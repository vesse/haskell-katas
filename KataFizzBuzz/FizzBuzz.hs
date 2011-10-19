-- http://codingdojo.org/cgi-bin/wiki.pl?KataFizzBuzz
module KataFizzBuzz.FizzBuzz where

import Char (intToDigit)

fizzbuzz :: [Int] -> [String]
fizzbuzz [] = []
fizzbuzz (x:xs)
  | div_or_contains x 3 = "Fizz!" : fizzbuzz xs
  | div_or_contains x 5 = "Buzz!" : fizzbuzz xs
  | otherwise           = show x : fizzbuzz xs
  where div_or_contains a b = a `mod` b == 0 || elem (intToDigit b) (show a)
