module Test.DictReplacerTest where

import Test.Hspec
import qualified Data.Map as Map

import KataDictReplacer.DictReplacer

dictreplacer_specs = describe "dictreplace" [
  it "returns the given string if given dictionary is empty"
    (dictreplace "FooBar" (Map.fromList []) == "FooBar")
  ]