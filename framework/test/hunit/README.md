# Setup

```yml
tests:
  foo-test:
    main: Spec.hs
    source-dirs: test
    ghc-options:
      - -threaded
      - -rtsopts
      - -with-rtsopts=-N
    dependencies:
      - foo
      - HUnit
```

# Run Tests

```hs
import Test.HUnit

test1 = TestCase (assertEqual "assertEqual expected actual" True False)

tests = TestList [TestLabel "test1" test1]

main :: IO ()
main = runTestTTAndExit tests

```
