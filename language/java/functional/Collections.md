# Collections

`class Collections` contains helper methods for creating or operating on
collections

## `fill`

```java
class Collections {
  static <T> void Collections.fill(List<? super T>, T obj);
}
```

Fill a list with values

- No resizes

## `nCopies`

```java
class Collections {
  static <T> List<T> Collections.nCopies(int n, T o);
}
```

Returns a list with `o` copied `n` times
