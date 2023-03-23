# Overview

```cs
using System.Diagnostics;

public class Program
{
    [Conditional("DEBUG")]
    public static void Foo()
    {
        Console.WriteLine("Foo()");
    }

    public static void Main(string[] args)
    {
        Foo();
    }
}
```

`Foo()` is only executed if `DEBUG` is defined
