# Applicatives

```haskell
class (Functor f) => Applicative f where
  pure a :: a -> f a
  f (a - > b) <*> f a :: f b
```

- **Required**: `pure a` takes a and put it into the applicative type in the
  simplest form
- **Required**: `<*>` takes a container with a function and the same container
  with a value, apply the function and output the same container with the output
  value

```haskell
data Container a = Container a
  deriving(Show, Eq)

instance Applicative Container where
  pure value = Container value
  (Container f) <*> (Container v) = Container (f v)

-- Container (\x -> x * 2) <*> (Container 2)
-- output: Container 4
```
