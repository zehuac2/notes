# Using Parenthesis

```cs
class MainClass
{
  public static void Parenthesis(object o)
  {
    Console.WriteLine((MainClass) o);
  }
}
```

Parenthesis would throw an exception if the type cast failed.

# Using `as`

```cs
class MainClass
{
  public static void As(object o)
  {
    Console.WriteLine(o as MainClass);
  }
}
```

As would return null if the type cast failed.
