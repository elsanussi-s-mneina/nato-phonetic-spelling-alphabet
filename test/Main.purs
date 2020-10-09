module Test.Main where

import Prelude
import Test.Assert (assert)
import Effect (Effect)
import Effect.Class.Console (log)
import Main (spell)
main :: Effect Unit
main = do
  assert (1 == 1)
  assert (spell "hello" == "hat elbow lambda lambda orange")
