- [Overview](#overview)
- [Access Modifiers](#access-modifiers)
- [Member Variables](#member-variables)
  - [`final`](#final)
- [Overrides](#overrides)
  - [Hash Code](#hash-code)
- [`instanceof`](#instanceof)
- [Nested Class](#nested-class)
- [Static](#static)

# Overview

- Each `Class.java` can only contain **one public class named `Class`**
  - There is no restrictions on non public classes

# Access Modifiers

- `private`: within this class
- `default`: within this class, this package
  - The "default"
- `protected`: within this class, this package and subclasses
- `public`: everywhere

# Member Variables

## `final`

```java
public class Foo {
  final String value;

  public Foo() {
    value = "Foo";
  }
}
```

Member variables marked with `final` are only writable in the constructor

# Overrides

## Hash Code

- `System.identityHashCode` implements the default hashing behavior, i.e. the
  same instance always returns the same hash value.

# `instanceof`

```java
if (a instanceof T) {
  T t = (T)a;
}

if (a instanceof T t) {
}
```

Returns true if a's type is `T` or subclasses of `T`

- `null` can be used with `instanceof`, but would always return false

# Nested Class

```java
class Outer {
  static class Inner {

  }

  enum Foo {

  }
}
```

Note that to reference `Inner`, `this` must be available

- No need to use `static` on nested enums

# Static

```java
public class Foo {
  // not allowed
  static Foo() {}
}
```

- Static method cannot have the same name as class
