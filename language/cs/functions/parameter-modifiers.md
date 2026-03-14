- [Overview](#overview)
- [References](#references)

# Overview

```cs
namespace Foo
{
  struct Boo {}

  class Program
  {
    static void Ref(ref Boo boo) {}
    static void In(in Boo boo) {}
    static void Out(out Boo boo) {}

    static void Main()
    {
      Boo boo;

      Ref(ref boo);
      Out(out boo);
      In(boo);
    }
  }
}
```

- All three parameter modifiers would cause the arguments to be passed by
  reference
- `ref`
  - The argument must be marked with `ref`
  - Argument must be initialized before passing
  - The function has the option to change the argument
- `out`
  - The argument must be marked with `out`
  - Argument do not have to be initialized
  - The function must initialize the argument
- `in`
  - The argument do not need special markings by default
    - When there are other overloads that are passing by values, the passing by
      value ones would be used; **mark argument with `in` to explicitly use the
      pass by reference instance**
  - The argument must be initialized before passing
  - **For value types**
    - The function cannot mutate the parameter's fields
    - The function can still create defensive copies if the parameter's
      non-readonly methods (including properties) are called; to avoid this
      behavior, declare the value types as `readonly struct`
  - **For reference types**, the function can mutate the object, but not the
    reference

# References

- [The `in`-modifier and the readonly structs in C#](https://devblogs.microsoft.com/premier-developer/the-in-modifier-and-the-readonly-structs-in-c/)
