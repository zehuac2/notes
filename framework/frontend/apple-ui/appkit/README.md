- [Overview](#overview)
- [`NSApplication`](#nsapplication)
- [Windows](#windows)
- [Views, Controllers](#views-controllers)
  - [Collection](#collection)

# Overview

- Window
  - Window contain views
  - Window can have tabs
  - Manage windows in application delegates
- `NSApplication` represents the app: use `NSApplication.shared`

# `NSApplication`

- **Activation Policy** (`.setActivationPolicy(_)`): how the application is
  activated
  - `.regular`: application appears in Dock and have a regular interface
- `.delegate`: [delegate](AppDelegate.md)
- `.run()`: start the main event loop

# Windows

- `.collectionBehavior`: how the window behaves in the collection of all windows
  - `.fullScreenPrimary`: allow the window to be displayed in full screen
- `.makeKeyAndOrderFront(_)`: show window and focus

# Views, Controllers

## Collection

- [`NSTableView`](NSTableView.md)
