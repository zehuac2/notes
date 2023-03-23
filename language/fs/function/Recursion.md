# Tail Recursion

```fsharp
let rec Foo a b =
  match b with
  | 0 -> a
  | _ -> Foo (a + a) (b - 1)
```

- Tail recursions might be optimized to remove recursion

# Mutually Recursive Functions
