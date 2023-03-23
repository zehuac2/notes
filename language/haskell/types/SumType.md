# Sum Type

```haskell
data Person =
  Male [Char] Int
  | Female [Char]
  deriving(Show)

data EnumLiked = A | B
  deriving(Show)

q = Male "Q" 17
o = Female "O"

e = A
```

## Generic

```haskell
data LinkedList a =
  Cons a (LinkedList a)
  | Null
  deriving(Show)

list = Cons 1 (Cons 2 Null)
-- list has type LinkedList Int
```

## Matching

```haskell
module Main where

data Result result error =
  Ok result
  | Error error

log :: Result [Char] [Char] -> [Char]
log (Ok result) = "Ok: " ++ result
log (Error error) = "Error: " ++ error

main :: IO ()
main = do
  putStrLn (Main.log (Ok "result"))
  putStrLn (Main.log (Error "error"))
```

## Common Sum Types

```haskell
data Maybe a =
  Just a
  | Nothing
data Either a b =
  Left a
  | Right b
```
