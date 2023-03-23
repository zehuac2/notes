# `-`

```hs
(-17)
```

**Negate** operator must be wrapped in parenthesis

# `:`

```hs
foo (x:xs) = ...
```

Split the input linked list into the head (`x`) and the rest of the linked list
(`xs`)

```hs
a = (0:[1, 2, 3])
```

Give the linked list (`[1, 2, 3]`), a new head (`0`)

- Constant runtime

# `++`

```hs
"a" ++ "b"
[1, 2, 3] ++ [4, 5, 6]
```

Creates a new list by joining two lists

# `$`

```hs
$ :: (a -> b) -> a -> b
foo = (+1) $ 16
-- gives 17
```

Apply function on value
