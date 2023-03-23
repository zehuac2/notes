# Linked List

## Initialization

```haskell
a = [1, 2, 3]
```

**Note that this is a linked list, not an array**

## Type

TODO:

## List Generation Expression

```haskell
a = [operation | element, element, predicate, predicate]
```

- **Each element** would form the equivalent of **a layer of for loop** in other
  languages
  ```haskell
  [x + y | x <- [1, 2, 3], y <- [10, 20]]
  -- output: [11,21,12,22,13,23]
  ```
- Predicates must return bools
  ```haskell
  [x | x <- [1, 2, 3], even x]
  -- output: [2]
  ```

## Runtime

- **Prepend**: `O(1)`
- **Append**: `O(n)`
