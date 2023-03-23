```cs
public static class Enumerable {}
```

Provides convenient methods for `IEnumerable` implementations

# First

```cs
public string Foo(IEnumerable<string> list)
{
  return list.First;
}
```

Get the first element of a collection

# Sequence Equals

```cs
public string Foo(IEnumerable<string> listA, IEnumerable<string> listA)
{
  return listA.SequenceEqual(listB);
}
```

If two enumerable has the same elements in the same order
