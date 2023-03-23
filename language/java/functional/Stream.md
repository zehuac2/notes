- [Overview](#overview)
  - [Primitive Streams](#primitive-streams)
- [Building Streams](#building-streams)

# Overview

- All implementors of `java.util.Collection<T>` contains a `.stream()` function
  that returns a stream
- Arrays can be converted to stream via `Arrays.stream(array)`

## Primitive Streams

`double`, `int`, `long` streams are specialized as `DoubleStream`, `IntStream`
and `LongStream`

- Primitive streams can be converted to `Stream<T>` using `.boxed()`
- Primitive streams can be converted to arrays using `toArray()`

# Building Streams

- `java.util.stream.Stream.builder()`
