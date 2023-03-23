- [Initializers](#initializers)
  - [Designated Initializers](#designated-initializers)
  - [Convenience Initializers](#convenience-initializers)
  - [Required Initializers](#required-initializers)

# Initializers

```swift
class Parent {
  init() {
    print("designated: Parent::\(#function)")
  }

  // designated
  init(foo: Int) {
    print("designated: Parent::\(#function)")
  }

  convenience init(convenience: Int) {
    print("convenience: Parent::\(#function)")
    self.init()
  }

  required init(value: Int) {
    print("required: Parent::\(#function)")
  }
}

class Child: Parent {
  override init() {
    print("designated: Child::\(#function)")
    super.init()
  }

  convenience init(convenience: Int) {
    print("convenience: Child::\(#function)")
    self.init()
  }

  required init(value: Int) {
    print("required: Child::\(#function)")
    super.init(value: value)
  }
}

// required: Child::init(value:)
// required: Parent::init(value:)
let _ = Child(value: 10)

// convenience: Child::init(convenience:)
// designated: Child::init()
// designated: Parent::init()
let _ = Child(convenience: 12)

```

## Designated Initializers

- **Initializes all properties** of a class
- A class must have at least one designated initializer
- Can **delegate to the designated initializers of the parent**
- **Cannot delegate to designated initializers of the same class**

## Convenience Initializers

- **Only delegate to designated initializers of the same class**
- Cannot delegate to designated initializers or convenience initializers of the
  parent class

## Required Initializers

Required initializer enable instantiations using meta classes

```swift
let subclass = Foo.self.init()
```

- Every subclass has to implement the required initializer of the base class
- Subclass required initializers must delegate to parent class required
  initializers
- There can be multiple required initializers
- When the class has `open` accessibility, the required initializers must be
  `public`

  ```swift
  open class Foo {
    public required init() {
      print(#function)
    }
  }

  open class Boo: Foo {
    public required init() {
      print(#function)
    }
  }
  ```
