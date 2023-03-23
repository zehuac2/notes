# KVO

All objects subclassing `NSObject` can be observed using
`object.publisher(for:)` method when Combine is imported

```swift
let object = Foo(context: ...)
let cancellable = object.publisher(for: \.name)
  .sink { name in print(name) }
```
