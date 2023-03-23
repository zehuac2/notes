# Overview

- **Storyboard Created Instances**: `NSObject` instances can be added to a
  storyboard scene and then be **strongly referenced** in other objects related
  to the scene
  - Except view controllers, if there are **no strong references** to
    `NSObject`, then these **objects will be immediately deallocated**
  - Storyboard created instances should be referenced using
    `@IBOutlet var name: Type!`
