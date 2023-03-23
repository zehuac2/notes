# Variable

- `val` declares a constant
- `var` declares a variable

```kotlin
val name: Type = /* initialization */
var name: Type = /* initialization */
```

# Delegates

```kotlin
import kotlin.reflect.KProperty;

class Foo {
  var value: String = ""

  operator fun setValue(thisRef: Any?, property: KProperty<*>, value: String) {
    println("set ${property.name}")
    this.value = value
  }

  operator fun getValue(thisRef: Any?, property: KProperty<*>): String {
    println("get ${property.name}")
    return this.value
  }
}

fun main() {
  var name: String by Foo()
  name = "philosopher"

  println("name = $name")
}
```

A delegate property/variable is actually an instance of a class that implements
**at least `operator fun getValue`** and **optionally `operator fun setValue`**,
but still has the type that it is declared with.

- Implement `operator fun setValue` will allow the variable/property to be
  mutated

Read and write both go through these two methods.

- Initialization of delegated property/variable must not happen on the same line
  as decalration
  - `var name: String by Foo() = ""` will not compile
- Examples
  - `lazy()`
