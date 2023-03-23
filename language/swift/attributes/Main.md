# `@main`

```swift
@main
struct Foo {
  static func main() {
    print(#function)
  }
}
```

Types annotated with `@main` will be entrypoint of an executable

- The type must have a `static func main()` somewhere
- Cannot be used when there are top-level code in the file, i.e.

  ```swift
  print("top-level")

  @main
  struct Foo {
    static func main() {
      print(#function)
    }
  }
  ```

- `main.swift` is said to contain top level code regardless of its content
