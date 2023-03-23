# Overview

```fsharp
[1; 2; 3] // int list
["1"; "2"; "3"] // string list
```

- Lists are of type ``T list`
- **Immutable**
- **Namespace**: `FSharp.Collection`
  - No open needed

# Operations

## Concatenate Element

```fsharp
element::list
```

Gives `[element; list...]`

## Concatenate Lists

```fsharp
list1@list2
```

Gives `[list1...; list2...]`
