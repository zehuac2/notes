# Overview

- **Tuple types**:
  - `(T0, T1, ...)`, same as `ValueTuple<T0, T1, ...>`
  - `(T0 Name0, T1 Name1, ...)`, names not matching **cause warnings, not
    errors**
- Tuples created with the parenthesis syntax are of type `ValueTuple<...>` to
  improve performance in hot code paths
- To convert a value tuple to a reference tuple (`class Tuple`), use `ToTuple()`
  on `ValueTuple`
- Tuple types implement `IEquatable` and `IComparable`

## Unnamed Tuple

```cs
(string, int) tuple = ("Peter", 20);
Console.WriteLine(tuple.Item1);
```

## Named Tuple

```cs
(string Name, int Age) tuple = (Name: "Peter", Age: 20);
Console.WriteLine(tuple.Name);
```
