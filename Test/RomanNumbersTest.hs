module Test.RomanNumbersTest where

import Test.Hspec

import KataRomanNumbers.RomanNumbers (toromans)

toromans_specs = describe "toromans" [
  it "returns and empty string when given 0"
    (toromans 0 == "")
  ]