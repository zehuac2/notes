# Overview

macOS sidebars has the following characteristics

- Translucent background
- Full height (from Big Sur)

The view controller used as the sidebar are typically the "master view
controller" of `UISplitViewController`

# Translucent Background

Translucenet background can be enabled using the following snippet

```swift
splitViewController.primaryBackgroundStyle = .sidebar
```

- **In addition to setting the split view controller**, the sidebar view should
  also **have no background color**

# Full Height

If a view controller does not have a visible navigation bar, it is automatically
displayed as full height

```swift
self.navigationController?.setNavigationBarHidden(true, animated: true)
```

# Collapsing/Expanding the Sidebar

Add a `NSToolbarItem.Identifier.toggleSidebar` toolbar item to the toolbar.

- This toolbar item automatically implement the collapsing and expanding of the
  sidebars **if the sidebar is visible when the window is newly loaded**

  ```swift
  import UIKit

  class RootSplitViewController: UISplitViewController {
    override func viewDidLoad() {
      super.viewDidLoad()

      #if targetEnvironment(macCatalyst)
      // prefer to show the sidebar
      preferredDisplayMode = .twoBesideSecondary
      #endif
    }
  }
  ```
