# Pattern Matching

```haskell
nthsq 1 = 1
nthsq n = 2 * n - 1 + nthsq (n - 1)
```

- When `nthsq` takes a parameter with value being `1`, the first definition is
  executed
- When `nthsq` takes a parameter with other values, the second definition is
  used

Patterns would be matched in the order they appears, therefore, **if the
patterns are of the same type, then they should go from detailed to general**

```haskell
remove (x:xs) = ...
remove [] = []
```

Here `[]` and `(x:xs)` are of different types so it dosen't matter the order in
which they appear

## Deconstruction

```haskell
mylength :: [a] -> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs
```

Here `x:xs` deconstruct a linked list into

- `x`: the first element
- `xs`: the rest of the linked list
