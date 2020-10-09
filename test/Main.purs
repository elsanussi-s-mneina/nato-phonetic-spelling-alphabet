module Test.Main where

import Prelude
import Test.Assert (assert)
import Effect (Effect)
import Main (spell, spellLetter)
main :: Effect Unit
main = do
  assert (1 == 1)
  assert (spell "hello" == "hat elbow lambda lambda orange")
  assert (spell "a" == "alpha")
  assert (spellLetter 'a' == "alpha")