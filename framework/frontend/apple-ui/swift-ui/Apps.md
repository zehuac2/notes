# Delegate Adaptors

```swift
import SwiftUI
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}

@main
struct BasicRenderingApp: App {
  @NSApplicationDelegateAdaptor
  var delegate: AppDelegate
}
```

Properties wrapped by `@NSApplicationDelegateAdaptor` will be used as the app
delegate
