# `output where assignments"

```haskell
foo x = constant + x
  where
    constant = 17

main = do
  -- output: 27
  putStrLn (show (foo 10))
```

`assignments` provides a list of symbols that can be referenced by `output`
**`output` serves as the output of this statement**
