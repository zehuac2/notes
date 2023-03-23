# String

Swift strings are stored using UTF8 encoding.

# String Interpolation

- Implemented by types conforming to `StringInterpolationProtocol`
  - `Swift.String` (standard library string) provides
    `Swift.String.StringInterpolation` type for interpolating strings
  - Extend `Swift.String.StringInterpolation` to add methods with the name
    `appendInterpolation` provide custom interpolations
    - Use `self.appendLiteral` or other `appendInterpolation` methods to
      implement extensions
- `\(value)` translates to `appendInterpolation(value)`
- `\(a: value)` translates to `appendInterpolation(a: value)`
- `\(a: value, b: value)` translates to
  `appendInterpolation(a: value, b: value)`

```swift
extension String.StringInterpolation {
  mutating func appendInterpolation(a: Int, b: Int) {
    self.appendLiteral("\(a), \(b)")
  }
}

let a = "\(a: 12, b: 17)"
```
