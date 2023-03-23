# `with(object)`

```kotlin
class Foo(val name: String) {
  fun log() {
    println("foo")
  }
}

fun main(args: Array<String>) {
  val foo = Foo("peter")

  val message = with(foo) {
    log()

    println("name = $name")

    name
  }

  println(message)
}
```

- With is followed by a lambda, where properties and methods of an object can be
  accessed as if they already exist in scope, i.e. without using `.` operator
- The following lambda can also contain regular statements
