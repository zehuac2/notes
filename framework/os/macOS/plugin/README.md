# Plug-in

A plugin architecture consists of the following components.

- A shared framework that contains a shared base type for plug-in entrypoints
- Plug-ins
- Consumer applications

## Shared Framework

```swift
import Foundation

open class Plugin: NSObject {
  public required override init() {
    super.init()
  }
}
```

## Plug-ins

```swift
import Foundation
import MyPluginKit

public class MyPlugin: Plugin {
  required override init() {
    super.init()
    print("create my plugin")
  }
}
```

- `MyPlugin` must be specified as the "Principal Class" in `Info.plist`
- To save space, don't embed the shared framework inside the plugin

## Consumer

```swift
import Cocoa
import MyPluginKit

@main
class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
    guard var url = Bundle.main.builtInPlugInsURL else { return }
    url.appendPathComponent("MyPlugin.bundle", isDirectory: false)

    guard let bundle = Bundle(url: url) else { return }
    guard let principalClass = bundle.principalClass else { return }

    guard let pluginClass = principalClass as? Plugin.Type else { return }

    let a = pluginClass.init()

    print(a)
  }
}
```

- Plugins are saved inside the `PlugIns` folder of an application bundle
