# Object Initializers

Object initializers allows

- The assignments of `set` or `init` properties and fields during construction
- Setting indexers

```cs
class Foo
{
  public string Foo { get; set; }
  public int Num { get; set; }
  public int ReadOnly { get; init; }

  public Foo(int num)
  {
    // ...
  }

  public Foo()
  {
    // ...
  }
}

Foo foo = new Foo
{
  Foo = ""
};

Foo foo = new Foo(17)
{
  Foo = ""
};

Dictionary<int, string> d = new Dictionary<int, string>
{
  [17] = "Q"
};
```

# Collection Initializers

Collection initializers can be used on types that implement

- `interface IEnumerable`
- `Add` methods with the appropriate signatures
  - To use add methods with more than one parameters, use the format:
    `{ params... }`
  - The types of parameters of `Add` does not need to match the types in the
    `IEnumerable`

```cs
List<string> list = new List<string>
{
  "Q",
  "QQ"
};

Dictionary<int, string> dict = new Dictionary<int, string>
{
  { 17, "Q" }
};
```
