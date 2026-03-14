# Overview

```hs
newtype Age = Age { age :: Int }
  deriving(Show)

newtype Meter = Meter { meter :: Int }
  deriving(Show)

printAge :: Age -> IO ()
printAge a = do
  print (age a)

main :: IO ()
main = do
  -- compiles fine
  printAge $ Age 10

  -- compiler error
  printAge $ Meter 10
```

- `newtype` can only **have one constructor**, i.e. can be created using
  `Type value` expression
  - **At runtime**: The type of the field of `newtype` is treated the same as
    the `newtype`
  - **At compile time**: the type of the field of `newtype` is not the same as
    the `newtype`
- `newtype` can have `deriving`
