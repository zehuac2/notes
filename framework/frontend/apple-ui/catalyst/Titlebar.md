# Title Bar

```swift
class SceneDelegate {
  func scene(
      _ scene: UIScene,
      willConnectTo session: UISceneSession,
      options connectionOptions: UIScene.ConnectionOptions) {
    // Use this method to optionally configure and attach the UIWindow `window`
    // to the provided UIWindowScene `scene`.
    //
    // If using a storyboard, the `window` property will automatically be
    // initialized and attached to the scene.
    //
    // This delegate does not imply the connecting scene or session are new
    // (see `application:configurationForConnectingSceneSession` instead).
    guard let windowScene = (scene as? UIWindowScene) else { return }

    #if targetEnvironment(macCatalyst)
    if let titlebar = windowScene.titlebar {
      // do something with titlebar
    }
  }
}
```

Titlebar is implemented by `UITitlebar`

- `titleVisibility`: if to display title
  - `.hidden`: don't display title
  - `.visible`: dispaly title
- `toolbarStyle`: size of the toolbar
  - `.unifiedCompact`: toolbar stays on the same row with the title, with reduce
    height. Ex. Xcode's titlebar is `.unifiedCompact`
  - `.unified`: toolbar stays on the same row with the title, with normal
    height. Ex. Finder's titlebar is `.unifiedCompact`
  - `.expanded`: like `.unified`, but the title and toolbar are on different
    rows
- `toolbar`: a toolbar instance
