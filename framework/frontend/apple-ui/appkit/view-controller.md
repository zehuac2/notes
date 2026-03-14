# Initialization

```swift
let vc = MyViewController()
```

Creates a new view controller instance without providing a bundle or a coder

- Without overriding `loadView`, `NSViewController` will attempt to load a view
  associated with `MyViewController`; **Will emit warnings if none is found**
