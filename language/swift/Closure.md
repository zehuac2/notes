# Capturing Values

```swift
class Data {
  var value: Int = 0
}

var value = 10
var data = Data()

let printer = { [value, data] in
  print("data = \(data.value)")
  print("value = \(value)")
}
printer()

value = 29
data.value = 22

// without [value], value will be 29
// data.value will be 22 regardless
printer()
```

- Variables don't have to be captured by a capture list in order to be
  referenced; **values not captured will be**:
  - **Mutable**
  - **Kept alive **as long as the closure is alive
- **Capture list**: `{ [capture list...] parameters... in }`: variables in
  capture lists are **associated, i.e. copied, with the closure at the time of
  the closure's creation**
  - Captured variables are **immutable**
  - **Value types are copied**
  - **Reference types are strongly referenced**
    - Use `[weak x]`, `[unowned x]` for different referencing method to avoid
      cycle reference

# `@autoclosure`

```swift
func foo(value: @autoclosure () -> Int) {
  print(value())
}
```

`@autoclosure` automatically convert a expression to be a closure

- **For callers**, the parameter would have the type of the return type of the
  closure (ex. `Int`)
- **Inside the function**, the parameter would still be a closure
