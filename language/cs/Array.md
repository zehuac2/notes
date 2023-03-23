# Fixed Size Array

```cs
unsafe struct Foo
{
  public fixed char Data[10];
}
```

`fixed T Data[size]` creates an array of fixed length.

- Only usable in unsafe context
- Fixed array has pointer type `T *`
