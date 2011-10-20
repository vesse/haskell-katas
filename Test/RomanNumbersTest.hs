module Test.RomanNumbersTest where

import Test.Hspec

import KataRomanNumbers.RomanNumbers (toromans)

toromans_specs = describe "toromans" [
  it "returns and empty string when given 0"
    (toromans 0 == ""),

  it "returns \"I\" when given 1"
    (toromans 1 == "I"),

  it "returns \"V\" when given 5"
    (toromans 5 == "V"),

  it "returns \"X\" when given 10"
    (toromans 10 == "X"),

  it "returns \"XV\" when given 15"
    (toromans 15 == "XV"),

  it "returns \"IV\" when given 4"
    (toromans 4 == "IV"),

  it "returns \"IX\" when given 9"
    (toromans 9 == "IX")
  ]