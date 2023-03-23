# Higher Order Function

The type of function parameter in higher order functions **must be wrapped in
parenthesis to avoid confusion**

```haskell
map :: (a -> b) -> [a] -> [b]
map f input = ...
```
