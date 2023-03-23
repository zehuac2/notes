- [Overview](#overview)
  - [Design](#design)
- [Frameworks](#frameworks)
  - [`UIKit`](#uikit)
  - [`AppKit`](#appkit)
    - [Tabs](#tabs)
    - [Title, Subtitle](#title-subtitle)
    - [Toolbar](#toolbar)
      - [Appearance](#appearance)
      - [Interactions](#interactions)
      - [Variants](#variants)
      - [`NSTrackingSeparatorToolbarItem`](#nstrackingseparatortoolbaritem)
    - [Window Reopening](#window-reopening)
- [Resources](#resources)

# Overview

If an supports multiple window:

- **iOS**: iOS apps does not support multiple windows regardless of
  configuration
- **iPadOS**: iPad offers the following ways of opening new windows
  - `Dock > Currently Active App > New Window`
  - `Dock > (Long Press Icon) Show All Window > Plus Icon on the Top Right`
- **Mac Catalyst**: mac catalyst app with multiple window support will not quit
  after the last window has been closed

## Design

- Users should be able to do everything from one window
- Users can bring up more windows if they want
- Users expect document-based, tab-based and some drag-and-drop apps to have
  multiple windows

# Frameworks

## `UIKit`

Click on the checkbox at
`General > Deployment Info > Status Bar Style > Supports multiple windows`

## `AppKit`

### Tabs

- Setting ``NSWindow.tabbingMode` to `.preferred` so that the tab bar will
  always be visible
- Invoke `NSWindow.addTabbedWindow(_:ordered:)` to add tabs

[TODO:](https://christiantietze.de/posts/2019/01/programmatically-add-nswindow-tabs/)

### Title, Subtitle

```swift
// self.view.window is of NSWindow
self.view.window?.title = ""
self.view.window?.subtitle = ""
```

- `title`:
  - Available in Interface Builder
- `subtitle`:
  - Available in Interface Builder

When the top bar has compact height, it would adopt the following look

```
title - subtitle
```

Otherwise, it would adopt the following look

```
title
subtitle
```

### Toolbar

#### Appearance

- `image`: icon image
- `label`: a string under the icon
- `isNavigational`: a navigational item is placed before everything else,
  including the window title (ex. Finder)

#### Interactions

- `action` must be set for a toolbar to be interactable

#### Variants

#### `NSTrackingSeparatorToolbarItem`

```swift
let toolbar = NSTrackingSeparatorToolbarItem(
  identifier: .sidebarTrackingSeparator,
  splitView: splitView!,
  dividerIndex: 1)
```

In full-size-content-view windows, split view's separator can span the entire
height of a window. A `NSTrackingSeparatorToolbarItem` **displays a separator**
in the toolbar that tracks the separator of the split view and **make sure other
items before an after it are positioned into their split view sections**

- By default, **a tracking separator would be provided for a full-height
  sidebar**

### Window Reopening

After the user has closed the windows, to show the windows again when the user
clicks on the app icon

- Set relevant window instances' `isReleasedWhenClosed = false`
- Make the relevant windows visible in
  `NSApplicationDelegate.applicationShouldHandleReopen(_,hasVisibleWindows:)`
  - For more information on this method, see
    [Application Life Cycle](mvc/ApplicationLifeCycle.md)

# Resources

- [The Right Way to Share State Between Swift View Controllers](https://code.tutsplus.com/tutorials/the-right-way-to-share-state-between-swift-view-controllers--cms-28474)
