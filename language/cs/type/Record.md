# Auto-Implemented

Records are different from classes in that

- Records are immutable and equatable
- Records have different way of declaring properties

Compiler generate the follolwing methods for records:

- `Object.Equals`
- `IEqutable<T>` conformance
- `Object.GetHashcode`
- `==`, `!=` operators
- `Object.ToString`

These methods can also be mannually implemented.

# Properties

```cs
public record Person
{
  public string Name;
  public int Age { get; set; }
}

public class Program
{
  public static void Main(string[] args)
  {
    var person = new Person()
    {
      Name = "N";
      Age = 17
    };
  }
}
```

## Constructors

```cs
public record Person(int Age);

public class Program
{
  public static void Main(string[] args)
  {
    var person = new Person(5);
  }
}
```

## Mutations

```cs
var personA = new Person(1);
var personB = personA with { Name = "Peter" };
```

Since records are not mutable, record mutations always create a new instance
