# Default

```cs
void Foo(Boo boo = default)
```

# Local function

```cs
int Compute() => ...
```

# Overload Disambiguate + Optional parameter

```cs
Compute(label: 12)
```

# Generic Constraint

- Delegate
- Enum
- `unmanaged` (pointers)

# Ref

```cs
ref int a = ref Foo();
ref readonly int a = ref Foo();

int c = a
a = ref c;

ref readonly int Foo(int a)
{
  return ref a;
}
```

# Span

span indexer returns refs

# Stackalloc

```cs
Span<int> s = stackalloc int[];
```

# Type Matching

```cs
swich (a)
{
  case TypeA aa:
  case TypeB ab:
  case _:
}

return a switch
{
  case ... => value,
  case ... => value,
  ... when value == value => value,
  Type { P: value, PP: var pp } t => value,
  _ => value,
};
```

# Deconstructor with switch

Type (\_ var a, var b) =>

# Range

array[^1] grab last one

# Async

IAsyncEnumerable

# Unsafe

unchecked {}

# ?

ZString
