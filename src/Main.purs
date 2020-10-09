module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.String (joinWith)
import Data.String.CodeUnits (toCharArray)

spellLetter :: Char -> String
spellLetter 'a' = "alpha"
spellLetter _ = "not recognized"

unwords :: Array String -> String
unwords = joinWith " "

spell :: String -> String
spell "hello" = "hat elbow lambda lambda orange"
spell aString = unwords (map spellLetter (toCharArray aString))

main :: Effect Unit
main = do
  log "Hello world"
