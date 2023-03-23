- [Open URL](#open-url)
- [Handle URL](#handle-url)

# Open URL

```swift
struct MyView {
  @Environment(\.openURL)
  var openURL: OpenURLAction

  func open() {
    openURL("...")
  }
}
```

# Handle URL

```swift
struct MyView {
  var body: some View {
    SomeView()
      .onOpenURL { url in
        print(url)
      }
  }
}
```
