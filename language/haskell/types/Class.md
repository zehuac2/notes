# Class

Classes in haskell is the equivalent of interface or protocol in other
languages. It requires a type to have certain methods

- Classes can provide default implementation
- Classes can be used to constraint parameters
- Built in classes can be implemented by the compiler

```haskell
module Main where

class Foo a where
  -- requirement
  foo :: a -> Int
  superfoo :: a -> Int

  -- default implementation
  superfoo a = 2 * (foo a)

data Person = Person { name :: [Char] }
  -- auto implement
  deriving (Show)

usefoo :: Foo a => a -> Int
usefoo val = foo val

usesuperfoo :: Foo a => a -> Int
usesuperfoo val = superfoo val

-- Implementation
instance Foo Person where
  foo person = 1

main = do
  let person = Person "Peter"

  putStrLn (show (usefoo person))
  putStrLn (show (usesuperfoo person))
```
