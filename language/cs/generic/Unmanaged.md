# Unmanaged

An unmanaged type whoses instances are not managed by the garbage collector. A
type is unmanaged iff

- It is of a primitive type: `char`, `int`, ...
- It is an enum
- It is a pointer
- It is of a struct that only contain unmanaged types

## Generics

`unmanaged` keyword can be used to constrain generic types to be unmanaged types
only

```cs
void Foo<T>() where T : unamanged {}
```
