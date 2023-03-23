# Function

```haskell
foo a = a + 10
boo a b = a + b + 10
```

- Haskell functions only take one parameter
- In `boo a b = ...`, `boo` is a function takes `a` parameter a, and returns a
  function that takes a parameter `b`
- Functions are [functors](Functor.md)
- `id`: a function that does not do anything

## Types

```haskell
foo :: Param -> Return
-- implementation of foo

boo :: Param -> Param -> Return
-- implementation of boo
```

In haskell, `->` is right associative. This make the types in the following
groups equivalent

```
A -> B -> C -> D
A -> B -> (C -> D)
A -> (B -> (C -> D))
```

```
(A -> B) -> C -> D
(A -> B) -> (C -> D)
```
