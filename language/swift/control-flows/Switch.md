# Type Assertions and Type Casting

```swift
func foo(value: Any) {
  switch value {
  case is String:
    print("is string")
  case let number as Int:
    print("Int = \(number)")
  case let (x, y) as (Int, Int):
    print("(Int, Int) = (\(x), \(y))")
  default:
    print("Unrecognized")
  }
}
```
