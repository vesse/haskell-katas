import KataFizzBuzz.FizzBuzz (fizzbuzz)

main = putStrLn . unlines $ fizzbuzz [1..100]
