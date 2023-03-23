- [Overview](#overview)
  - [Monad Definition](#monad-definition)
  - [Monad Types](#monad-types)
  - [`do`](#do)
  - [Implementing `Monad`](#implementing-monad)
- [Topics](#topics)

# Overview

## Monad Definition

Monad is a class

```haskell
class Monad m where
  (>>=) :: m a -> (a -> m b) -> m b
  (>>) :: m a -> m b -> m b
  return :: a -> m a
  fail :: String -> m a
```

- **Required**: `return` takes a a value and put the value inside the container
- **Required**: `>>=` (bind): transform a monad containing type `a` to a monad
  containing type `b`
- **Optional**: `>>` (then): takes two monad and returns the second monad
- **Optional**: `fail`: error handling

## Monad Types

- `[T]`: `>>=` enumerate through each element
- `Maybe`: `>>=` invoke continuation only if it is not `Nothing`
- `StateT`: used to implement state monad

## `do`

```haskell
main = do
  putStrLn "a"
  putStrLn "b"
  -- equivalenet to
  -- putStrLn "a" >>
  -- putStrLn "b"

  a <- foo
  putStrLn a
  -- equivalenet to
  -- foo >>= \(a ->
  -- putStrlln a)
```

## Implementing `Monad`

```haskell
module Main where

data Container a = Container a
  deriving(Show, Eq)

instance Functor Container where
  fmap f (Container v) = Container (f v)

instance Applicative Container where
  pure value = Container value
  (Container f) <*> (Container v) = Container (f v)

instance Monad Container where
  return c = undefined
  (Container v) >>= f = f v

main = do
  putStrLn "foo"
```

```haskell
main =
  putStrLn "first" >>
  putStrLn "second"
```

# Topics

- [State Monad](StateMonad.md)
- [Monad Operations](Operations.md)
