# LING

- **Strongly typed**: LIGN expressions are strongly typed
- **Lazy**: query outputs are not executed until they are evaluated
- Not everything can be done via LING expressions

## Purposes

A LING expressions does one of the following three things

- **Filter**: select a subset of a collection
- **Map**: transform the elements of a collection to something else
- Retrieves a singleton values about a source data
  - Count
  - Max element
  - First match

## LING Expressions

```cs
IEnumerable<int> output =
  from a in source
  // ...
  select a
```

LING expressions must

- Start with a `from` clause
  ```cs
  from name in source
  ```
- End with
  - `group`
  - `from`

## `System.Ling`

```cs
using System.Ling
```

`System.Ling` provides implementations for operation used in LING expressions;
the namespace must be used before using any LING expressions
