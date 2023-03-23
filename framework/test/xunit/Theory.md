# Theory

Aka. parameterize tests

- Theory cases are marked with `[Theory]` attribute

# Data

## `[InlineData]`

```cs
public class Test
{
  [Theory]
  [InlineData(1, 2)]
  public void Test(int a, int b)
  {
    // ...
  }
}
```

## `[ClassData]`

```cs
using System.Collections;
using System.Collections.Generic;

public class Test
{
  class Data : IEnumerable<object[]>
  {
    // ...
  }

  [Theory]
  [ClassData(typeof(Data))]
  public void Test(int a, int b)
  {
    // ...
  }
}
```

Classes that act as class data must implment `IEnumerable<object[]>` where
`object[]` represents parameters

## `[MethodData]`

```cs
using System.Collections.Generic;

public class Test
{
  class Data
  {
    public static IEnumerable<object[]> GetData()
    {
      // ...
    }
  }

  [Theory]
  [MethodData(nameof(GetData), MemberType = typeof(Data))]
}
```

- Methods that provides data be static
- If the static methods are in a different class, `MemberType = type` must be
  specified
