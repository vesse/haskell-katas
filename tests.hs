import Test.Hspec

import Test.FizzBuzzTest
import Test.RomanNumbersTest
import Test.DictReplacerTest

main = do
       hspec fizzbuzz_specs
       hspec toromans_specs
       hspec dictreplacer_specs
