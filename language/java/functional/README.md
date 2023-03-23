- [Consumer, Supplier, Function, Predicate](#consumer-supplier-function-predicate)
- [`Stream<T>`](#streamt)

# Consumer, Supplier, Function, Predicate

Package `java.util.function`

- `Consumer<T>` takes a value of `T` but does not return anything
- `Function<T, R>` takes a value of `T` and return a value of `R`
- `Supplier<T, R>` returns the value of `R`
- `Predicate<T>`: a `Function` that returns a boolean

Lambda expression can be used to generate conforming types to these interfaces

# `Stream<T>`

[`java.util.stream.Stream<T>`](Stream.md) represents a stream of values and is
where functional programming in Java operates on.
