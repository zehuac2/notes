# `comparingX(keyExtractor)`

```java
Interval[] intervals = //
Arrays.sort(intervals, Comparator.comparingInt((Interval a) -> a.start));
```

- `keyExtractor` extracts a key of type `X`. The key is used for comparison
