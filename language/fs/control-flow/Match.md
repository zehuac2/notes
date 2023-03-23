# Overview

```fsharp
match value with
| pattern [when condition] -> value
| _ -> value
```

# Patterns

## Constants

```fsharp
match value with
| 0 -> 0
| 1 -> 2
```

# `when` Condition

```fsharp
match value with
| i when i > 0 -> 1
| i when i <= 0 -> -1
```

# AND, OR

# Resources

- [Match Expression](https://fsharpforfunandprofit.com/posts/match-expression/)
