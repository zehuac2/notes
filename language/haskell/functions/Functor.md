- [Overview](#overview)
  - [Example](#example)
- [Function Composition](#function-composition)
- [Functor Laws](#functor-laws)
  - [Applicative Functor Laws](#applicative-functor-laws)
- [Common Types and Functions](#common-types-and-functions)

# Overview

```haskell
class Functor f where
  fmap :: (a -> b) -> f a -> f b
```

- (Required) `fmap g x`: apply `g` to every `a` in the box `x` to produce a box
  of `b`
- `pure :: a -> f a`: box a value in a functor
- `<*> :: f (a -> b) -> f a -> f b`: applying boxed function to a box
- `(<$>) :: Functor f => (a->b) -> f a -> f b`: infix version of `fmap`; similar
  to `$`
- `liftA2 :: (a -> b -> c) -> f a -> f b -> f c`: takes a binary function and
  make it work with boxed values
- `sequenceA :: (Applicative f => [f a] -> f [a]`: takes a list of boxes into a
  box containing a list
- **Functions are functors**

## Example

```haskell
data Container a = Container a
  deriving(Show, Eq)

instance Functor Container where
  fmap f (Container v) = Container (f v)
```

# Function Composition

- `fmap f g`, `f . g`: returns a function that feed the output of g to `f`

# Functor Laws

- Applying the identity function (`id`) does not change the functor
- Applying fmap with two functions is like applying their compositions
  ```haskell
  fmap (f . g) = fmap f . fmap g
  fmap (\y -> f (g y)) x = fmap f (fmap g x)
  ```

## Applicative Functor Laws

```haskell
pure f <*> = fmap f x
pure id <*> x = x
pure (.) <*> x <*> y <*> z = x <*> (y <*> z)
pure f <*> pure x = pure (f x)
x <*> pure y = pure ($ y) <*> x
```

- `<*>` is **left to right**
- `($ y)`: apply arg `y`

# Common Types and Functions

- `Control.Applicative.ZipWith`
