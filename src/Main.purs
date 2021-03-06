module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import LatinSpellingAlphabet as LatinSpellingAlphabet

spell :: String -> String
spell = LatinSpellingAlphabet.spell

main :: Effect Unit
main = do
  log "Welcome to the NATO Spelling alphabet application"
  log "Loading Javascript sources succeed"
  log "This program was created by Elsanussi Mneina in October 2020."

