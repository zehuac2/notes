# String Interpolation

```kotlin
val variable = ""
val textA = "$variable foo"
var textB = "length = ${variable.length}"
```

- Would call `toString()` method on variable if available
- `"$variable" only to string the symbol directly after `$`
