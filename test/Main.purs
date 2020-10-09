module Test.Main where

import Prelude

import Data.String (toLower)

import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)


import Test.QuickCheck ((===))
import Test.Spec.QuickCheck (quickCheck)

import Effect (Effect)
import Effect.Aff (launchAff_)

import LatinSpellingAlphabet (spell, spellLetter)



-- See https://en.wikipedia.org/wiki/NATO_phonetic_alphabet
main :: Effect Unit
main = launchAff_ $ runSpec [consoleReporter] do
  describe "spell a word" do
    it "hello" (spell "hello" `shouldEqual` "Hotel Echo Lima Lima Oscar")
    it "a" (spell "a" `shouldEqual` "Alpha")
  describe "spell a letter" do
    it "a" (spellLetter 'a' `shouldEqual` "Alpha")
    it "b" (spellLetter 'b' `shouldEqual` "Bravo")
    it "c" (spellLetter 'c' `shouldEqual` "Charlie")
    it "d" (spellLetter 'd' `shouldEqual` "Delta")
    it "e" (spellLetter 'e' `shouldEqual` "Echo")
    it "f" (spellLetter 'f' `shouldEqual` "Foxtrot")
    it "g" (spellLetter 'g' `shouldEqual` "Golf")
    it "h" (spellLetter 'h' `shouldEqual` "Hotel")
    it "i" (spellLetter 'i' `shouldEqual` "India")
    it "j" (spellLetter 'j' `shouldEqual` "Juliett")
    it "k" (spellLetter 'k' `shouldEqual` "Kilo")
    it "l" (spellLetter 'l' `shouldEqual` "Lima")
    it "m" (spellLetter 'm' `shouldEqual` "Mike")
    it "n" (spellLetter 'n' `shouldEqual` "November")
    it "o" (spellLetter 'o' `shouldEqual` "Oscar")
    it "p" (spellLetter 'p' `shouldEqual` "Papa")
    it "q" (spellLetter 'q' `shouldEqual` "Quebec")
    it "r" (spellLetter 'r' `shouldEqual` "Romeo")
    it "s" (spellLetter 's' `shouldEqual` "Sierra")
    it "t" (spellLetter 't' `shouldEqual` "Tango")
    it "u" (spellLetter 'u' `shouldEqual` "Uniform")
    it "v" (spellLetter 'v' `shouldEqual` "Victor")
    it "w" (spellLetter 'w' `shouldEqual` "Whiskey")
    it "x" (spellLetter 'x' `shouldEqual` "X-ray")
    it "y" (spellLetter 'y' `shouldEqual` "Yankee")
    it "z" (spellLetter 'z' `shouldEqual` "Zulu")
  describe "lowercase and uppercase treated equally" do
    it "full alphabet" (spell "abcdefghijklmnopqrstuvwxyz" `shouldEqual` spell "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    it "works same on any lowercased string" 
      (quickCheck \aString -> spell aString === spell (toLower aString))
