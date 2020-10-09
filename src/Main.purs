module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)


spell :: String -> String
spell "hello" = "hat elbow lambda lambda orange"
spell _ = "n/a"

main :: Effect Unit
main = do
  log "Hello world"
