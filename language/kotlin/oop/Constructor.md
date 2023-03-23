# Overview

- Properties must be initialized through one the following
  - Inline
  - Primary constructor
  - Secondary constructor
  - Initializer
- **Primary constructor** directly initializes properties
- **Secondary constructors** can takes parameters that are not fields and use
  them to initialize properties
- **Initializers** is run after constructors

# Primary Constructor

```kotlin
class Person(val name: String) {
}
```

# Secondary Constructor

```kotlin
class Person(val name: String) {
  constructor(): this("Q") {
  }
}
```

- Secondary constructor must call primary constructor if there is one

# Initializers

```kotlin
class Person(val name: String) {
  constructor(): this("Q") {
    println("secondary")
  }

  init {
    println("initializer")
  }
}
```
