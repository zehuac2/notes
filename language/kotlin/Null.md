# Null

```kotlin
var name: Type? = /* initialization */
```

- If the compiler know a `name` is null, then without checking for null and
  using `?.` or `!!.` would cause a compiler error

## Null Chaining

```kotlin
name?.foo()
name!!.foo() // would break if name is null
```
