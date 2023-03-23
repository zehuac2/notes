# Selection

- Selection state must have the same type as tags, and the same type as `id`
  used in in `List(... id:)`, `ForEach(... id:)`
- **Multiple selection**: be sure to use a `Set<E>` as the selection state,
  **not `Set<E>?`, nor `Set<E?>`**
- **Single selection**: use `E?`

## Navigation Link

This does not work with multiple selection:

```swift
struct Foo: View {
  var body: some View {
    List(data, selection: $selection) { item
      NavigationLink(item, destination: Boo())
    }
  }
}
```
