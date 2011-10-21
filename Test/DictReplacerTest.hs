module Test.DictReplacerTest where

import Test.Hspec
import qualified Data.Map as Map

import KataDictReplacer.DictReplacer

dict = Map.fromList [
  ("temp", "temporary"),
  ("name", "John Doe")
  ]


dictreplacer_specs = describe "dictreplace" [
  it "returns the given string if given dictionary is empty"
    (dictreplace "FooBar" Map.empty == "FooBar"),

  it "returns \"temporary\" when given \"$temp$\" and a dict"
    (dictreplace "$temp$" dict == "temporary"),

  it "replaces all keywords from given string"
    (dictreplace "hey $name$ i'm $temp$ $temp$" dict == "hey John Doe i'm temporary temporary"),

  it "leaves unexisting keywords in the string"
    (dictreplace "hey $name$ eat some $choco$" dict == "hey John Doe eat some $choco$")
  ]
