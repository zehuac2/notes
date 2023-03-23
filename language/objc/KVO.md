# Overview

Key value observing enables the invocation of a observer when a property of an
object has changed

- Can add observer for a property of a property, i.e. **recursive**
- **After** the observed object is **deallocated**, the **observer will no
  longer receive notifications**
- **Observers must call `removeObserver`** before being deallocated

# Swift

- Swift property must be marked with `@objc` and `dynamic`
