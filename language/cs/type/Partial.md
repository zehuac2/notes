# Partial Type

```cs
// Window.cs
public partial class Window
{
}

// Generated.cs
public partial class Window
{
}
```

`partial` keyword allows multiple definition of the same type to be merged

## Partial Struct

```cs
public partial struct Renderer
{
  public int A;
}

public partial struct Renderer
{
  public int B;
}
```

Partial struct expect all of the fields to be declared in one definition, so
that the fields can be ordered. **The above code would trigger warning**
