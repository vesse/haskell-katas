module Test.FizzBuzzTest where

import Test.Hspec

import KataFizzBuzz.FizzBuzz (fizzbuzz)

fizzbuzz_specs = describe "fizzbuzz" [
  it "returns an empty list when given an empty list"
    (fizzbuzz [] == []),

  it "returns [\"1\"] when given list [1]"
    (fizzbuzz [1] == ["1"]),

  it "returns [\"1\",\"2\"] when given list [1,2]"
    (fizzbuzz [1,2] == ["1","2"]),

  it "returns [\"Fizz!\"] when given list [3]"
    (fizzbuzz [3] == ["Fizz!"]),

  it "returns [\"Fizz!\",\"Buzz!\"] when given list [3,5]"
    (fizzbuzz [3,5] == ["Fizz!","Buzz!"]),

  it "returns [\"1\",\"2\",\"Fizz!\",\"4\",\"Buzz!\"] when given list [1..5]"
    (fizzbuzz [1..5] == ["1","2","Fizz!","4","Buzz!"]),

  it "returns [\"Fizz!\"] when given list [13]"
    (fizzbuzz [13] == ["Fizz!"]),

  it "returns [\"Buzz!\"] when given list [52]"
    (fizzbuzz [52] == ["Buzz!"])
  ]
