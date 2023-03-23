- [Overview](#overview)
- [Wrapped Values](#wrapped-values)
- [Projected Value](#projected-value)
- [Closures](#closures)
- [References](#references)

# Overview

- Types that are marked with `@propertyWrapper` become property wrappers
- To access a property wrapper of a property, add a `_` prefix before the name
  of the property
- **Property wrappers are stored as properties themselves**, though the wrapped
  value can be used as if there is no wrapper

  ```swift
  import Foundation

  @propertyWrapper
  struct ReadOnly: Encodable {
    var value: String

    var wrappedValue: String {
      return self.value
    }
  }

  struct Boo: Encodable {
    @ReadOnly(value: "Foo")
    var name: String
  }

  let boo = Boo()
  let encoder = JSONEncoder()

  let json = String(data: try! encoder.encode(boo), encoding: .utf8) ?? ""

  print(json)

  // {"name":{"value":"Foo"}}
  ```

# Wrapped Values

- **Required**: A property named `wrappedValue`, which is the property that is
  actually accessed when the user access the property marked by a property
  wrapper
  - Must be internal or public
- **Optional**: A initializer with the signature resembling
  `init(wrappedValue:, ...)`:

  - The initializer can take any number of arguments after the first label
  - If the initializer only takes one parameter, then the enclosing type's
    synthesized initializer would be as if there is no property wrapper

    ```swift
    import SwiftUI

    struct Foo: View {
      // One of State's initializer is init(wrappedValue:)
      @State
      var name: String
    }

    let foo = Foo(name: "")
    ```

  - Must be internal or public

# Projected Value

- **Optional**: A property named `projectedValue`; this property is accessed
  when the user put `$` operator before the property marked with the property
  wrapper Don’t have to be of the same type as the wrapped value
- **Optional**: A initializer named `init(projectedValue:)` that convert the
  `projectedValue` property to the property wrapper

# Closures

```swift
struct ProjectedValue: CustomStringConvertible {
  var description: String {
    return "ProjectedValue()"
  }
}

@propertyWrapper
struct Clamp: CustomStringConvertible {
  var value: Int = 0

  var description: String {
    return "Clamp(value: \(value))"
  }

  init(wrappedValue value: Int) {
    self.value = value
  }

  init(projectedValue: ProjectedValue) {
    print(#function)
  }

  var wrappedValue: Int {
    return 0
  }

  var projectedValue: ProjectedValue {
    return ProjectedValue()
  }
}

let projected: (ProjectedValue) -> () = { (@Clamp $clamp) in
  $clamp // projected
  clamp // wrapped
  _clamp // wrapper
}

let wrapped: (Int) -> () = { (@Clamp clamp) in }
```

- Parameters of the form `@Wrapper $name` will be the projected value
  - If the property wrapper and the projected value is the same type, then
    `$name` will be the same as `@Wrapper $name`. Ex. SwiftUI's `Binding`
- Parameters of the form `@Wrapper name` will be the wrapped value

# References

- [Extend Property Wrappers to Function and Closure Parameters](https://github.com/apple/swift-evolution/blob/main/proposals/0293-extend-property-wrappers-to-function-and-closure-parameters.md#closures)
