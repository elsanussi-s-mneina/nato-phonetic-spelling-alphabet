{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "nato-phonetic-alphabet"
, dependencies =
  [ "assert"
  , "console"
  , "effect"
  , "lists"
  , "psci-support"
  , "quickcheck"
  , "spec"
  , "spec-quickcheck"
  , "strings"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
