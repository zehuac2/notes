- [Overview](#overview)
  - [Functions Only Take One Parameter](#functions-only-take-one-parameter)
  - [Pure Functions](#pure-functions)
  - [Core Principles of Functional Programming](#core-principles-of-functional-programming)
    - [Functions as First Class Citizens](#functions-as-first-class-citizens)
    - [Types are Classes](#types-are-classes)
- [Topics](#topics)
- [References](#references)

# Overview

## Functions Only Take One Parameter

```fs
// int -> int -> int
let add x y = x + y
```

- `add 0` gives: `int -> int`
- `add 0 1` gives `int`

## Pure Functions

**Pure functions** are functions that has **no side effects**, i.e. given the
same set of inputs, always produce the same result

## Core Principles of Functional Programming

1. **Functions are first class citizens**, i.e. things
2. **Composition everywhere**: compose a few functions to make a new function
3. **Types are not classes**

### Functions as First Class Citizens

Something is first class if it can be

- Assigned to a variable
- Passed as a parameter
- Returned as a result

### Types are Classes

```fs
type AND =
  { A: int; B: int }

type OR =
  | Male
  | Female
```

a type is a name for a set of things

- **Algebraic type system**: types can be composed
  - **AND**: record in F#
  - **OR**: discriminated union in F#
- Composable types can only be possible with the separation of data and behavior

# Topics

- [Why Object Oriented Programming Sucks](OOSucks.md)
- [Higher Order Functions](HighOrderFunction.md)
- [Functional Design Patterns](Patterns.ipynb)
- [Monad](Monad.ipynb): builds computation expression
- [Monad Transformer](MonadTransformer.ipynb): combines multiple monads into one
- [State Monad](StateMonad.ipynb): creating state in monads

# References

- [Functional Design Patterns - Scott Wlaschin](https://www.youtube.com/watch?v=srQt1NAHYC0&list=WL&index=15)
