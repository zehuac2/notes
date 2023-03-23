# Require Components

```cs
[RequireComponent(typeof(C))]
[RequireComponentTag(typeof(C))]
```

Jobs marked with these two attributes would only be run on entities with the
specifiied components, but won't read or write to them
