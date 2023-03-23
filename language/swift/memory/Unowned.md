# Unowned

## Unsafe

```swift
class Foo {
  unowned(unsafe) var boo: Boo!
}
```

Using `unowned(unsafe)` would disable runtime checks. Application may or may not
crash when accessing deallocated memories (same as in C/C++)
