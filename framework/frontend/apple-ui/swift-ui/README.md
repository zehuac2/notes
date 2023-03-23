# Table of Contents

- [Table of Contents](#table-of-contents)
- [Concepts](#concepts)
  - [Apps](#apps)
- [Behind the Scenes](#behind-the-scenes)
  - [Identities](#identities)
  - [Lifetime](#lifetime)
- [Resources](#resources)

# Concepts

- **Views**: a piece of the interface
  - Views are built using the result builder, `@ViewBuilder`
    - `@ViewBuilder` must be explicitly used for helper functions that create
      views
- **States**: `@State` and `@StateObject` are preserved across updates
  - Only the views that depend on changed state are updated
  - Dependencies:
    - Parameters
    - `@Binding`
    - `@Environment`
    - `@State`
    - `@StateObject`
    - `@ObservableObject`
    - `@Environment`
  - For more information on data, see [Data](Data.md)
- **Modifiers**:
  - **Inert Modifiers**: modifiers that does not modify render results
    - Cheap
    - Can be pruned away by the framework
    - Uses:
      - [Life cycle](LifeCycle.md)
      - [Focus](Focus.md)
- **Scenes**: a presentation of views in distinct regions, i.e. windows on
  macOS; scenes can be presented as tabs
  - Scenes can contain commands
  - `DocumentGroup`
  - `WindowGroup`
  - `Settings` (macOS only)
  - **When appropriate**: the system may create new scenes using
    - [Universal Links](life-cycle/UniversalLink.md)
- **Commands**: commands are realized differently on different platforms
  - **macOS**: menus + keyboard shortcut
  - **iPadOS**: keyboard shortcut
- **Apps**: scenes make up apps
- **IDs**: identifiers are used by SwiftUI to determine when to persist, and
  when to destroy views
- **Tags**: tagas are used for selection purposes

## Apps

```swift
@main
struct MyApp: App {
  var body: some Scene {
    WindowGroup {
      SomeView()
    }
  }
}
```

# Behind the Scenes

## Identities

Swift UI views (recreated each update) with the same identity points to the same
backing view.

- **Types of Identity**

  - **Explicit Identity**:
    - Pointers; not available for Swift UI views, which are value types
    - `id: ` parameter in `ForEach`
    - `.id(id)` modifiers
  - **Structural Identity**: implicit identities are generated for views without
    explicit identities using structural information (using result builders)
  - Try to preserve identities, which in turn preserve number of backing views
    - `AnyView` does not preserve identities due to lack of type information

- **Identity Stability**:

  - **Explicit identities** should be stable and unique
    - **Stable**: identities should not change between updates (avoid **random
      identifiers and indices**)
    - **Unique**: identity of one object must be different from that of another
      object (**names** are sometimes not unique)
  - **Implicit Identities**:

    - Avoid unnecessary branches
    - Tightly scope dependent code

      ```swift
      // Not tightly scoped

      if condition {
        ViewA()
        ViewB(1.0)
        ViewC()
      } else {
        ViewA()
        ViewB(0.0)
        ViewC()
      }

      // Tightly scoped

      ViewA()
      ViewB(condition ? 1.0 : 0.0)
      ViewC()
      ```

    - Prefer inert modifiers

## Lifetime

- **Lifetime**:
  - View states do not influence view identities
  - View states lifetime are tied to that of views (i.e. the life time of the
    backing views)

# Resources

- [AppKit is Done](https://kean.blog/post/appkit-is-done)
- [WWDC 2021: Demystify SwiftUI](https://developer.apple.com/videos/play/wwdc2021/10022/)
