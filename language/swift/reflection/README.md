# Type Handle

- A type handle has the type `T.Type` and can be obtained using `T.self`
  - All `T.Type` derive from `Any.Type`
  - `T.Type` can be **compared** using `==` but **not hashed**
- `ObjectIdentifier` is a **comparable and hashable** representation for
  - `T.Type`
  - class instances

# Key Value Observing

- Only available on platforms where ObjC runtime is available
- Differenct from how it is done on ObjC

## Observed

- The observed property must be marked with the following
  - `@objc`
  - `dynamic`
- The observed object must
  - Inherit `NSObject`

## Observer

```swift
let observation = observed.observe(path, options: .new) { object, _ in }
```

- The observer don't have to inherit `NSObject`
- When the observatino object is deallocated, the observation stops
