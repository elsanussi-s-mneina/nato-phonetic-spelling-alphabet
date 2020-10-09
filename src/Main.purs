module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.String (joinWith)
import Data.String.CodeUnits (toCharArray)

spellLetter :: Char -> String
spellLetter ch = 
  case ch of 
    'a' -> "Alpha"
    'b' -> "Bravo"
    'c' -> "Charlie"
    'd' -> "Delta"
    'e' -> "Echo"
    'f' -> "Foxtrot"
    'g' -> "Golf"
    'h' -> "Hotel"
    'i' -> "India"
    'j' -> "Juliett"
    'k' -> "Kilo"
    'l' -> "Lima"
    'm' -> "Mike"
    'n' -> "November"
    'o' -> "Oscar"
    'p' -> "Papa"
    'q' -> "Quebec"
    'r' -> "Romeo"
    's' -> "Sierra"
    't' -> "Tango"
    'u' -> "Uniform"
    'v' -> "Victor"
    'w' -> "Whiskey"
    'x' -> "X-ray"
    'y' -> "Yankee"
    'z' -> "Zulu"
    _   -> "(n/a)"

unwords :: Array String -> String
unwords = joinWith " "

spell :: String -> String
spell aString = unwords (map spellLetter (toCharArray aString))

main :: Effect Unit
main = do
  log "Welcome to the NATO Spelling alphabet application"
  log "Loading Javascript sources succeed"
  log "This program was created by Elsanussi Mneina in October 2020."

