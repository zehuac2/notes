# `let assignments in output`

```haskell
foo x =
  let constant = 17
    in constant + x

moo :: Int -> IO Int
moo x =
  let twice = x * 2
  return twice

main = do
  -- gvies 27
  putStrLn (show (foo 10))
```

Define a set of assginments separated by `;` and use the assignments in
`output`. **The `output` would be the output of the "let in" statement**

- `in` is not needed in `do` blocks
