# Continuation

```haskell
add a b continue = continue (a + b)

result =
  add 1 2 (\o ->
  add o 1 (\o ->
  add o 2 (\o -> o)))
```

When a haskell function takes an addition function parameter, which accepts the
output of the function, the function parameter is the continuation

- Allows code that looks like code in imparative languages
- **Allows the function to early return** by using the continuation
