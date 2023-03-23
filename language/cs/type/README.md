- [Overview](#overview)
- [Basic Behaviors](#basic-behaviors)
  - [`Object`](#object)

# Overview

- [Record](Record.md)
- Classes
- Structures
  - Structures can be **boxed** into class type `object`; boxed structures can
    be unboxed

# Basic Behaviors

## `Object`

All types `struct`, `record`, `class` inherits from `Object`

- `int GetHashCode()`: hash code
- `boolean Equals(object)`: equality
  - `IEquatable<T>` provides typed variant: `boolean Equals(T)`
- `string ToString()`: string representation
- `Type GetType()`: get type
  - Not available in tuples
