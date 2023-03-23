# Meta Data

```java
obj.getClass()  // returns Class<? extends T>
```

Gets the type of an object.

- Objects of an type always returns one instance of `Class<? extends T>`;
- Object of different types return different instances of `Class<? extends T>`;
  - `a.getClass() == b.getClass()` would be false if `a` and `b` are of
    different types, **even if a's type and b's type have inheritance relation**
