# Virtual Methods

```cs
public class Parent
{
  public virtual void Boo() {}
}
```

## `new`

```cs
public class Foo : Parent
{
  public new void Boo() {}
}
```

- `new` would allow a subclass to contain a method with the same signature as a
  virtual method in the parent class
  - The subclass implementation won't be used if the instance has the type of
    the parent

## `override`

```cs
public class Foo : Parent
{
  public override void Boo() {}
}
```

- `override`: similar to `new`, except the implementation of the subclass would
  always be used
