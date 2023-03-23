# `Prelude.curry`

`Prelude.curry` is a function that converts a function of type `(a, b) -> c` to
a function of type `a -> b -> c`

## Implementation

```haskell
module Main where

sum (a, b) = a + b

curry :: ((a, b) -> c) -> a -> b -> c
curry f a b = f (a, b)

main :: IO ()
main = do
  let curried = Main.curry Main.sum
  putStrLn (show (curried 1 2))
```
