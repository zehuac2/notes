# Dispose Order

```cs
using var stream = new MemoryStream();
using var reader = new StreamReader(stream);
using var writer = new StreamWriter(stream);
```

Writer may flush on dispose, reader do not. So writer needs to be disposed first
