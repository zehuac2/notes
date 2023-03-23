# Binding

Binding is only allowed on macOS

## Bindable Properties

Bindiable properties must be

- `@objc`
- `dynamic`

```swift
class ViewController: NSViewController {
  @objc
  dynamic var value: String = ""
}
```

- Some controls do not update bindable properties as user make changes (ex. text
  field). **Look into delegate instead**
