# Writing Functions

```fsharp
let Foo paramA (paramB : int) (paramC: int): int = paramB
```

- **Function types**: `(param : type) -> (param : type) -> ... -> return_type`
- **If no parameter types or return type are specified**: F# compiler will try
  to make them as generic as possible
- The **last expression will be used as the return** function
- Function overloading is not allowed for `let` functions

## Recursive Functions

```fsharp
let rec Multiply (a : int) (b : int) = Multiply a (b - 1)
```

## Pattern Matching Function

[TODO:](https://docs.microsoft.com/en-us/dotnet/fsharp/language-reference/match-expressions)

For more information, see [Recursion](Recursion.md)

# Calling Functions

```fsharp
let result = Add 1 2
```

- Using `let` with completely applied functions will make the identifier a value

## Functions Without Parameters

Some functions, ex. constructors have no parameters

- Call using `identifier()`

## Partial Applications

Passing only some parameter will return a new function with a the rest of the
parameters

- Using `let` with partially applied functions will make the identifier a
  function
