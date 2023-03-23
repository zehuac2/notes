# Variance

- **Covariance**: casting an object with a more derived type argument to an
  object with a less derived type argument
- **Contravariance**: casting an object with a less derived type argument to an
  object with a more derived type argument
- Objects can only be variantly casted to
  - **Generic interfaces**
  - **Generic delegates**

## Covariance Example

```cs
List<string> list = new List<string>();

// Covariance
IEnumerable<object> objs = list;
```

## Contravariant Example

```cs
Comparer<object> comparer = // ...
IComparer<string> stringComparer = comparer;
```
