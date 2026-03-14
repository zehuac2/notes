- [Overview](#overview)
- [Xcode](#xcode)
- [Frameworks](#frameworks)
  - [`UIKit`](#uikit)
- [Platforms](#platforms)

# Overview

Universal links allows app to communicate with each other

- Browsers can open apps
- Apps can open apps (including itself)
- Apps can open browsers

Universal links need to be declared in the app bundle

# Xcode

Edit `Info.plist` to add supported URLs

# Frameworks

## `UIKit`

```swift
class SceneDelegate: UISceneDelegate {
  func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
    for context in URLContexts {
      print("context: \(context.url)")
    }
  }
}
```

Handle url opening in `UISceneDelegate` implementation

```swift
UIApplication.shared.open(
  url,
  options: [:]) { complete in print("complete: \(complete)") }
```

Open URL by using `UIApplication`

# Platforms

- [SwiftUI](swift-ui/life-cycle/UniversalLink.md)
