# Table of Content

- [Table of Content](#table-of-content)
- [UI Frameworks](#ui-frameworks)
  - [Coordinators](#coordinators)
- [Core Data](#core-data)
- [Resources](#resources)
  - [Core Data](#core-data-1)

# UI Frameworks

## Coordinators

Coordinators are used to **communicate from the native view/view controller to
Swift UI**. To communiate from Swift UI to view/view controller, use `updateX`
instead

# Core Data

```swift
struct MyView: View {
  @FetchRequest(
    entity: Application.entity(),
    sortDescriptors: [
      NSSortDescriptor(keyPath: \Application.created, ascending: true)
    ])
  var applications: FetchedResults<Application>
}
```

- `nsPredicate`, `nsSortDescriptors` allows dynamic fetch configuration

# Resources

## Core Data

- [WWDC 2021: Bring Core Data concurrency to Swift and SwiftUI](https://developer.apple.com/videos/play/wwdc2021/10017/)
