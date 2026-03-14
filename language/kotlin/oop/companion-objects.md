# Companion Objects

```kotlin
interface Foo {

}

class Generator {
  companion object State {
    var next: Int = 0

    init {
      println("init")
    }

    fun new(): Int {
      return next++
    }
  }

  companion object {
    // others
  }

  // can be named
  companion object: Foo {

  }
}

fun foo() {
  println(Generator.new())
  println(Generator.State.new())
}
```

Companion objects are objects that are associated with the types, not the
instances

- Can be anonymou
- Properties and methods can be referenced without the object name
- Companion objects are still objects, rather than just a collection of static
  variable and functions
