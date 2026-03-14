# `case expression of patterns`

```haskell
foo x =
  case x of
    0 -> 10
    100 -> 10
    otherwise -> 0

main = do
  -- output: 10
  putStrLn (show (foo 0))
```

Match an expresion against a list of `pattern -> output`, separated by `\n`. The
`output` would be the output the case of statement.
