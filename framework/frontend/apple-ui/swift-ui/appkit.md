# AppKit

# Swift UI from Command Line

```swift
@main
struct SwiftLearnApp: App {
  init() {
    let app = NSApplication.shared
    app.setActivationPolicy(.regular)
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear {
          let app = NSApplication.shared
          app.activate()
        }
    }
  }
}
```
